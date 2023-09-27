return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Components = script.Parent.Parent

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local LayoutValues = require(script.Parent.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider
	local WithLayoutValues = LayoutValues.WithLayoutValues

	local testComponent = function(props)
		return WithLayoutValues(function(layoutValues)
			props.testTopBarOffset(layoutValues.TopBarOffset)
			return Roact.createElement("Frame", {
				Size = UDim2.fromOffset(layoutValues.TopBarOffset, layoutValues.TopBarOffset)
			})
		end)
	end

	it("should create and destroy without errors", function()
		local layoutValues = CreateLayoutValues(false)

		local testValue = nil

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			Component = Roact.createElement(testComponent, {
				testTopBarOffset = function(topBarOffset)
					testValue = topBarOffset
				end,
			})
		})
		local instance = Roact.mount(element)

		expect(testValue).never.toBeNil()

		Roact.unmount(instance)
	end)
end
