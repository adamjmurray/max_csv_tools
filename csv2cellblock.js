function read(filepath) {
	var file = new File(filepath, 'read', 'TEXT');
	if (!file.isopen) {
		error('Could not open file: ' + filepath + '\n');
		return;
	}
	var text = '';
	var eof = file.eof;
	var i, j;
	for(i = 0; i < eof; i+= 1024) {
		text += file.readchars(1024).join('');	
	}
	var lines = text.split('\n');
	for(i = 0; i < lines.length; i++) {
		// TODO: support CSV
		// TODO: handle escaped tabs
		var cells = lines[i].split('\t');
		for(j = 0; j < cells.length; j++) {
			outlet(0, ['set', j, i, cells[j]]);
		}
	}
}