-- enable Survey refactor improvements

game:DefineFastFlag("EnableSurveyImprovements2", false)

return function()
	return game:GetFastFlag("EnableSurveyImprovements2")
end
