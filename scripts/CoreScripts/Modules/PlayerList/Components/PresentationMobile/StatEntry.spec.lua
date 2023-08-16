return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local StatEntry = require(script.Parent.StatEntry)


	it("should create and destroy without errors", function()
		local layoutValues = CreateLayoutValues(false)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				StatEntry = Roact.createElement(StatEntry, {
					statValue = 50,
					isTitleEntry = false,
					isTeamEntry = false,
					layoutOrder = 2,
					textStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 0,
					},
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local layoutValues = CreateLayoutValues(true)

		local element = Roact.createElement(LayoutValuesProvider, {
			layoutValues = layoutValues
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
				StatEntry = Roact.createElement(StatEntry, {
					statValue = 50,
					isTitleEntry = true,
					isTeamEntry = true,
					layoutOrder = 2,
					textStyle = layoutValues.DefaultTextStyle,
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end