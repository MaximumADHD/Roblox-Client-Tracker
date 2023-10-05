local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)

local dependencies = require(ContactList.dependencies)
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

return {
	stories = {
		OfflineFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "12345678",
				userName = "@user name",
				combinedName = "display name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
			})
		end,

		OnlineFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "11111111",
				userName = "@user name",
				combinedName = "display name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
			})
		end,

		InStudioFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "22222222",
				userName = "@user name",
				combinedName = "display name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
			})
		end,

		InGameFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "33333333",
				userName = "@user name",
				combinedName = "display name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
			})
		end,
	},
	controls = {
		showDivider = true,
	},
	state = {
		Navigation = {
			tag = "",
		},
		NetworkStatus = {},
		Presence = {
			byUserId = {
				["12345678"] = PresenceModel.format(PresenceModel.mock()),
				["11111111"] = PresenceModel.format(PresenceModel.mock({
					userPresenceType = EnumPresenceType.Online.rawValue(),
				})),
				["22222222"] = PresenceModel.format(PresenceModel.mock({
					userPresenceType = EnumPresenceType.InStudio.rawValue(),
				})),
				["33333333"] = PresenceModel.format(PresenceModel.mock({
					userPresenceType = EnumPresenceType.InGame.rawValue(),
					lastLocation = "Iris",
				})),
			},
		},
		Users = {
			byUserId = {
				["12345678"] = {
					id = "12345678",
					username = "@user name",
					combinedName = "display name",
					hasVerifiedBadge = false,
				},
			},
		},
	},
}
