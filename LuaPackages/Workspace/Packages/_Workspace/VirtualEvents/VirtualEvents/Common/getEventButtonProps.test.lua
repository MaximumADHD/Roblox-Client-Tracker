local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local getEventButtonProps = require(script.Parent.getEventButtonProps)
local noop = function() end
local mockProps = {
	onJoinEvent = noop,
	onRSVPEvent = noop,
	onRescindEvent = noop,
}

it(
	"should set buttonType to ButtonType.Secondary when eventStatus is Upcoming/UpcomingImminent & rsvpStatus is true",
	function()
		local buttonPropsUpcoming = getEventButtonProps("Upcoming", true, mockProps)

		expect(buttonPropsUpcoming.buttonType).toBe(ButtonType.Secondary)
		expect(buttonPropsUpcoming.text).toBe("Interested")

		local buttonPropsUpcomingImminent = getEventButtonProps("UpcomingImminent", true, mockProps)

		expect(buttonPropsUpcomingImminent.buttonType).toBe(ButtonType.Secondary)
		expect(buttonPropsUpcomingImminent.text).toBe("Interested")
	end
)

it(
	"should set buttonType to ButtonType.PrimarySystem when eventStatus is Upcoming/UpcomingImminent & rsvpStatus is false",
	function()
		local buttonPropsUpcoming = getEventButtonProps("Upcoming", false, mockProps)

		expect(buttonPropsUpcoming.buttonType).toBe(ButtonType.PrimarySystem)
		expect(buttonPropsUpcoming.text).toBe("Interested?")

		local buttonPropsUpcomingImminent = getEventButtonProps("UpcomingImminent", false, mockProps)

		expect(buttonPropsUpcomingImminent.buttonType).toBe(ButtonType.PrimarySystem)
		expect(buttonPropsUpcomingImminent.text).toBe("Interested?")
	end
)

it("should set buttonType to ButtonType.PrimaryContextual when eventStatus is Ongoing/ElapsedImminent", function()
	local buttonPropsOngoing = getEventButtonProps("Ongoing", false, mockProps)

	expect(buttonPropsOngoing.buttonType).toBe(ButtonType.PrimaryContextual)
	expect(buttonPropsOngoing.text).toBe("Join Event")

	local buttonPropsElapsedImminent = getEventButtonProps("ElapsedImminent", false, mockProps)

	expect(buttonPropsElapsedImminent.buttonType).toBe(ButtonType.PrimaryContextual)
	expect(buttonPropsElapsedImminent.text).toBe("Join Event")
end)

it("should return nil when eventStatus is Elapsed", function()
	local buttonProps = getEventButtonProps("Elapsed", false, mockProps)

	expect(buttonProps).toBe(nil)
end)

return {}
