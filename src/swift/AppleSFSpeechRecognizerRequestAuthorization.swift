import Speech

@objc(AppleSFSpeechRecognizerRequestAuthorization)
class AppleSFSpeechRecognizerRequestAuthorization: CDVPlugin {
  @objc(exec:) func exec(_ command: CDVInvokedUrlCommand) {
    SFSpeechRecognizer.requestAuthorization({ status in
      let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: status.rawValue)
      self.commandDelegate!.send(result, callbackId: command.callbackId)
    })
  }
}
