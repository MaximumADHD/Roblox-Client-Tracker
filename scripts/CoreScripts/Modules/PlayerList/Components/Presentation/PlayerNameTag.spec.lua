return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local FFlagLeaderboardDontWaitOnChinaPolicy = require(PlayerList.Flags.FFlagLeaderboardDontWaitOnChinaPolicy)

	local PlayerNameTag = require(script.Parent.PlayerNameTag)

	it("should create and destroy without errors", function()
		local layoutValues = CreateLayoutValues(false, false)

		if FFlagLeaderboardDontWaitOnChinaPolicy then
			local store = Rodux.Store.new(Reducer)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LayoutValues = Roact.createElement(LayoutValuesProvider, {
					layoutValues = layoutValues
				}, {
					PlayerNameTag = Roact.createElement(PlayerNameTag, {
						player = Players.LocalPlayer,
						isTitleEntry = false,
						isHovered = false,
						layoutOrder = 2,

						textStyle = {
							Color = Color3.new(1, 1, 1),
							Transparency = 1,
						},
						textFont = {
							Size = 20,
							Font = Enum.Font.Gotham,
						},
					})
				})
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		else
			local element = Roact.createElement(LayoutValuesProvider, {
				layoutValues = layoutValues
			}, {
				PlayerNameTag = Roact.createElement(PlayerNameTag, {
					player = Players.LocalPlayer,
					isTitleEntry = false,
					isHovered = false,
					layoutOrder = 2,

					textStyle = {
						Color = Color3.new(1, 1, 1),
						Transparency = 1,
					},
					textFont = {
						Size = 20,
						Font = Enum.Font.Gotham,
					},
				})
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end
	end)

	it("should create and destroy without errors tenfoot", function()
		local layoutValues = CreateLayoutValues(true, false)

		if FFlagLeaderboardDontWaitOnChinaPolicy then
			local store = Rodux.Store.new(Reducer)

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				LayoutValues = Roact.createElement(LayoutValuesProvider, {
					layoutValues = layoutValues
				}, {
					PlayerNameTag = Roact.createElement(PlayerNameTag, {
						player = Players.LocalPlayer,
						isTitleEntry = true,
						isHovered = true,
						layoutOrder = 1,

						textStyle = layoutValues.DefaultTextStyle,
						textFont = {
							Size = 32,
							Font = Enum.Font.Gotham,
						},
					})
				})
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		else
			local element = Roact.createElement(LayoutValuesProvider, {
				layoutValues = layoutValues
			}, {
				PlayerNameTag = Roact.createElement(PlayerNameTag, {
					player = Players.LocalPlayer,
					isTitleEntry = true,
					isHovered = true,
					layoutOrder = 1,

					textStyle = layoutValues.DefaultTextStyle,
					textFont = {
						Size = 32,
						Font = Enum.Font.Gotham,
					},
				})
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end
	end)
end