--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")
	local GuiService = game:GetService("GuiService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local act = require(Modules.act)
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox
	local Cryo = InGameMenuDependencies.Cryo

	local InGameMenu = script.Parent.Parent.Parent
	local Constants = require(InGameMenu.Resources.Constants)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)

	local AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)


	local appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local ReportList = require(script.Parent.ReportList)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer, {
			currentZone = 1,
		})

		local reportList = Roact.createElement(ReportList, Cryo.Dictionary.join(props or {}, {
			placeName = "Crossroads",
			players = {
				{
					Id = 2231221,
					Username = "TheGamer101"
				},
				{
					Id = 1,
					Username = "Roblox",
				},
				{
					Id = 2,
					Username = "Jonah",
				},
				{
					Id = 3,
					Username = "Simeon",
				},
				{
					Id = 4,
					Username = "Elias",
				}
			},
		}))

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						ReportList = reportList,
					}) or nil,
					ReportList = not GetFFlagIGMGamepadSelectionHistory() and reportList or nil,
				}),
			}),
		}),
			store
	end

	describe("Mount/unmount", function()
		it("should create with correct children, and destroy without errors", function()
			local element = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			jestExpect(#Players.LocalPlayer.PlayerGui:GetChildren()).toEqual(1)

			-- check for a few things we expect to find at various places in the tree
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("GameIcon", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerIcon", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("ContentsScrollingFrame", true)).toBeDefined()


			local count = 0
			for _, inst in pairs(Players.LocalPlayer.PlayerGui:FindFirstChild("ContentsScrollingFrame", true)[1]:GetChildren()) do
				if inst.ClassName == "TextButton" then
					count += 1
				end
			end

			-- 5 players + 1 game
			jestExpect(count).toEqual(6)

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
				store:dispatch(SetCurrentPage("Report"))
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
				store:dispatch(SetCurrentPage("Report"))
				store:flush()
			end)

			jestExpect(GuiService.SelectedCoreObject).toBeDefined()

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)
end
