# NetworkingUserSettings
A rodux-networking wrapper around `apis.roblox.com/user-settings-api`.

Part of the [Social Package Ecosystem](https://confluence.rbx.com/pages/viewpage.action?pageId=244706438). Check out [this link](https://confluence.rbx.com/pages/viewpage.action?pageId=244706438) for more information!

For further info about these endpoints go to here [here](https://confluence.rbx.com/display/SOCIAL/Contact+Import+-+User+Settings+Public+Endpoint+for+FE#:~:text=archives/CF63FNG15/p1655488916708179-,Endpoints,-Method)

- [NetworkingUserSettings](#networkingusersettings)
	- [Usage](#usage)
	- [Implemented Endpoints](#implemented-endpoints)
		- [`GET` /user-settings-api/v1/user-settings](#get-user-settings-apiv1user-settings)
		- [`POST`
		  /user-settings-api/v1/user-settings](#post-user-settings-apiv1user-settings)
		- [`GET` /user-settings-api/v1/user-settings](#get-user-settings-apiv1user-settings/metadata)

## Usage

In order to use this package, you'll first need to run `config` and pass in an implementation of RoduxNetworking as `roduxNetworking`.

```lua
local NetworkingUserSettings = require(...).config({
	roduxNetworking = myRoduxNetworking,
})
```

## Implemented Endpoints
### `GET` /user-settings-api/v1/user-settings
Gets the user settings for the logged in user.

**Parameters**

|          Name | Required |  Type |
| -------------:|:--------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|     `userSettings` | no | string |

**Request**

```lua
dispatch(GetUserSettings.API({ userSettings = "settings" }))
```

**Response**

```
{
    "canUploadContacts": true, -- optional (true false or null)
    "phoneNumberDiscoverability": "Discoverable" -- optional
}
```

### `GET` /user-settings-api/v1/user-settings/metadata
Gets the user settings metadata for the logged in user.

**Parameters**

No parameters

**Request**

```lua
dispatch(GetUserSettingsMetadata.API({}))
```

**Response**

```
{
    "isContactImportFeatureEnabled": boolean,
    "isDiscoverabilitySettingsEnabled": boolean,
	"isContentAgeRestrictionSettingsEnabled": boolean,
	"showDiscoverabilityUpsells": boolean,
	"prefillDiscoverabilitySetting": boolean,
	"isAccountRestrictionsDoubleWriteEnabled": boolean,
}
```

For more details of response info see [here](https://confluence.rbx.com/display/SOCIAL/Contact+Import+-+User+Settings+Public+Endpoint+for+FE#:~:text=archives/CF63FNG15/p1655488916708179-,Endpoints,-Method)


### `POST` /user-settings-api/v1/user-settings
Updates the user settings for the logged in user - in particular the canUploadContacts state.

**Parameters**

|          Name | Required |  Type |
| -------------:|:--------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|     `canUploadContacts` | required | boolean  |

**Request**

```lua
dispatch(UpdateUserSettings.API({ canUploadContacts = true }))
```

**Response**

```
{}
```
