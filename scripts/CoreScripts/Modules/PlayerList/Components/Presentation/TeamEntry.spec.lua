return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local TeamEntry = require(script.Parent.TeamEntry)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			TeamEntry = Roact.createElement(TeamEntry, {
				layoutOrder = 0,
				leaderstats = {},
				gameStats = {},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(true, false)
		}, {
			TeamEntry = Roact.createElement(TeamEntry, {
				layoutOrder = 0,
				leaderstats = {},
				gameStats = {},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end