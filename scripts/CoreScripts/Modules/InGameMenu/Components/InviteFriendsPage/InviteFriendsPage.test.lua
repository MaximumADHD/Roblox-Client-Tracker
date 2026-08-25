--!nonstrict
-- For tests specific to InviteFriendsList, see InviteFriendsList.spec.lua
local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local act = Roact.act

local InGameMenu = script.Parent.Parent.Parent
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local reducer = require(InGameMenu.reducer)
local Constants = require(InGameMenu.Resources.Constants)

local FocusHandlerContextProvider =
	require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local InviteFriendsPage = require(script.Parent)
local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)
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
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(FocusHandlerContextProvider, {}, {
							InviteFriendsPage = Roact.createElement(InviteFriendsPage, {
								pageTitle = "InviteFriends",
								PlayersService = mockPlayersService,
							}),
						})
					or nil,
				InviteFriendsPage = not GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(InviteFriendsPage, {
							pageTitle = "InviteFriends",
							PlayersService = mockPlayersService,
						})
					or nil,
			}),
		}),
	})

	local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
	return store, instance
end

describe("Gamepad support", function()
	it("Should not gain focus when gamepad is not the last used device", function()
		local store, instance = mountTreeWithGamepad()
		act(function()
			store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
			store:dispatch(SetCurrentPage("InviteFriends"))
			store:dispatch(SetMenuOpen(true))
			store:flush()
		end)

		expect(GuiService.SelectedCoreObject).toBeNil()

		Roact.unmount(instance)
	end)

	it("Should gain focus only when gamepad was used", function()
		local store, instance = mountTreeWithGamepad()
		act(function()
			store:dispatch(SetInputType(Constants.InputType.Gamepad))
			store:dispatch(SetMenuOpen(true))
			store:dispatch(SetCurrentPage("InviteFriends"))
			store:flush()
		end)

		expect(GuiService.SelectedCoreObject).never.toBeNil()

		Roact.unmount(instance)
	end)
end)
