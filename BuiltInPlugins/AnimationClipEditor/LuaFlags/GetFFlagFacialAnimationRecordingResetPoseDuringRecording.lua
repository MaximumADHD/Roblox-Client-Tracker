-- GetFFlagFacialAnimationRecordingResetPoseDuringRecording
game:DefineFastFlag("FacialAnimationRecordingResetPoseDuringRecording", false)

return function()
	return game:GetFastFlag("FacialAnimationRecordingResetPoseDuringRecording")
end
