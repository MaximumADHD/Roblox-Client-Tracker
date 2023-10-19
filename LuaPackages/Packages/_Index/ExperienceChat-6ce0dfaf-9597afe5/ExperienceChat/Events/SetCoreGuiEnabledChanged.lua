local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)

return createEvent(SetCoreGuiEnabledChanged)
