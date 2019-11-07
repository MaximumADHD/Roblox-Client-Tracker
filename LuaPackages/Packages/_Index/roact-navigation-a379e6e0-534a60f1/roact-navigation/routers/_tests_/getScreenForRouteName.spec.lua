return function()
	local getScreenForRouteName = require(script.Parent.Parent.getScreenForRouteName)

	it("should throw for invalid arg types", function()
		local status, err = pcall(function()
			getScreenForRouteName("", "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "routeConfigs must be a table")).to.never.equal(nil)

		status, err = pcall(function()
			getScreenForRouteName({}, 5)
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "routeName must be a string")).to.never.equal(nil)
	end)

	it("should throw if requested route is not present within table", function()
		local status, err = pcall(function()
			getScreenForRouteName({
				notMyRoute = function() return "foo" end
			}, "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "There is no route defined for key 'myRoute'.")).to.never.equal(nil)
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
		local status, err = pcall(function()
			getScreenForRouteName({
				myRoute = {
					getScreen = function() return nil end
				}
			}, "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "The getScreen function defined for route 'myRoute'" ..
			" did not return a valid screen or navigator")).to.never.equal(nil)
	end)

	it("should throw if screen is not a valid Roact element", function()
		local status, err = pcall(function()
			getScreenForRouteName({
				myRoute = {
					screen = 5,
				}
			}, "myRoute")
		end)

		expect(status).to.equal(false)
		expect(string.find(err, "screen param for key 'myRoute' must be a valid Roact component.")).to.never.equal(nil)
	end)
end

