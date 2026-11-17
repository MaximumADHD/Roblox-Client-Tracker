--!nonstrict
-- Covers the Friends-tab host wiring in `ChatChromeIntegration.lua`: the
-- chat-open capability published on the registered integration, that
-- `activated` does not reserve the chat session, and how `ensureOpenChat`
-- sequences the handoff.
--
-- Also covers the `sideSheetPlacement` entrypoint-reorg gate, which moves with the
-- Friends-tab *visibility* flag (`FFlagExpChatCanShowFriendsTab`): the chat button
-- is only relocated to the Unibar once the tab is actually shown, so the holdout
-- (CanShow off) keeps the legacy hidden-button (`None`) layout.
-- `FFlagSideSheetHeaderChatIcon` places the button in the header on its own and is
-- driven through the mocked `SharedFlags` table, same as the reorg gate.
--
-- Strategy mirrors `ShopEntrypoint.test.lua`: the integration does all of its
-- work at require time, so each scenario re-requires it under
-- `jest.isolateModules` with a mocked `SharedFlags` table. Mocks are pinned at
-- the top level so they survive isolation and so the props captured by the
-- fake `ChromeService:register` stay reachable from the assertions.
--
-- `FFlagSideSheetHeaderChatIcon` is read from the mocked `SharedFlags` table
-- rather than the real flag, so these tests drive both branches explicitly and
-- do not need an `if FFlagX` sweep guard.
-- Flags the module still reads for real (`ExpChatUnibarAvailabilityRefactor`,
-- `ChatIntegrationFixShortcut`) are swept by the runner, so every collaborator
-- they reach is mocked to a no-op.

local Chrome = script:FindFirstAncestor("Chrome")

local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents

local GameSettings = UserSettings().GameSettings
local originalChatVisible = GameSettings.ChatVisible

-- Real enum (unmocked, same one the integration reads) so placement assertions
-- track the source of truth rather than hard-coded strings.
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local SideSheetPlacement = ChromePackage.Enums.SideSheetPlacement
local UnibarStyle = ChromePackage.UnibarStyle

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local rtl = require(CorePackages.Packages.Dev.ReactTestingLibrary)

-- The integration is re-required under jest.isolateModules, so pin the instances the test renders with.
jest.mock(CorePackages.Packages.React, function()
	return React
end)
jest.mock(CorePackages.Packages.Signals, function()
	return Signals
end)
jest.mock(CorePackages.Packages.SignalsReact, function()
	return SignalsReact
end)

-- Stands in for GetDictationStateStore(false).getIsListening.
local getMockIsListening, setMockIsListening = Signals.createSignal(false)

local lastRegisterProps: any = nil
local lastIntegration: any = nil

-- Every step of the reveal appends to one log, because the handoff is defined
-- as much by its ordering as by which calls happen at all.
local callOrder: { string } = {}

local AvailabilitySignal = {
	Available = "Available",
	Unavailable = "Unavailable",
}

-- The availability a newly registered integration starts with.
local mockInitialAvailability = AvailabilitySignal.Available

local function createFakeAvailability()
	local state = mockInitialAvailability
	return {
		available = function(_self)
			state = AvailabilitySignal.Available
		end,
		unavailable = function(_self)
			state = AvailabilitySignal.Unavailable
		end,
		pinned = function(_self)
			state = AvailabilitySignal.Available
		end,
		get = function(_self)
			return state
		end,
		connect = function(_self, _callback)
			return { disconnect = function() end }
		end,
	}
end

local notificationFireCountSpy = jest.fn()
local notificationClearSpy = jest.fn()

local fakeChromeService = {
	AvailabilitySignal = AvailabilitySignal,
	register = function(_self, props)
		lastRegisterProps = props
		lastIntegration = {
			id = props.id,
			availability = createFakeAvailability(),
			notification = {
				fireCount = function(_self2, count)
					notificationFireCountSpy(count)
				end,
				clear = function(_self2)
					notificationClearSpy()
				end,
			},
		}
		return lastIntegration
	end,
	selectedItem = function(_self)
		return {
			connect = function(_self2, _callback)
				return { disconnect = function() end }
			end,
			get = function(_self2)
				return nil
			end,
		}
	end,
	setShortcutBar = function(_self, _id) end,
}

jest.mock(Chrome.Service, function()
	return fakeChromeService
end)

local updateChatVisibility: ((boolean) -> ())? = nil
local initialMappedVisibility: boolean? = nil
jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function(_signal, getValue, onValueChanged)
				initialMappedVisibility = getValue()
				updateChatVisibility = onValueChanged
				return {
					get = function()
						return false
					end,
					connect = function()
						return { disconnect = function() end }
					end,
				}
			end,
		},
		setCoreGuiAvailability = function(_integration, _coreGuiType, _callback)
			return function() end
		end,
	}
end)

-- Short-circuits the real Constants' transitive UIBlox require, which is not
-- re-initialized inside `jest.isolateModules`.
jest.mock(Chrome.ChromeShared.Unibar.Constants, function()
	return {
		UNIBAR_SHORTCUTBAR_ID = "unibar_shortcut_bar",
	}
end)

