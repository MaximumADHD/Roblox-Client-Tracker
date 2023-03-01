--[[
	Should we use loadable images wherever possible for local avatar thumbnail?
	Requires:
	* AES enabled (we use AES to update local avatar -> we can catch changes to local avatar and thumbnails will update themselves.)
	* AES supports PPE changes. (We use AES to save PPE info -> we can catch changes to thumbnail, thumbnails will update themselves.)
	* Engine supports "responsive thumbnails" (we catch changes to avatar thumbnail made in AES, that triggers updates in ContentProvider,
	  ContentProvider communicates about changes through API)
	* Loadable Images are using the new hooks supported by responsive thumbnail engine changes.
]]
local GetFFlagUIBloxLoadableImageResponsiveThumbnails =
	require(script.Parent.UIBlox.GetFFlagUIBloxLoadableImageResponsiveThumbnails)
local GetFFlagAvatarEditorServiceInUniversalApp = require(script.Parent.GetFFlagAvatarEditorServiceInUniversalApp)
local GetFFlagAXSaveAvatarThumbnailCustomizationWithAES =
	require(script.Parent.GetFFlagAXSaveAvatarThumbnailCustomizationWithAES)

game:DefineFastFlag("UseLoadableImageForAvatarThumbnails", false)

return function()
	if not GetFFlagAvatarEditorServiceInUniversalApp() then
		return false
	end
	if not GetFFlagAXSaveAvatarThumbnailCustomizationWithAES() then
		return false
	end
	if not GetFFlagUIBloxLoadableImageResponsiveThumbnails() then
		return false
	end

	if not game:GetEngineFeature("EnableResponsiveThumbnails") then
		return false
	end

	return game:GetFastFlag("UseLoadableImageForAvatarThumbnails")
end
