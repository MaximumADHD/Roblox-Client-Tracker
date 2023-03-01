game:DefineFastFlag("UIBloxLoadableImageResponsiveThumbnails", false)

return function()
	if not game:GetEngineFeature("EnableResponsiveThumbnails") then
		return false
	end
	return game:GetFastFlag("UIBloxLoadableImageResponsiveThumbnails")
end
