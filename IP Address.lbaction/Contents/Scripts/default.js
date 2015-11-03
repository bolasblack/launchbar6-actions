// LaunchBar Action Script

function run(argument) {    
  var requestExtraUrl = argument ? '/' + argument : ''
      result = HTTP.getJSON('http://www.telize.com/geoip' + requestExtraUrl),
      keyDescribeMap = {ip: 'IP', country: null, latitude: null, longitude: null, timezone: null}
  
  if (result.error) {
    return [{title: 'Request failed'}]
  }
  
  return Object.keys(keyDescribeMap).map(function(key) {
    return {
      title: String(result.data[key]),
      label: firstCharUpperCase(keyDescribeMap[key] || key)
    }
  })
}

function firstCharUpperCase(str) {
  return str[0].toUpperCase() + str.slice(1)
}