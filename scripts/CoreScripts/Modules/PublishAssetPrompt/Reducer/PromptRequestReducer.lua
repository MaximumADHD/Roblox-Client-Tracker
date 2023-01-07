--[[
	Reducer related to triggering a "Publish Asset" prompt to appear on-screen. This prompt needs
	the DataModel instance of the asset (usually a model) and the AssetType that we're publishing.
	Component(s) which use these state values:
		PublishAssetPromptApp.lua
]]
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

local OpenPublishAssetPrompt = require(Root.Actions.OpenPublishAssetPrompt)

local EMPTY_STATE = { assetInstance = nil }

local PromptRequestReducer = Rodux.createReducer(EMPTY_STATE, {
	[OpenPublishAssetPrompt.name] = function(state, action)
		return {
			assetInstance = action.assetInstance,
			assetType = action.assetType,
		}
	end,
})

return PromptRequestReducer
