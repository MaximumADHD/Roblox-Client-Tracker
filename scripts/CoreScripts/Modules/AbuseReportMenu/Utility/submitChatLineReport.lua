local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")

local ChatLineReporting = require(CorePackages.Workspace.Packages.ChatLineReporting)

local isSystemMessage = ChatLineReporting.Helpers.isSystemMessage

local Constants = require(root.Components.Constants)
local Types = require(root.Components.Types)

local function buildReportTags(
	localPlayerUserId: number,
	reportTargetUser: string,
	abuseReason: string,
	abuseDescription: string,
	reportTargetMessageId: string?
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
		props.selectedMessage.messageId
	)

	-- Filter out ineligible messages (system messages, messages without userId or textChannel)
	local eligibleMessages = {}
	for _, message in ipairs(props.orderedMessages) do
		if message.userId ~= nil and message.textChannel ~= nil then
			-- Slim the message down to only the necessary components
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
