function run(argument) {
  return [{
    title: 'iPhone6s - Plain Text',
    action: 'sendContent',
    actionArgument: {
      content: argument,
      device: 'iPhone6s'
    }
  }, {
    title: 'iPhone6s - URL',
    action: 'sendAndOpenUrl',
    actionArgument: {
      url: argument,
      device: 'iPhone6s'
    }
  }]
}

function runWithURL(url, details) {
  return [{
    title: 'iPhone6s - URL',
    action: 'sendAndOpenUrl',
    actionArgument: {
      url: url,
      device: 'iPhone6s'
    }
  }]
}

function test(item) {
  LaunchBar.alert(JSON.stringify(item) + ' ------------- ' + Action.scriptType)
}

function sendContent(item) {
  var info = item.actionArgument
  LaunchBar.executeAppleScript(`
    tell application "Command-C"
      shareClipboard "${info.content}" to "${info.device}"
    end tell
  `)
}

function sendAndOpenUrl(item) {
  var info = item.actionArgument
  LaunchBar.executeAppleScript(`
    tell application "Command-C"
      shareAndOpenURL "${info.url}" to "${info.device}"
    end tell
  `)
}
