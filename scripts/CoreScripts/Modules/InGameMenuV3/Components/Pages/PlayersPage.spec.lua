--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")
	local Modules = CoreGui.RobloxGui.Modules

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local XPath = Rhodium.XPath
	local VirtualInput = Rhodium.VirtualInput

	local act = require(Modules.act)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Cryo = InGameMenuDependencies.Cryo
	local InGameMenu = script.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox
	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
	local Players = game:GetService("Players")
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local Constants = require(InGameMenu.Resources.Constants)
	local FFlagUsePageSearchAnimation = require(InGameMenu.Flags.GetFFlagUsePageSearchAnimation)()

	local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
	local ParticipantAdded = require(RobloxGui.Modules.VoiceChat.Actions.ParticipantAdded)

	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local Localization = require(InGameMenu.Localization.Localization)
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local FocusHandlerContextProvider = require(
		InGameMenu.Components.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local PlayersPage = require(script.Parent.PlayersPage)
	local GuiService = game:GetService("GuiService")

	local localPlayer = {
		UserId = 1234,
		Name = "Myself",
		DisplayName = "Myself",
		GetFriendStatus = function(player)
			return nil
		end,
	}

	local function getMountableTreeAndStore(props, otherPlayers)
		local store = Rodux.Store.new(reducer, {}, { Rodux.thunkMiddleware })

		local players = {
			localPlayer,
		}

		if otherPlayers and #otherPlayers then
			players = Cryo.List.join(players, otherPlayers)
		end

		local playersPage = Roact.createElement(
			PlayersPage,
			Cryo.Dictionary.join({
				pageTitle = "People",
				players = players,
			}, props or {})
		)

		store:dispatch(ParticipantAdded(tostring(localPlayer.UserId)))

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = Roact.createElement(FocusHandlerContextProvider, {}, {
						PlayersPage = playersPage,
					}),
				}),
			}),
		}),
			store
	end

	beforeEach(function()
		-- We are not expecting any specific page to *clear* focus, only capture it
		GuiService.SelectedCoreObject = nil
	end)

	afterEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	describe("PlayersPage rendering", function()
		it("mounts and unmounts with rendered children", function()
			local element = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			jestExpect(#Players.LocalPlayer.PlayerGui:GetChildren()).toEqual(1)

			-- check for a few things we expect to find at various places in the tree
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PageHeader", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerIcon", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerList", true)).toBeDefined()

			Roact.unmount(instance)
		end)

		it("Renders single player (and basic PlayersPage components)", function()
			local element, store = getMountableTreeAndStore()
			jestExpect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			store:dispatch(SetMenuOpen(true))
			store:dispatch(SetCurrentPage("Players"))
			store:flush()

			local renderedPlayersPage = Players.LocalPlayer.PlayerGui:GetChildren()[1]
			jestExpect(renderedPlayersPage).toBeDefined()

			local renderedHeader = renderedPlayersPage:FindFirstChild("PageHeader", true)
			jestExpect(renderedHeader).toBeDefined()

			local renderedHeaderBar = renderedPlayersPage:FindFirstChild("ThreeSectionBar", true)
			jestExpect(renderedHeaderBar).toBeDefined()

			if FFlagUsePageSearchAnimation then
				jestExpect(renderedHeaderBar.centerFrame.centerContent.Title.Text).toEqual("People")
			else
				jestExpect(renderedHeaderBar.centerFrame.centerContent.Text).toEqual("People")
			end

			local renderedPlayerListContent = renderedPlayersPage:FindFirstChild("PlayerListContent", true)
			jestExpect(renderedPlayerListContent).toBeDefined()

			local renderedPlayers = renderedPlayerListContent:FindFirstChild(
				"MainCanvas",
				true
			)
			jestExpect(renderedPlayers).toBeDefined()

			-- 1 actual player listed in the current players
			local playerCount = 0
			for _, inst in pairs(renderedPlayers:GetChildren()) do
				-- filter out non-player children (some children are layout related)
				if inst:FindFirstChild("PlayerIcon", true) then
					playerCount += 1
				end
			end

			jestExpect(playerCount).toEqual(1)
			Roact.unmount(instance)
		end)
	end)

	describe("Gamepad support", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element, store = getMountableTreeAndStore()
			jestExpect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage("Players"))
				store:flush()
			end)

			jestExpect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("Should gain focus only when gamepad was used and FFlagInGameMenuController is enabled", function()
			local element, store = getMountableTreeAndStore()
			jestExpect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage("Players"))
				store:flush()
			end)

			jestExpect(GuiService.SelectedCoreObject).toBeDefined()

			Roact.unmount(instance)
		end)
	end)

	describe("Players list rendering of sections", function()
		it("Should show only local player in the people section", function()
			local element = getMountableTreeAndStore()
			jestExpect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

			-- ensure friend is showing up in the proper sections
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("header_incoming_friend_requests", true)).toBeNil()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("player_1234", true)).toBeDefined()

			Roact.unmount(instance)
		end)

		it("Should show player in incoming players request section for player invite", function()
			local potentialFriend = {
				UserId = 1235,
				Name = "potentialFriend",
				DisplayName = "Potential Friend",
			}

			local element, store = getMountableTreeAndStore({
				incomingFriendRequests = {
					potentialFriend,
				},
			})
			act(function()
				store:dispatch(ParticipantAdded(tostring(potentialFriend.UserId)))
				store:flush()
			end)

			jestExpect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

			-- ensure friend is showing up in the proper sections
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("header_incoming_friend_requests", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("incoming_request_player_1235", true)).toBeDefined()

			Roact.unmount(instance)
		end)

		itSKIP("Should show player context menu when player is pressed", function()
			local mockPlayersService = {
				LocalPlayer = localPlayer,
				GetPlayerByUserId = function(_)
					return localPlayer
				end,
				GetFriendStatus = function(_)
					return Enum.FriendStatus.Unknown
				end,
			}

			local element = getMountableTreeAndStore({
				playersService = mockPlayersService,
			})

			local folder = Instance.new("ScreenGui", CoreGui)
			local instance = Roact.mount(element, folder)
			local playerCellPath = XPath.new(folder:FindFirstChild("player_1234", true))
			local playerCellImageButton = Element.new(playerCellPath)
			jestExpect(playerCellImageButton).toBeDefined()
			jestExpect(playerCellImageButton:getRbxInstance()).toBeDefined()

			act(function()
				playerCellImageButton:click()
				VirtualInput.waitForInputEventsProcessed()
			end)

			jestExpect(CoreGui:FindFirstChild("MoreActionsMenu", true)).toBeDefined()

			Roact.unmount(instance)
		end)
	end)
end
