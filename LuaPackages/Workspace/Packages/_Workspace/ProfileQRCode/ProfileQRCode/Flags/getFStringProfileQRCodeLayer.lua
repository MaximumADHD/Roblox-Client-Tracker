game:DefineFastString("ProfileQRCodeLayer", "ProfileQRCodeLayer")

--* This is an exposure based experiment. Enrollment is trigger when ProfileQREntryPoint mounts
return function()
	return game:GetFastString("ProfileQRCodeLayer")
end
