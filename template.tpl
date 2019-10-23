___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Cookie Duration for GDPR",
  "categories": ["ANALYTICS"],
  "description": "Return in second, the lifetime of cookie. Use to Field To Set field in Google Analytics tag / settings.",
  "containerContexts": [
    "WEB"
  ],
  "brand": {}
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "RADIO",
    "name": "radioButtonGroup1Expiration",
    "radioItems": [
      {
        "value": "radioButton1Y",
        "displayValue": "1 year (13 months)"
      },
      {
        "value": "radioButton1eY",
        "displayValue": "1 years (12 months)"
      },
      {
        "value": "radioButton2Y",
        "displayValue": "2 years (24 months)"
      }
    ],
    "simpleValueType": true,
    "displayName": "Lifetime",
    "help": "Google Analytics cookie lifetime is 13 months since GDPR"
  }
]


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');

var expirationTime1Y = '34164000'; // One year in seconds 13 months
var expirationTime1eY = '31536000'; // One year in seconds 12 months
var expirationTime2Y = '63072000'; // Two years in seconds 24 months

if (data.radioButtonGroup1Expiration === 'radioButton1Y'){
  return expirationTime1Y;
    }
else if (data.radioButtonGroup1Expiration === 'radioButton1eY'){
  return expirationTime1eY;
}
else {
  return expirationTime2Y;
}


___NOTES___
Version: 1.1.0
// AntoHed //

Change Log : 
1.0.0: Initial Version
1.1.0: Add description and 12 months input
1.1.1: Change Name of Custom Template

Created on 22/10/2019 à 09:56:24
