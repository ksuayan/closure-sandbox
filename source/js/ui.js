'use strict';

goog.provide("gb.ui");
goog.require("Backbone");

/** @expose */
var NewsItem = Backbone.Model.extend({
    defaults: {
        title: "Title article",
        body: "Default text",
        link: "/"
    }, 
    initialize: function(){
        this.on("change", function(){
            console.debug("model changed:", this);
        });
    },
    changeTitle: function(title){
        this.set({title: title});
    }
});


