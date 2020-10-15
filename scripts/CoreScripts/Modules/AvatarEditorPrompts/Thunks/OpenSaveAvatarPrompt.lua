local AvatarEditorPrompts = script.Parent.Parent
local OpenPrompt = require(AvatarEditorPrompts.Actions.OpenPrompt)

local PromptType = require(AvatarEditorPrompts.PromptType)

return function(humanoidDescription, rigType)
	return function(store)
		store:dispatch(OpenPrompt(PromptType.SaveAvatar, {
			humanoidDescription = humanoidDescription,
			rigType = rigType,
		}))
	end
end