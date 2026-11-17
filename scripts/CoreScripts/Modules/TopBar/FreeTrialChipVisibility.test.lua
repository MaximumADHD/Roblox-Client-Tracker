local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages
local TopBar = script.Parent

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe, it, expect = JestGlobals.describe, JestGlobals.it, JestGlobals.expect
local beforeEach, afterEach, jest = JestGlobals.beforeEach, JestGlobals.afterEach, JestGlobals.jest

local React = require(CorePackages.Packages.React)
local RTL = require(CorePackages.Packages.Dev.ReactTestingLibrary)
local act = require(CorePackages.Packages.ReactRoblox).act
local waitUntil = require(Packages.TestUtils).waitUntil
local Foundation = require(CorePackages.Packages.Foundation)
local Signals = require(CorePackages.Packages.Signals)
local ChromeUtils = require(TopBar.Parent.Chrome.ChromeShared.Service.ChromeUtils)

local showTopBar = ChromeUtils.ObservableValue.new(true)
local getUILessEnabled, setUILessEnabled = Signals.createSignal(false)
local getUIVisible, setUIVisible = Signals.createSignal(true)
local mockKeepOutStore = { setKeepOutArea = function() end, cleanup = function() end }
local getKeepOutStore = Signals.createSignal(mockKeepOutStore)

local FFlagEnableFreeTrialTopBarChip = jest.requireActual(Packages.InExperienceShop.FFlagEnableFreeTrialTopBarChip)

jest.mock(Packages.Chrome, function()
	local actual = table.clone(jest.requireActual(Packages.Chrome))
	actual.Enabled = function()
		return true
	end
	return actual
end)

jest.mock(Packages.InExperienceSideSheetUtils.isSideSheetEnabled, function()
	return false
end)

jest.mock(Packages.CoreGuiCommon, function()
	local actual = table.clone(jest.requireActual(Packages.CoreGuiCommon))
	actual.Stores = table.clone(actual.Stores)
	actual.Stores.GetKeepOutAreasStore = getKeepOutStore
	actual.Stores.GetUILessStore = function()
		return {
			getUILessModeEnabled = getUILessEnabled,
			getUIVisible = getUIVisible,
			setUIVisible = setUIVisible,
			cleanup = function() end,
		}
	end
	actual.withFoundationOrUIBloxStyle = function(mapTokens, render)
		local tokens = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark)
		local tree = render(mapTokens(tokens))
		return tree.props.children.FreeTrialChipHost
	end
	return actual
end)

jest.mock(Packages.UniversalAppPolicy, function()
	local actual = table.clone(jest.requireActual(Packages.UniversalAppPolicy))
	actual.useAppPolicy = function()
		return false
	end
	actual.UniversalAppPolicy = table.clone(actual.UniversalAppPolicy)
	actual.UniversalAppPolicy.connect = function()
		return function(component)
			return component
		end
	end
	return actual
end)

jest.mock(CorePackages.Packages.RoactRodux, function()
	local actual = table.clone(jest.requireActual(CorePackages.Packages.RoactRodux))
	actual.UNSTABLE_connect2 = function()
		return function(component)
			return component
		end
	end
	return actual
end)

jest.mock(TopBar.TopBarAppPolicy, function()
	return {
		connect = function()
			return function(component)
				return component
			end
		end,
	}
end)

jest.mock(TopBar.Components.GamepadConnector, function()
	return {
		getShowTopBar = function()
			return showTopBar
		end,
		connectToTopbar = function() end,
		disconnectFromTopbar = function() end,
	}
end)

jest.mock(Packages.InExperienceShop, function()
	return {
		FFlagEnableExperienceShopGlobalIcon = false,
		FFlagExperienceShopNewIconography = false,
		FFlagEnableFreeTrialTopBarChip = FFlagEnableFreeTrialTopBarChip,
		FFlagCenterInExperienceShopWindow = false,
		FreeTrialTopBarSlot = function()
			return nil
		end,
	}
end)

jest.mock(TopBar.Parent.Chrome.Service, function()
	local actual = table.clone(jest.requireActual(TopBar.Parent.Chrome.Service))
	actual.isWindowOpen = function()
		return false
	end
	return actual
end)

local function control()
	return nil
end

jest.mock(TopBar.Parent.Chrome.ChromeShared.Unibar, function()
	return control
end)
jest.mock(TopBar.Parent.VR.VRBottomBar.VRBottomBar, function()
	return control
end)
jest.mock(TopBar.Components.VRBottomUnibar, function()
	return control
end)
jest.mock(TopBar.Components.Connection, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.MenuIcon, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.MoreMenu, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.GamepadMenu, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.HurtOverlay, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.ChatIcon, function()
	return control
end)
jest.mock(TopBar.Components.Presentation.HealthBar, function()
	return control
end)
jest.mock(TopBar.ComponentsV2.MenuIcon, function()
	return control
end)

