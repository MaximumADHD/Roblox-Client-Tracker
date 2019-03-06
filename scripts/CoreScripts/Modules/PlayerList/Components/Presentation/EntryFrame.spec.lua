return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local EntryFrame = require(script.Parent.EntryFrame)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(false, false)
		}, {
			EntryFrame = Roact.createElement(EntryFrame, {
				isTitleFrame = false,
				sizeX = 50,
				sizeY = 50,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors while tenfoot", function()
		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = CreateLayoutValues(true, false)
		}, {
			EntryFrame = Roact.createElement(EntryFrame, {
				teamColor = Color3.fromRGB(255, 0, 0),
				isTitleFrame = true,
				sizeX = 50,
				sizeY = 50,
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end