-- The real util runs its callback immediately when the Roblox menu is already
-- closed, and otherwise defers it until the menu closes -- possibly never. The
-- deferred form is the default here so tests decide when the menu finishes
-- closing; `dismissMenuImmediately` selects the synchronous form.
local dismissMenuImmediately = false
local pendingMenuDismissals: { () -> () } = {}
local dismissRobloxMenuAndRunSpy = jest.fn(function(action)
	if dismissMenuImmediately then
		action()
	else
		table.insert(pendingMenuDismissals, action)
	end
end)
jest.mock(Chrome.Integrations.ChromeIntegrationUtils, function()
	return {
		dismissRobloxMenuAndRun = dismissRobloxMenuAndRunSpy,
	}
end)

jest.mock(Chrome.Integrations.CommonIcon, function()
	return function()
		return React.createElement("Frame", { Name = "ChatIcon" })
	end
end)

jest.mock(Chrome.Integrations.RedDot, function()
	return function(props)
		return React.createElement("Frame", { Name = "ListeningDot", Visible = props.visible })
	end
end)

local focusChatSpy = jest.fn(function()
	table.insert(callOrder, "focusChat")
end)
jest.mock(Chrome.ChromeShared.Utility.FocusSelectExpChat, function()
	return focusChatSpy
end)

local mockIsSmallTouchScreen = false
jest.mock(Chrome.ChromeShared.Service.ViewportUtil, function()
	return {
		isSmallTouchScreen = function()
			return mockIsSmallTouchScreen
		end,
	}
end)

local chatWindowVisible = false
local chatSelectorVisibilitySetBeforeRegister: boolean? = nil
local setVisibleSpy = jest.fn(function(visible)
	if lastRegisterProps == nil then
		chatSelectorVisibilitySetBeforeRegister = visible
	end
	table.insert(callOrder, if visible then "showChat" else "hideChat")
end)
jest.mock(RobloxGui.Modules.ChatSelector, function()
	local function fakeSignal()
		return {
			connect = function(_self, _callback)
				return { disconnect = function() end }
			end,
		}
	end
	return {
		GetVisibility = function()
			return chatWindowVisible
		end,
		SetVisible = function(_self, visible)
			setVisibleSpy(visible)
		end,
		VisibilityStateChanged = fakeSignal(),
		ChatWindowToggled = fakeSignal(),
		MessagesChanged = fakeSignal(),
		ChatActiveChanged = fakeSignal(),
	}
end)

local appChatModalVisible = false
local modalSetVisibleSpy = jest.fn(function(visible)
	table.insert(callOrder, if visible then "showAppChat" else "hideAppChat")
end)
jest.mock(CorePackages.Workspace.Packages.AppChat.InExperienceAppChatModal, function()
	return {
		getVisible = function()
			return appChatModalVisible
		end,
		default = {
			setVisible = function(_self, visible)
				modalSetVisibleSpy(visible)
			end,
		},
	}
end)

local reserveSpy = jest.fn(function()
	table.insert(callOrder, "reserve")
end)
jest.mock(CorePackages.Workspace.Packages.AppChat.ChatSessionRefCount, function()
	return {
		reserve = reserveSpy,
	}
end)

local detachedEffects: { (any) -> () } = {}
local function flushDetachedEffects()
	for _, effect in ipairs(detachedEffects) do
		effect(false)
	end
end

jest.mock(CorePackages.Workspace.Packages.SignalsUtils, function()
	return {
		createDetachedEffect = function(effect)
			table.insert(detachedEffects, effect)
		end,
	}
end)

jest.mock(script.Parent.ChatIconVisibleSignals, function()
	return {
		default = {
			setVisibleViaChatSelector = function() end,
			setGameSettingsChatVisible = function() end,
			setCoreGuiEnabled = function() end,
			setChatActiveCalledByDeveloper = function() end,
			setLocalUserChat = function() end,
			getIsChatIconVisible = function()
				return true
			end,
			getIsChatWindowVisible = function()
				return false
			end,
		},
	}
end)

local mockShouldSkipHistorical = false
local mockHistoricalWindowMessageCount = 0
local mockHistoricalCountSignalExists = true
jest.mock(CorePackages.Workspace.Packages.ExpChat, function()
	return {
		Stores = {
			GetDictationStateStore = function()
				return { getIsListening = getMockIsListening }
			end,
			GetFocusNavigationStore = function()
				return {
					getChatInputBarFocused = function()
						return false
					end,
				}
			end,
			GetMessagesStore = function()
				return {
					getHistoricalWindowMessageCount = if mockHistoricalCountSignalExists
						then function()
							return mockHistoricalWindowMessageCount
						end
						else nil,
				}
			end,
		},
		isHistoricalMessage = function(textChatMessage)
			return textChatMessage ~= nil and textChatMessage.IsHistorical == true
		end,
		Events = {
			ChatTopBarButtonActivated = function() end,
		},
		ExpChatPerfTracker = {
			Events = { ChatWindowMountTTI = "ChatWindowMountTTI" },
			start = function() end,
		},
		shouldSuppressUnreadForTabMetadata = function()
			return false
		end,
		shouldSkipHistoricalMessage = function()
			return mockShouldSkipHistorical
		end,
		getExperienceChatVisualConfig = function()
			return { icon = { off = "off", on = "on" } }
		end,
	}
end)

