--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local beforeAll = JestGlobals.beforeAll
local jest = JestGlobals.jest
local ReactTestingLibrary
local render
local cleanup

local InGameMenuDependencies
local UIBlox
local Roact
local Rodux
local RoactRodux

local InGameMenu
local Constants
local SetCurrentPage
local Localization
local LocalizationProvider
local reducer
local SetControlLayout
local Controls

local renderWithCoreScriptsStyleProvider
local ControlsPage

beforeAll(function()
	-- Disable auto-cleanup, since RTL attempts to inject it at require time;
	-- this is all a weird chicken-and-egg problem that ultimately comes down to
	-- UIBlox.init being unfriendly to module resetting
	_G.RTL_SKIP_AUTO_CLEANUP = true
end)

local function resetModules()
	jest.resetModules()
	-- All the ReactTestingLibrary stuff needs to be re-imported
	ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
	render = ReactTestingLibrary.render
	cleanup = ReactTestingLibrary.cleanup

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

	renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
	ControlsPage = require(script.Parent)
end

if game:GetEngineFeature("EnableVRUpdate3") then
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
			ThemeProvider = renderWithCoreScriptsStyleProvider({
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
		afterEach(function()
			cleanup()
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
