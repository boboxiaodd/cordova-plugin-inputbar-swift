import Foundation
import InputBarAccessoryView
import UIKit
/*
* Notes: The @objc shows that this class & function should be exposed to Cordova.
*/
@objc(CDVInputBar) class CDVInputBar : CDVPlugin {
    @objc(open:) // Declare your function name.
    func open(command: CDVInvokedUrlCommand) { // write the function code.
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR, messageAs: "picker type error")
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId)
    }
}
