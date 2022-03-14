return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local compose = require(script.Parent.compose)

	local function double(x)
		return x * 2
	end

	local function square(x)
		return x * x
	end

	 local function mult(x, y)
		return x * y
	end

	describe("compose basics", function()
		it("should return stub for empty functions list", function()
			local result = compose()
			jestExpect(result(1)).toBe(1)
		end)
		it("should return itself for single function", function()
			jestExpect(compose(double)).toBe(double)
			jestExpect(compose(double)(3)).toBe(6)
		end)
		it("should combine functions last to first", function()
			jestExpect(compose(square, double)(5)).toBe(100)
		end)

		it("should combine functions with single and multiple arguments", function()
			jestExpect(compose(double, mult)(5 , 5)).toBe(50)
		end)

		it("returns the first given argument if given no functions", function()
			jestExpect(compose()(1, 2)).toBe(1)
			jestExpect(compose()(3)).toBe(3)
			jestExpect(compose()()).toBe(nil)
		end)
	end)

end
