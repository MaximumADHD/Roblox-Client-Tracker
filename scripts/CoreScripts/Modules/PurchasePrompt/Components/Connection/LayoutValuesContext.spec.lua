return function()

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local Connection = script.Parent

	local LayoutValuesProvider = require(Connection.LayoutValuesProvider)
	local withLayoutValues = require(Connection.withLayoutValues)

	local testComponent = function(props)
		return withLayoutValues(function(values)
			props.testValueCallback(values.Size.ButtonHeight)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(values.Size.ButtonHeight, values.Size.ButtonHeight)
			})
		end)
	end

	it("should create and destroy without errors", function()
		local testValue = nil

		local element = Roact.createElement(LayoutValuesProvider, {
			isTenFootInterface = true,
		}, {
			Component = Roact.createElement(testComponent, {
				testValueCallback = function(value)
					testValue = value
				end,
			})
		})
		local instance = Roact.mount(element)

		expect(testValue).never.toBeNil()

		Roact.unmount(instance)
	end)
end
