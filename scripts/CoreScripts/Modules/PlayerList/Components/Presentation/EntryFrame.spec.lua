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
		local layoutValues = CreateLayoutValues(false, false)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			EntryFrame = Roact.createElement(EntryFrame, {
				sizeX = 50,
				sizeY = 50,
				isTeamFrame = false,

				backgroundStyle = layoutValues.BackgroundStyle.Default,
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
				sizeX = 50,
				sizeY = 50,
				isTeamFrame = true,

				backgroundStyle = {
					Color = Color3.fromRGB(255, 0, 0),
					Transparency = 0.5,
				},
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end