local mockFriendsUnreadCount = 0
local clearFriendsDisplayCountSpy = jest.fn(function()
	mockFriendsUnreadCount = 0
end)
jest.mock(CorePackages.Workspace.Packages.FriendsChat.GetFriendsChatIconUnreadStore, function()
	return function()
		return {
			getUnreadCountToDisplay = function()
				return mockFriendsUnreadCount
			end,
			clearDisplayCount = clearFriendsDisplayCountSpy,
		}
	end
end)

-- The display-mode decision (channel + mode -> boolean) is owned and covered by
-- shouldRenderTextChannelInDefaultWindow.test.lua. Here we only need to prove the
-- badge handler honors that verdict, so stub the helper to a directly-controlled
-- result. This also side-steps Enum.TextChannelDisplayMode, which does not exist
-- on the test engine.
--
-- CLEANUP (ExpChatUseIsDefaultTextChannel, flag file
-- exp-chat-shared/src/Flags/GetFFlagExpChatUseIsDefaultTextChannel.lua): this stub
-- stays valid after the flag is removed -- it only asserts the badge handler
-- reacts to the helper's boolean. If you later reimplement the badge decision
-- inline instead of via shouldRenderTextChannelInDefaultWindow, revisit this mock.
local mockUniverseChatTabsEnabled = false
local mockShouldRenderInDefaultWindow = true
local fireClientAnalyticsSpy = jest.fn()
jest.mock(CorePackages.Workspace.Packages.ExpChatShared, function()
	return {
		Flags = {
			GetFFlagTextChatEnableUniverseChatTabs = function()
				return mockUniverseChatTabsEnabled
			end,
		},
		getTextChannelDisplayMode = function(): any
			return nil
		end,
		shouldRenderTextChannelInDefaultWindow = function(): boolean
			return mockShouldRenderInDefaultWindow
		end,
		Analytics = {
			FireClientAnalyticsWithEventName = function(eventName: string, args: { [string]: string })
				fireClientAnalyticsSpy(eventName, args)
			end,
		},
	}
end)

local mockJoinIntentRead: { result: string, intent: { [string]: unknown }? } = { result = "none" }
local readJoinIntentSpy = jest.fn(function(_placeId: number)
	return mockJoinIntentRead
end)
local function handleDeeplinkTapStub() end
local mockExpChatJoinIntent = {
	FStringOpenChatOnJoinNotificationTypes = "",
	read = function(placeId: number)
		return readJoinIntentSpy(placeId)
	end,
	handleDeeplinkTap = handleDeeplinkTapStub,
}
jest.mock(CorePackages.Workspace.Packages.ExpChatJoinIntent, function()
	return mockExpChatJoinIntent
end)

local connectDeeplinkTapListenerSpy = jest.fn()
jest.mock(CorePackages.Workspace.Packages.NotificationsCommon, function()
	return {
		DeeplinkTapListeners = {
			connect = function(listener)
				connectDeeplinkTapListenerSpy(listener)
				return function() end
			end,
		},
	}
end)

-- Mutable so the spatial direct-open branch can be driven; the integration
-- reads `isInExperienceUIVREnabled` at require time.
local mockExperiments = {
	isInExperienceUIVREnabled = false,
	InExperienceUIVRIXP = {
		isMovePanelToCenter = function()
			return false
		end,
	},
}
jest.mock(CorePackages.Workspace.Packages.SharedExperimentDefinition, function()
	return mockExperiments
end)

local isSpatialValue = false
jest.mock(CorePackages.Workspace.Packages.AppCommonLib, function()
	return {
		isSpatial = function()
			return isSpatialValue
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.InputUi, function()
	return {
		Gamepad = {
			GamepadUtils = {
				mapPositionToDirection = function()
					return nil
				end,
			},
		},
	}
end)

local mockSharedFlags = {
	FFlagEnableConsoleExpControls = false,
	FFlagExpChatWindowSyncUnibar = false,
	FFlagExpChatInitializeWindowFromGameSettings = false,
	FFlagChromeActivatedMappedSignal = false,
	FFlagRemoveFriendsChatUnibarEntrypoints = false,
	FFlagExpChatCanShowFriendsTab = false,
	FFlagSideSheetHeaderChatIcon = false,
	FFlagExpChatPerfTracking = false,
	FFlagExpChatHistoricalMessagesUnibarUnread = false,
	FFlagExpChatContinuousListeningChatIconDot = false,
}
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	return mockSharedFlags
end)

-- Re-requires the integration and returns the module's exported integration.
local function loadIntegration(): any
	local integration
	jest.isolateModules(function()
		integration = require(script.Parent.ChatChromeIntegration)
	end)

	-- Startup also reads persisted GameSettings, whose default differs between
	-- test platforms. Drive the observed ChatSelector state afterward so each
	-- scenario starts from its declared visibility.
	assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
	updateChatVisibility(chatWindowVisible)
	integration.availability:available()
	setVisibleSpy:mockClear()
	table.clear(callOrder)

	return integration
end

-- Runs the callback the integration handed to `dismissRobloxMenuAndRun`, which
-- is what the real util does once the Roblox menu finishes closing.
local function closeRobloxMenu()
	local action = table.remove(pendingMenuDismissals, 1)
	assert(action ~= nil, "expected the integration to request a menu dismissal")
	action()
