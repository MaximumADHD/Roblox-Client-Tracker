--[[
	Reducer related to triggering a "Publish Asset" prompt to appear on-screen. For now, we
	only have one type of prompt (PublishAssetPromptSingleStep), but we may add more in the future.
	Component(s) which use these state values:
		PublishAssetPromptApp.lua
]]
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local OpenPublishAssetPrompt = require(Root.Actions.OpenPublishAssetPrompt)
local CloseOpenPrompt = require(Root.Actions.CloseOpenPrompt)

local EMPTY_STATE = {
	promptInfo = {}, -- Contains all data required by the prompt that is currently being shown
	queue = {}, -- A queue of promptInfos
}

local PromptRequestReducer = Rodux.createReducer(EMPTY_STATE, {
	[OpenPublishAssetPrompt.name] = function(state, action: OpenPublishAssetPrompt.Action)
		-- Maintain a queue of pending prompts. action.promptInfo should contain
		-- a promptType and any other information required by that prompt. See OpenPublishAssetPrompt.lua
		if state.promptInfo.promptType == nil then
			return Cryo.Dictionary.join(state, { promptInfo = action.promptInfo })
		end

		return Cryo.Dictionary.join(state, {
			queue = Cryo.List.join(state.queue, { action.promptInfo }),
		})
	end,

	[CloseOpenPrompt.name] = function(state, _action: CloseOpenPrompt.Action)
		if Cryo.isEmpty(state.queue) then
			return {
				promptInfo = {},
				queue = state.queue,
			}
		end

		return Cryo.Dictionary.join(state, {
			promptInfo = state.queue[1],
			queue = Cryo.List.removeIndex(state.queue, 1),
		})
	end,
})

return PromptRequestReducer
