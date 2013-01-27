'use strict';

goog.provide('gb.Loader');
goog.require('goog.dom');

/** @constructor */
gb.Loader = function(title, desc) {
    this.title = title;
    this.description = desc;
}

/** @expose */
gb.Loader.prototype.Render = function() {
    goog.dom.appendChild(document.body, goog.dom.createDom('h1', {'style': 'background-color:#EEE'}, this.title));
    goog.dom.appendChild(document.body, goog.dom.createDom('p', {'style': 'background-color:#EEE'}, this.description));
    console.debug(this.title);
    console.debug(this.description);
};

goog.exportSymbol('gb.Loader', gb.Loader);
goog.exportSymbol('gb.Loader.Render', gb.Loader.Render);