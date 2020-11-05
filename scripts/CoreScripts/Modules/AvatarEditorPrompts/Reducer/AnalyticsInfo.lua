local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Reducer = script.Parent
local AvatarEditorPrompts = Reducer.Parent

local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)
local AddAnalyticsInfo = require(AvatarEditorPrompts.Actions.AddAnalyticsInfo)

local initialInfo = {
	addedAssets = nil,
	removedAssets = nil,
}

local PromptInfo = Rodux.createReducer(initialInfo, {
	[AddAnalyticsInfo.name] = function(state, action)
		return Cryo.Dictionary.join(state, action.info)
	end,

	[CloseOpenPrompt.name] = function(state, action)
		return {}
	end,
})

return PromptInfo
