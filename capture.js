var page    = require('webpage').create();
var system  = require('system');
var address = system.args[1];
var output  = system.args[2];

page.open(address, function () {
	page.render(output);
	phantom.exit();
});