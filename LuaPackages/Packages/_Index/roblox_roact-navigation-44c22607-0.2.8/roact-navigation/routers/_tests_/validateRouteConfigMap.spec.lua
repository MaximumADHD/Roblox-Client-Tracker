return function()
	local Roact = require(script.Parent.Parent.Parent.Parent.Roact)
	local validateRouteConfigMap = require(script.Parent.Parent.validateRouteConfigMap)

	local function expectError(functor, msg)
		local status, err = pcall(functor)
		expect(status).to.equal(false)
		expect(string.find(err, msg)).to.never.equal(nil)
	end

	local TestComponent = Roact.Component:extend("TestComponent")
	function TestComponent:render()
		return nil
	end


	it("should throw if routeConfigs is not a table", function()
		expectError(function()
			validateRouteConfigMap(5)
		end, "routeConfigs must be a table")
	end)

	it("should throw if routeConfigs is empty", function()
		expectError(function()
			validateRouteConfigMap({})
		end, "Please specify at least one route when configuring a navigator%.")
	end)

	it("should throw if routeConfigs contains an invalid Roact element", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = 5,
			})
		end, "The component for route 'myRoute' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.")
	end)

	it("should throw if getScreen returns invalid Roact element", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = {
					getScreen = function() end,
				},
			})
		end, "The component for route 'myRoute' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.")
	end)

	it("should throw when both screen and getScreen are provided for same component", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = {
					screen = "TheScreen",
					getScreen = function() return TestComponent end,
				}
			})
		end, "Route 'myRoute' should provide 'screen' or 'getScreen', but not both%.")
	end)

	it("should throw for a simple table where screen is not a Roact Function/Stateful component", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = {
					screen = {},
				}
			})
		end, "The component for route 'myRoute' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.")
	end)

	it("should throw for a non-function getScreen", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = {
					getScreen = 5
				}
			})
		end, "The component for route 'myRoute' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.")
	end)

	it("should throw for a Host Component", function()
		expectError(function()
			validateRouteConfigMap({
				myRoute = {
					aFrame = "Frame"
				}
			})
		end, "The component for route 'myRoute' must be a Roact Function/Stateful component or table with 'getScreen'." ..
			"getScreen function must return Roact Function/Stateful component.")
	end)


	it("should pass for valid basic routeConfigs", function()
		validateRouteConfigMap({
			basicComponentRoute = TestComponent,
			functionalComponentRoute = function() end,
		})
	end)

	it("should pass for valid screen prop type routeConfigs", function()
		validateRouteConfigMap({
			basicComponentRoute = {
				screen = TestComponent,
			},
			functionalComponentRoute = {
				screen = function() end,
			},
		})
	end)

	it("should pass for valid getScreen route configs", function()
		validateRouteConfigMap({
			getScreenRoute = {
				getScreen = function() return TestComponent end,
			}
		})
	end)
end
