return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local PlayerNameTag = require(script.Parent.PlayerNameTag)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			PlayerNameTag = Roact.createElement(PlayerNameTag, {
				isSelected = false,
				isTitleEntry = false,
				player = Players.LocalPlayer,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(true, false)
		}, {
			PlayerNameTag = Roact.createElement(PlayerNameTag, {
				isSelected = false,
				isTitleEntry = false,
				player = Players.LocalPlayer,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end