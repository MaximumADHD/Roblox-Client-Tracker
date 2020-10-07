local AvatarEditorService = game:GetService("AvatarEditorService")
local CorePackages = game:GetService("CorePackages")

local Promise = require(CorePackages.Promise)

local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)
local GetAssetNamesFromDescription = require(AvatarEditorPrompts.GetAssetNamesFromDescription)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(humanoidDescription, rigType)
	return function(store)
		return GetAssetNamesFromDescription(humanoidDescription):andThen(function(assetNames)
			store:dispatch(OpenPrompt(PromptType.SaveAvatar, {
				humanoidDescription = humanoidDescription,
				rigType = rigType,
				assetNames = assetNames,
			}))

			return Promise.resolve(assetNames)
		end, function()
			AvatarEditorService:SignalSaveAvatarFailed()

			return Promise.reject()
		end)
	end
end