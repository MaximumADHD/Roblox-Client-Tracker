local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local FFlagPlaytestModeTooltipOncePerWeek =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagPlaytestModeTooltipOncePerWeek
local FFlagPlaytestModeTooltipOnlyPrivateTesters =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagPlaytestModeTooltipOnlyPrivateTesters

local renderedTooltipCount = 0
local lastTooltipProps: any = nil

local getIsPlaytestMode = Signals.createSignal(true)
local getIsPrivatePlaytester, setIsPrivatePlaytester = Signals.createSignal(true)

local function getIsPrivatePlaytesterProxy(scope)
	return getIsPrivatePlaytester(scope)
end
local mockGetHasTooltipCooldownExpired = jest.fn(function()
	return true
end)
local mockMarkTooltipSeen = jest.fn(function()
	mockGetHasTooltipCooldownExpired.mockReturnValue(false)
end)

jest.mock(CorePackages.Workspace.Packages.CoreScriptsRoactCommon.GetPlaytestModeStore, function()
	local store = {
		getIsPlaytestMode = getIsPlaytestMode,
		getIsPrivatePlaytester = getIsPrivatePlaytesterProxy,
		setHasEditAccess = function() end,
		getHasTooltipCooldownExpired = mockGetHasTooltipCooldownExpired,
		markTooltipSeen = mockMarkTooltipSeen,
	}
	return function(_scope)
		return store
	end
end)