end

local messageReceivedHandlers: { (any) -> () } = {}
local universeMessageReceivedHandlers: { (any) -> () } = {}

local function captureSignal(handlers: { (any) -> () })
	return {
		Connect = function(_self, callback)
			table.insert(handlers, callback)
			return { Disconnect = function() end }
		end,
	}
end

local fakeTextChatService = {
	MessageReceived = captureSignal(messageReceivedHandlers),
	UniverseChatMessageReceived = captureSignal(universeMessageReceivedHandlers),
}

-- Delegates everything to the real `game` except the TextChatService lookup.
local rawGame = game :: any
local gameOverride = setmetatable({
	GetService = function(_self, serviceName: string)
		if serviceName == "TextChatService" then
			return fakeTextChatService
		end
		return rawGame:GetService(serviceName)
	end,
}, {
	__index = function(_, key)
		local value = rawGame[key]
		if type(value) == "function" then
			return function(_, ...)
				return value(rawGame, ...)
			end
		end
		return value
	end,
})

local function fireMessageReceived(textChannel: any, isHistorical: boolean?)
	for _, handler in messageReceivedHandlers do
		handler({ TextChannel = textChannel, Metadata = "", IsHistorical = isHistorical })
	end
end

local function fireUniverseMessageReceived()
	for _, handler in universeMessageReceivedHandlers do
		handler({ TextChannel = nil, Metadata = "" })
	end
end

-- Loads the integration under the game override so the badge handler binds to
-- the fake TextChatService. Mirrors `loadIntegration`'s post-load priming.
local function loadIntegrationForBadge(skipVisibilityObservation: boolean?): any
	table.clear(messageReceivedHandlers)
	table.clear(universeMessageReceivedHandlers)
	table.clear(detachedEffects)

	local moduleFunction = debug["loadmodule"](script.Parent.ChatChromeIntegration)
	local defaultEnvironment = getfenv(moduleFunction)
	local globalRequire = require
	local newEnvironment = setmetatable({
		-- The test file's require is jest-patched, so the module's mocks resolve.
		require = globalRequire,
		game = gameOverride,
	}, {
		__index = defaultEnvironment,
	})
	setfenv(moduleFunction, newEnvironment :: any)
	local integration = moduleFunction()

	if not skipVisibilityObservation then
		assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
		updateChatVisibility(chatWindowVisible)
	end
	integration.availability:available()
	notificationFireCountSpy:mockClear()
	notificationClearSpy:mockClear()
	return integration
end

