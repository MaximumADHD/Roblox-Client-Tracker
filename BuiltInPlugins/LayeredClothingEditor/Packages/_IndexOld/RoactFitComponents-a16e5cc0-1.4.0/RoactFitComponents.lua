local ok, shouldExportUpgrade = pcall(function()
	return game:DefineFastFlag("UpgradeToFitComponents2", false)
end)

if ok and shouldExportUpgrade then
	return require(script.Parent.RoactFitComponents2)
end

return {
	FitFrameHorizontal = require(script.FitFrameHorizontal),
	FitFrameOnAxis = require(script.FitFrameOnAxis),
	FitFrameVertical = require(script.FitFrameVertical),
	FitTextLabel = require(script.FitTextLabel),
	Rect = require(script.Rect),
}