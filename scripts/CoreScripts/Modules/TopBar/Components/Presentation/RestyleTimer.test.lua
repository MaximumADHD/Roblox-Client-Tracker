local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ObservableValue =
	require(game:GetService("CoreGui").RobloxGui.Modules.Chrome.ChromeShared.Service.ChromeUtils).ObservableValue
local mockShowTopBar = ObservableValue.new(true)
local mockRestyleTimer = jest.fn()
local mockGetUILessModeEnabled, mockSetUILessModeEnabled = Signals.createSignal(false)
local mockGetUIVisible, mockSetUIVisible = Signals.createSignal(true)

jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	local flags = table.clone(jest.requireActual(CorePackages.Workspace.Packages.SharedFlags) :: { [string]: unknown })
	flags.FFlagAddUILessMode = true
	flags.FIntAddUILessModeVariant = 1
	return flags
end)
jest.mock(CorePackages.Workspace.Packages.CoreGuiCommon, function()
	local coreGuiCommon = table.clone(jest.requireActual(CorePackages.Workspace.Packages.CoreGuiCommon))
	coreGuiCommon.Stores = table.clone(coreGuiCommon.Stores)
	coreGuiCommon.Stores.GetUILessStore = function()
		return { getUILessModeEnabled = mockGetUILessModeEnabled, getUIVisible = mockGetUIVisible }
	end
	return coreGuiCommon
end)

-- The real GamepadConnector waits forever on RobloxGui children that don't exist in tests.
jest.mock(script.Parent.Parent.GamepadConnector, function()
	return {
		getShowTopBar = function(_self)
			return mockShowTopBar
		end,
	}
end)
jest.mock(CorePackages.Workspace.Packages.InExperienceCloudPlay.RestyleTimer, function()
	return function(props)
		mockRestyleTimer(props)
		return nil
	end
end)

local RestyleTimer = require(script.Parent.RestyleTimer)
local RestyleTimerContainer = require(CorePackages.Workspace.Packages.InExperienceCloudPlay.RestyleTimer)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)

local usesGamepadConnector = SharedFlags.FFlagEnableConsoleExpControls
	and require(CorePackages.Workspace.Packages.Chrome).Enabled()

local function lastProps(): RestyleTimerContainer.Props
	local calls = mockRestyleTimer.mock.calls
	return calls[#calls][1]
end

describe("RestyleTimer", function()
	local root

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		mockShowTopBar:set(true)
		mockSetUILessModeEnabled(false)
		mockSetUIVisible(true)
		mockRestyleTimer.mockClear()
	end)

	it("passes its props through and hides the timer only WHEN gamepad movement hides the TopBar", function()
		local onAreaChanged = function() end
		root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(React.createElement(RestyleTimer, { buttonSize = 36, onAreaChanged = onAreaChanged }))
		end)
		expect(lastProps()).toEqual({ buttonSize = 36, onAreaChanged = onAreaChanged, isHidden = false })

		ReactRoblox.act(function()
			mockShowTopBar:set(false)
		end)
		expect(lastProps().isHidden).toBe(usesGamepadConnector)
	end)

	it("hides the timer only WHEN it follows UI-less mode and UI-less mode has hidden the TopBar", function()
		root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(React.createElement(RestyleTimer, { buttonSize = 36, followsUILessMode = true }))
		end)

		ReactRoblox.act(function()
			mockSetUIVisible(false)
		end)
		expect(lastProps().isHidden).toBe(false)

		ReactRoblox.act(function()
			mockSetUILessModeEnabled(true)
		end)
		expect(lastProps().isHidden).toBe(true)

		ReactRoblox.act(function()
			mockSetUIVisible(true)
		end)
		expect(lastProps().isHidden).toBe(false)

		ReactRoblox.act(function()
			mockSetUIVisible(false)
			root:render(React.createElement(RestyleTimer, { buttonSize = 36 }))
		end)
		expect(lastProps().isHidden).toBe(false)
	end)

	it("hides the timer WHEN a passed showTopBar signal hides the TopBar", function()
		local showTopBar = ObservableValue.new(true)
		root = ReactRoblox.createRoot(Instance.new("Folder"))
		ReactRoblox.act(function()
			root:render(React.createElement(RestyleTimer, { buttonSize = 36, showTopBar = showTopBar }))
		end)
		expect(lastProps().isHidden).toBe(false)

		ReactRoblox.act(function()
			showTopBar:set(false)
		end)
		expect(lastProps().isHidden).toBe(true)
	end)
end)