describe("ChatChromeIntegration chat-open capability", function()
	beforeEach(function()
		lastRegisterProps = nil
		lastIntegration = nil
		dismissRobloxMenuAndRunSpy:mockClear()
		setVisibleSpy:mockClear()
		modalSetVisibleSpy:mockClear()
		reserveSpy:mockClear()
		focusChatSpy:mockClear()
		table.clear(callOrder)
		table.clear(pendingMenuDismissals)
		dismissMenuImmediately = false
		appChatModalVisible = false
		chatWindowVisible = false
		isSpatialValue = false
		mockExperiments.isInExperienceUIVREnabled = false
		mockSharedFlags.FFlagEnableConsoleExpControls = false
		mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = false
		mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
		mockSharedFlags.FFlagSideSheetHeaderChatIcon = false
		mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
		initialMappedVisibility = nil
		chatSelectorVisibilitySetBeforeRegister = nil
	end)

	afterEach(function()
		GameSettings.ChatVisible = originalChatVisible
	end)

	describe("startup visibility", function()
		it("SHOULD align Chrome and ChatSelector with GameSettings WHEN initialization is enabled", function()
			mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = true
			GameSettings.ChatVisible = false
			chatWindowVisible = true

			loadIntegration()

			expect(initialMappedVisibility).toBe(false)
			expect(chatSelectorVisibilitySetBeforeRegister).toBe(false)
		end)

		it("SHOULD preserve ChatSelector startup visibility WHEN initialization is disabled", function()
			GameSettings.ChatVisible = false
			chatWindowVisible = true

			loadIntegration()

			expect(initialMappedVisibility).toBe(true)
			expect(chatSelectorVisibilitySetBeforeRegister).toBeNil()
		end)
	end)

	describe("wiring", function()
		it("SHOULD publish the chat-open capability", function()
			local integration = loadIntegration()

			expect(integration.chatOpenCapability).never.toBeNil()
			expect(integration.chatOpenCapability.isAvailable()).toBe(true)
		end)

		-- `ensureOpenChat` no longer prechecks availability, so this is the only
		-- signal the caller has before starting a handoff.
		it("SHOULD report the capability unavailable WHEN chat availability is lost", function()
			local integration = loadIntegration()
			integration.availability:unavailable()

			expect(integration.chatOpenCapability.isAvailable()).toBe(false)
		end)

		-- Only the Friends Chat handoff reserves the session; the unibar button
		-- keeps its pre-capability behavior.
		it("SHOULD reveal chat without reserving the session WHEN the chat button is activated", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			local integration = loadIntegration()
			appChatModalVisible = true

			lastRegisterProps.activated(integration)
			closeRobloxMenu()

			expect(reserveSpy).never.toHaveBeenCalled()
			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)
	end)

	describe("ensureOpenChat", function()
		-- The coordinator owns supersession; these scenarios drive a single
		-- request, so it stays current throughout.
		local function alwaysCurrent()
			return true
		end

		it("SHOULD hide AppChat without toggling or focusing WHEN chat is already visible", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			chatWindowVisible = true
			local integration = loadIntegration()
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(callOrder).toEqual({ "hideAppChat" })
		end)

		it("SHOULD hide AppChat before revealing and focusing chat", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			local integration = loadIntegration()
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)
			closeRobloxMenu()

			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)

		it("SHOULD reveal chat WHEN the Roblox menu is already closed", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			dismissMenuImmediately = true
			local integration = loadIntegration()
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)

		it("SHOULD bypass menu dismissal for the spatial direct-open path", function()
			mockExperiments.isInExperienceUIVREnabled = true
			isSpatialValue = true
			local integration = loadIntegration()
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(dismissRobloxMenuAndRunSpy).never.toHaveBeenCalled()
			expect(callOrder).toEqual({ "hideAppChat", "showChat" })
		end)

		it("SHOULD skip revealing WHEN availability is lost during menu dismissal", function()
			local integration = loadIntegration()
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)
			integration.availability:unavailable()
			closeRobloxMenu()

			expect(callOrder).toEqual({})
		end)

		-- A newer handoff can start while the menu is still closing. Revealing
		-- then would surface the earlier conversation instead of the one the
		-- user last asked for.
		it("SHOULD skip revealing WHEN the request is superseded during menu dismissal", function()
			local integration = loadIntegration()
			appChatModalVisible = true
			local isCurrent = true

			integration.chatOpenCapability.ensureOpenChat(function()
				return isCurrent
			end)
			isCurrent = false
			closeRobloxMenu()

			expect(callOrder).toEqual({})
		end)
	end)

	describe("side sheet placement", function()
		-- The chat button is only relocated to the Unibar once the Friends tab is
		-- actually shown. RemoveEntrypoints is the arm-constant precondition; CanShow
		-- is what flips placement, so the holdout (CanShow off) keeps the legacy
		-- hidden-button layout. The header flag places the button in the header on its own.
		it("SHOULD keep the chat button hidden (None) for the holdout WHEN CanShow is off", function()
			mockSharedFlags.FFlagSideSheetHeaderChatIcon = false
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = true
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
			loadIntegration()

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.None)
		end)

		it("SHOULD keep the chat button out of the header WHEN friends chat entrypoints stay in the menu", function()
			mockSharedFlags.FFlagSideSheetHeaderChatIcon = false
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = true
			loadIntegration()

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.None)
		end)

		it("SHOULD place the chat button in the header for the holdout WHEN the header flag is on", function()
			mockSharedFlags.FFlagSideSheetHeaderChatIcon = true
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = true
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
			loadIntegration()

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.Unibar)
		end)

		it("SHOULD place the chat button in the header WHEN friends chat entrypoints stay in the menu", function()
			mockSharedFlags.FFlagSideSheetHeaderChatIcon = true
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = true
			loadIntegration()

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.Unibar)
		end)

		it("SHOULD relocate the chat button to the Unibar WHEN CanShow is on", function()
			mockSharedFlags.FFlagSideSheetHeaderChatIcon = false
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = true
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = true
			loadIntegration()

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.Unibar)
		end)
	end)
end)