-- The real GamepadConnector waits forever on RobloxGui children that don't exist in tests.
jest.mock(script.Parent.Parent.GamepadConnector, function()
	local ObservableValue = require(game:GetService("CoreGui").RobloxGui.Modules.Chrome.ChromeShared.Service.ChromeUtils).ObservableValue
	local showTopBar = ObservableValue.new(true)
	return {
		getShowTopBar = function(_self)
			return showTopBar
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.Localization, function()
	local actual = jest.requireActual(CorePackages.Workspace.Packages.Localization) :: any
	return setmetatable({
		Hooks = {
			useLocalization = function(keys)
				return keys
			end,
		},
	}, { __index = actual })
end)

jest.mock(CorePackages.Packages.Foundation, function()
	local actual = jest.requireActual(CorePackages.Packages.Foundation) :: any
	return setmetatable({
		EducationalTooltip = function(props)
			renderedTooltipCount += 1
			lastTooltipProps = props
			return React.createElement("TextLabel", {
				Name = "PlaytestModeTooltipMarker",
			})
		end,
		OverlayProvider = function(props)
			return React.createElement("Folder", {}, props.children)
		end,
	}, { __index = actual })
end)

local PlaytestModeTooltip = require(script.Parent.PlaytestModeTooltip) :: any

local FFlagPlaytestModeDismissTooltip = game:GetFastFlag("PlaytestModeDismissTooltip")

describe("PlaytestModeTooltip", function()
	local container: Frame
	local anchor: Frame
	local root: any

	local function renderTooltip()
		ReactRoblox.act(function()
			root:render(React.createElement(PlaytestModeTooltip, {
				anchorRef = { current = anchor },
			}))
		end)
	end

	beforeEach(function()
		renderedTooltipCount = 0
		lastTooltipProps = nil
		mockGetHasTooltipCooldownExpired.mockClear()
		mockGetHasTooltipCooldownExpired.mockReturnValue(true)
		mockMarkTooltipSeen.mockClear()
		-- Close state lives on the module; reset so one test cannot hide the tooltip in the next.
		jest.resetModules()
		Signals = require(CorePackages.Packages.Signals)
		getIsPrivatePlaytester, setIsPrivatePlaytester = Signals.createSignal(true)
		React = require(CorePackages.Packages.React)
		ReactRoblox = require(CorePackages.Packages.ReactRoblox)
		PlaytestModeTooltip = require(script.Parent.PlaytestModeTooltip)
		container = Instance.new("Frame")
		anchor = Instance.new("Frame")
		anchor.Parent = container
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	if FFlagPlaytestModeTooltipOncePerWeek then
		it("SHOULD NOT render WHEN the tooltip cooldown is still active", function()
			mockGetHasTooltipCooldownExpired.mockReturnValue(false)
			renderTooltip()
			expect(renderedTooltipCount).toBe(0)
			expect(mockMarkTooltipSeen).never.toHaveBeenCalled()
		end)

		it("SHOULD mark the tooltip seen WHEN it is shown and keep it open", function()
			renderTooltip()
			expect(container:FindFirstChild("PlaytestModeTooltipMarker", true)).never.toBeNil()
			expect(mockGetHasTooltipCooldownExpired()).toBe(false)
			expect(mockMarkTooltipSeen).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD NOT show the tooltip on the next join WHEN the player left it open", function()
			renderTooltip()
			expect(mockMarkTooltipSeen).toHaveBeenCalledTimes(1)
			ReactRoblox.act(function()
				root:unmount()
			end)

			jest.resetModules()
			React = require(CorePackages.Packages.React)
			ReactRoblox = require(CorePackages.Packages.ReactRoblox)
			PlaytestModeTooltip = require(script.Parent.PlaytestModeTooltip)
			root = ReactRoblox.createRoot(container)
			local countAfterLeaving = renderedTooltipCount
			renderTooltip()

			expect(container:FindFirstChild("PlaytestModeTooltipMarker", true)).toBeNil()
			expect(renderedTooltipCount).toBe(countAfterLeaving)
			expect(mockMarkTooltipSeen).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD keep the tooltip hidden for this visit WHEN it is closed after being shown", function()
			renderTooltip()
			ReactRoblox.act(function()
				lastTooltipProps.onClose()
			end)
			expect(mockMarkTooltipSeen).toHaveBeenCalledTimes(1)

			ReactRoblox.act(function()
				root:unmount()
			end)
			root = ReactRoblox.createRoot(container)
			renderTooltip()
			expect(container:FindFirstChild("PlaytestModeTooltipMarker", true)).toBeNil()
			expect(mockMarkTooltipSeen).toHaveBeenCalledTimes(1)
		end)

		if FFlagPlaytestModeTooltipOnlyPrivateTesters and FFlagPlaytestModeDismissTooltip then
			it("SHOULD NOT start the weekly cooldown WHEN a dismiss fires before the tooltip is shown", function()
				setIsPrivatePlaytester(false)
				renderTooltip()
				expect(renderedTooltipCount).toBe(0)
				local SettingsShowSignal =
					require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
				ReactRoblox.act(function()
					SettingsShowSignal:fire(true)
				end)
				expect(mockMarkTooltipSeen).never.toHaveBeenCalled()
			end)
		end
	else
		it("SHOULD NOT mark the tooltip seen WHEN the weekly cooldown is off", function()
			renderTooltip()
			expect(renderedTooltipCount).toBeGreaterThan(0)
			ReactRoblox.act(function()
				root:unmount()
			end)
			expect(mockGetHasTooltipCooldownExpired).never.toHaveBeenCalled()
			expect(mockMarkTooltipSeen).never.toHaveBeenCalled()
		end)
	end

	if FFlagPlaytestModeTooltipOnlyPrivateTesters then
		it("SHOULD use the early-tester copy", function()
			renderTooltip()
			expect(lastTooltipProps.title).toBe("CoreScripts.FTUX.Heading.YouAreAnEarlyTester")
			expect(lastTooltipProps.text).toBe("CoreScripts.FTUX.Description.WhiteMenuPreviewing")
			expect(lastTooltipProps.actions[1].text).toBe("CommonUI.Features.Action.OK")
			expect(lastTooltipProps.actions[2].text).toBe("CommonUI.Features.Action.ViewDetails")
		end)

		it("SHOULD NOT render WHEN in playtest mode but not a private playtester", function()
			setIsPrivatePlaytester(false)
			renderTooltip()
			expect(renderedTooltipCount).toBe(0)
		end)

		it("SHOULD render WHEN the private playtester status resolves after mount", function()
			setIsPrivatePlaytester(false)
			renderTooltip()
			expect(renderedTooltipCount).toBe(0)
			ReactRoblox.act(function()
				setIsPrivatePlaytester(true)
			end)
			expect(renderedTooltipCount).toBeGreaterThan(0)
		end)
	else
		it("SHOULD use the playtest copy", function()
			renderTooltip()
			expect(lastTooltipProps.title).toBe("CoreScripts.FTUX.Heading.ReadyToPlaytest")
			expect(lastTooltipProps.text).toBe("CoreScripts.FTUX.Description.WhiteMenuPlaytestMode")
			expect(lastTooltipProps.actions[1].text).toBe("CommonUI.Features.Action.Continue")
			expect(lastTooltipProps.actions[2].text).toBe("CommonUI.Features.Action.LearnMore")
		end)

		it("SHOULD render for non-private-playtesters in playtest mode", function()
			setIsPrivatePlaytester(false)
			renderTooltip()
			expect(renderedTooltipCount).toBeGreaterThan(0)
		end)
	end
end)
