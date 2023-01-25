game:DefineFastFlag("HideTopBarRobuxButton", false)

return function()
	return if game:GetFastFlag("HideTopBarRobuxButton") or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