describe("ChatChromeIntegration unibar badge gating", function()
	-- The helper is stubbed, so a message only needs *a* channel; the channel's
	-- shape does not drive the outcome (mockShouldRenderInDefaultWindow does).
	local A_CHANNEL = { IsDefaultTextChannel = false }

	beforeEach(function()
		lastRegisterProps = nil
		lastIntegration = nil
		chatWindowVisible = false
		mockUniverseChatTabsEnabled = false
		mockShouldRenderInDefaultWindow = true
		mockShouldSkipHistorical = false
		table.clear(messageReceivedHandlers)
		table.clear(universeMessageReceivedHandlers)
		notificationFireCountSpy:mockClear()
		notificationClearSpy:mockClear()
		mockFriendsUnreadCount = 0
		clearFriendsDisplayCountSpy:mockClear()
		mockSharedFlags.FFlagEnableConsoleExpControls = false
		mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
		mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
	end)

	afterEach(function()
		GameSettings.ChatVisible = originalChatVisible
	end)

	-- When the helper says the channel renders in the default window (flag off, or
	-- AllTextChannels, or a default channel), a message bumps the unibar badge.
	it("SHOULD badge WHEN the helper renders the channel in the default window", function()
		mockShouldRenderInDefaultWindow = true
		loadIntegrationForBadge()

		fireMessageReceived(A_CHANNEL)

		expect(notificationFireCountSpy).toHaveBeenCalledWith(1)
	end)

	-- The fix: a channel the helper excludes from the default window (a custom
	-- channel under DefaultTextChannels) must not bump the unibar unread badge.
	it("SHOULD NOT badge WHEN the helper excludes the channel from the default window", function()
		mockShouldRenderInDefaultWindow = false
		loadIntegrationForBadge()

		fireMessageReceived(A_CHANNEL)

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
	end)

	it("SHOULD NOT badge WHEN the message is historical", function()
		mockShouldRenderInDefaultWindow = true
		mockShouldSkipHistorical = true
		loadIntegrationForBadge()

		fireMessageReceived(A_CHANNEL)

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
	end)

	-- Regression: universe/global messages have no TextChannel and flow through
	-- UniverseChatMessageReceived, which the window filter never touches; they must
	-- keep badging even when the helper would exclude their (nil) channel.
	it("SHOULD badge for a universe message even WHEN the helper would exclude it", function()
		mockUniverseChatTabsEnabled = true
		mockShouldRenderInDefaultWindow = false
		loadIntegrationForBadge()

		fireUniverseMessageReceived()

		expect(notificationFireCountSpy).toHaveBeenCalledWith(1)
	end)

	it("SHOULD add Friends Chat unread to the badge count", function()
		mockFriendsUnreadCount = 2
		loadIntegrationForBadge()

		flushDetachedEffects()
		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(2)

		fireMessageReceived(A_CHANNEL)
		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(3)
	end)

	it("SHOULD clear the badge and the Friends Chat display count WHEN the window is opened", function()
		mockFriendsUnreadCount = 2
		loadIntegrationForBadge()
		fireMessageReceived(A_CHANNEL)
		notificationFireCountSpy:mockClear()

		assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
		chatWindowVisible = true
		updateChatVisibility(true)

		expect(clearFriendsDisplayCountSpy).toHaveBeenCalledTimes(1)
		expect(notificationClearSpy).toHaveBeenCalled()
		expect(notificationFireCountSpy).never.toHaveBeenCalled()
	end)
end)

describe("ChatChromeIntegration historical unread badge", function()
	local A_CHANNEL = { IsDefaultTextChannel = true }

	beforeEach(function()
		lastRegisterProps = nil
		lastIntegration = nil
		chatWindowVisible = false
		mockUniverseChatTabsEnabled = false
		mockShouldRenderInDefaultWindow = true
		mockShouldSkipHistorical = false
		mockHistoricalWindowMessageCount = 0
		mockHistoricalCountSignalExists = true
		mockFriendsUnreadCount = 0
		table.clear(messageReceivedHandlers)
		table.clear(universeMessageReceivedHandlers)
		table.clear(detachedEffects)
		notificationFireCountSpy:mockClear()
		notificationClearSpy:mockClear()
		mockSharedFlags.FFlagEnableConsoleExpControls = false
		mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
		mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = false
		mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = false
	end)

	afterEach(function()
		GameSettings.ChatVisible = originalChatVisible
	end)

	it("SHOULD badge the stored historical count WHEN replayed history lands", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		loadIntegrationForBadge()

		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(3)
	end)

	it("SHOULD lower the badge WHEN the cap trims the stored historical count", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		loadIntegrationForBadge()

		mockHistoricalWindowMessageCount = 5
		flushDetachedEffects()
		mockHistoricalWindowMessageCount = 2
		flushDetachedEffects()

		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(2)
	end)

	it("SHOULD stop badging replayed history WHEN the window is opened", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		loadIntegrationForBadge()
		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
		chatWindowVisible = true
		updateChatVisibility(true)
		notificationFireCountSpy:mockClear()
		notificationClearSpy:mockClear()
		flushDetachedEffects()

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
		expect(notificationClearSpy).toHaveBeenCalled()
	end)

	it("SHOULD badge history that arrives after eviction dropped acknowledged history", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		loadIntegrationForBadge()
		mockHistoricalWindowMessageCount = 5
		flushDetachedEffects()

		assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
		chatWindowVisible = true
		updateChatVisibility(true)
		chatWindowVisible = false
		updateChatVisibility(false)

		mockHistoricalWindowMessageCount = 2
		flushDetachedEffects()
		mockHistoricalWindowMessageCount = 4
		flushDetachedEffects()

		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(2)
	end)

	it("SHOULD NOT badge replayed history WHEN the window is already open on join", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		chatWindowVisible = true
		loadIntegrationForBadge()

		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
		expect(notificationClearSpy).toHaveBeenCalled()
	end)

	-- The badge stays clear while the window is visible, but history is not
	-- acknowledged until visibility is actually observed; the next test proves
	-- it resurfaces once the window reports itself closed.
	it("SHOULD keep the badge clear WHEN only the startup preference says the window is open", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = true
		GameSettings.ChatVisible = true
		chatWindowVisible = true
		loadIntegrationForBadge(true)

		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
		expect(notificationClearSpy).toHaveBeenCalled()
	end)

	it("SHOULD badge replayed history WHEN the window reports itself closed after replay", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = true
		GameSettings.ChatVisible = true
		chatWindowVisible = true
		loadIntegrationForBadge(true)

		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		assert(updateChatVisibility ~= nil, "expected the integration to observe chat visibility")
		chatWindowVisible = false
		updateChatVisibility(false)
		notificationFireCountSpy:mockClear()
		flushDetachedEffects()

		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(3)
	end)

	it("SHOULD NOT double count WHEN a historical message also arrives on MessageReceived", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		loadIntegrationForBadge()
		mockHistoricalWindowMessageCount = 2

		fireMessageReceived(A_CHANNEL, true)
		expect(notificationFireCountSpy).never.toHaveBeenCalled()

		flushDetachedEffects()

		expect(notificationFireCountSpy).toHaveBeenLastCalledWith(2)
	end)

	it("SHOULD badge nothing WHEN the store exposes no historical count", function()
		mockSharedFlags.FFlagExpChatHistoricalMessagesUnibarUnread = true
		mockHistoricalCountSignalExists = false
		loadIntegrationForBadge()

		flushDetachedEffects()

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
		expect(notificationClearSpy).toHaveBeenCalled()
	end)

	it("SHOULD NOT read the stored historical count WHEN the flag is off", function()
		loadIntegrationForBadge()

		mockHistoricalWindowMessageCount = 3
		flushDetachedEffects()

		expect(notificationFireCountSpy).never.toHaveBeenCalled()
	end)

	it("SHOULD keep counting historical messages from MessageReceived WHEN the flag is off", function()
		loadIntegrationForBadge()

		fireMessageReceived(A_CHANNEL, true)

		expect(notificationFireCountSpy).toHaveBeenCalledWith(1)
	end)
end)

