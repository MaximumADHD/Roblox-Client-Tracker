local CorePackages = game:GetService("CorePackages")

local EventType = require(script.Parent.Parent.EventType)
local VRHub = require(CorePackages.Workspace.Packages.VrCommon).VRHub

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
