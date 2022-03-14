return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")

	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
    local searchFilterPredicate = require(script.Parent.searchFilterPredicate)

    describe("should filter based on string match", function()
        local stringA = "Abc"
        local stringB = "Bcd"
        local stringC = "Cde"

        it("should filter all entries that don't include an 'e' ", function()
            jestExpect(searchFilterPredicate("e", stringA)).toBe(false)
            jestExpect(searchFilterPredicate("e", stringB)).toBe(false)
            jestExpect(searchFilterPredicate("e", stringC)).toBe(true)
        end)

        it("should filter all entries that don't include a 'b' ", function()
            jestExpect(searchFilterPredicate("b", stringA)).toBe(true)
            jestExpect(searchFilterPredicate("b", stringB)).toBe(true)
            jestExpect(searchFilterPredicate("b", stringC)).toBe(false)
        end)

        it("should filter all entries that don't include 'abc' ", function()
            jestExpect(searchFilterPredicate("abc", stringA)).toBe(true)
            jestExpect(searchFilterPredicate("abc", stringB)).toBe(false)
            jestExpect(searchFilterPredicate("abc", stringC)).toBe(false)
        end)
    end)
end
