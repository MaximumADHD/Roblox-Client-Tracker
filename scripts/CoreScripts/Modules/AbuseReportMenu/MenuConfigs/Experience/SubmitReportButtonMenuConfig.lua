local root = script:FindFirstAncestor("AbuseReportMenu")
local MarketplaceService = game:GetService("MarketplaceService")
local PlayersService = game:GetService("Players")

local Types = require(root.Components.Types)
local Constants = require(root.Components.Constants)
local TnSIXPWrapper = require(root.IXP.TnSIXPWrapper)
local AbuseReportBuilder = require(root.ReportAnything.Utility.AbuseReportBuilder)
local ReportAbuseAnalytics = require(root.Analytics.ReportAbuseAnalytics)
local getToastMessageFromAbuseReason = require(root.MenuConfigs.getToastMessageFromAbuseReason)

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
	onClick = function(
		menuUIState: Types.ReportExperienceState,
		dispatchUIStates: any,
		utilityProps: Types.MenuUtilityProps
	)
		local abuseReason = menuUIState.abuseReason

		if abuseReason ~= nil and PlayersService.LocalPlayer ~= nil then
			if TnSIXPWrapper.getReportAnythingExperienceEnabled() then
				local request = AbuseReportBuilder.buildExperienceReportRequest({
					localUserId = PlayersService.LocalPlayer.UserId,
					placeId = game.PlaceId,
					abuseComment = menuUIState.comment,
					abuseReason = abuseReason,
					menuEntryPoint = ReportAbuseAnalytics:getAbuseReportSessionEntryPoint(),
					variant = AbuseReportBuilder.Constants.Variant.NM,
				}, utilityProps.reportAnythingState, utilityProps.reportAnythingAnalytics.getAccumulatedParameters())

				PlayersService:ReportAbuseV3(PlayersService.LocalPlayer, request)

				utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.SetSubmissionCompleted })
				local successToastMessage = getToastMessageFromAbuseReason(abuseReason, true)
				utilityProps.onReportComplete(successToastMessage)
			else
				-- Regular non-RA report
				spawn(function()
					local placeId, placeName, placeDescription = tostring(game.PlaceId), "N/A", "N/A"
					pcall(function()
						if game:GetEngineFeature("AsyncRenamesUsedInLuaApps") then
							local productInfo =
								MarketplaceService:GetProductInfoAsync(game.PlaceId, Enum.InfoType.Asset)
							placeName = productInfo.Name
							placeDescription = productInfo.Description
						else
							local productInfo = (MarketplaceService :: any):GetProductInfo(
								game.PlaceId,
								Enum.InfoType.Asset
							)
							placeName = productInfo.Name
							placeDescription = productInfo.Description
						end
					end)
					local formattedText = string.format(
						"User Report: \n    %s \n"
							.. "Place Title: \n    %s \n"
							.. "PlaceId: \n    %s \n"
							.. "Place Description: \n    %s \n",
						menuUIState.comment,
						placeName,
						placeId,
						placeDescription
					)

					PlayersService:ReportAbuse((nil :: any) :: Player, abuseReason, formattedText)
				end)
				utilityProps.analyticsDispatch({ type = Constants.AnalyticsActions.SetSubmissionCompleted })
				local successToastMessage = getToastMessageFromAbuseReason(abuseReason)
				utilityProps.onReportComplete(successToastMessage)
			end
		end
	end,
	fieldLabel = "",
	componentName = "SubmitButton",
}

return SubmitReportButtonMenuConfig
