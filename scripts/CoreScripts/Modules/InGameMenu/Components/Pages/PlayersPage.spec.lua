--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Cryo = InGameMenuDependencies.Cryo
	local InGameMenu = script.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox
	local Players = game:GetService("Players")
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local Constants = require(InGameMenu.Resources.Constants)
	
	local Localization = require(InGameMenu.Localization.Localization)
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local FocusHandlerContextProvider = require(
		script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider
	)
	local PlayersPage = require(script.Parent.PlayersPage)
	
	local act = Roact.act

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)
	local GuiService = game:GetService("GuiService")

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer)
		local playersPage = Roact.createElement(
			PlayersPage,
			Cryo.Dictionary.join({ pageTitle = "People" }, props or {})
		)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(
						FocusHandlerContextProvider,
						{},
						{
							PlayersPage = playersPage,
						}
					) or nil,
					PlayersPage = not GetFFlagIGMGamepadSelectionHistory() and playersPage or nil,
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
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PageTitle", true)).toBeDefined()
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

			local renderedTitle = renderedPlayersPage:FindFirstChild("PageTitle")
			jestExpect(renderedTitle).toBeDefined()
			jestExpect(renderedTitle.text).toEqual("People")

			local renderedPlayerListContent = renderedPlayersPage:FindFirstChild("PlayerListContent", true)
			jestExpect(renderedPlayerListContent).toBeDefined()

			local renderedContentScrollingFrame = renderedPlayerListContent:FindFirstChild(
				"ContentsScrollingFrame",
				true
			)
			jestExpect(renderedContentScrollingFrame).toBeDefined()
			jestExpect(#renderedContentScrollingFrame:GetChildren()).toEqual(1)

			local renderedPlayers = renderedContentScrollingFrame:GetChildren()[1]

			-- 1 actual player listed in the current players
			local playerCount = 0
			for _, inst in pairs(renderedPlayers:GetChildren()) do
				-- filter out non-player children (some children are layout related)
				if inst:FindFirstChild("PlayerIcon") then
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
end
