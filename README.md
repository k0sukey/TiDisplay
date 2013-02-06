# TiDisplay


## Usage iOS
	var TiDisplay = require('be.k0suke.tidisplay');
	alert('Not contained Status Bar: ' + TiDisplay.applicationFrameWidth + 'x' + TiDisplay.applicationFrameHeight);
	alert('Status Bar height: ' + (TiDisplay.mainScreenHeight - TiDisplay.applicationFrameHeight));


## Toggle in-call status bar event listener
	var win = Ti.UI.createWindow();
	win.open();

	var statusBarHeight = TiDisplay.mainScreenHeight - TiDisplay.applicationFrameHeight;

	win.addEventListener('changelayout', function(e){
		changedHeight = TiDisplay.mainScreenHeight - TiDisplay.applicationFrameHeight;

		if (statusBarHeight !== changedHeight) {
			Ti.API.info('Toggle in-call status bar(changed status bar height) ' + statusBarHeight + ' -> ' + changedHeight);
			statusBarHeight = changedHeight;
		}
	});


## Usage Android
	var win = Ti.UI.createWindow();
	win.open();

	win.addEventListener('postlayout', function(){
		// IMPORTANT require the inside of postlayout event
		var TiDisplay = require('be.k0suke.tidisplay');
		alert('Not contained Status Bar: ' + TiDisplay.applicationFrameWidth + 'x' + TiDisplay.applicationFrameHeight);
		alert('Status Bar height: ' + (TiDisplay.mainScreenHeight - TiDisplay.applicationFrameHeight));
		alert('Title Bar height:' + TiDisplay.titleBarHeight);
	});

## License
The MIT License (MIT)
Copyright (c) 2013 Kosuke Isobe

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
