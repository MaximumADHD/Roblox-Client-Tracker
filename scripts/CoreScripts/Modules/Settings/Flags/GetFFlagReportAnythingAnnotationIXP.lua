game:DefineFastFlag("ReportAnythingAnnotationIXP", false)

return function()
	return game:GetEngineFeature("ReportAnythingScreenshotOrientation")
		and game:GetFastFlag("ReportAnythingAnnotationIXP")
end
