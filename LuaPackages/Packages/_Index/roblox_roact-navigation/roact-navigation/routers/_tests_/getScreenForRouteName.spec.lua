return function()
	local getScreenForRouteName = require(script.Parent.Parent.getScreenForRouteName)

	it("should throw for invalid arg types", function()
		expect(function()
			getScreenForRouteName("", "myRoute")
		end).to.throw("routeConfigs must be a table")

		expect(function()
			getScreenForRouteName({}, 5)
		end).to.throw("routeName must be a string")
	end)

	it("should throw if requested route is not present within table", function()
		local function shouldThrow()
			getScreenForRouteName({
				notMyRoute = function() return "foo" end
			}, "myRoute")
		end

		expect(shouldThrow).to.throw(
			"There is no route defined for key myRoute.\nMust be one of: 'notMyRoute'"
		)
	end)

	it("should return raw table if screen and getScreen are not props", function()
		local screenComponent = { render = function() return nil end }
		local result = getScreenForRouteName({
			myRoute = screenComponent
		}, "myRoute")

		expect(result).to.equal(screenComponent)
	end)

	it("should return screen prop if it is set in route data table", function()
		local screenComponent = { render = function() return nil end }
		local result = getScreenForRouteName({
			myRoute = {
				screen = screenComponent
			}
		}, "myRoute")

		expect(result).to.equal(screenComponent)
	end)

	it("should return object returned by getScreen function if object is valid Roact element", function()
		local screenComponent = { render = function() return nil end }
		local result = getScreenForRouteName({
			myRoute = {
				getScreen = function() return screenComponent end
			}
		}, "myRoute")

		expect(result).to.equal(screenComponent)
	end)

	it("should throw if getScreen does not return a valid Roact element", function()
		local errorExpected = "The getScreen defined for route 'myRoute' didn't return a valid " ..
			"screen or navigator.\n\n"

		expect(function()
			getScreenForRouteName({
				myRoute = {
					getScreen = function() return nil end
				}
			}, "myRoute")
		end).to.throw(errorExpected)
	end)

	it("should throw if screen is not a valid Roact element", function()
		expect(function()
			getScreenForRouteName({
				myRoute = {
					screen = 5,
				}
			}, "myRoute")
		end).to.throw("screen for key 'myRoute' must be a valid Roact component.")
	end)
end

