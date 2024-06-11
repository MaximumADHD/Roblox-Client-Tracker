--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local Players = game:GetService("Players")
	local GuiService = game:GetService("GuiService")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local act = Roact.act

	local InGameMenu = script.Parent.Parent.Parent
	local Localization = require(InGameMenu.Localization.Localization)
	local OpenReportDialog = require(InGameMenu.Actions.OpenReportDialog)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local reducer = require(InGameMenu.reducer)
	local Constants = require(InGameMenu.Resources.Constants)

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)


	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local ReportDialog = require(script.Parent.ReportDialog)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						ReportDialog = Roact.createElement(ReportDialog, props),
					}) or nil,
					ReportDialog = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(ReportDialog, props) or nil,
				}),
			}),
		}),
			store
	end

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	describe("Mount/unmount", function()
		it("should create and destroy without errors when reporting a player", function()
			local element = getMountableTreeAndStore({
				isOpen = true,
				userId = 2231221,
				userName = "TheGamer101",
				placeName = "Crossroads",
			})

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			jestExpect(#Players.LocalPlayer.PlayerGui:GetChildren()).toEqual(1)

			-- check for a few things we expect to find at various places in the tree
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("Overlay", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerIcon", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("ReportDescription", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("AbuseTypeDropDown", true)).toBeDefined()
			Roact.unmount(instance)
		end)

		it("should create and destroy without errors when reporting a game", function()
			local element = getMountableTreeAndStore({
				isOpen = true,
				placeName = "Crossroads",
			})

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

			-- check for a few things we expect to find at various places in the tree
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("Overlay", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("GameIcon", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerIcon", true)).toBeNil()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("ReportDescription", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("AbuseTypeDropDown", true)).toBeNil()

			Roact.unmount(instance)
		end)
	end)

	describe("Gamepad support", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
			store:dispatch(OpenReportDialog(2231221, "mr f"))
			store:flush()

			jestExpect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("When reporting player, Should gain focus only when gamepad was used and FFlagInGameMenuController is enabled", function()
			local element, store = getMountableTreeAndStore({ isOpen = false })

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(OpenReportDialog(12, "mr f"))
				store:flush()
			end)

			jestExpect(tostring(GuiService.SelectedCoreObject)).toEqual("OpenDropDownButton")

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)

		it("When reporting game, Should gain focus only when gamepad was used and FFlagInGameMenuController is enabled", function()
			local element, store = getMountableTreeAndStore({ isOpen = false })

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(OpenReportDialog())
				store:flush()
			end)

			jestExpect(tostring(GuiService.SelectedCoreObject)).toEqual("TextBox")

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)
end
