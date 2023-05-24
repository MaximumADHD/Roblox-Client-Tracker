local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallBar = require(script.Parent.CallBar)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall

return {
	stories = {
		CallBar = function(props)
			return React.createElement(CallBar, {})
		end,
	},
	controls = {},
	state = {
		Call = {
			currentCall = {
				callId = "123456",
				status = RoduxCall.Enums.Status.Active.rawValue(),
				participants = {
					["11111111"] = {
						userId = 11111111,
						displayName = "Display Name 1",
					},
					["12345678"] = {
						userId = 12345678,
						displayName = "Display Name 2",
					},
				},
				experienceDetail = {
					placeId = 0,
					gameInstanceId = "gameId",
					universeName = "Universe Name",
				},
			},
		},
	},
}
