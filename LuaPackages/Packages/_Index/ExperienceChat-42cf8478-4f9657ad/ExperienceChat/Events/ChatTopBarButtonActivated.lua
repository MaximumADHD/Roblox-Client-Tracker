local createEvent = require(script.Parent.event)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Actions = ExperienceChat.Actions
local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)

return createEvent(ChatTopBarButtonActivated)
