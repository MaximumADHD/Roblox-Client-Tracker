-- The wrapper reads its flag and requires AvatarWorkshop at module load, so each flag state
-- re-requires it under `jest.isolateModules`.

local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local ReactTestingLibrary = require(CorePackages.Packages.Dev.ReactTestingLibrary)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local AVATAR_SWITCHER_ID = "avatar_switcher"

local toggleWindowMock = jest.fn()
-- React needs real functions as components (a jest.fn is a callable table), so these record their
-- renders by hand.
local avatarSwitcherContainerRenders = 0
local function AvatarSwitcherContainerStub()
	avatarSwitcherContainerRenders += 1
	return nil
end
local avatarWorkshopWindowProps: any = nil
local function AvatarWorkshopWindowStub(props)
	avatarWorkshopWindowProps = props
	return nil
end
local avatarWorkshopRequired = false

jest.mock(Chrome.Service, function()
	return {
		toggleWindow = toggleWindowMock,
	}
end)

-- The real Constants requires GetStyleTokens, which errors inside `jest.isolateModules` because
-- the UIBlox singleton isn't initialized there.
jest.mock(Chrome.ChromeShared.Unibar.Constants, function()
	return {
		AVATAR_SWITCHER_ID = AVATAR_SWITCHER_ID,
	}
end)

-- Only used for its type; the tests pass their own window size.
jest.mock(Chrome.ChromeShared.Service.WindowSizeSignal, function()
	return {}
end)

jest.mock(RobloxGui.Modules.Settings.SettingsHub, function()
	return {}
end)

jest.mock(CorePackages.Workspace.Packages.AvatarSwitcher, function()
	return {
		Components = {
			AvatarSwitcherContainer = AvatarSwitcherContainerStub,
		},
	}
end)

jest.mock(CorePackages.Workspace.Packages.AvatarWorkshop, function()
	avatarWorkshopRequired = true
	return {
		Components = {
			AvatarWorkshopWindow = AvatarWorkshopWindowStub,
		},
	}
end)

local function loadWrapper(workshopEnabled: boolean)
	local AvatarSwitcherChromeWrapper
	jest.isolateModules(function()
		-- The isolated wrapper must share the test's React, or its hooks run against a renderer-less copy.
		jest.mock(CorePackages.Packages.React, function()
			return React
		end)
		jest.mock(CorePackages.Packages.ReactUtils, function()
			return ReactUtils
		end)
		jest.mock(CorePackages.Packages.Foundation, function()
			return Foundation
		end)
		jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
			return {
				FFlagAvatarWorkshopReplacesAvatarSwitcher = workshopEnabled,
			}
		end)
		AvatarSwitcherChromeWrapper = require(script.Parent.AvatarSwitcherChromeWrapper)
	end)
	return AvatarSwitcherChromeWrapper
end

-- The wrapper only reads the window's size; requestSize is a no-op so the size stays put.
local function makeWindowSize(width: number, height: number)
	return {
		get = function()
			return UDim2.fromOffset(width, height)
		end,
		connect = function()
			return { disconnect = function() end }
		end,
		requestSize = function() end,
	}
end

local function renderWrapper(workshopEnabled: boolean, width: number, height: number)
	local AvatarSwitcherChromeWrapper = loadWrapper(workshopEnabled)
	return ReactTestingLibrary.render(React.createElement(Foundation.FoundationProvider, {
		colorMode = Foundation.Enums.ColorMode.Dark,
	}, {
		Wrapper = React.createElement(AvatarSwitcherChromeWrapper, {
			windowSize = makeWindowSize(width, height) :: any,
			maxWindowWidth = width,
			maxWindowHeight = height,
		}),
	}))
end

describe("AvatarSwitcherChromeWrapper", function()
	beforeEach(function()
		toggleWindowMock:mockClear()
		avatarSwitcherContainerRenders = 0
		avatarWorkshopWindowProps = nil
		avatarWorkshopRequired = false
	end)

	afterEach(function()
		ReactTestingLibrary.cleanup()
	end)

	describe("with FFlagAvatarWorkshopReplacesAvatarSwitcher off", function()
		it("should render Avatar Switcher", function()
			renderWrapper(false, 400, 700)

			expect(avatarSwitcherContainerRenders).toBeGreaterThan(0)
			expect(avatarWorkshopWindowProps).toBeNil()
		end)

		it("should not load the AvatarWorkshop package", function()
			renderWrapper(false, 400, 700)

			expect(avatarWorkshopRequired).toBe(false)
		end)
	end)

	describe("with FFlagAvatarWorkshopReplacesAvatarSwitcher on", function()
		it("should render Avatar Workshop in place of Avatar Switcher", function()
			renderWrapper(true, 400, 700)

			expect(avatarWorkshopWindowProps).never.toBeNil()
			expect(avatarSwitcherContainerRenders).toBe(0)
		end)

		it("should lay Avatar Workshop out vertically in a tall window", function()
			renderWrapper(true, 400, 700)

			expect(avatarWorkshopWindowProps.verticalLayout).toBe(true)
		end)

		it("should lay Avatar Workshop out horizontally in a wide window", function()
			renderWrapper(true, 1000, 500)

			expect(avatarWorkshopWindowProps.verticalLayout).toBe(false)
		end)

		it("should toggle the Avatar Switcher window when Avatar Workshop closes", function()
			renderWrapper(true, 400, 700)

			avatarWorkshopWindowProps.onClose()

			expect(toggleWindowMock).toHaveBeenCalledTimes(1)
			expect(toggleWindowMock.mock.calls[1][2]).toBe(AVATAR_SWITCHER_ID)
		end)
	end)
end)
