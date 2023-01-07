local Squads = script:FindFirstAncestor("Squads")

local devDependencies = require(Squads.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local joinExperienceMapStateToProps = require(script.Parent.joinExperienceMapStateToProps)

local mockProps = {
	universeId = "123",
}

describe("GIVEN default state", function()
	local mockState = {
		SocialModalsSquads = {
			Games = {
				byGameId = { ["123"] = { name = "Super Cool Experience", maxPlayers = 6, rootPlaceId = "456" } },
				mediaByGameId = { ["123"] = { { assetTypeId = 1, imageId = 789 } } },
			},
		},
		ScreenSize = Vector2.new(1000, 100),
	}
	it("SHOULD return correct default data", function()
		local result = joinExperienceMapStateToProps(mockState, mockProps)

		local expectedResult = {
			experienceName = "Super Cool Experience",
			experienceServerSize = 6,
			experienceImageId = "http://www.roblox.com/asset/?id=789",
			screenSize = mockState.ScreenSize,
		}

		expect(result).toEqual(expectedResult)
	end)
end)
