--[[
	Reducer related to triggering a "Publish Asset" prompt to appear on-screen. For now, we
	only have one type of prompt (PublishAssetPromptSingleStep), but we may add more in the future.
	Component(s) which use these state values:
		PublishAssetPromptApp.lua
]]
local Root = script.Parent.Parent
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Packages.Rodux)
local Cryo = require(CorePackages.Packages.Cryo)

local OpenPublishAssetPrompt = require(Root.Actions.OpenPublishAssetPrompt)
local OpenPublishAvatarPrompt = require(Root.Actions.OpenPublishAvatarPrompt)
local OpenPublishAvatarAssetPrompt = require(Root.Actions.OpenPublishAvatarAssetPrompt)
local CloseOpenPrompt = require(Root.Actions.CloseOpenPrompt)
local OpenResultModal = require(Root.Actions.OpenResultModal)
local CloseResultModal = require(Root.Actions.CloseResultModal)
local OpenValidationErrorModal = require(Root.Actions.OpenValidationErrorModal)
local SetHumanoidModel = require(Root.Actions.SetHumanoidModel)
local SetAccessoryInstance = require(Root.Actions.SetAccessoryInstance)
local SetPriceInRobux = require(Root.Actions.SetPriceInRobux)
local SetPromptVisibility = require(Root.Actions.SetPromptVisibility)

local EMPTY_STATE = {
	promptInfo = {}, -- Contains all data required by the prompt that is currently being shown
	queue = {}, -- A queue of promptInfos
}

type ReducerType = { [string]: (state: any, action: any) -> any }

local PromptRequestReducer = Rodux.createReducer(
	EMPTY_STATE,
	{
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

		[OpenPublishAvatarPrompt.name] = function(state, action: OpenPublishAvatarPrompt.Action)
			-- Maintain a queue of pending prompts. action.promptInfo should contain
			-- a promptType and any other information required by that prompt. See OpenPublishAvatarPrompt.lua
			if state.promptInfo.promptType == nil then
				return Cryo.Dictionary.join(state, { promptInfo = action.promptInfo })
			end

			return Cryo.Dictionary.join(state, {
				queue = Cryo.List.join(state.queue, { action.promptInfo }),
			})
		end,

		[OpenPublishAvatarAssetPrompt.name] = function(state, action: OpenPublishAvatarAssetPrompt.Action)
			-- Maintain a queue of pending prompts. action.promptInfo should contain
			-- a promptType and any other information required by that prompt. See OpenPublishAvatarAssetPrompt.lua
			if state.promptInfo.promptType == nil then
				return Cryo.Dictionary.join(state, { promptInfo = action.promptInfo })
			end

			return Cryo.Dictionary.join(state, {
				queue = Cryo.List.join(state.queue, { action.promptInfo }),
			})
		end,

		[SetHumanoidModel.name] = function(state, action)
			return Cryo.Dictionary.join(state, {
				promptInfo = Cryo.Dictionary.join(state.promptInfo, {
					humanoidModel = action.humanoidModel,
				}),
			})
		end,

		[SetAccessoryInstance.name] = function(state, action)
			return Cryo.Dictionary.join(state, {
				promptInfo = Cryo.Dictionary.join(state.promptInfo, {
					accessoryInstance = action.accessoryInstance,
				}),
			})
		end,

		[SetPriceInRobux.name] = function(state, action)
			return Cryo.Dictionary.join(state, {
				promptInfo = Cryo.Dictionary.join(state.promptInfo, {
					priceInRobux = action.priceInRobux,
				}),
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

		[OpenResultModal.name] = function(state, action: OpenResultModal.Action)
			-- We don't care about the queue of pending prompts; this modal should appear on top.
			return Cryo.Dictionary.join(state, {
				resultModalType = action.resultType,
			})
		end,

		[CloseResultModal.name] = function(state, _action)
			return Cryo.Dictionary.join(state, {
				resultModalType = Cryo.None,
			})
		end,

		[OpenValidationErrorModal.name] = function(state, action)
			-- This modal should appear on top during a publish prompt
			return Cryo.Dictionary.join(state, {
				promptInfo = Cryo.Dictionary.join(state.promptInfo, {
					errorMessage = action.errorMessage,
				}),
			})
		end,

		[SetPromptVisibility.name] = function(state, action)
			return Cryo.Dictionary.join(state, {
				promptInfo = Cryo.Dictionary.join(state.promptInfo, {
					promptVisible = action.promptVisible,
				}),
			})
		end,
	} :: ReducerType
)

return PromptRequestReducer
