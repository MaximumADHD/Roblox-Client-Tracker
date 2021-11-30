local Plugin = script.Parent.Parent

game:DefineFastFlag("ACEPlaybackSpeedChanges", false)

return function()
	return game:GetFastFlag("ACEPlaybackSpeedChanges")
end
