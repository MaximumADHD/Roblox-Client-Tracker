game:DefineFastFlag("UIBloxMoveBindActivate", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") or game:GetFastFlag("UIBloxMoveBindActivate")
end
