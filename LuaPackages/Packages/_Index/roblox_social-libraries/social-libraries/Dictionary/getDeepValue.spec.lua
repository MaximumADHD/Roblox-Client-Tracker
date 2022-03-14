return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getDeepValue = require(script.Parent.getDeepValue)

	describe("GIVEN an empty array", function()
		local tab = {}
		it("SHOULD return nil", function()
			jestExpect(getDeepValue(tab, "")).toBeNil()
			jestExpect(getDeepValue(tab, "hello.world")).toBeNil()
		end)
	end)

	describe("GIVEN a dictionary with hello.world", function()
		local tab = {
			hello = {
				world = 100,
			},
		}
		describe("GIVEN an empty string as the second argument", function()
			it("SHOULD return nil", function()
				jestExpect(getDeepValue(tab, "")).toBeNil()
			end)
		end)

		describe("GIVEN `goodbye.world` as the second argument", function()
			it("SHOULD return nil", function()
				jestExpect(getDeepValue(tab, "goodbye.world")).toBeNil()
			end)
		end)

		describe("GIVEN `hello.there` as the second argument", function()
			it("SHOULD return nil", function()
				jestExpect(getDeepValue(tab, "hello.there")).toBeNil()
			end)
		end)

		describe("GIVEN `hello.there` as the second argument", function()
			it("SHOULD return nil", function()
				jestExpect(getDeepValue(tab, "hello.there")).toBeNil()
			end)
		end)

		describe("GIVEN `hello` as the second argument", function()
			it("SHOULD return the hello table", function()
				jestExpect(getDeepValue(tab, "hello")).toBe(tab.hello)
			end)
		end)

		describe("GIVEN `hello.world` as the second argument", function()
			it("SHOULD return the 100 (the value mapped to hello.world)", function()
				jestExpect(getDeepValue(tab, "hello.world")).toBe(100)
			end)
		end)
	end)
end
