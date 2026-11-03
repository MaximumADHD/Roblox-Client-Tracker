local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local getActiveInterventionTimeoutEnd = require(script.Parent.getActiveInterventionTimeoutEnd)

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local START = "2026-01-01T00:00:00Z"
local START_TIMESTAMP = (DateTime.fromIsoDate(START) :: DateTime).UnixTimestamp

type InactiveCase = {
	name: string,
	detail: { timeoutStartTime: string?, timeoutDurationSeconds: number? },
}

describe("getActiveInterventionTimeoutEnd", function()
	it("returns the end of a timeout that is still running", function()
		local isActive, endTimestamp = getActiveInterventionTimeoutEnd(
			{ timeoutStartTime = START, timeoutDurationSeconds = 600 },
			START_TIMESTAMP + 60
		)
		expect(isActive).toBe(true)
		expect(endTimestamp).toBe(START_TIMESTAMP + 600)
	end)

	it("treats a timeout that already ended as inactive", function()
		local isActive = getActiveInterventionTimeoutEnd(
			{ timeoutStartTime = START, timeoutDurationSeconds = 600 },
			START_TIMESTAMP + 600
		)
		expect(isActive).toBe(false)
	end)

	it("treats a zero duration as an indefinite timeout", function()
		local isActive, endTimestamp =
			getActiveInterventionTimeoutEnd({ timeoutStartTime = START, timeoutDurationSeconds = 0 }, START_TIMESTAMP)
		expect(isActive).toBe(true)
		expect(endTimestamp).toBeNil()
	end)

	it("starts the timeout now when the push has no start time", function()
		local isActive, endTimestamp =
			getActiveInterventionTimeoutEnd({ timeoutStartTime = "", timeoutDurationSeconds = 600 }, START_TIMESTAMP)
		expect(isActive).toBe(true)
		expect(endTimestamp).toBe(START_TIMESTAMP + 600)
	end)

	local inactiveCases: { InactiveCase } = {
		{ name = "a missing duration", detail = { timeoutStartTime = START } },
		{ name = "a negative duration", detail = { timeoutDurationSeconds = -1 } },
	}
	it.each(inactiveCases)("does not restrict voice for $name", function(testCase: InactiveCase)
		local isActive = getActiveInterventionTimeoutEnd(testCase.detail, START_TIMESTAMP)
		expect(isActive).toBe(false)
	end)
end)
