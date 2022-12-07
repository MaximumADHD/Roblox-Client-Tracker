local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local testHook = require(VirtualEvents.testHook)
local usePrimaryButtonProps = require(script.Parent.usePrimaryButtonProps)

local mockCallbacks = {
	onRsvpChanged = function() end,
	onJoinEvent = function() end,
	onClose = function() end,
}

describe("upcoming event", function()
	it("should prompt the user to RSVP ", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.userRsvpStatus = "none"

		local buttonProps
		testHook(function()
			buttonProps = usePrimaryButtonProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(buttonProps.text).toBe("Interested?")
	end)

	it("should prompt the user to remove their RSVP", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.userRsvpStatus = "going"

		local buttonProps
		testHook(function()
			buttonProps = usePrimaryButtonProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(buttonProps.text).toBe("Interested")
	end)
end)

describe("active event", function()
	it("should prompt the user to join the event", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local buttonProps
		testHook(function()
			buttonProps = usePrimaryButtonProps(virtualEvent, "Ongoing", mockCallbacks)
		end)

		expect(buttonProps.text).toBe("Join Event")
	end)
end)

describe("ended event", function()
	it("should prompt the user to return to the homepage", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local buttonProps
		testHook(function()
			buttonProps = usePrimaryButtonProps(virtualEvent, "Elapsed", mockCallbacks)
		end)

		expect(buttonProps.text).toBe("Go Home")
	end)
end)
