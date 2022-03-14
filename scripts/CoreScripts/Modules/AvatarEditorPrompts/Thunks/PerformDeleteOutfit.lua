--[[
	Confirms the delete outfit initated via AvatarEditorService:PromptDeleteOutfit and closes the prompt
]]

local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(store)
	AvatarEditorService:PerformDeleteOutfit()

	store:dispatch(CloseOpenPrompt())
end
