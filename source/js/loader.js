'use strict';

goog.provide('gb.Loader');
goog.require('gb.ui');

/** @constructor */
gb.Loader = function(title, desc) {
    this.title = title;
    this.description = desc;
}

/** @expose */
gb.Loader.prototype.Render = function() {
    console.debug(this.title);
    console.debug(this.description);
    var newsItem = new NewsItem({title: this.title, body: this.description});
    newsItem.changeTitle("Updated Title");
};

goog.exportSymbol('gb.Loader', gb.Loader);
goog.exportSymbol('gb.Loader.Render', gb.Loader.Render);