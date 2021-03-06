// This is a test harness for your module
// You should do something interesting in this harness 
// to test out the module and to provide instructions 
// to users on how to use it by example.

// open a single window
var win = Ti.UI.createWindow({
	orientationModes: [ Ti.UI.PORTRAIT, Ti.UI.LANDSCAPE_LEFT, Ti.UI.LANDSCAPE_RIGHT ],
	fullscreen: false,
	backgroundColor:'white',
	exitOnClose: true
});
var label = Ti.UI.createLabel({
	text: 'click me'
});
win.add(label);
win.open();

label.addEventListener('click', function(){
	alert('statusBarHeight: ' + (TiDisplay.mainScreenHeight - TiDisplay.applicationFrameHeight));
	alert('titleBar: ' + TiDisplay.titleBarWidth + 'x' + TiDisplay.titleBarHeight);
	alert('mainScreen: ' + TiDisplay.mainScreenWidth + 'x' + TiDisplay.mainScreenHeight);
	alert('applicationFrame: ' + TiDisplay.applicationFrameWidth + 'x' + TiDisplay.applicationFrameHeight);
});

var TiDisplay;

win.addEventListener('postlayout', function(){
	// TODO: write your module tests here
	TiDisplay = require('be.k0suke.tidisplay');
	Ti.API.info("module is => " + TiDisplay);
});