local TopBarApp = require(TopBar.ComponentsV2.TopBarApp)
local LegacyTopBarApp = require(TopBar.Components.TopBarApp)
local SharedFlags = require(Packages.SharedFlags)
local flags = require(Packages.CoreGuiCommon).Flags
local SettingsShowSignal = require(Packages.CoreScriptsCommon).SettingsShowSignal

local function V2Chip()
	-- ScreenGui's element props type does not include the children table.
	local tree: React.ReactElement = TopBarApp({})
	return tree.props.children.TopBarFrame.props.children.FreeTrialChipHost
end

local function renderV2()
	local screen
	act(function()
		screen = RTL.render(React.createElement(V2Chip))
	end)
	return screen
end

local function renderLegacy(menuOpen: boolean?)
	local screen
	act(function()
		screen = RTL.render(React.createElement(LegacyTopBarApp, {
			showGameAgeRating = false,
			menuOpen = if flags.FFlagTopBarSignalizeMenuOpen then nil else if menuOpen ~= nil then menuOpen else false,
			inspectMenuOpen = if flags.FFlagTopBarSignalizeMenuOpen then nil else false,
			setScreenSize = if flags.FFlagTopBarSignalizeScreenSize then nil else function() end,
			setKeepOutArea = if flags.FFlagTopBarSignalizeKeepOutAreas then nil else function() end,
			removeKeepOutArea = if flags.FFlagTopBarSignalizeKeepOutAreas then nil else function() end,
		}))
	end)
	return screen
end

local function hostIsVisible(screen, visible: boolean): boolean
	local host = screen.queryByTestId("FreeTrialChipHost")
	return host ~= nil and host.Visible == visible
end

beforeEach(function()
	showTopBar:set(true)
	setUILessEnabled(false)
	setUIVisible(true)
end)

afterEach(function()
	SettingsShowSignal:fire(false)
	RTL.cleanup()
end)

describe("free-trial chip top bar visibility", function()
	if not FFlagEnableFreeTrialTopBarChip then
		it("does not mount the chip on the legacy top bar", function()
			expect(renderLegacy().queryByTestId("FreeTrialChipHost")).toBeNil()
		end)

		it("does not mount the chip on the refactored top bar", function()
			expect(renderV2().queryByTestId("FreeTrialChipHost")).toBeNil()
		end)
		return
	end

	describe("legacy top bar", function()
		it("shows the chip while the top bar is up", function()
			expect(hostIsVisible(renderLegacy(false), true)).toBe(true)
		end)

		if flags.FFlagTopBarSignalizeMenuOpen then
			it("hides the chip while the settings menu is open", function()
				local screen = renderLegacy()
				expect(hostIsVisible(screen, true)).toBe(true)
				act(function()
					SettingsShowSignal:fire(true)
				end)
				waitUntil(function()
					return hostIsVisible(screen, false)
				end)
				expect(hostIsVisible(screen, false)).toBe(true)
			end)
		else
			it("hides the chip while the settings menu is open", function()
				expect(hostIsVisible(renderLegacy(true), false)).toBe(true)
			end)
		end

		if SharedFlags.FFlagEnableConsoleExpControls then
			it("hides the chip when gamepad controls hide the top bar", function()
				local screen = renderLegacy()
				expect(hostIsVisible(screen, true)).toBe(true)
				act(function()
					showTopBar:set(false)
				end)
				waitUntil(function()
					return hostIsVisible(screen, false)
				end)
				expect(hostIsVisible(screen, false)).toBe(true)
			end)
		end

		if SharedFlags.FFlagAddUILessMode and SharedFlags.FIntAddUILessModeVariant ~= 0 then
			it("hides the chip when UI-less mode hides the top bar", function()
				local screen = renderLegacy()
				expect(hostIsVisible(screen, true)).toBe(true)
				act(function()
					setUILessEnabled(true)
					setUIVisible(false)
				end)
				waitUntil(function()
					return hostIsVisible(screen, false)
				end)
				expect(hostIsVisible(screen, false)).toBe(true)
			end)
		end
	end)

	describe("refactored top bar", function()
		it("hides the chip when gamepad controls hide the top bar", function()
			local screen = renderV2()
			expect(hostIsVisible(screen, true)).toBe(true)
			act(function()
				showTopBar:set(false)
			end)
			waitUntil(function()
				return hostIsVisible(screen, false)
			end)
			expect(hostIsVisible(screen, false)).toBe(true)
		end)
	end)
end)
