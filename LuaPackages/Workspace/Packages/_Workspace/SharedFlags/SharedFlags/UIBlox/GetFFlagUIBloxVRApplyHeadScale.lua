game:DefineFastFlag("UIBloxVRApplyHeadScale", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") or game:GetFastFlag("UIBloxVRApplyHeadScale")
end
