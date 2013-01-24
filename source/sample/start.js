goog.provide('sample.start');

goog.require('goog.dom');

sample.start = function() {
  var newDiv = goog.dom.createDom('h1', {'style': 'background-color:#EEE'}, 'it\'s alive!');
  goog.dom.appendChild(document.body, newDiv);
};

// Ensures the symbol will be visible after compiler renaming.
goog.exportSymbol('sample.start', sample.start);