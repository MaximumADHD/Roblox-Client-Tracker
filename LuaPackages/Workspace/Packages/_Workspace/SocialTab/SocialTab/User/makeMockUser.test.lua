local SocialTab = script:FindFirstAncestor("SocialTab")

local dependencies = require(SocialTab.dependencies)
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local validateUser = require(script.Parent.validateUser)
local makeMockUser = require(script.Parent.makeMockUser)

describe("makeMockUser", function()
	it("SHOULD create a mock user that is a valid User type", function()
		local mockUser = makeMockUser()

		expect(validateUser(mockUser)).toBe(true)
	end)

	it("SHOULD let you override values with a config", function()
		local mockUser = makeMockUser({
			id = 234,
			username = "danielle",
			displayName = "danielly",
			lastLocation = "Played this game",
			userPresenceType = PresenceType.Online,
			thumbnail = "test",
			isPremium = true,
		})

		expect(mockUser.id).toBe(234)
		expect(mockUser.username).toBe("danielle")
		expect(mockUser.displayName).toBe("danielly")
		expect(mockUser.lastLocation).toBe("Played this game")
		expect(mockUser.isPremium).toBe(true)
		expect(mockUser.userPresenceType).toBe(PresenceType.Online)
		expect(mockUser.thumbnail).toBe("test")
	end)

	it("SHOULD throw an error if config is not a table or nil", function()
		expect(function()
			makeMockUser("string")
		end).toThrow()
	end)
end)