describe("ChatChromeIntegration chat icon listening dot", function()
	local function renderChatIcon()
		local Icon = lastRegisterProps.components.Icon
		local result
		ReactRoblox.act(function()
			result = rtl.render(React.createElement(UnibarStyle.Context.Provider, {
				value = { ICON_SIZE = 36 },
			}, { Icon = React.createElement(Icon) }))
		end)
		return result
	end

	local function findByName(result: any, name: string): any
		return result.queryByText(function(_, node)
			return node.Name == name
		end)
	end

	beforeEach(function()
		lastRegisterProps = nil
		lastIntegration = nil
		setMockIsListening(false)
		mockSharedFlags.FFlagExpChatContinuousListeningChatIconDot = false
	end)

	afterEach(function()
		mockSharedFlags.FFlagExpChatContinuousListeningChatIconDot = false
		setMockIsListening(false)
	end)

	it("SHOULD render only the chat icon WHEN the flag is off, even while listening", function()
		loadIntegration()
		setMockIsListening(true)

		local result = renderChatIcon()

		expect(findByName(result, "ChatIcon")).never.toBeNil()
		expect(findByName(result, "ListeningDot")).toBeNil()
		result.unmount()
	end)

	it("SHOULD show the dot only while listening WHEN the flag is on", function()
		mockSharedFlags.FFlagExpChatContinuousListeningChatIconDot = true
		loadIntegration()

		local result = renderChatIcon()
		expect(findByName(result, "ChatIcon")).never.toBeNil()
		local dot = findByName(result, "ListeningDot")
		expect(dot).never.toBeNil()
		expect(dot.Visible).toBe(false)

		ReactRoblox.act(function()
			setMockIsListening(true)
		end)
		expect(findByName(result, "ListeningDot").Visible).toBe(true)

		ReactRoblox.act(function()
			setMockIsListening(false)
		end)
		expect(findByName(result, "ListeningDot").Visible).toBe(false)
		result.unmount()
	end)
end)

