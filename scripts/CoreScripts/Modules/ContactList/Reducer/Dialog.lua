local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local OpenOrUpdateDialog = require(script.Parent.Parent.Actions.OpenOrUpdateDialog)
local CloseDialog = require(script.Parent.Parent.Actions.CloseDialog)

return Rodux.createReducer({
	isOpen = false,
	title = "",
	bodyText = "",
	dismissCallback = nil,
}, {
	[OpenOrUpdateDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isOpen = true,
			title = action.title,
			bodyText = action.bodyText,
			dismissCallback = action.dismissCallback,
		})
	end,
	[CloseDialog.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isOpen = false,
			title = "",
			bodyText = "",
			dismissCallback = Cryo.None,
		})
	end,
})
