return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local DropDownButton = require(script.Parent.DropDownButton)

	describe("DropDownButton", function()
		it("should mount and unmount without errors", function()
			local layoutValues = CreateLayoutValues(false)
			local store = Rodux.Store.new(Reducer)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
					layoutValues = layoutValues
				}, {
					ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {}, {
						DropDownButton = Roact.createElement(DropDownButton, {
							contentVisible = true,
							buttonTransparency = 0,
							text = "test",
							layoutOrder = 1,
							icon = "",
							lastButton = false,
							forceShowOptions = false,
							screenSizeX = 800,
							screenSizeY = 600,
						})
					})
				})
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
