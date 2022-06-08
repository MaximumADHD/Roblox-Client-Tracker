--!nonstrict

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ReportConfirmationContainer = require(Modules.Settings.Components.ReportConfirmation.ReportConfirmationContainer)

local noOp = function()
end

return function()
	describe("ReportConfirmationContainer", function()
		beforeAll(function(c)
			c.oldValue = game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", true)
		end)

		beforeEach(function(c)
			c.blockPlayerAsyncMockSpy, c.blockPlayerAsyncMock = c.jest.fn(noOp)
			c.mutePlayerMockSpy, c.mutePlayerMock = c.jest.fn(noOp)
			c.unblockPlayerAsyncMockSpy, c.unblockPlayerAsyncMock = c.jest.fn(noOp)
			c.unmutePlayerMockSpy, c.unmutePlayerMock = c.jest.fn(noOp)

			c.mockPlayer = {
				Name = "TheStuff",
				DisplayName = "Stuff",
				UserId = 1,
			}

			c.userFullName = c.mockPlayer.DisplayName.."(@"..c.mockPlayer.Name..")"

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

			c.toggleMutePlayerMockSpy, c.toggleMutePlayerMock = c.jest.fn(function(_, userId)
				participants[tostring(userId)].isMutedLocally = not participants[tostring(userId)].isMutedLocally
			end)

			c.mockVoiceChatServiceManager = {
				participants = participants,
				ToggleMutePlayer = c.toggleMutePlayerMock,
			}
		end)

		afterAll(function(c)
			game:SetFastFlagForTesting("VoiceARUnblockingUnmutingEnabled", c.oldValue)
		end)

		describe("When initially unmuted and unblocked", function(c)
			beforeEach(function(c)
				c.isPlayerBlockedByUserIdMockSpy, c.isPlayerBlockedByUserIdMock = c.jest.fn(function()
					return false
				end)

				c.mockBlockingUtility.IsPlayerBlockedByUserId = c.isPlayerBlockedByUserIdMock

				c.mockVoiceChatServiceManager.participants[tostring(c.mockPlayer.UserId)].isMutedLocally = false

				c.parent, c.cleanup = c.createInstanceWithProps(ReportConfirmationContainer, {
					onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
					onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
					onDoneActivated = c.onDoneActivatedMock,
					isVoiceReport = true,
					player = c.mockPlayer,
					voiceChatServiceManager = c.mockVoiceChatServiceManager,
					blockingUtility = c.mockBlockingUtility,
				})
			end)

			afterEach(function(c)
				c.cleanup()
			end)

			it("SHOULD mute and block player when those actions are selected", function(c)
				local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "muteCheckbox",
				}).checkbox

				local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "blockCheckbox",
				}).checkbox

				local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "doneButton",
				})

				c.jestExpect(muteCheckbox).never.toBeNil()
				c.jestExpect(blockCheckbox).never.toBeNil()
				c.jestExpect(doneButton).never.toBeNil()

				c.act(function()
					c.RhodiumHelpers.clickInstance(muteCheckbox)
				end)

				c.act(function()
					c.RhodiumHelpers.clickInstance(blockCheckbox)
				end)

				c.act(function()
					c.RhodiumHelpers.clickInstance(doneButton)
				end)

				local confirmButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "confirmButton",
				})

				c.jestExpect(confirmButton).never.toBeNil()

				c.act(function()
					c.RhodiumHelpers.clickInstance(confirmButton)
				end)

				c.jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer.UserId)
				c.jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer)
				c.jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer)
				c.jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer.UserId)
			end)

			it("SHOULD mute and NOT block player when only mute is selected", function(c)
				local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "muteCheckbox",
				}).checkbox

				local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "doneButton",
				})

				c.jestExpect(muteCheckbox).never.toBeNil()
				c.jestExpect(doneButton).never.toBeNil()

				c.act(function()
					c.RhodiumHelpers.clickInstance(muteCheckbox)
				end)

				c.act(function()
					c.RhodiumHelpers.clickInstance(doneButton)
				end)

				local confirmButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "confirmButton",
				})

				c.jestExpect(confirmButton).never.toBeNil()

				c.act(function()
					c.RhodiumHelpers.clickInstance(confirmButton)
				end)

				c.jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer.UserId)
				c.jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledTimes(0)
				c.jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer)
				c.jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer.UserId)
			end)

			it("SHOULD neither mute nor block player when no actions are selected", function(c)
				local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "doneButton",
				})

				c.jestExpect(doneButton).never.toBeNil()

				c.act(function()
					c.RhodiumHelpers.clickInstance(doneButton)
				end)

				c.jestExpect(c.isPlayerBlockedByUserIdMockSpy).toHaveBeenCalledTimes(1)
				c.jestExpect(c.blockPlayerAsyncMockSpy).toHaveBeenCalledTimes(0)
				c.jestExpect(c.mutePlayerMockSpy).toHaveBeenCalledTimes(0)
				c.jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledTimes(0)
			end)
		end)

		describe("When initially muted and blocked", function(c)
			beforeEach(function(c)
				c.isPlayerBlockedByUserIdMockSpy, c.isPlayerBlockedByUserIdMock = c.jest.fn(function()
					return true
				end)

				c.mockBlockingUtility.IsPlayerBlockedByUserId = c.isPlayerBlockedByUserIdMock

				c.mockVoiceChatServiceManager.participants[tostring(c.mockPlayer.UserId)].isMutedLocally = true

				c.parent, c.cleanup = c.createInstanceWithProps(ReportConfirmationContainer, {
					onMuteCheckboxActivated = c.onMuteCheckboxActivatedMock,
					onBlockCheckboxActivated = c.onBlockCheckboxActivatedMock,
					onDoneActivated = c.onDoneActivatedMock,
					isVoiceReport = true,
					player = c.mockPlayer,
					voiceChatServiceManager = c.mockVoiceChatServiceManager,
					blockingUtility = c.mockBlockingUtility,
				})
			end)

			afterEach(function(c)
				c.cleanup()
			end)

			it("SHOULD unmute and unblock player when those actions are selected", function(c)
				local muteCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "muteCheckbox",
				}).checkbox

				local blockCheckbox = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "blockCheckbox",
				}).checkbox

				local doneButton = c.RhodiumHelpers.findFirstInstance(c.parent, {
					Name = "doneButton",
				})

				c.jestExpect(muteCheckbox).never.toBeNil()
				c.jestExpect(blockCheckbox).never.toBeNil()
				c.jestExpect(doneButton).never.toBeNil()

				--Unblocking/muting action
				c.act(function()
					c.RhodiumHelpers.clickInstance(blockCheckbox)
				end)

				c.act(function()
					c.RhodiumHelpers.clickInstance(muteCheckbox)
				end)

				c.act(function()
					c.RhodiumHelpers.clickInstance(doneButton)
				end)

				c.jestExpect(c.unblockPlayerAsyncMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer)
				c.jestExpect(c.unmutePlayerMockSpy).toHaveBeenCalledWith(c.jestExpect.any("table"), c.mockPlayer)
				c.jestExpect(c.toggleMutePlayerMockSpy).toHaveBeenCalledTimes(1)
			end)
		end)
	end)
end
