--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ReportConfirmationContainer = require(Modules.Settings.Components.ReportConfirmation.ReportConfirmationContainer)
local Constants = require(Modules.InGameMenu.Resources.Constants)
local VoiceConstants = require(Modules.VoiceChat.Constants)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local jest = JestGlobals.jest
local jestExpect = JestGlobals.expect

local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
local createInstanceWithProps = require(Modules.CoreScriptsRhodiumTest.TestHelpers.createInstanceWithProps)
local act = require(CorePackages.Packages.Roact).act

local noOp = function() end

local c

describe("ReportConfirmationContainer", function()
	local oldValue
	beforeAll(function()
		oldValue = game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", true)
	end)

	beforeEach(function()
		c = {}
		c.blockPlayerAsyncMockSpy, c.blockPlayerAsyncMock = jest.fn(function()
			return true
		end)

		c.mutePlayerMockSpy, c.mutePlayerMock = jest.fn(noOp)
		c.unblockPlayerAsyncMockSpy, c.unblockPlayerAsyncMock = jest.fn(function()
			return true
		end)

		c.unmutePlayerMockSpy, c.unmutePlayerMock = jest.fn(noOp)

		c.blockingAnalyticsMockSpy, c.blockingAnalyticsMock = jest.fn()
		c.reportAbuseAnalyticsMockSpy, c.reportAbuseAnalyticsMock = jest.fn()

		c.blockingAnalytics = {
			action = c.blockingAnalyticsMock,
		}
		c.reportAbuseAnalytics = {
			reportEventAndIncrement = c.reportAbuseAnalyticsMock,
		}

		c.mockPlayer = {
			Name = "TheStuff",
			DisplayName = "Stuff",
			UserId = 1,
		}

		c.userFullName = c.mockPlayer.DisplayName .. "(@" .. c.mockPlayer.Name .. ")"

		c.mockBlockingUtility = {
			BlockPlayerAsync = c.blockPlayerAsyncMock,
			UnblockPlayerAsync = c.unblockPlayerAsyncMock,
			MutePlayer = c.mutePlayerMock,
			UnmutePlayer = c.unmutePlayerMock,
		}

		local participants = {
			[tostring(c.mockPlayer.UserId)] = {
				isMutedLocally = false,
			},
		}

		c.toggleMutePlayerMockSpy, c.toggleMutePlayerMock = jest.fn(function(_, userId, _)
			participants[tostring(userId)].isMutedLocally = not participants[tostring(userId)].isMutedLocally
		end)

		c.mockVoiceChatServiceManager = {
			participants = participants,
			ToggleMutePlayer = c.toggleMutePlayerMock,
		}
	end)

	afterAll(function()
		game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", oldValue)
	end)

	describe("When initially unmuted and unblocked", function()
		beforeEach(function()
			c.isPlayerBlockedByUserIdMockSpy, c.isPlayerBlockedByUserIdMock = jest.fn(function()
				return false
			end)

			c.mockBlockingUtility.IsPlayerBlockedByUserId = c.isPlayerBlockedByUserIdMock

			c.mockVoiceChatServiceManager.participants[tostring(c.mockPlayer.UserId)].isMutedLocally = false

			c.parent, c.cleanup = createInstanceWithProps(ReportConfirmationContainer, {
				onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
				onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
				onDoneActivated = c.onDoneActivatedMock,
				isVoiceReport = true,
				player = c.mockPlayer,
				voiceChatServiceManager = c.mockVoiceChatServiceManager,
				blockingUtility = c.mockBlockingUtility,
				blockingAnalytics = c.blockingAnalytics,
				reportAbuseAnalytics = c.reportAbuseAnalytics,
			})
		end)

		afterEach(function()
			c.cleanup()
		end)

		it("SHOULD mute and block player when those actions are selected", function()
			local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "muteCheckbox",
			}).checkbox

			local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "blockCheckbox",
			}).checkbox

			local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "doneButton",
			})

			jestExpect(muteCheckbox).never.toBeNil()
			jestExpect(blockCheckbox).never.toBeNil()
			jestExpect(doneButton).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(muteCheckbox, true)
			end)

			act(function()
				RhodiumHelpers.clickInstance(blockCheckbox, true)
			end)

			act(function()
				RhodiumHelpers.clickInstance(doneButton)
			end)

			local confirmButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "confirmButton",
			})

			jestExpect(confirmButton).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(confirmButton)
			end)

			jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledWith(
				jestExpect.any("table"),
				c.mockPlayer.UserId
			)
			jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledWith(jestExpect.any("table"), c.mockPlayer)
			jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledWith(jestExpect.any("table"), c.mockPlayer)
			jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledWith(
				jestExpect.any("table"),
				c.mockPlayer.UserId,
				VoiceConstants.VOICE_CONTEXT_TYPE.REPORT_MENU
			)

			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledWith(
				c.blockingAnalytics,
				"SettingsHub",
				"blockUser",
				{ blockeeUserId = c.mockPlayer.UserId }
			)

			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledWith(c.reportAbuseAnalytics, "muteUser")
		end)

		it("SHOULD mute and NOT block player when only mute is selected", function()
			local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "muteCheckbox",
			}).checkbox

			local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "doneButton",
			})

			jestExpect(muteCheckbox).never.toBeNil()
			jestExpect(doneButton).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(muteCheckbox, true)
			end)

			act(function()
				RhodiumHelpers.clickInstance(doneButton)
			end)

			local confirmButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "confirmButton",
			})

			jestExpect(confirmButton).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(confirmButton)
			end)

			jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledWith(
				jestExpect.any("table"),
				c.mockPlayer.UserId
			)
			jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledTimes(0)
			jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledWith(jestExpect.any("table"), c.mockPlayer)
			jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledWith(
				jestExpect.any("table"),
				c.mockPlayer.UserId,
				VoiceConstants.VOICE_CONTEXT_TYPE.REPORT_MENU
			)

			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledTimes(0)

			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledWith(c.reportAbuseAnalytics, "muteUser")
		end)

		it("SHOULD neither mute nor block player when no actions are selected", function()
			local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "doneButton",
			})

			jestExpect(doneButton).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(doneButton)
			end)

			jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledTimes(0)
			jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledTimes(0)
			jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledTimes(0)

			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledTimes(0)
			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledTimes(0)
		end)
	end)

	describe("When initially muted and blocked", function()
		beforeEach(function()
			c.isPlayerBlockedByUserIdMockSpy, c.isPlayerBlockedByUserIdMock = jest.fn(function()
				return true
			end)

			c.mockBlockingUtility.IsPlayerBlockedByUserId = c.isPlayerBlockedByUserIdMock

			c.mockVoiceChatServiceManager.participants[tostring(c.mockPlayer.UserId)].isMutedLocally = true

			c.parent, c.cleanup = createInstanceWithProps(ReportConfirmationContainer, {
				onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
				onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
				onDoneActivated = c.onDoneActivatedMock,
				isVoiceReport = true,
				player = c.mockPlayer,
				voiceChatServiceManager = c.mockVoiceChatServiceManager,
				blockingUtility = c.mockBlockingUtility,
				blockingAnalytics = c.blockingAnalytics,
				reportAbuseAnalytics = c.reportAbuseAnalytics,
			})

			c.fflagVoiceARUnblockingUnmutingEnabled =
				game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", true)
		end)

		afterEach(function()
			c.cleanup()
			game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", c.fflagVoiceARUnblockingUnmutingEnabled)
		end)

		it("SHOULD unmute and unblock player when those actions are selected", function()
			local muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "muteCheckbox",
			}).checkbox

			local blockCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "blockCheckbox",
			}).checkbox

			local doneButton = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "doneButton",
			})

			jestExpect(muteCheckbox).never.toBeNil()
			jestExpect(blockCheckbox).never.toBeNil()
			jestExpect(doneButton).never.toBeNil()

			--Unblocking/muting action
			act(function()
				RhodiumHelpers.clickInstance(blockCheckbox, true)
			end)

			-- Re-acquire muteCheckbox: unblocking may have caused the checkbox to
			-- switch from CanvasGroup to ImageButton (Foundation), invalidating the
			-- old reference.
			muteCheckbox = RhodiumHelpers.findFirstInstance(c.parent, {
				Name = "muteCheckbox",
			}).checkbox
			jestExpect(muteCheckbox).never.toBeNil()

			act(function()
				RhodiumHelpers.clickInstance(muteCheckbox, true)
			end)

			act(function()
				RhodiumHelpers.clickInstance(doneButton)
			end)

			jestExpect(c.unblockPlayerAsyncMockSpy).toHaveBeenCalledWith(jestExpect.any("table"), c.mockPlayer)
			jestExpect(c.unmutePlayerMockSpy).toHaveBeenCalledWith(jestExpect.any("table"), c.mockPlayer)
			jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledTimes(1)

			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.blockingAnalyticsMockSpy).toHaveBeenCalledWith(
				c.blockingAnalytics,
				"SettingsHub",
				"unblockUser",
				{ blockeeUserId = c.mockPlayer.UserId }
			)

			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledTimes(1)
			jestExpect(c.reportAbuseAnalyticsMockSpy).toHaveBeenCalledWith(c.reportAbuseAnalytics, "unmuteUser")
		end)
	end)
end)
