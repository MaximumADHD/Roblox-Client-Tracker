-- enable Survey refactor improvements

game:DefineFastFlag("EnableSurveyImprovements", false)

return function()
	return game:GetFastFlag("EnableSurveyImprovements")
end
