return function()
	local getActiveChildNavigationOptions = require(script.Parent.Parent.getActiveChildNavigationOptions)

	it("should return a function", function()
		expect(type(getActiveChildNavigationOptions)).to.equal("function")
	end)

	it("should ask router for current screen options and return them", function()
		local testInputScreenOpts = {}
		local testScreenOpts = {}

		local navigation = {
			state = {
				routes = {
					{ key = "123" }
				},
				index = 1,

			},
			router = {}, -- stub
		}

		function navigation.getChildNavigation(key)
			if key == "123" then
				return navigation
			else
				return nil
			end
		end

		local testOutputScreenOpts = nil
		function navigation.router.getScreenOptions(activeNav, screenProps)
			testOutputScreenOpts = screenProps

			if activeNav == navigation then
				return testScreenOpts
			else
				return nil
			end
		end

		expect(getActiveChildNavigationOptions(navigation, testInputScreenOpts))
			.to.equal(testScreenOpts)
		expect(testOutputScreenOpts).to.equal(testInputScreenOpts)
	end)
end

