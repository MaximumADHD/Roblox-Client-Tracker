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
			return React.createElement(CallBar, {
				size = Vector2.new(200, 44),
			})
		end,
	},
	controls = {},
	state = {
		Call = {
			currentCall = {
				status = RoduxCall.Enums.Status.Active.rawValue(),
				callerId = 11111111,
				calleeId = 12345678,
				placeId = 789,
				callId = "123456",
				callerDisplayName = "Display Name 1",
				calleeDisplayName = "Display Name 2",
				gameInstanceId = "gameId",
			},
		},
	},
}
