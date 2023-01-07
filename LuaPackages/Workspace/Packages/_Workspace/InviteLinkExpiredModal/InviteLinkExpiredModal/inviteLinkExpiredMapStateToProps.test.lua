local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")

local devDependencies = require(InviteLinkExpiredModal.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local inviteLinkExpiredMapStateToProps = require(script.Parent.inviteLinkExpiredMapStateToProps)

local mockProps = {
	universeId = "123",
}

describe("GIVEN default state", function()
	local mockState = {
		InviteLinkExpiredModal = {
			NetworkStatus = {},
		},
		ScreenSize = Vector2.new(1000, 100),
	}

	it("SHOULD return correct default data", function()
		local result = inviteLinkExpiredMapStateToProps(mockState, mockProps)

		local expectedResult = {
			experienceName = nil,
			isLoading = false,
			screenSize = mockState.ScreenSize,
		}

		expect(result).toEqual(expectedResult)
	end)
end)

describe("GIVEN experience details fetching state", function()
	local mockState = {
		InviteLinkExpiredModal = {
			NetworkStatus = {
				["https://games.roblox.com//v1/games?universeIds=123"] = "Fetching",
			},
		},
		ScreenSize = Vector2.new(1000, 100),
	}

	it("SHOULD return loading data", function()
		local result = inviteLinkExpiredMapStateToProps(mockState, mockProps)

		local expectedResult = {
			experienceName = nil,
			isLoading = true,
			screenSize = mockState.ScreenSize,
		}

		expect(result).toEqual(expectedResult)
	end)
end)

describe("GIVEN experience details done state", function()
	local mockState = {
		InviteLinkExpiredModal = {
			Games = { byGameId = { ["123"] = { name = "Super Cool Experience" } } },
			NetworkStatus = {
				["https://games.roblox.com//v1/games?universeIds=123"] = "Done",
			},
		},
		ScreenSize = Vector2.new(1000, 100),
	}

	it("SHOULD return done data", function()
		local result = inviteLinkExpiredMapStateToProps(mockState, mockProps)

		local expectedResult = {
			experienceName = "Super Cool Experience",
			isLoading = false,
			screenSize = mockState.ScreenSize,
		}

		expect(result).toEqual(expectedResult)
	end)
end)
