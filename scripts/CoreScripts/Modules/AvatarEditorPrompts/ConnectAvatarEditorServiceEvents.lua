local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent

local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)
local PromptType = require(AvatarEditorPrompts.PromptType)

local OpenSetFavoritePrompt = require(AvatarEditorPrompts.Thunks.OpenSetFavoritePrompt)
local OpenSaveAvatarPrompt = require(AvatarEditorPrompts.Thunks.OpenSaveAvatarPrompt)
local OpenDeleteOutfitPrompt = require(AvatarEditorPrompts.Thunks.OpenDeleteOutfitPrompt)
local OpenRenameOutfitPrompt = require(AvatarEditorPrompts.Thunks.OpenRenameOutfitPrompt)
local OpenUpdateOutfitPrompt = require(AvatarEditorPrompts.Thunks.OpenUpdateOutfitPrompt)

local function ConnectAvatarEditorServiceEvents(store)
	local connections = {}

	table.insert(connections, AvatarEditorService.OpenPromptSaveAvatar:Connect(function(humanoidDescription, rigType)
		store:dispatch(OpenSaveAvatarPrompt(humanoidDescription, rigType))
	end))

	table.insert(connections, AvatarEditorService.OpenAllowInventoryReadAccess:Connect(function()
		store:dispatch(OpenPrompt(PromptType.AllowInventoryReadAccess, {}))
	end))

	table.insert(connections, AvatarEditorService.OpenPromptCreateOufit:Connect(function(humanoidDescription, rigType)
		store:dispatch(OpenPrompt(PromptType.CreateOutfit, {
			humanoidDescription = humanoidDescription,
			rigType = rigType,
		}))
	end))

	table.insert(connections, AvatarEditorService.OpenPromptSetFavorite:Connect(function(itemId, itemType, isFavorited)
		store:dispatch(OpenSetFavoritePrompt(itemId, itemType, isFavorited))
	end))

	table.insert(connections, AvatarEditorService.OpenPromptDeleteOutfit:Connect(function(outfitId)
		store:dispatch(OpenDeleteOutfitPrompt(outfitId))
	end))

	table.insert(connections, AvatarEditorService.OpenPromptRenameOutfit:Connect(function(outfitId)
		store:dispatch(OpenRenameOutfitPrompt(outfitId))
	end))

	table.insert(connections, AvatarEditorService.OpenPromptUpdateOutfit:Connect(function(outfitId, humanoidDescription, rigType)
		store:dispatch(OpenUpdateOutfitPrompt(outfitId, humanoidDescription, rigType))
	end))

	return connections
end

return ConnectAvatarEditorServiceEvents
