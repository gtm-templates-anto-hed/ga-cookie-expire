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
  "displayName": "GA Cookie Expire",
  "categories": ["ANALYTICS"],
  "description": "Return the expire seconds on Field To Set value of cookieExpires",
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
        "displayValue": "1 year (13 months RGPD)"
      },
      {
        "value": "radioButton2Y",
        "displayValue": "2 years"
      }
    ],
    "simpleValueType": true,
    "displayName": "GA Cookie Expiration"
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

var expirationTime1Y = '34164000'; // One year in seconds
var expirationTime2Y = '63072000'; // Two years in seconds

if (data.radioButtonGroup1Expiration === 'radioButton1Y'){
  return expirationTime1Y;
    }
else {
  return expirationTime2Y;
}


___NOTES___

Created on 22/10/2019 à 09:56:24
