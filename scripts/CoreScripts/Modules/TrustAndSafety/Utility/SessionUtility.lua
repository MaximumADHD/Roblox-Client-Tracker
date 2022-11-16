--!nonstrict
local SessionService = game:GetService("SessionService")

local TnsModule = script.Parent.Parent

local Constants = require(TnsModule.Resources.Constants)
local GetFFlagEnableARFlowSession = require(TnsModule.Flags.GetFFlagEnableARFlowSession)
local SendAnalytics = require(TnsModule.Utility.SendAnalytics)

local util = {}

util.startAbuseReportSession = function (entryPoint)
	if GetFFlagEnableARFlowSession() then
		local sessionExists = SessionService:SessionExists(Constants.Session.StructuralIdentifier.AbuseReport)

		if not sessionExists then
			SessionService:SetSession(
				Constants.Session.StructuralIdentifier.Level1,
				Constants.Session.StructuralIdentifier.AbuseReport,
				Constants.Session.StructuralIdentifier.AbuseReport
			)
		end
		SessionService:SetMetadata(
			Constants.Session.StructuralIdentifier.AbuseReport,
			Constants.Session.Metadata.EntryPoint,
			entryPoint
		)
		SessionService:SetMetadata(
			Constants.Session.StructuralIdentifier.AbuseReport,
			Constants.Session.Metadata.DeleteOnGameLeave,
			"True"
		)
		SendAnalytics(
			Constants.Analytics.ReportFlowOpened,
			Constants.Analytics.ReportFlowOpened,
			{
				source = entryPoint
			}
		)
	end
end

util.endAbuseReportSession = function ()
	if GetFFlagEnableARFlowSession() then
		local sessionExists = SessionService:SessionExists(Constants.Session.StructuralIdentifier.AbuseReport)

		if sessionExists then
			SessionService:RemoveSession(Constants.Session.StructuralIdentifier.AbuseReport)
		end
	end
end

return util
