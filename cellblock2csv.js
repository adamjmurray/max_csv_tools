/*
Copyright (c) 2020 Adam Murray (adam@compusition.com)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

inlets = 1
outlets = 1

var matrix
var rows
var cols

function init() {
	matrix = new Array()
	rows = 0
	cols = 0
}

function list() {
	var args = arrayfromargs(arguments)
	var colIdx = args.shift()
	var rowIdx = args.shift()
	var value = args.join(' ')

	var row = matrix[rowIdx]
	if(!row) row = matrix[rowIdx] = new Array()
	row[colIdx] = value

	var rowCount = rowIdx+1
	var colCount = colIdx+1
	if(rowCount > rows) rows = rowCount
	if(colCount > cols) cols = colCount
}

function write(filepath) {
	var file = new File(filepath, 'write', '')
	for(var rowIdx=0; rowIdx<rows; rowIdx++) {
		var row = matrix[rowIdx] || []
		var line = ''
		for(var colIdx=0; colIdx<cols; colIdx++) {
			if(colIdx > 0) line += ','
			line += escapeCsvValue(row[colIdx])
		}
		file.writeline(line)
	}
	file.eof = file.position
	file.close()
}

escapeCsvValue.private = 1
function escapeCsvValue(value) {
	if(!value) return ''
	return '"' + value.replace('"', '""', 'g') + '"'
}