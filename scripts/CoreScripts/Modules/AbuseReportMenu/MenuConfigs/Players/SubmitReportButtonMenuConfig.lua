--!nonstrict
local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local PlayersService = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local Types = require(root.Components.Types)
local getToastMessageFromAbuseReason = require(root.MenuConfigs.getToastMessageFromAbuseReason)
local createVoiceAbuseReportRequest = require(RobloxGui.Modules.VoiceChat.createVoiceAbuseReportRequest)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local AbuseReportBuilder = require(root.ReportAnything.Utility.AbuseReportBuilder)
local ReportAbuseAnalytics = require(root.Analytics.ReportAbuseAnalytics)
local Constants = require(root.Components.Constants)
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)
local Cryo = require(CorePackages.Packages.Cryo)

local submitChatLineReport = require(root.Utility.submitChatLineReport)

local FFlagInGameMenuAddChatLineReporting =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagInGameMenuAddChatLineReporting

function isEligibleForVoiceSubmit(menuUIState: Types.ReportPersonState, utilityProps: Types.MenuUtilityProps)
	return menuUIState.allegedAbuser ~= nil
		and menuUIState.allegedAbuserId ~= nil
		and menuUIState.abuseReason ~= nil
		and menuUIState.methodOfAbuse ~= nil
		and utilityProps.analyticsState.menuOpenedUnixTimestampMilliseconds ~= nil
		and PlayersService.LocalPlayer ~= nil
end

function isEligibleForRAOtherSubmit(menuUIState: Types.ReportPersonState)
	return menuUIState.allegedAbuser ~= nil
		and menuUIState.allegedAbuserId ~= nil
		and menuUIState.abuseReason ~= nil
		and PlayersService.LocalPlayer ~= nil
end
function isEligibleForTextSubmit(menuUIState: Types.ReportPersonState)
	if FFlagInGameMenuAddChatLineReporting then
		return (menuUIState.selectedMessage ~= nil or menuUIState.allegedAbuser ~= nil)
			and menuUIState.abuseReason ~= nil
	else
		return menuUIState.allegedAbuser ~= nil and menuUIState.abuseReason ~= nil
	end
end

local SubmitReportButtonMenuConfig: Types.ButtonMenuItemType = {
	componentType = "button",
	getIsVisible = function(menuUIState: any)
		return true
	end,
	variant = "primary",
	getIconSrc = function(utilityProps: Types.MenuUtilityProps)
		return ""
	end,
	getButtonLabel = function(utilityProps: Types.MenuUtilityProps)
		return "SubmitButton"
	end,
	getIsDisabled = function(menuUIState: Types.ReportPersonState, utilityProps: Types.MenuUtilityProps)
		local methodOfAbuse = menuUIState.methodOfAbuse
		if methodOfAbuse == Constants.AbuseMethods.VoiceChat then
			return not isEligibleForVoiceSubmit(menuUIState, utilityProps)
		elseif
			methodOfAbuse == Constants.AbuseMethods.TextChat
			or methodOfAbuse == nil
			or (methodOfAbuse == Constants.AbuseMethods.Other and not TnSIXPWrapper.getReportAnythingAvatarEnabled())
		then
			return not isEligibleForTextSubmit(menuUIState)
		elseif methodOfAbuse == Constants.AbuseMethods.Other or methodOfAbuse == Constants.AbuseMethods.Avatar then
			return not isEligibleForRAOtherSubmit(menuUIState)
		end
		return false
	end,
	onClick = function(
		menuUIState: Types.ReportPersonState,
		dispatchUIStates: any,
		utilityProps: Types.MenuUtilityProps
	)
		local allegedAbuser = menuUIState.allegedAbuser
		local allegedAbuserId = menuUIState.allegedAbuserId
		local abuseReason = menuUIState.abuseReason
		local methodOfAbuse = menuUIState.methodOfAbuse
		local menuOpenTime = utilityProps.analyticsState.menuOpenedUnixTimestampMilliseconds

		if methodOfAbuse == Constants.AbuseMethods.VoiceChat then
			if isEligibleForVoiceSubmit(menuUIState, utilityProps) then
				pcall(function()
					task.spawn(function()
						local request = createVoiceAbuseReportRequest(PlayersService, VoiceChatServiceManager, {
							localUserId = PlayersService.LocalPlayer.UserId,
							abuserUserId = allegedAbuserId,
							abuseComment = menuUIState.comment,
							abuseReason = abuseReason,
							inExpMenuOpenedUnixMilli = menuOpenTime,
							sortedPlayerListUserIds = Cryo.List.map(menuUIState.playerObjects, function(playerObject)
								return playerObject.UserId
							end),
							abuseVector = Constants.AbuseVector.Voice,
						})

						PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)

						utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.SetSubmissionCompleted })
						utilityProps.showReportSentPage(allegedAbuser)
					end)
				end)
			end
		elseif
			methodOfAbuse == Constants.AbuseMethods.TextChat
			-- Regular non-RA "Other" report (when Voice is on but RA is not)
			or (methodOfAbuse == Constants.AbuseMethods.Other and not TnSIXPWrapper.getReportAnythingAvatarEnabled())
			or methodOfAbuse == nil
		then
			if isEligibleForTextSubmit(menuUIState) then
				if FFlagInGameMenuAddChatLineReporting and menuUIState.selectedMessage then
					submitChatLineReport({
						localPlayerUserId = PlayersService.LocalPlayer.UserId,
						abuserUserId = menuUIState.selectedMessage.userId,
						abuseReason = abuseReason,
						selectedMessage = menuUIState.selectedMessage,
						abuseDescription = menuUIState.comment,
						orderedMessages = menuUIState.orderedMessages,
						reportTargetUser = menuUIState.selectedMessage.userId,
					})
				else
					spawn(function()
						PlayersService:ReportAbuse(allegedAbuser, abuseReason, menuUIState.comment)
					end)
				end
				utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.SetSubmissionCompleted })
				local successToastMessage = getToastMessageFromAbuseReason(abuseReason)
				utilityProps.onReportComplete(successToastMessage)
			end
		elseif methodOfAbuse == Constants.AbuseMethods.Other or methodOfAbuse == Constants.AbuseMethods.Avatar then
			if isEligibleForRAOtherSubmit(menuUIState) then
				pcall(function()
					task.spawn(function()
						local request = AbuseReportBuilder.buildOtherReportRequest(
							{
								localUserId = PlayersService.LocalPlayer.UserId,
								formSelectedAbuserUserId = allegedAbuserId,
								abuseComment = menuUIState.comment,
								abuseReason = abuseReason,
								menuEntryPoint = ReportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
								variant = AbuseReportBuilder.Constants.Variant.NM,
							},
							utilityProps.reportAnythingState,
							utilityProps.reportAnythingAnalytics.getAccumulatedParameters()
						)

						if game:GetEngineFeature("WHAM2165") and methodOfAbuse == Constants.AbuseMethods.Avatar then
							PlayersService:ReportAvatarAbuse(allegedAbuserId, request)
						else
							PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)
						end

						utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.SetSubmissionCompleted })
						local successToastMessage = getToastMessageFromAbuseReason(abuseReason, true)
						utilityProps.onReportComplete(successToastMessage)
					end)
				end)
			end
		end
	end,
	fieldLabel = "",
	componentName = "SubmitButton",
}

return SubmitReportButtonMenuConfig
