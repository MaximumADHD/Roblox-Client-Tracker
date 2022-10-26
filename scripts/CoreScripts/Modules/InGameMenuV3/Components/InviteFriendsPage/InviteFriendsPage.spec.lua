--!nonstrict
return function()
	--For tests specific to InviteFriendsList, see InviteFriendsList.spec.lua
	local CorePackages = game:GetService("CorePackages")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local act = require(Modules.act)
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)
	local Constants = require(InGameMenu.Resources.Constants)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local FocusHandlerContextProvider = require(
		script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local InviteFriendsPage = require(script.Parent)
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)

	local mountTreeWithGamepad = function()
		local store = Rodux.Store.new(reducer)
		local mockPlayersService = {
			LocalPlayer = {
				UserId = 261,
			},
			GetFriendsAsync = function(localuserID)
				return {
					IsFinished = true,
					GetCurrentPage = function()
						return {
							{
								Id = 2231221,
								IsOnline = true,
								Username = "TheGamer101",
								DisplayName = "TestDisplayName",
							},
							{
								Id = 261,
								IsOnline = false,
								Username = "Shedletsky",
								DisplayName = "TestDisplayName",
							},
						}
					end,
				}
			end,
		}

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						InviteFriendsPage = Roact.createElement(InviteFriendsPage, {
							pageTitle = "InviteFriends",
							PlayersService = mockPlayersService,
						}),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
		return store, instance
	end

	describeSKIP("Gamepad support", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local store, instance = mountTreeWithGamepad()
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetCurrentPage(Constants.InviteFriendsPageKey))
				store:dispatch(SetMenuOpen(true))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).to.never.be.ok()

			Roact.unmount(instance)
		end)

		it("Should gain focus only when gamepad was used", function()
			local store, instance = mountTreeWithGamepad()
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage(Constants.InviteFriendsPageKey))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).to.be.ok()

			Roact.unmount(instance)
		end)
	end)
end
