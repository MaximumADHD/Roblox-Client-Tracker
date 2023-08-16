--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

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
	local OpenReportSentDialog = require(InGameMenu.Actions.OpenReportSentDialog)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local Constants = require(InGameMenu.Resources.Constants)

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)


	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local ReportSentDialog = require(script.Parent.ReportSentDialog)

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
						ReportSentDialog = Roact.createElement(ReportSentDialog, props),
					}) or nil,
					ReportSentDialog = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(ReportSentDialog, props) or nil,
				}),
			}),
		}),
			store
	end

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	describe("Mount/unmount", function()
		it("should create and destroy without errors", function()
			local element = getMountableTreeAndStore({
				isReportSentOpen = true
			})

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("Overlay", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("DialogMainFrame", true)).toBeDefined()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("AbuseTypeDropDown", true)).toBeNil()
			jestExpect(Players.LocalPlayer.PlayerGui:FindFirstChild("ReportDescription", true)).toBeNil()

			Roact.unmount(instance)
		end)
	end)

	describe("Gamepad support", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(OpenReportSentDialog())
				store:flush()
			end)

			jestExpect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)
		it("Should gain focus only when gamepad was used and FFlagInGameMenuController is enabled", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(OpenReportSentDialog())
				store:flush()
			end)

			jestExpect(tostring(GuiService.SelectedCoreObject)).toEqual("ConfirmButton")

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)
end
