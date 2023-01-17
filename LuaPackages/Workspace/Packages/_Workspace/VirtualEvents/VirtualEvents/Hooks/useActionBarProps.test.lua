local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local network = require(VirtualEvents.network)
local VirtualEventModel = network.NetworkingVirtualEvents.VirtualEventModel
local testHook = require(VirtualEvents.testHook)
local useActionBarProps = require(script.Parent.useActionBarProps)

local mockCallbacks = {
	onRsvpChanged = function() end,
	onJoinEvent = function() end,
	onClose = function() end,
	onShare = function() end,
}

describe("upcoming event", function()
	it("should prompt the user to RSVP ", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.userRsvpStatus = "none"

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.button).toBeDefined()
		expect((actionBarProps.button :: any).props.text).toBe("Interested?")
	end)

	it("should prompt the user to remove their RSVP", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.userRsvpStatus = "going"

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.button).toBeDefined()
		expect((actionBarProps.button :: any).props.text).toBe("Interested")
	end)

	it("should show the share icon", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.icons[1]).toBeDefined()
	end)
end)

describe("active event", function()
	it("should prompt the user to join the event", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Ongoing", mockCallbacks)
		end)

		expect(actionBarProps.button).toBeDefined()
		expect((actionBarProps.button :: any).props.text).toBe("Join Event")
	end)

	it("should show the share icon", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.icons[1]).toBeDefined()
	end)
end)

describe("ended event", function()
	it("should not show the primary button", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Elapsed", mockCallbacks)
		end)

		expect(actionBarProps.button).toBeNil()
	end)

	it("should not show any icons", function()
		local virtualEvent = VirtualEventModel.mock("1")

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Elapsed", mockCallbacks)
		end)

		expect(actionBarProps.icons).toEqual({})
	end)
end)

describe("cancelled event", function()
	it("should prompt the user to return to the homepage", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.eventStatus = "cancelled"

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.button).toBeDefined()
		expect((actionBarProps.button :: any).props.text).toBe("Go Home")
	end)

	it("should not show any icons", function()
		local virtualEvent = VirtualEventModel.mock("1")
		virtualEvent.eventStatus = "cancelled"

		local actionBarProps
		testHook(function()
			actionBarProps = useActionBarProps(virtualEvent, "Upcoming", mockCallbacks)
		end)

		expect(actionBarProps.icons).toEqual({})
	end)
end)
