--!nonstrict
-- Covers the `FFlagExpChatEnableFriendsTab` host wiring in
-- `ChatChromeIntegration.lua`: whether the chat-open capability is published on
-- the registered integration, that `activated` behaves identically in both flag
-- states, and how `ensureOpenChat` sequences the handoff.
--
-- Also covers the `sideSheetPlacement` entrypoint-reorg gate, which moves with the
-- Friends-tab *visibility* flag (`FFlagExpChatCanShowFriendsTab`), not `F`: the
-- chat button is only relocated to the Unibar once the tab is actually shown, so
-- the holdout (F on, CanShow off) keeps the legacy hidden-button (`None`) layout.
--
-- Strategy mirrors `ShopEntrypoint.test.lua`: the integration does all of its
-- work at require time, so each scenario re-requires it under
-- `jest.isolateModules` with a mocked `SharedFlags` table. Mocks are pinned at
-- the top level so they survive isolation and so the props captured by the
-- fake `ChromeService:register` stay reachable from the assertions.
--
-- `FFlagExpChatEnableFriendsTab` is read from the mocked `SharedFlags` table
-- rather than the real flag, so these tests drive both branches explicitly and
-- do not need an `if FFlagX` sweep guard. Flags the module still reads for
-- real (`ExpChatUnibarAvailabilityRefactor`, `ChatIntegrationFixShortcut`) are
-- swept by the runner, so every collaborator they reach is mocked to a no-op.

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

local GameSettings = UserSettings().GameSettings
local originalChatVisible = GameSettings.ChatVisible

-- Real enum (unmocked, same one the integration reads) so placement assertions
-- track the source of truth rather than hard-coded strings.
local SideSheetPlacement = require(CorePackages.Workspace.Packages.Chrome).Enums.SideSheetPlacement

local lastRegisterProps: any = nil
local lastIntegration: any = nil

-- Every step of the reveal appends to one log, because the handoff is defined
-- as much by its ordering as by which calls happen at all.
local callOrder: { string } = {}

local AvailabilitySignal = {
	Available = "Available",
	Unavailable = "Unavailable",
}

local function createFakeAvailability()
	local state = AvailabilitySignal.Available
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

