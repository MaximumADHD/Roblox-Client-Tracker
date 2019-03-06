return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local StatEntry = require(script.Parent.StatEntry)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			StatEntry = Roact.createElement(StatEntry, {
				isTitleFrame = false,
				statName = "Test Stat",
				statValue = 50,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(true, false)
		}, {
			StatEntry = Roact.createElement(StatEntry, {
				isTitleFrame = false,
				teamColor = Color3.fromRGB(255, 0, 0),
				statName = "Test Stat",
				statValue = true,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end