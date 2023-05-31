local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)

local dependencies = require(ContactList.dependencies)
local PresenceModel = dependencies.RoduxPresence.Models.Presence

return {
	stories = {
		FriendListItem = function(props)
			return React.createElement(FriendListItem, {
				userId = "12345678",
			})
		end,
	},
	controls = {},
	state = {
		Navigation = {
			tag = "",
		},
		NetworkStatus = {},
		Presence = {
			byUserId = {
				["12345678"] = PresenceModel.format(PresenceModel.mock()),
			},
		},
		Users = {
			byUserId = {
				["12345678"] = {
					id = "12345678",
					username = "user name",
					displayName = "display name",
					hasVerifiedBadge = false,
				},
			},
		},
	},
}
