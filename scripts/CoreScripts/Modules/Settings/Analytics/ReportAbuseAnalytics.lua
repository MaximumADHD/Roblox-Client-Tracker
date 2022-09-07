--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local ReportAbuseAnalytics = {}
ReportAbuseAnalytics.__index = ReportAbuseAnalytics

ReportAbuseAnalytics.MenuContexts = {
	LegacyMenu = game:DefineFastString(
		"ReportAnalyticsLegacyMenuContext",
		"ReportAbuseLegacyMenu"),
	LegacySentPage = game:DefineFastString(
		"ReportAnalyticsLegacySentPageContext",
		"ReportAbuseLegacySentPage"),
}

ReportAbuseAnalytics.DiagCounters = {
	SuccessfulSubmissionTime = game:DefineFastString(
		"ReportAnalyticsSuccessfulSubmissionTimeStat",
		"SuccessfulSubmissionTime"),
	AbandonedSubmissionTime = game:DefineFastString(
		"ReportAnalyticsAbandonedSubmissionTimeStat",
		"AbandonedSubmissionTime"),
	SubmittedMethodOfAbuse = game:DefineFastString(
		"ReportAnalyticsSubmittedMethodOfAbuseStat",
		"SubmittedMethodOfAbuse"),
}

ReportAbuseAnalytics.ActionNames = {
	FieldChanged = game:DefineFastString(
		"ReportAnalyticsFieldChanged",
		"FieldChanged"),
	FormSubmitted = game:DefineFastString(
		"ReportAnalyticsFormSubmitted",
		"FormSubmitted"),
	FormAbandoned = game:DefineFastString(
		"ReportAnalyticsFormAbandoned",
		"FormAbandoned"),
	ButtonActivated = game:DefineFastString(
		"ReportAnalyticsButtonActivated",
		"ButtonActivated"),
}

function ReportAbuseAnalytics.new(config, context)
	assert(context, "Base context needs to be provided to ReportAbuseAnalytics")

	local self = {
		_eventStreamImpl = config.EventStream,
		_diagImpl = config.Diag,
		_context = context,
	}
	setmetatable(self, ReportAbuseAnalytics)

	return self
end

function ReportAbuseAnalytics:reportFormSubmitted(timeToComplete, methodOfAbuse, additionalArgs)
	local submissionTimeCategory = self._context.."_"..ReportAbuseAnalytics.DiagCounters.SuccessfulSubmissionTime
	local submittedMethodOfAbuseCategory = self._context.."_"..ReportAbuseAnalytics.DiagCounters.SubmittedMethodOfAbuse.."_"..methodOfAbuse

	additionalArgs = Cryo.Dictionary.join(additionalArgs or {}, {
		timeToComplete = timeToComplete,
		methodOfAbuse = methodOfAbuse,
	})

	self._diagImpl:reportStats(submissionTimeCategory, timeToComplete)
	self._diagImpl:reportCounter(submittedMethodOfAbuseCategory, 1)

	self._eventStreamImpl:sendEventDeferred(
		self._context,
		ReportAbuseAnalytics.ActionNames.FormSubmitted,
		additionalArgs
	)
end

function ReportAbuseAnalytics:reportFormAbandoned(timeToExit, additionalArgs)
	local category = self._context.."_"..ReportAbuseAnalytics.DiagCounters.AbandonedSubmissionTime

	additionalArgs = Cryo.Dictionary.join(additionalArgs or {}, {
		timeToExit = timeToExit,
	})

	self._diagImpl:reportStats(category, timeToExit)
	self._eventStreamImpl:sendEventDeferred(
		self._context,
		ReportAbuseAnalytics.ActionNames.FormAbandoned,
		additionalArgs
	)
end

function ReportAbuseAnalytics:reportAnalyticsFieldChanged(additionalArgs)
	self._eventStreamImpl:sendEventDeferred(
		self._context,
		ReportAbuseAnalytics.ActionNames.FieldChanged,
		additionalArgs or {}
	)
end

function ReportAbuseAnalytics:reportButtonClick(additionalArgs)
	self._eventStreamImpl:sendEventDeferred(
		self._context,
		ReportAbuseAnalytics.ActionNames.ButtonActivated,
		additionalArgs or {}
	)
end

function ReportAbuseAnalytics:reportEventAndIncrement(actionName, additionalArgs)
	self._diagImpl:reportCounter(self._context.."_"..actionName, 1)
	self._eventStreamImpl:sendEventDeferred(
		self._context,
		actionName,
		additionalArgs or {}
	)
end

return ReportAbuseAnalytics
