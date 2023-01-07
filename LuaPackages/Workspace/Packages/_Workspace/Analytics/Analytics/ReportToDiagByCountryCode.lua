local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

math.randomseed(tick())

return function(featureName, measureName, value, percentReporting)
	if 100 * math.random() > percentReporting then
		return
	end
	RbxAnalyticsService:ReportToDiagByCountryCode(featureName, measureName, value);
end
