local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local OpenOrUpdateDialog = require(script.Parent.Parent.Actions.OpenOrUpdateDialog)
local CloseDialog = require(script.Parent.Parent.Actions.CloseDialog)

return Rodux.createReducer({
	isOpen = false,
	title = "",
	bodyText = "",
	callerId = 0,
	calleeId = 0,
	dismissCallback = nil,
}, {
	[OpenOrUpdateDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isOpen = true,
			title = action.title,
			bodyText = action.bodyText,
			callerId = action.callerId or 0,
			calleeId = action.calleeId or 0,
			dismissCallback = action.dismissCallback,
		})
	end,
	[CloseDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isOpen = false,
			title = "",
			bodyText = "",
			callerId = 0,
			calleeId = 0,
			dismissCallback = Cryo.None,
		})
	end,
})
