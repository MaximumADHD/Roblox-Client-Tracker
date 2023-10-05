--!nonstrict

return function()
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local act = require(Modules.act)

	local Rhodium = require(CorePackages.Rhodium)
	local VirtualInput = Rhodium.VirtualInput

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local Localization = require(InGameMenu.Localization.Localization)
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local Constants = require(InGameMenu.Resources.Constants)

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)


	local FocusHandlerContextProvider = require(script.Parent.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local LeaveToAppPrompt = require(script.Parent.LeaveToAppPrompt)

	local getMountableTreeAndStore = function(props)
		local store = Rodux.Store.new(reducer)
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory and Roact.createElement(FocusHandlerContextProvider, {}, {
						LeaveToAppPrompt = Roact.createElement(LeaveToAppPrompt, props),
					}) or nil,
					LeaveToAppPrompt = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(LeaveToAppPrompt, props) or nil,
				}),
			}),
		})

		return element, store
	end

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	afterEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	describe("Rendering", function()
		it("should create and destroy without errors", function()
			local element, _ = getMountableTreeAndStore()

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("Gamepad support", function()
		it("Nothing gets highlighted without GamepadEnabled", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage(Constants.LeaveToAppPromptPageKey))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("SelectedCoreObject gets modified by FFlagInGameMenuController with GamepadEnabled", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage(Constants.LeaveToAppPromptPageKey))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).never.toBeNil()

			Roact.unmount(instance)
		end)
	end)

	describe("Keyboard support", function()
		it("Pressing keyboard return should exit leave prompt", function()
			local onConfirmSpy, onConfirm = jest.fn()
			local element, store = getMountableTreeAndStore({onConfirm = onConfirm})

			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage(Constants.LeaveToAppPromptPageKey))
				store:flush()
			end)

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			act(function()
				VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
				VirtualInput.waitForInputEventsProcessed()
				wait()
			end)

			expect(onConfirmSpy).toHaveBeenCalledTimes(1)

			Roact.unmount(instance)
		end)
	end)

	describe("Deeplinking", function()
		it("Issues deeplink to home page when leaving", function()
			if game:GetEngineFeature("VirtualInputEventsProcessed") then
				local mockDetectURL = jest.fn()
				local mockLinkingProtocol = {
					detectURL = mockDetectURL
				}
				local element, store = getMountableTreeAndStore({linkingProtocol = mockLinkingProtocol})

				act(function()
					store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
					store:dispatch(SetMenuOpen(true))
					store:dispatch(SetCurrentPage(Constants.LeaveToAppPromptPageKey))
					store:flush()
				end)

				local folder = Instance.new("Folder")
				local instance = Roact.mount(element, folder)

				act(function()
					VirtualInput.Keyboard.hitKey(Enum.KeyCode.Return)
					VirtualInput.waitForInputEventsProcessed()
					wait()
				end)

				expect(mockDetectURL).toHaveBeenCalledTimes(1)
				expect(mockDetectURL).toHaveBeenCalledWith(expect.anything(), "roblox://navigation/home")

				Roact.unmount(instance)
			end
		end)
	end)
end
