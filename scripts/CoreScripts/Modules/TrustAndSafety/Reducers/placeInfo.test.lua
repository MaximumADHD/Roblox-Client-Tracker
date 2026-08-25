local CorePackages = game:GetService("CorePackages")

local TnsModule = script.Parent.Parent
local SetPlaceInfo = require(TnsModule.Actions.SetPlaceInfo)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local placeInfo = require(script.Parent.placeInfo)

describe("name & description", function()
	local newName = "newName"
	local newDescription = "newDescription"

	it("should update", function()
		local oldState = placeInfo(nil, {})
		local newState = placeInfo(oldState, SetPlaceInfo(newName, newDescription))
		expect(oldState).never.toBe(newState)
		expect(newState).toMatchObject({
			name = newName,
			description = newDescription,
		})
	end)
end)
