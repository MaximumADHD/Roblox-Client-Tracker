local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local reportMessageReceived = require(script.Parent.reportMessageReceived)

return function()
	local mockAnalyticsService = {
		ReportCounter = jest.fn(),
	}

	local mockLocalUserId = 1

	local Analytics = require(script.Parent.Analytics)

	beforeAll(function()
		Analytics.with(mockAnalyticsService)
	end)

	afterEach(function()
		mockAnalyticsService.ReportCounter.mockClear()
	end)

	local function textChatMessage(status: Enum.TextChatMessageStatus, channelName: string)
		return {
			Status = status,
			TextChannel = {
				Name = channelName,
			},
			TextSource = {
				UserId = 1,
			},
		}
	end

	describe("GIVEN a Success TextChatMessage", function()
		it("SHOULD work with RBXGeneral", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Success, "RBXGeneral"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessGeneral",
				1
			)
		end)

		it("SHOULD work with RBXSystem", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Success, "RBXSystem"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessSystem",
				1
			)
		end)

		it("SHOULD work with RBXWhisper", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Success, "RBXWhisper1:2"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessWhisper",
				1
			)
		end)

		it("SHOULD work with RBXTeam", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.Success, "RBXTeamBright blue")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessTeam",
				1
			)
		end)

		it("SHOULD work with RBXCustom", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Success, "RBXCustom"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessCustom",
				1
			)
		end)

		it("SHOULD work with default", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Success, "TextChannel"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedSuccessCustom",
				1
			)
		end)
	end)

	describe("GIVEN an error TextChatMessage", function()
		it("SHOULD NOT report Sending", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Sending, "RBXGeneral"))
			expect(mockAnalyticsService.ReportCounter).never.toHaveBeenCalled()
		end)

		it("SHOULD report Unknown", function()
			reportMessageReceived(mockLocalUserId, textChatMessage(Enum.TextChatMessageStatus.Unknown, "RBXGeneral"))
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedUnknown",
				1
			)
		end)

		it("SHOULD report InvalidTextChannelPermissions", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.InvalidTextChannelPermissions, "RBXGeneral")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedInvalidTextChannelPermissions",
				1
			)
		end)

		it("SHOULD report InvalidPrivacySettings", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.InvalidPrivacySettings, "RBXGeneral")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedInvalidPrivacySettings",
				1
			)
		end)

		it("SHOULD report TextFilterFailed", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.TextFilterFailed, "RBXGeneral")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedTextFilterFailed",
				1
			)
		end)

		it("SHOULD report Floodchecked", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.Floodchecked, "RBXGeneral")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedFloodchecked",
				1
			)
		end)

		it("SHOULD report MessageTooLong", function()
			reportMessageReceived(
				mockLocalUserId,
				textChatMessage(Enum.TextChatMessageStatus.MessageTooLong, "RBXGeneral")
			)
			expect(mockAnalyticsService.ReportCounter).toHaveBeenLastCalledWith(
				expect.anything(),
				"expChatMessageReceivedMessageTooLong",
				1
			)
		end)
	end)
end
