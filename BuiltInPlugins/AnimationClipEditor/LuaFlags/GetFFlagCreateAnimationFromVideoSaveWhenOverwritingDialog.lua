-- GetFFlagCreateAnimationFromVideoSaveWhenOverwritingDialog
game:DefineFastFlag("CreateAnimationFromVideoSaveWhenOverwritingDialog", false)

return function()
	return game:GetFastFlag("CreateAnimationFromVideoSaveWhenOverwritingDialog")
end
