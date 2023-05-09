local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)
local llama = LuaSocialLibrariesDeps.llama
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local convertLuaAppUserToSocialUser = require(script.Parent.convertLuaAppUserToSocialUser)

describe("convertLuaAppUserToSocialUser", function()
	it("SHOULD add name and gameInstanceId to user and keep other values the same", function()
		local mockUser = {
			id = "123",
			username = "reggie",
			gameId = "1234",
		}

		local newUser = convertLuaAppUserToSocialUser(mockUser)

		expect(newUser.name).toBe("reggie")
		expect(newUser.gameInstanceId).toBe("1234")
		expect(newUser).toEqual(llama.Dictionary.join(mockUser, {
			name = "reggie",
			gameInstanceId = "1234",
		}))
	end)
end)
