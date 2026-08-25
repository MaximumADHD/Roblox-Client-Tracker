local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenu = script.Parent.Parent
local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)
local gameInfo = require(script.Parent.gameInfo)

describe("SetGameNameAndDescription", function()
	it("should correctly set the game name and description", function()
		local testName = "Test Name"
		local testDescription = "This is a test game!"

		local oldState = gameInfo(nil, {})
		local newState = gameInfo(oldState, SetGameNameAndDescription(testName, testDescription))
		expect(oldState).never.toBe(newState)
		expect(newState).toEqual({
			name = testName,
			description = testDescription,
		})
	end)
end)
