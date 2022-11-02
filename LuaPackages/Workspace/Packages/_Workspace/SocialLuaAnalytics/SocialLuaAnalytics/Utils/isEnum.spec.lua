local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

local dependencies = require(SocialLuaAnalytics.dependencies)
local enumerate = dependencies.enumerate
local devDependencies = require(SocialLuaAnalytics.devDependencies)
local jestExpect = devDependencies.jestExpect

local isEnum = require(script.Parent.isEnum)

return function()
	describe("isEnum", function()
		it("SHOULD return true for an enum", function()
			local enum = enumerate("test", {
				Any = "any",
			})

			jestExpect(isEnum(enum.Any)).toBe(true)
		end)

		it("SHOULD return false for a string", function()
			jestExpect(isEnum("string")).toBe(false)
		end)

		it("SHOULD return false for a table", function()
			jestExpect(isEnum({})).toBe(false)
		end)
	end)
end