local fakeChromeService = {
	AvailabilitySignal = AvailabilitySignal,
	register = function(_self, props)
		lastRegisterProps = props
		lastIntegration = {
			id = props.id,
			availability = createFakeAvailability(),
			notification = nil,
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
jest.mock(Chrome.ChromeShared.Service.ChromeUtils, function()
	return {
		MappedSignal = {
			new = function(_signal, _getValue, onValueChanged)
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
		return function()
			return nil
		end
	end
end)

local focusChatSpy = jest.fn(function()
	table.insert(callOrder, "focusChat")
end)
jest.mock(Chrome.ChromeShared.Utility.FocusSelectExpChat, function()
	return focusChatSpy
end)

jest.mock(Chrome.ChromeShared.Service.ViewportUtil, function()
	return {
		isSmallTouchScreen = function()
			return false
		end,
	}
end)

local chatWindowVisible = false
local setVisibleSpy = jest.fn(function(visible)
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

jest.mock(CorePackages.Workspace.Packages.SignalsUtils, function()
	return {
		createDetachedEffect = function() end,
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

jest.mock(CorePackages.Workspace.Packages.ExpChat, function()
	return {
		Stores = {
			GetFocusNavigationStore = function()
				return {
					getChatInputBarFocused = function()
						return false
					end,
				}
			end,
		},
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
		getExperienceChatVisualConfig = function()
			return { icon = { off = "off", on = "on" } }
		end,
	}
end)

jest.mock(CorePackages.Workspace.Packages.FriendsChat.GetFriendsChatIconUnreadStore, function()
	return function()
		return {
			getUnreadCountToDisplay = function()
				return 0
			end,
			clearDisplayCount = function() end,
		}
	end
end)

jest.mock(CorePackages.Workspace.Packages.ExpChatShared, function()
	return {
		Flags = {
			GetFFlagTextChatEnableUniverseChatTabs = function()
				return false
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

-- Mutable so the entrypoint-reorg (`sideSheetPlacement`) branch can be driven;
-- the integration calls `getIsRenameEnabled` at require time.
local mockRenameEnabled = false
jest.mock(CorePackages.Workspace.Packages.SocialExperiments, function()
	return {
		ArgoPartyExperimentation = {
			getIsRenameEnabled = function()
				return mockRenameEnabled
			end,
		},
	}
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
	FFlagChromeActivatedMappedSignal = false,
	FFlagRemoveFriendsChatUnibarEntrypoints = false,
	FFlagExpChatEnableFriendsTab = false,
	FFlagExpChatCanShowFriendsTab = false,
	FFlagExpChatPerfTracking = false,
}
jest.mock(CorePackages.Workspace.Packages.SharedFlags, function()
	return mockSharedFlags
end)

-- Re-requires the integration with the Friends-tab flag in the given state and
-- returns the module's exported integration.
local function loadIntegration(friendsTabEnabled: boolean): any
	mockSharedFlags.FFlagExpChatEnableFriendsTab = friendsTabEnabled

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
		mockRenameEnabled = false
		mockSharedFlags.FFlagEnableConsoleExpControls = false
		mockSharedFlags.FFlagExpChatEnableFriendsTab = false
		mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
		mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = false
	end)

	afterEach(function()
		GameSettings.ChatVisible = originalChatVisible
	end)

	describe("wiring", function()
		it("SHOULD publish the chat-open capability WHEN the Friends tab is enabled", function()
			local integration = loadIntegration(true)

			expect(integration.chatOpenCapability).never.toBeNil()
			expect(integration.chatOpenCapability.isAvailable()).toBe(true)
		end)

		-- `ensureOpenChat` no longer prechecks availability, so this is the only
		-- signal the caller has before starting a handoff.
		it("SHOULD report the capability unavailable WHEN chat availability is lost", function()
			local integration = loadIntegration(true)
			integration.availability:unavailable()

			expect(integration.chatOpenCapability.isAvailable()).toBe(false)
		end)

		it("SHOULD NOT publish the capability WHEN the Friends tab is disabled", function()
			local integration = loadIntegration(false)

			expect(integration.chatOpenCapability).toBeNil()
		end)

		-- The unibar keeps its pre-capability behavior in both flag states, so
		-- enabling the Friends tab cannot change how the chat button behaves.
		it("SHOULD reveal chat without reserving the session WHEN the Friends tab is enabled", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			local integration = loadIntegration(true)
			appChatModalVisible = true

			lastRegisterProps.activated(integration)
			closeRobloxMenu()

			expect(reserveSpy).never.toHaveBeenCalled()
			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)

		it("SHOULD reveal chat without reserving the session WHEN the Friends tab is disabled", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			local integration = loadIntegration(false)
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
			local integration = loadIntegration(true)
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(callOrder).toEqual({ "hideAppChat" })
		end)

		it("SHOULD hide AppChat before revealing and focusing chat", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			local integration = loadIntegration(true)
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)
			closeRobloxMenu()

			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)

		it("SHOULD reveal chat WHEN the Roblox menu is already closed", function()
			mockSharedFlags.FFlagEnableConsoleExpControls = true
			dismissMenuImmediately = true
			local integration = loadIntegration(true)
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(callOrder).toEqual({ "hideAppChat", "showChat", "focusChat" })
		end)

		it("SHOULD bypass menu dismissal for the spatial direct-open path", function()
			mockExperiments.isInExperienceUIVREnabled = true
			isSpatialValue = true
			local integration = loadIntegration(true)
			appChatModalVisible = true

			integration.chatOpenCapability.ensureOpenChat(alwaysCurrent)

			expect(dismissRobloxMenuAndRunSpy).never.toHaveBeenCalled()
			expect(callOrder).toEqual({ "hideAppChat", "showChat" })
		end)

		it("SHOULD skip revealing WHEN availability is lost during menu dismissal", function()
			local integration = loadIntegration(true)
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
			local integration = loadIntegration(true)
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
		-- The reorg gate follows CanShow, not F: the chat button is only relocated
		-- to the Unibar once the Friends tab is actually shown. RemoveEntrypoints +
		-- rename are the arm-constant preconditions; CanShow is what flips placement,
		-- so the holdout (F on, CanShow off) keeps the legacy hidden-button layout.
		it("SHOULD keep the chat button hidden (None) for the holdout WHEN CanShow is off", function()
			mockRenameEnabled = true
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = true
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = false
			loadIntegration(true)

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.None)
		end)

		it("SHOULD relocate the chat button to the Unibar WHEN CanShow is on", function()
			mockRenameEnabled = true
			mockSharedFlags.FFlagRemoveFriendsChatUnibarEntrypoints = true
			mockSharedFlags.FFlagExpChatCanShowFriendsTab = true
			loadIntegration(true)

			expect(lastRegisterProps.sideSheetPlacement).toBe(SideSheetPlacement.Unibar)
		end)
	end)
end)
