--[[
	Gets the required information to open the delete outfit prompt and then opens it
]]

local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

local GetOutfitName = require(AvatarEditorPrompts.Network.GetOutfitName)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(outfitId)
	return function(store)
		GetOutfitName(outfitId):andThen(function(name)
			store:dispatch(OpenPrompt(PromptType.DeleteOutfit, {
				outfitId = outfitId,
				outfitName = name,
			}))
		end, function(err)
			AvatarEditorService:SignalDeleteOutfitFailed()
		end)
	end
end