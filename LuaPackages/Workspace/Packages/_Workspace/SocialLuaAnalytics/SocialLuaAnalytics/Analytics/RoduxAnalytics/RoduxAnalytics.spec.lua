return function()
	local SocialLuaAnalytics = script:FindFirstAncestor("SocialLuaAnalytics")

	local devDependencies = require(SocialLuaAnalytics.devDependencies)
	local jestExpect = devDependencies.jestExpect

	local RoduxAnalytics = require(script.Parent)

	local options = {
		keyPath = "ProjectPath",
	}

	describe("RoduxAnalytics", function()
		it("SHOULD return table with config function", function()
			jestExpect(RoduxAnalytics).toEqual({
				config = jestExpect.any("function"),
			})
		end)
	end)

	describe("RoduxAnalytics config", function()
		it("SHOULD return table with installReducer and correct actions and selectors", function()
			jestExpect(RoduxAnalytics.config(options)).toEqual({
				installReducer = jestExpect.any("function"),
				Selectors = {
					getSessionIdByKey = jestExpect.any("function"),
				},
				Actions = {
					SessionIdUpdated = {
						name = "SessionIdUpdated",
					},
				},
			})
		end)
	end)

	describe("RoduxAnalytics installReducer", function()
		it("SHOULD return reducer", function()
			jestExpect(RoduxAnalytics.config(options).installReducer()).toEqual(jestExpect.any("function"))
		end)
	end)
end
