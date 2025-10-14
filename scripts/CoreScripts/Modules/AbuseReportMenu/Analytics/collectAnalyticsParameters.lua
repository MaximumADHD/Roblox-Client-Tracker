local root = script:FindFirstAncestor("AbuseReportMenu")
local Types = require(root.Components.Types)
local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Packages.Cryo)
local Constants = require(root.Components.Constants)
local ReportAnythingAnalytics = require(root.ReportAnything.Utility.ReportAnythingAnalytics)
local AbuseReportBuilder = require(root.ReportAnything.Utility.AbuseReportBuilder)

local INTERACTION_TYPE_SUBMIT = 1
local INTERACTION_TYPE_ABANDON = 2

local _getCommonParameters = function(
	analyticsState: Types.AnalyticsState,
	reportAnythingState: Types.ReportAnythingState,
	reportAnythingAnalyticsParameters: ReportAnythingAnalytics.ReportAnythingAnalyticsState
): Types.AnalyticsArguments
	local nowMs = math.floor(workspace:GetServerTimeNow() * 1000)
	local timeSpentMs = 0
	if analyticsState.menuOpenedUnixTimestampMilliseconds > 0 then
		timeSpentMs = math.floor(nowMs - analyticsState.menuOpenedUnixTimestampMilliseconds)
	end

	-- Not great that we are computing this twice in the case when they submit but can come back
	-- to this later
	local selectedUsers, _ = AbuseReportBuilder.interpretAnnotations(reportAnythingState)

	local parameters: Types.AnalyticsArguments = {
		placeId = game.PlaceId,
		isPortraitMode = analyticsState.isPortraitMode,
		viewportSizeX = analyticsState.viewportSizeX,
		viewportSizeY = analyticsState.viewportSizeY,
		timeSpentMs = timeSpentMs,
		experiencePersonChangeCount = analyticsState.experiencePersonChangeCount,
		typeofabuseChangeCount = analyticsState.typeofabuseChangeCount,
		personChangeCount = analyticsState.personChangeCount,
		reasonChangeCount = analyticsState.reasonChangeCount,
		captureSceneCount = analyticsState.captureSceneCount,
		chatLineChangeCount = analyticsState.chatLineChangeCount,

		reasonSelection = analyticsState.reasonSelection,
		commentAdded = analyticsState.commentAdded,
		experiencePersonSelection = analyticsState.experiencePersonSelection,

		annotationFinalCount = #reportAnythingState.annotationPoints,
		avatarFinalCount = #selectedUsers,

		interactionType = if analyticsState.isSubmissionCompleted
			then INTERACTION_TYPE_SUBMIT
			else INTERACTION_TYPE_ABANDON,

		typeofabuseSelection = analyticsState.typeofabuseSelection, -- will be overwritten
		memoryRequirementMet = analyticsState.memoryRequirementMet,
	} :: Types.AnalyticsArguments -- Cryo will add the rest below

	parameters = Cryo.Dictionary.join(parameters, reportAnythingAnalyticsParameters)
	return parameters
end

local forPersonReport = function(
	analyticsState: Types.AnalyticsState,
	reportAnythingState: Types.ReportAnythingState,
	reportAnythingAnalyticsParameters: ReportAnythingAnalytics.ReportAnythingAnalyticsState
): Types.AnalyticsArguments
	local parameters = _getCommonParameters(analyticsState, reportAnythingState, reportAnythingAnalyticsParameters)
	local methodOfAbuse = nil
	local inferredTypeofabuseSelection = Constants.AnalyticsAbuseMethods.Chat
	-- Handle nil or unrecognized MoA
	for key, value in pairs(Constants.AbuseMethodToAnalyticsMapping) do
		if key == analyticsState.typeofabuseSelection then
			methodOfAbuse = value
			inferredTypeofabuseSelection = value
		end
	end

	parameters.typeofabuseSelection = methodOfAbuse
	parameters.inferredTypeofabuseSelection = inferredTypeofabuseSelection

	return parameters
end

local forExperienceReport = function(
	analyticsState: Types.AnalyticsState,
	reportAnythingState: Types.ReportAnythingState,
	reportAnythingAnalyticsParameters: ReportAnythingAnalytics.ReportAnythingAnalyticsState
): Types.AnalyticsArguments
	local parameters = _getCommonParameters(analyticsState, reportAnythingState, reportAnythingAnalyticsParameters)

	parameters.typeofabuseSelection = Constants.AnalyticsAbuseMethods.Game
	parameters.inferredTypeofabuseSelection = Constants.AnalyticsAbuseMethods.Game

	return parameters
end

return {
	forPersonReport = forPersonReport,
	forExperienceReport = forExperienceReport,
}
