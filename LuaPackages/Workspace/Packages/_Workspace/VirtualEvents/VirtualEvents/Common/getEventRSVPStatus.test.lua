local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local getEventRSVPStatus = require(script.Parent.getEventRSVPStatus)
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel

local mockVirtualEvent = VirtualEventModel.mock("1")

it("should return false when rsvp status is none", function()
	mockVirtualEvent.userRsvpStatus = "none"

	expect(getEventRSVPStatus(mockVirtualEvent)).toEqual(false)
end)

it("should return true when rsvp status is going", function()
	mockVirtualEvent.userRsvpStatus = "going"

	expect(getEventRSVPStatus(mockVirtualEvent)).toEqual(true)
end)

it("should return true when rsvp status is maybeGoing", function()
	mockVirtualEvent.userRsvpStatus = "maybeGoing"

	expect(getEventRSVPStatus(mockVirtualEvent)).toEqual(true)
end)

return {}
