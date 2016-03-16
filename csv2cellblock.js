function read(filepath) {
  var file = new File(filepath, 'read', 'TEXT');
  if (!file.isopen) {
    error('Could not open file: ' + filepath + '\n');
    return;
  }
  var text = '';
  var eof = file.eof;
  var i, j;
  for(i = 0; i < eof; i += 1024) {
    text += file.readchars(1024).join('');
  }
  var lines = text.split('\n');
  var cols = 0;
  outlet(0, 'rows', lines.length);
  for(i = 0; i < lines.length; i++) {
    // TODO: support CSV
    // TODO: handle escaped tabs
    var cells = lines[i].split('\t');
    if (cells.length > cols) {
      cols = cells.length;
      outlet(0, 'cols', cols);
    }
    for(j = 0; j < cells.length; j++) {
      outlet(0, 'set', j, i, cells[j]);
    }
  }
}