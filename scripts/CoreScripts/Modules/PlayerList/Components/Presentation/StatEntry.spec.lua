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
		local layoutValues = CreateLayoutValues(false, false)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			StatEntry = Roact.createElement(StatEntry, {
				statName = "Test Stat",
				statValue = 50,
				isTitleEntry = false,
				isTeamEntry = false,
				layoutOrder = 2,

				backgroundStyle = layoutValues.BackgroundStyle.Default,
				textStyle = layoutValues.TextStyle.Default,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local layoutValues = CreateLayoutValues(true, false)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			StatEntry = Roact.createElement(StatEntry, {
				statName = "Test Stat",
				statValue = 50,
				isTitleEntry = true,
				isTeamEntry = true,
				layoutOrder = 2,

				backgroundStyle = layoutValues.BackgroundStyle.Default,
				textStyle = layoutValues.TextStyle.Default,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end