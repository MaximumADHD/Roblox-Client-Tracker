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

local getIsChatWindowOpen, setIsChatWindowOpen = Signals.createSignal(false)
local getActiveTooltipKey, setActiveTooltipKey = Signals.createSignal("GlobalChatTooltip")
local getIsChatInputBarVisible, setIsChatInputBarVisible = Signals.createSignal(false)
local getIsScreenWideEnough = Signals.createSignal(true)
local capturedBadgeProps: any = nil

local chatTooltipStore = {
	getIsChatWindowOpen = getIsChatWindowOpen,
	getActiveTooltipKey = getActiveTooltipKey,
	getIsChatInputBarVisible = getIsChatInputBarVisible,
	getIsScreenWideEnough = getIsScreenWideEnough,
	setShouldShow = function() end,
}

jest.mock(CorePackages.Workspace.Packages.ExpChat, function()
	return {
		Stores = {
			GetChatTooltipStore = function()
				return chatTooltipStore
			end,
			GetGlobalChatTooltipStore = function()
				return {}
			end,
			GetChatStatusStore = function()
				return {}
			end,
		},
		isUserChatEnabled = function()
			return true
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.ExpChatShared, function()
	return {
		Flags = {
			GetFFlagTextChatEnableUniverseChatTabs = function()
				return false
			end,
			FFlagExpChatPresetChatEnabled = true,
			FFlagExpChatUseUnifiedTooltipStore = true,
		},
	}
end)

local SocialExperiments = require(CorePackages.Workspace.Packages.SocialExperiments)
local ExpChatPresetChatBadgeFTUXExperimentation = SocialExperiments.ExpChatPresetChatBadgeFTUXExperimentation
local FFlagExpChatPresetChatBadgeExperimentCleanup =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagExpChatPresetChatBadgeExperimentCleanup
local logExposureSpy = jest.spyOn(ExpChatPresetChatBadgeFTUXExperimentation, "logExposure")
	.mockImplementation(function() end)

local ChatNotificationBadge = require(script.Parent.ChatNotificationBadge)

local container: Frame
local root: any

local function NotificationBadgeSpy(props)
	capturedBadgeProps = props
	return nil
end

local function renderBadge()
	ReactRoblox.act(function()
		root:render(React.createElement(ChatNotificationBadge, {
			iconHostProps = {
				integration = {
					id = "chat",
					component = function()
						return nil
					end,
					integration = {} :: any,
					activated = function() end,
					order = 0,
					children = {},
				},
			},
			NotificationBadge = NotificationBadgeSpy,
		}))
	end)
end

describe("ChatNotificationBadge", function()
	beforeEach(function()
		setIsChatWindowOpen(false)
		setActiveTooltipKey("GlobalChatTooltip")
		setIsChatInputBarVisible(false)
		logExposureSpy.mockClear()
		capturedBadgeProps = nil
		container = Instance.new("Frame")
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("SHOULD dismiss the badge WHEN the eligible chat window opens", function()
		renderBadge()

		ReactRoblox.act(function()
			setIsChatWindowOpen(true)
		end)

		expect(capturedBadgeProps.minBadgeCount).toBeNil()
	end)

	if
		FFlagExpChatPresetChatBadgeExperimentCleanup and ExpChatPresetChatBadgeFTUXExperimentation.isExperimentEnabled
	then
		it("SHOULD log exposure WHEN the Preset Chat Tooltip has a badge opportunity", function()
			setActiveTooltipKey("PresetChatTooltip")

			renderBadge()

			expect(logExposureSpy).toHaveBeenCalledTimes(1)
		end)

		it("SHOULD NOT log exposure WHEN the chat window is initially open", function()
			setIsChatWindowOpen(true)
			setIsChatInputBarVisible(true)
			setActiveTooltipKey("PresetChatTooltip")

			renderBadge()

			expect(logExposureSpy).never.toHaveBeenCalled()
		end)

		it("SHOULD NOT log exposure WHEN Preset Chat Tooltip is queued behind Global Chat Tooltip", function()
			renderBadge()
			expect(capturedBadgeProps.minBadgeCount).toBe(1)

			ReactRoblox.act(function()
				setIsChatWindowOpen(true)
			end)
			ReactRoblox.act(function()
				setIsChatInputBarVisible(true)
				setActiveTooltipKey("PresetChatTooltip")
			end)

			expect(logExposureSpy).never.toHaveBeenCalled()
		end)
	end
end)
