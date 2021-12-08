local Plugin = script.Parent.Parent

game:DefineFastFlag("RootMotionTrack", false)

return function()
	return game:GetFastFlag("RootMotionTrack")
end
