var exec = require('cordova/exec');
/**
 * Constructor
 */
function AppVersion() {}

AppVersion.prototype.getVersionNumber = function() {
  exec(function(result){
      // result handler
      alert(result);
    },
    function(error){
      // error handler
      alert("Error" + error);
    }, 
    "AppVersion",
    "getVersionNumber",
    []
  );
}

var appVersion = new AppVersion();
module.exports =appVersion