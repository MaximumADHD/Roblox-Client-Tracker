return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)
	local InGameMenu = script.Parent.Parent
	local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local FriendBlockConfirmation = require(script.Parent.FriendBlockConfirmation)

	local function getStore()
		local store = Rodux.Store.new(reducer)
		local targetBlockFriend = {
			UserId = 123,
			Name = "testName",
			DisplayName = "testDisplay",
		}
		store:dispatch(SetFriendBlockConfirmation(true, targetBlockFriend))
		return store
	end

	describe("mount & unmount", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = getStore(),
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
					style = appStyle,
				}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						FriendBlockConfirmation = Roact.createElement(FriendBlockConfirmation, {
							width = 300,
							zIndex = 2,
							onClosePlayerContextualMenu = function()
								print("Close Player ContextMenu")
							end,
						}),
					}),
				}),
			})
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
