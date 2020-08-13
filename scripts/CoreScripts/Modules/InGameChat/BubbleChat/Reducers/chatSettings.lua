local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local UpdateChatSettings = require(script.Parent.Parent.Actions.UpdateChatSettings)
local ChatSettings = require(script.Parent.Parent.ChatSettings)

local chatSettings = Rodux.createReducer(ChatSettings, {
	[UpdateChatSettings.name] = function(_, action)
		return Cryo.Dictionary.join(ChatSettings, action.settings)
	end,
})

return chatSettings
