local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local EventType = require(script.Parent.Parent.EventType)
local VRHub = require(RobloxGui.Modules.VR.VRHub)

type Event = EventType.Event

--[[
    This event highlights the Leave Button in the Bottom Bar to make it appear more visible to users.
]]

local LeaveGameIconHighlightEvent = {
	Name = "LeaveGameIconHighlightEvent",
}

function LeaveGameIconHighlightEvent.StartEvent()
	VRHub:SetShowHighlightedLeaveGameIconToggled(true)
end

function LeaveGameIconHighlightEvent.StopEvent()
	VRHub:SetShowHighlightedLeaveGameIconToggled(false)
end

return LeaveGameIconHighlightEvent :: Event