describe("ChatChromeIntegration chat-open after a notification join", function()
	local JOIN_PLACE_ID = 123
	local INTENT = {
		version = 1,
		source = "stream",
		notificationType = "ReengageChatters",
		notificationId = "notification-1",
		chatTarget = "RBXGeneral",
		placeId = JOIN_PLACE_ID,
		createdAt = 1000,
	}
	local mockCanChat = true
	local mockIsLoaded = true
	local mockChatWindowConfiguration: { Enabled: boolean }? = nil
	local loadedEvent = Instance.new("BindableEvent")

	-- Startup reads the local player, whether they can chat, the place ID, whether the game has
	-- loaded and the chat window configuration through `game`, so the module loads with those
	-- faked. The startup coroutine then runs to completion during the load, unless the game
	-- hasn't loaded yet.
	local fakeServices = {
		Players = {
			LocalPlayer = { UserId = 1 },
		},
		RunService = {
			IsStudio = function()
				return false
			end,
		},
		Chat = {
			CanUserChatAsync = function()
				return mockCanChat
			end,
		},
		TextChatService = {
			MessageReceived = captureSignal({}),
			UniverseChatMessageReceived = captureSignal({}),
			FindFirstChildOfClass = function(_self, className: string)
				return if className == "ChatWindowConfiguration" then mockChatWindowConfiguration else nil
			end,
		},
	}
	local joinGame = setmetatable({
		PlaceId = JOIN_PLACE_ID,
		Loaded = loadedEvent.Event,
		IsLoaded = function(_self)
			return mockIsLoaded
		end,
		GetService = function(_self, serviceName: string)
			return fakeServices[serviceName] or rawGame:GetService(serviceName)
		end,
	}, {
		__index = function(_, key)
			local value = rawGame[key]
			if type(value) == "function" then
				return function(_, ...)
					return value(rawGame, ...)
				end
			end
			return value
		end,
	})

	local function loadIntegrationAfterJoin()
		local moduleFunction = debug["loadmodule"](script.Parent.ChatChromeIntegration)
		local environment = setmetatable({
			require = require,
			game = joinGame,
		}, {
			__index = getfenv(moduleFunction),
		})
		-- As in loadIntegrationForBadge: setfenv's type doesn't accept a table with a metatable.
		setfenv(moduleFunction, environment :: any)
		return moduleFunction()
	end

	beforeEach(function()
		lastRegisterProps = nil
		lastIntegration = nil
		chatWindowVisible = false
		mockCanChat = true
		mockIsLoaded = true
		mockChatWindowConfiguration = { Enabled = true }
		mockIsSmallTouchScreen = false
		mockInitialAvailability = AvailabilitySignal.Available
		mockJoinIntentRead = { result = "accepted", intent = INTENT }
		mockExpChatJoinIntent.FStringOpenChatOnJoinNotificationTypes = "ReengageChatters"
		mockSharedFlags.FFlagExpChatInitializeWindowFromGameSettings = false
		GameSettings.ChatVisible = false
		setVisibleSpy:mockClear()
		readJoinIntentSpy:mockClear()
		connectDeeplinkTapListenerSpy:mockClear()
		fireClientAnalyticsSpy:mockClear()
	end)

	afterEach(function()
		mockExpChatJoinIntent.FStringOpenChatOnJoinNotificationTypes = ""
		mockInitialAvailability = AvailabilitySignal.Available
		mockIsSmallTouchScreen = false
		GameSettings.ChatVisible = originalChatVisible
	end)

	it("SHOULD open chat and keep it open through ExpChat's mount WHEN the intent is for this place", function()
		loadIntegrationAfterJoin()

		expect(readJoinIntentSpy).toHaveBeenCalledWith(JOIN_PLACE_ID)
		expect(setVisibleSpy).toHaveBeenLastCalledWith(true)
		expect(GameSettings.ChatVisible).toBe(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith("joinIntentChatOpen", {
			result = "opened",
			notificationType = "ReengageChatters",
			notificationId = "notification-1",
			chatTarget = "RBXGeneral",
			source = "stream",
		})
	end)

	it("SHOULD connect chat's listener to notification deeplink taps", function()
		loadIntegrationAfterJoin()

		expect(connectDeeplinkTapListenerSpy).toHaveBeenCalledWith(handleDeeplinkTapStub)
	end)

	it("SHOULD NOT open chat WHEN the player can't chat", function()
		mockCanChat = false

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "cannotChat" })
		)
	end)

	it("SHOULD NOT toggle chat WHEN it is already open", function()
		GameSettings.ChatVisible = true

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).toHaveBeenCalledTimes(1)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "alreadyOpen" })
		)
	end)

	it("SHOULD NOT open chat WHEN chat is unavailable", function()
		mockInitialAvailability = AvailabilitySignal.Unavailable

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "chatUnavailable" })
		)
	end)

	it("SHOULD NOT open chat WHEN the experience turns off the chat window", function()
		mockChatWindowConfiguration = { Enabled = false }

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(GameSettings.ChatVisible).toBe(false)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledTimes(1)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "chatWindowDisabled" })
		)
	end)

	it("SHOULD open chat WHEN the experience has no chat window configuration", function()
		mockChatWindowConfiguration = nil

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).toHaveBeenLastCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "opened" })
		)
	end)

	it("SHOULD open chat on a small touch screen, where the load step closes it", function()
		mockIsSmallTouchScreen = true
		GameSettings.ChatVisible = true

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).toHaveBeenCalledWith(false)
		expect(setVisibleSpy).toHaveBeenLastCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "opened" })
		)
	end)

	it("SHOULD wait for the game to load before deciding", function()
		mockIsLoaded = false

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).never.toHaveBeenCalled()

		mockIsLoaded = true
		loadedEvent:Fire()
		waitForEvents()

		expect(setVisibleSpy).toHaveBeenLastCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "opened" })
		)
	end)

	it("SHOULD report a rejected intent without waiting for the game to load", function()
		mockIsLoaded = false
		mockJoinIntentRead = { result = "expired", intent = INTENT }

		loadIntegrationAfterJoin()

		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "expired" })
		)
	end)

	it("SHOULD only report a rejected intent", function()
		mockJoinIntentRead = { result = "expired", intent = INTENT }

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).toHaveBeenCalledWith(
			"joinIntentChatOpen",
			expect.objectContaining({ result = "expired", notificationType = "ReengageChatters" })
		)
	end)

	it("SHOULD do nothing WHEN there's no intent", function()
		mockJoinIntentRead = { result = "none" }

		loadIntegrationAfterJoin()

		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).never.toHaveBeenCalled()
	end)

	it("SHOULD neither read an intent nor connect a listener WHEN the FString is empty", function()
		mockExpChatJoinIntent.FStringOpenChatOnJoinNotificationTypes = ""

		loadIntegrationAfterJoin()

		expect(readJoinIntentSpy).never.toHaveBeenCalled()
		expect(connectDeeplinkTapListenerSpy).never.toHaveBeenCalled()
		expect(setVisibleSpy).never.toHaveBeenCalledWith(true)
		expect(fireClientAnalyticsSpy).never.toHaveBeenCalled()
	end)
end)
