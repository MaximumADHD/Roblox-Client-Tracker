local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local AvatarContextMenuWhisperSelected = require(Actions.AvatarContextMenuWhisperSelected)

return createEvent(AvatarContextMenuWhisperSelected)
