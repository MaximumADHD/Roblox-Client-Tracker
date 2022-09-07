local getFFlagContactImporterAnalyticsEnabled = require(script.Parent.getFFlagContactImporterAnalyticsEnabled)


game:DefineFastFlag("ContactImporterFurtherAnalytics", false)

return function()
	return getFFlagContactImporterAnalyticsEnabled() and game:GetFastFlag("ContactImporterFurtherAnalytics")
end
