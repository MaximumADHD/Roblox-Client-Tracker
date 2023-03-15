local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallDetailsItem = require(script.Parent.CallDetailsItem)

local ContactList = script.Parent.Parent.Parent
local dependencies = require(ContactList.dependencies)
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

return {
	stories = {
		Online = function(props)
			return React.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "SuperCoolUsername",
				},
				showDivider = props.controls.showDivider,
				userPresenceType = EnumPresenceType.Online,
				showParticipantSettings = props.controls.showParticipantSettings,
			})
		end,
		Offline = function(props)
			return React.createElement(CallDetailsItem, {
				user = {
					userId = 1,
					username = "SuperCoolUsername",
				},
				showDivider = props.controls.showDivider,
				userPresenceType = EnumPresenceType.Offline,
				showParticipantSettings = props.controls.showParticipantSettings,
			})
		end,
	},
	controls = {
		showDivider = true,
		showParticipantSettings = true,
	},
}
