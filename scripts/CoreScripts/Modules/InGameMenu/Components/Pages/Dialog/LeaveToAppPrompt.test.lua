--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest

local Rhodium = require(CorePackages.Packages.Dev.Rhodium)
local VirtualInput = Rhodium.VirtualInput

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local Rodux = InGameMenuDependencies.Rodux
local RoactRodux = InGameMenuDependencies.RoactRodux
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local act = Roact.act

local InGameMenu = script.Parent.Parent.Parent.Parent
local reducer = require(InGameMenu.reducer)
local Localization = require(InGameMenu.Localization.Localization)
local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetInputType = require(InGameMenu.Actions.SetInputType)
local Constants = require(InGameMenu.Resources.Constants)

local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

local FocusHandlerContextProvider =
	require(script.Parent.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
local LeaveToAppPrompt = require(script.Parent.LeaveToAppPrompt)

local getMountableTreeAndStore = function(props)
	local store = Rodux.Store.new(reducer)
	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory
						and Roact.createElement(FocusHandlerContextProvider, {}, {
							LeaveToAppPrompt = Roact.createElement(LeaveToAppPrompt, props),
						})
					or nil,
				LeaveToAppPrompt = not GetFFlagIGMGamepadSelectionHistory()
						and Roact.createElement(LeaveToAppPrompt, props)
					or nil,
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
		local element, store = getMountableTreeAndStore({ onConfirm = onConfirm })

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
	local function triggerLeave(linkingProtocol)
		local element, store = getMountableTreeAndStore({ linkingProtocol = linkingProtocol })

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

		Roact.unmount(instance)
	end

	if game:GetEngineFeature("VirtualInputEventsProcessed") then
		it("Identifies the home deeplink when leaving with internal DLIC enabled", function()
			local mockDetectURL = jest.fn()
			local mockCreateInternalDlic = jest.fn(function()
				return "deeplink-id"
			end)
			local mockDetectDlic = jest.fn()
			local mockLinkingProtocol = {
				detectURL = mockDetectURL,
				isInternalDlicEnabled = function()
					return true
				end,
				createInternalDlic = mockCreateInternalDlic,
				detectDeeplinkIntent = mockDetectDlic,
			}
			triggerLeave(mockLinkingProtocol)

			expect(mockCreateInternalDlic).toHaveBeenCalledWith(
				expect.anything(),
				"roblox://navigation/home",
				"lua_internal"
			)
			expect(mockDetectDlic).toHaveBeenCalledWith(expect.anything(), "deeplink-id")
			expect(mockDetectURL).never.toHaveBeenCalled()
		end)

		it("Routes the home deeplink directly when leaving with internal DLIC disabled", function()
			local mockDetectURL = jest.fn()
			local mockCreateInternalDlic = jest.fn()
			local mockDetectDlic = jest.fn()
			local mockLinkingProtocol = {
				detectURL = mockDetectURL,
				isInternalDlicEnabled = function()
					return false
				end,
				createInternalDlic = mockCreateInternalDlic,
				detectDeeplinkIntent = mockDetectDlic,
			}
			triggerLeave(mockLinkingProtocol)

			expect(mockCreateInternalDlic).never.toHaveBeenCalled()
			expect(mockDetectDlic).never.toHaveBeenCalled()
			expect(mockDetectURL).toHaveBeenCalledWith(expect.anything(), "roblox://navigation/home")
		end)
	end
end)
