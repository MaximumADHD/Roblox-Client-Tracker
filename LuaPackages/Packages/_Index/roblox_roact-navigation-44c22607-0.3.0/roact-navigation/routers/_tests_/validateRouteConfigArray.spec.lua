return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local validateRouteConfigArray = require(script.Parent.Parent.validateRouteConfigArray)

	local TestComponent = Roact.Component:extend("TestComponent")
	function TestComponent:render()
		return nil
	end

	it("should throw if routeConfigs is not a table", function()
		expect(function()
			validateRouteConfigArray(5)
		end).to.throw("routeConfigs must be an array table")
	end)

	it("should throw if routeConfigs is empty", function()
		expect(function()
			validateRouteConfigArray({})
		end).to.throw("Please specify at least one route when configuring a navigator")
	end)

	it("should throw if routeConfigs contains an invalid Roact element", function()
		local error = "The component for route 'myRoute' must be a Roact Function/Stateful"
			.. " component or table with 'getScreen'.getScreen function must return Roact"
			.. " Function/Stateful component"
		expect(function()
			validateRouteConfigArray({
				{ myRoute = 5 },
			})
		end).to.throw(error)
	end)

	it("should throw if getScreen returns invalid Roact element", function()
		local error = "The component for route 'myRoute' must be a Roact Function/Stateful"
			.. " component or table with 'getScreen'.getScreen function must return Roact"
			.. " Function/Stateful component"
		expect(function()
			validateRouteConfigArray({
				{ myRoute = { getScreen = function() end } },
			})
		end).to.throw(error)
	end)

	it("should throw when both screen and getScreen are provided for same component", function()
		expect(function()
			validateRouteConfigArray({
				{myRoute = {
					screen = "TheScreen",
					getScreen = function() return TestComponent end,
				}}
			})
		end).to.throw("Route 'myRoute' should provide 'screen' or 'getScreen', but not both")
	end)

	it("should throw for a simple table where screen is not a Roact Function/Stateful component", function()
		local error = "The component for route 'myRoute' must be a Roact Function/Stateful"
			.. " component or table with 'getScreen'.getScreen function must return Roact"
			.. " Function/Stateful component"
		expect(function()
			validateRouteConfigArray({
				{ myRoute = { screen = {} } },
			})
		end).to.throw(error)
	end)

	it("should throw for a non-function getScreen", function()
		local error = "The component for route 'myRoute' must be a Roact Function/Stateful"
			.. " component or table with 'getScreen'.getScreen function must return"
			.. " Roact Function/Stateful component"
		expect(function()
			validateRouteConfigArray({
				{ myRoute = { getScreen = 5 } },
			})
		end).to.throw(error)
	end)

	it("should throw for a Host Component", function()
		local error = "The component for route 'myRoute' must be a Roact Function/Stateful"
			.. " component or table with 'getScreen'.getScreen function must return Roact"
			.. " Function/Stateful component"
		expect(function()
			validateRouteConfigArray({
				{ myRoute = { aFrame = "Frame" } },
			})
		end).to.throw(error)
	end)

	it("should throw if routeConfig is a map", function()
		local key = "basicComponentRoute"
		local error = ("routeConfigs must be an array table (found non-number key %q of type %q"):format(
			key,
			type(key)
		)
		expect(function()
			validateRouteConfigArray({
				[key] = TestComponent,
			})
		end).to.throw(error)
	end)

	it("should throw if there is more than one route in each array entry", function()
		local error = "only one route must be defined in each entry (found multiple at index 1)"
		expect(function()
			validateRouteConfigArray({
				{ aRouteName = TestComponent, anotherRoute = TestComponent },
			})
		end).to.throw(error)
	end)

	it("should pass for valid basic routeConfigs", function()
		validateRouteConfigArray({
			{ basicComponentRoute = TestComponent },
			{ functionalComponentRoute = function() end },
		})
	end)

	it("should pass for valid screen prop type routeConfigs", function()
		validateRouteConfigArray({
			{ basicComponentRoute = { screen = TestComponent } },
			{ functionalComponentRoute = { screen = function() end } },
		})
	end)

	it("should pass for valid getScreen route configs", function()
		validateRouteConfigArray({
			{ getScreenRoute = { getScreen = function() return TestComponent end } },
		})
	end)
end
