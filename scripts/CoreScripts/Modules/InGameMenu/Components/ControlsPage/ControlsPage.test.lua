--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local jest = JestGlobals.jest
local ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
local render = ReactTestingLibrary.render

local InGameMenuDependencies
local Roact
local Rodux
local RoactRodux
local UIBlox

local InGameMenu
local Constants
local SetCurrentPage
local Localization
local LocalizationProvider
local reducer
local SetControlLayout
local Controls

local AppDarkTheme
local AppFont

local GetFFlagIGMVRQuestControlsInstructions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIGMVRQuestControlsInstructions

local appStyle

local ControlsPage

local function resetModules()
	jest.resetModules()
	-- All the ReactTestingLibrary stuff needs to be re-imported
	ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
	render = ReactTestingLibrary.render

	InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	UIBlox = InGameMenuDependencies.UIBlox
	UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
	Roact = InGameMenuDependencies.Roact
	Rodux = InGameMenuDependencies.Rodux
	RoactRodux = InGameMenuDependencies.RoactRodux

	InGameMenu = script:FindFirstAncestor("InGameMenu")
	Constants = require(InGameMenu.Resources.Constants)
	Controls = require(InGameMenu.Resources.Controls)
	SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	Localization = require(InGameMenu.Localization.Localization)
	LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	reducer = require(InGameMenu.reducer)
	SetControlLayout = require(InGameMenu.Actions.SetControlLayout)

	RobloxGui = CoreGui.RobloxGui

	AppDarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
	AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

	appStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	ControlsPage = require(script.Parent)

	GetFFlagIGMVRQuestControlsInstructions =
		require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIGMVRQuestControlsInstructions
end

-- TODO Remove when GetFFlagIGMVRQuestControlsInstructions is removed
it("Only runs when GetFFlagIGMVRQuestControlsInstructions and EnableVRUpdate3 are active", function()
	-- Because there seems to be no way to inject globals through jest 3 while code is running as part of a test,
	-- And because these tests do depend on some fixes in AppStyleProvider.lua, DarkTheme.lua and LightTheme.lua
	-- I'm flagging the entire test to only run when those fixes are in place. The old version of these tests is also
	-- flagged to only run when GetFFlagIGMVRQuestControlsInstructions is off, so to be removed together with the flag.

	-- Furthermore, because running an empty test in Jest 3 fails with "Your test suite must contain at least one test."
	-- Here is a fake test doing nothing:

	expect(true).toBe(true)
end)

if GetFFlagIGMVRQuestControlsInstructions() and game:GetEngineFeature("EnableVRUpdate3") then
	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer, {
			currentZone = 1,
		})

		store:dispatch(SetControlLayout(Controls.ControlLayouts.GAMEPAD))
		store:dispatch(SetCurrentPage(Constants.MainPagePageKey))

		local controlsPage = Roact.createElement(ControlsPage, { pageTitle = "Test" })

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {
				style = appStyle,
			}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					ControlsPage = controlsPage,
				}),
			}),
		}),
			store
	end

	describe("In-Game Menu Controls Page", function()
		beforeEach(function()
			resetModules()
		end)

		it("Should render VR gamepad in VR when last input is gamepad", function()
			jest.mock(RobloxGui.Modules.VR.VRServiceWrapper, function()
				return {
					VREnabled = true,
					VRDeviceName = "Meta",
				}
			end)

			resetModules()
			local element = getMountableTreeAndStore()
			local result = render(element)

			local instructionsPage = result.getByTestId("VRGamepadInstructions")
			expect(instructionsPage).toBeDefined()
		end)

		it("Should render console gamepad in when last input is gamepad and we are not in VR", function()
			jest.mock(RobloxGui.Modules.VR.VRServiceWrapper, function()
				return {
					VREnabled = false,
					VRDeviceName = nil,
				}
			end)

			resetModules()
			local element = getMountableTreeAndStore()
			local result = render(element)

			local instructionsPage = result.getByTestId("GamepadInstructions")
			expect(instructionsPage).toBeDefined()
		end)
	end)
end
