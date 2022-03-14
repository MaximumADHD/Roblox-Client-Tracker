return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local insert = require(script.Parent.insert)

	describe("return value", function()
		local size, element = {}, {}
		local result = insert(size, element)

		it("should have size field", function()
			jestExpect(result).toEqual({
				size = size,
				element = element
			})
		end)
	end)
end
