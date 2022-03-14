--[[
	Signals that the user denied permission for the outfit to be deleted and closes the prompt
]]
local AvatarEditorService = game:GetService("AvatarEditorService")

local AvatarEditorPrompts = script.Parent.Parent
local CloseOpenPrompt = require(AvatarEditorPrompts.Actions.CloseOpenPrompt)

return function(store)
	AvatarEditorService:SignalDeleteOutfitPermissionDenied()

	store:dispatch(CloseOpenPrompt())
end
