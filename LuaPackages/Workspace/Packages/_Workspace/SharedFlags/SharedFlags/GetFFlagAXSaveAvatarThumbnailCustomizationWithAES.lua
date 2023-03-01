--[[
	This shouldn't have been named with "AX" in the prefix: turns out having this on is a
	pre-requisite for FFlagUseLoadableImageForAvatarThumbnails, which affects things outside of
	AX.
	This pre-req meant we had to relocate this from from AX to here.  At this point I don't want to
	rename the flag because it's already been checked in.  So just leaving it as-is.
]]

game:DefineFastFlag("AXSaveAvatarThumbnailCustomizationWithAES2", false)
local AvatarEditorServiceSupportsATCData = game:GetEngineFeature("AvatarEditorServiceSupportsATCData2")
local GetFFlagAvatarEditorServiceInUniversalApp = require(script.Parent.GetFFlagAvatarEditorServiceInUniversalApp)

return function()
	if not AvatarEditorServiceSupportsATCData then
		return false
	end
	if not GetFFlagAvatarEditorServiceInUniversalApp() then
		return false
	end
	return game:GetFastFlag("AXSaveAvatarThumbnailCustomizationWithAES2")
end
