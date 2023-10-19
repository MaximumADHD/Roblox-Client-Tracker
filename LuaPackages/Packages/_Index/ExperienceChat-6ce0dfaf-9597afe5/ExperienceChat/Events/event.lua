local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local DispatchBindableEvent = require(ExperienceChat.DispatchBindableEvent)
local createEvent = require(script.Parent.createEvent)

return createEvent(DispatchBindableEvent)
