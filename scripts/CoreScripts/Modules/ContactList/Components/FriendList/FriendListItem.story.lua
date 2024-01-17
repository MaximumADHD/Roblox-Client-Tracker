local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)

local dependencies = require(ContactList.dependencies)
local PresenceModel = dependencies.RoduxPresence.Models.Presence
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType

local FFlagUseRoduxCall18 = game:GetFastFlag("UseRoduxCall18")

return {
	stories = {
		OfflineFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "12345678",
				userName = "user name",
				combinedName = "combined name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
				itemListIndex = 1,
				isSuggestedUser = true,
			})
		end,

		OnlineFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "11111111",
				userName = "user name",
				combinedName = "combined name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
				itemListIndex = 1,
				isSuggestedUser = true,
			})
		end,

		InStudioFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "22222222",
				userName = "user name",
				combinedName = "combined name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
				itemListIndex = 1,
				isSuggestedUser = true,
			})
		end,

		InGameFriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "33333333",
				userName = "user name",
				combinedName = "combined name",
				dismissCallback = function() end,
				showDivider = props.controls.showDivider,
				searchQueryString = "",
				itemListIndex = 1,
				isSuggestedUser = false,
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
					userPresenceType = if FFlagUseRoduxCall18
						then EnumPresenceType.Online
						else EnumPresenceType.Online.rawValue(),
				})),
				["22222222"] = PresenceModel.format(PresenceModel.mock({
					userPresenceType = if FFlagUseRoduxCall18
						then EnumPresenceType.InStudio
						else EnumPresenceType.InStudio.rawValue(),
				})),
				["33333333"] = PresenceModel.format(PresenceModel.mock({
					userPresenceType = if FFlagUseRoduxCall18
						then EnumPresenceType.InGame
						else EnumPresenceType.InGame.rawValue(),
					lastLocation = "Iris",
				})),
			},
		},
		Users = {
			byUserId = {
				["12345678"] = {
					id = "12345678",
					username = "user name",
					combinedName = "combined name",
					hasVerifiedBadge = false,
				},
			},
		},
	},
}
