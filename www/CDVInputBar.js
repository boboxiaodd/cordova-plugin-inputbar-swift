var exec = require('cordova/exec');

var PLUGIN_NAME = "CDVInputBar"; // This is just for code completion uses.

var CDVInputBar = function() {}; // This just makes it easier for us to export all of the functions at once.

CDVInputBar.create = function(onSuccess, onError , options , buttons) {
    exec(onSuccess, onError, PLUGIN_NAME, "create", [options,buttons]);
};
CDVInputBar.close = function(onSuccess,onError){
    exec(onSuccess,onError, PLUGIN_NAME ,"close",[]);
}
CDVInputBar.hide = function(onSuccess,onError){
    exec(onSuccess,onError,PLUGIN_NAME,"hide",[]);
}
CDVInputBar.show = function(onSuccess,onError){
    exec(onSuccess,onError,PLUGIN_NAME,"show",[]);
}
CDVInputBar.play_sound = function(onSuccess,onError,path){
    exec(onSuccess,onError,PLUGIN_NAME,"play_sound",[path]);
}
CDVInputBar.stop_sound = function(onSuccess,onError){
    exec(onSuccess,onError,PLUGIN_NAME,"stop_sound",[]);
}
CDVInputBar.reset = function(onSuccess,onError){
    exec(onSuccess,onError,PLUGIN_NAME,"reset",[]);
}
CDVInputBar.show_toast = function(msg,duo){
    exec(null,null,PLUGIN_NAME,"show_toast",[msg,duo]);
}
module.exports = CDVInputBar;
