local Chrome = script:FindFirstAncestor("Chrome")

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
local getIsChatInputBarFocused, setIsChatInputBarFocused = Signals.createSignal(false)
local getActiveTooltipKey = Signals.createSignal("GlobalChatTooltip")
local getIsChatInputBarVisible = Signals.createSignal(false)
local getIsScreenWideEnough = Signals.createSignal(true)
local capturedBadgeProps: any = nil
local activationCallback: ((string) -> ())? = nil

local chatTooltipStore = {
	getIsChatWindowOpen = getIsChatWindowOpen,
	getActiveTooltipKey = getActiveTooltipKey,
	getIsChatInputBarVisible = getIsChatInputBarVisible,
	getIsScreenWideEnough = getIsScreenWideEnough,
	setShouldShow = function() end,
}

local transparencyStore = {
	getIsTextBoxFocused = getIsChatInputBarFocused,
}

jest.mock(CorePackages.Workspace.Packages.ExpChat, function()
	return {
		Stores = {
			GetChatTooltipStore = function()
				return chatTooltipStore
			end,
			GetTransparencyStore = function()
				return transparencyStore
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

jest.mock(Chrome.ChromeShared.Service, function()
	return {
		onIntegrationActivated = function()
			return {
				connect = function(_self, callback)
					activationCallback = callback
					return {
						disconnect = function()
							if activationCallback == callback then
								activationCallback = nil
							end
						end,
					}
				end,
			}
		end,
	}
end)

local ChatNotificationBadge = require(script.Parent.ChatNotificationBadge)
local FFlagExpChatFixTooltipBadgeTransientOpen = game:GetFastFlag("ExpChatFixTooltipBadgeTransientOpen")

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
		setIsChatInputBarFocused(false)
		capturedBadgeProps = nil
		activationCallback = nil
		container = Instance.new("Frame")
		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	if FFlagExpChatFixTooltipBadgeTransientOpen then
		it("SHOULD retain the badge WHEN startup visibility transiently reports chat open", function()
			renderBadge()
			expect(capturedBadgeProps.minBadgeCount).toBe(1)

			ReactRoblox.act(function()
				setIsChatWindowOpen(true)
			end)
			ReactRoblox.act(function()
				setIsChatWindowOpen(false)
			end)

			expect(capturedBadgeProps.minBadgeCount).toBe(1)
		end)

		it("SHOULD dismiss the badge WHEN the user activates the closed chat integration", function()
			renderBadge()
			expect(activationCallback).never.toBeNil()

			ReactRoblox.act(function()
				(activationCallback :: (string) -> ())("chat")
			end)

			expect(capturedBadgeProps.minBadgeCount).toBeNil()
		end)

		it("SHOULD dismiss the badge WHEN the user focuses the chat input", function()
			renderBadge()

			ReactRoblox.act(function()
				setIsChatInputBarFocused(true)
			end)

			expect(capturedBadgeProps.minBadgeCount).toBeNil()
		end)
	else
		it("SHOULD dismiss the badge WHEN the eligible chat window opens", function()
			renderBadge()

			ReactRoblox.act(function()
				setIsChatWindowOpen(true)
			end)

			expect(capturedBadgeProps.minBadgeCount).toBeNil()
		end)
	end
end)
