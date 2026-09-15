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
local getActiveTooltipKey = Signals.createSignal("GlobalChatTooltip")
local getIsChatInputBarVisible = Signals.createSignal(false)
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
			FFlagExpChatPresetChatEnabled = false,
			FFlagExpChatUseUnifiedTooltipStore = true,
		},
	}
end)

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
end)
