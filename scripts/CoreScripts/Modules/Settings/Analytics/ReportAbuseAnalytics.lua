--!nonstrict
local CorePackages = game:GetService("CorePackages")
local SessionService = game:GetService("SessionService")

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

ReportAbuseAnalytics.SessionConstants = {
	StructuralIdentifier = {
		Level1 = "level1",
		AbuseReport = "AbuseReport"
	},
	Metadata = {
		EntryPoint = "entryPoint",
		DeleteOnGameLeave = "_deleteOnGameLeave"
	}
}

function ReportAbuseAnalytics.new(eventStreamImpl, diagImpl, context)
	assert(context, "Base context needs to be provided to ReportAbuseAnalytics")

	local self = {
		_eventStreamImpl = eventStreamImpl,
		_diagImpl = diagImpl,
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


-- 
function ReportAbuseAnalytics:startAbuseReportSession(entryPoint)
	local sessionExists = SessionService:SessionExists(ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport)

	if not sessionExists then
		SessionService:SetSession(
			ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.Level1,
			ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport,
			ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport
		)
	end

	local storedEntryPoint = SessionService:GetMetadata(
		ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport,
		ReportAbuseAnalytics.SessionConstants.Metadata.EntryPoint
	)
	if not storedEntryPoint then
		-- do not overwrite entryPoint if startAbuseReportSession is called twice
		SessionService:SetMetadata(
			ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport,
			ReportAbuseAnalytics.SessionConstants.Metadata.EntryPoint,
			entryPoint
		)
	end

	SessionService:SetMetadata(
		ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport,
		ReportAbuseAnalytics.SessionConstants.Metadata.DeleteOnGameLeave,
		"True"
	)
end

function ReportAbuseAnalytics:getAbuseReportSessionEntryPoint()
	local sessionExists = SessionService:SessionExists(ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport)
	if sessionExists then
		local storedEntryPoint = SessionService:GetMetadata(
			ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport,
			ReportAbuseAnalytics.SessionConstants.Metadata.EntryPoint
		)
		return storedEntryPoint
	end

	return ""
end
	
function ReportAbuseAnalytics:endAbuseReportSession()
	local sessionExists = SessionService:SessionExists(ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport)

	if sessionExists then
		SessionService:RemoveSession(ReportAbuseAnalytics.SessionConstants.StructuralIdentifier.AbuseReport)
	end
end

return ReportAbuseAnalytics
