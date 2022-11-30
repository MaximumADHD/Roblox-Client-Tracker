local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local isEventValid = require(script.Parent.isEventValid)

it("should return true for a valid event", function()
	local event = {
		title = "ROBLOXU",
		imageUrl = "https://images.rbxcdn.com/65dcdb1e60fcf88327eaa65180161167",
		pagePath = "/sponsored/ROBLOXU",
	}
	expect(isEventValid(event)).toBe(true)
end)

it("should return false for an event without `title`", function()
	local event = {
		imageUrl = "https://images.rbxcdn.com/65dcdb1e60fcf88327eaa65180161167",
		pagePath = "/sponsored/ROBLOXU",
	}
	expect(isEventValid(event)).toBe(false)
end)

it("should return false for an event without `imageUrl`", function()
	local event = {
		title = "ROBLOXU",
		pagePath = "/sponsored/ROBLOXU",
	}
	expect(isEventValid(event)).toBe(false)
end)

it("should return false for an event without `pagePath`", function()
	local event = {
		title = "ROBLOXU",
		imageUrl = "https://images.rbxcdn.com/65dcdb1e60fcf88327eaa65180161167",
	}
	expect(isEventValid(event)).toBe(false)
end)

return {}
