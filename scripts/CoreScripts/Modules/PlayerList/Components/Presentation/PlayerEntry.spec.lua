return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)

	local PlayerList = script.Parent.Parent.Parent
	local Reducers = PlayerList.Reducers
	local Reducer = require(Reducers.Reducer)

	local Components = script.Parent.Parent
	local Connection = Components.Connection
	local LayoutValues = require(Connection.LayoutValues)
	local LayoutValuesProvider = LayoutValues.Provider

	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local PlayerEntry = require(script.Parent.PlayerEntry)

	local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
	local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local function getFakeRelationship()
		return {
			isBlocked = false,
			friendStatus = Enum.FriendStatus.FriendRequestSent,
			isFollowing = false,
			isFollower = false,
		}
	end

	local function getFakeIconInfo()
		return {
			isPlaceOwner = true,
			avatarIcon = nil,
			specialGroupIcon = nil,
		}
	end

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(Reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(false, false)
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					PlayerEntry = Roact.createElement(PlayerEntry, {
						player = Players.LocalPlayer,
						playerStats = {},
						playerIconInfo = getFakeIconInfo(),
						playerRelationship = getFakeRelationship(),
						entrySize = 50,
						titlePlayerEntry = false,
						hasDivider = true,
						gameStats = {},
					})
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local store = Rodux.Store.new(Reducer)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
				layoutValues = CreateLayoutValues(true, false)
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					PlayerEntry = Roact.createElement(PlayerEntry, {
						player = Players.LocalPlayer,
						playerStats = {},
						playerIconInfo = getFakeIconInfo(),
						playerRelationship = getFakeRelationship(),
						entrySize = 150,
						titlePlayerEntry = true,
						hasDivider = false,
						gameStats = {},
					})
				})
			})
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end