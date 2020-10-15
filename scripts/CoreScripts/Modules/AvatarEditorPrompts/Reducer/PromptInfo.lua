local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Reducer = script.Parent
local AvatarEditorPrompts = Reducer.Parent

local PromptType = require(AvatarEditorPrompts.PromptType)

local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)
local CreateOutfitConfirmed = require(AvatarEditorPrompts.Actions.CreateOutfitConfirmed)

local initialInfo = {
	promptType = nil,
	--PromptSaveAvatar and PromptCreateOutfit
	humanoidDescription = nil,
	rigType = nil,
	--PromptSetFavorite
	itemId = nil,
	itemType = nil,
	itemName = nil,
	isFavorited = nil,

	queue = {},
	infoQueue = {}
}

local PromptInfo = Rodux.createReducer(initialInfo, {
	[CloseOpenPrompt.name] = function(state, action)
		if Cryo.isEmpty(state.queue) then
			return {
				queue = state.queue,
				infoQueue = state.infoQueue,
			}
		end

		return Cryo.Dictionary.join(state.infoQueue[1], {
			promptType = state.queue[1],
			queue = Cryo.List.removeIndex(state.queue, 1),
			infoQueue = Cryo.List.removeIndex(state.infoQueue, 1),
		})
	end,

	[OpenPrompt.name] = function(state, action)
		if state.promptType == nil then
			return Cryo.Dictionary.join(state, {
				promptType = action.promptType,
			}, action.promptInfo)
		end

		return Cryo.Dictionary.join(state, {
			queue = Cryo.List.join(state.queue, {action.promptType}),
			infoQueue = Cryo.List.join(state.infoQueue, {action.promptInfo})
		})
	end,

	[CreateOutfitConfirmed.name] = function(state, action)
		--Does not need to take queue into account as this is a direct transition from CreateOutfit to EnterOutfitName
		return Cryo.Dictionary.join(state, {
			promptType = PromptType.EnterOutfitName,
		})
	end,
})

return PromptInfo
