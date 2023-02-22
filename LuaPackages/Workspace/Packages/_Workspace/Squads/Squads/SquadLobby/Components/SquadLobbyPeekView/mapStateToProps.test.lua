local Squads = script:FindFirstAncestor("Squads")
local devDependencies = require(Squads.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mapStateToProps = require(script.Parent.mapStateToProps)

local mockNavigation = {
	goBack = jest.fn(),
}

local mockProps = {
	navigation = mockNavigation,
}

describe("GIVEN default state", function()
	local mockState = {
		Squad = {
			Squad = {},
		},
		ScreenSize = Vector2.new(1000, 100),
	}

	it("SHOULD return correct default data", function()
		local result = mapStateToProps(mockState, mockProps)

		local expectedResult = {
			peekViewProps = {
				mountAnimation = true,
				mountAsFullView = false,
				onPeekViewGoBack = expect.any("function"),
			},
			users = {},
			viewWidth = mockState.ScreenSize.X,
		}

		expect(result).toEqual(expectedResult)
	end)
end)

describe("GIVEN current squad state", function()
	local mockState = {
		Squad = {
			Squad = {
				currentSquad = {
					squadId = "00000000-0000-0000-0000-000000000000",
					createdUtc = 1672531200000,
					updatedUtc = 1672876800000,
					inviteLinkToken = "QWERTY",
					members = {
						{
							userId = 11117151865,
							status = "Creator",
						},
						{
							userId = 11128063413,
							status = "Member",
						},
					},
				},
			},
		},
		ScreenSize = Vector2.new(1000, 100),
	}

	it("SHOULD return proper users data", function()
		local result = mapStateToProps(mockState, mockProps)

		local expectedResult = {
			peekViewProps = {
				mountAnimation = true,
				mountAsFullView = false,
				onPeekViewGoBack = expect.any("function"),
			},
			users = {
				{ id = 11117151865, name = "Placeholder" },
				{ id = 11128063413, name = "Placeholder" },
			},
			viewWidth = mockState.ScreenSize.X,
		}

		expect(result).toEqual(expectedResult)
	end)
end)
