local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")

local ChatLineReporting = require(CorePackages.Workspace.Packages.ChatLineReporting)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local FFlagExpChatPresetChatEnabled = ExpChatShared.Flags.FFlagExpChatPresetChatEnabled

local isSystemMessage = ChatLineReporting.Helpers.isSystemMessage

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableGlobalChatAbuseReporting = SharedFlags.FFlagEnableGlobalChatAbuseReporting

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)

local function buildReportTags(
	localPlayerUserId: number,
	reportTargetUser: string,
	abuseReason: string,
	abuseDescription: string,
	reportTargetMessageId: string?,
	reportTargetPresetId: string?,
	reportTargetPresetChatVersion: string?
)
	local reportRequest = {
		tags = {
			ENTRY_POINT = {
				valueList = {
					{ data = "in-experience" },
				},
			},

			SUBMITTER_USER_ID = {
				valueList = {
					{ data = tostring(localPlayerUserId) },
				},
			},

			REPORTED_ABUSE_CATEGORY = {
				valueList = {
					{ data = abuseReason },
				},
			},

			REPORTER_COMMENT = {
				valueList = {
					{ data = abuseDescription },
				},
			},

			REPORTED_ABUSE_VECTOR = {
				valueList = {
					{ data = "chat" },
				},
			},

			REPORT_TARGET_USER_ID = {
				valueList = {
					{ data = reportTargetUser },
				},
			},

			VARIANT = {
				valueList = {
					{ data = Constants.ChatLineReportingVariant.IGM_CLRv1 },
				},
			},
		},
	}

	if reportTargetMessageId then
		reportRequest.tags.REPORT_TARGET_MESSAGE_ID = {
			valueList = {
				{ data = reportTargetMessageId },
			},
		}
	end

	if FFlagExpChatPresetChatEnabled and reportTargetPresetId and reportTargetPresetId ~= "" then
		reportRequest.tags.REPORT_TARGET_PRESET_ID = {
			valueList = {
				{ data = reportTargetPresetId },
			},
		}
		if reportTargetPresetChatVersion and reportTargetPresetChatVersion ~= "" then
			reportRequest.tags.REPORT_TARGET_PRESET_VERSION = {
				valueList = {
					{ data = reportTargetPresetChatVersion },
				},
			}
		end
	end

	return reportRequest
end

type SubmissionProps = {
	localPlayerUserId: number,
	reportTargetUser: string,
	abuseReason: string,
	abuseDescription: string,
	orderedMessages: { Types.Message },
	selectedMessage: Types.Message,
}
local submitChatLineReport = function(props: SubmissionProps)
	local tags = buildReportTags(
		props.localPlayerUserId,
		props.reportTargetUser,
		props.abuseReason,
		props.abuseDescription,
		props.selectedMessage.messageId,
		(props.selectedMessage :: any).presetId,
		(props.selectedMessage :: any).presetChatVersion
	)

	-- Filter out ineligible messages (system messages, messages without userId or textChannel)
	local eligibleMessages = {}
	for _, message in ipairs(props.orderedMessages) do
		local passesGuard = message.userId ~= nil
			and (message.textChannel ~= nil or FFlagEnableGlobalChatAbuseReporting)
		if passesGuard then
			local slimMessage = {
				channel = message.textChannel,
				messageId = message.messageId,
			}
			if not isSystemMessage({
				userId = message.userId,
				textChannel = message.textChannel,
			}) then
				table.insert(eligibleMessages, slimMessage)
			end
		end
	end

	-- Only passing single message for now, refer to ChatLineReportStepHandler.lua
	local targetMessages = {
		{
			channel = props.selectedMessage.textChannel,
			messageId = props.selectedMessage.messageId,
		},
	}

	task.defer(function()
		PlayersService:ReportChatAbuse(eligibleMessages, targetMessages, tags)
	end)
end

return submitChatLineReport
