--!nonstrict
--[[
	// FileName:    SocialUtil.lua
	// Written by:  TheGamer101
	// Description: Utility code related to social features.
]]
local SocialUtil = {}

local CorePackages = game:GetService("CorePackages")

local getRbxthumbWithTypeSizeAndOptions =
	require(CorePackages.Workspace.Packages.UserLib).Utils.getRbxthumbWithTypeSizeAndOptions
local UserLibConstants = require(CorePackages.Workspace.Packages.UserLib).Utils.Constants

--[[ Services ]]--
local DEFAULT_THUMBNAIL_SIZE = Enum.ThumbnailSize.Size100x100
local DEFAULT_THUMBNAIL_TYPE = Enum.ThumbnailType.AvatarThumbnail

--[[ Functions ]]--

-- This function will wait for up to timeOut seconds for the thumbnail to be generated.
-- It will just return a fallback (probably N/A) url if it's not generated in time.
function SocialUtil.GetPlayerImage(userId, thumbnailSize, thumbnailType, timeOut)
	if not thumbnailSize then thumbnailSize = DEFAULT_THUMBNAIL_SIZE end
	if not thumbnailType then thumbnailType = DEFAULT_THUMBNAIL_TYPE end

	local size = 0
	--Valid sizes for type AvatarHeadShot are 150x150, 48x48, 60x60
	if thumbnailType == Enum.ThumbnailType.HeadShot or thumbnailType == Enum.ThumbnailType.AvatarBust then
		if thumbnailSize == Enum.ThumbnailSize.Size48x48 then
			size = 48
		elseif thumbnailSize == Enum.ThumbnailSize.Size60x60 then
			size = 60
		else
			size = 150
		end
		return getRbxthumbWithTypeSizeAndOptions(userId, UserLibConstants.RbxthumbTypes.AvatarHeadShot, size)
	--Valid sizes for type Avatar are 100x100, 352x352, 720x720
	elseif thumbnailType == Enum.ThumbnailType.AvatarThumbnail then
		if thumbnailSize == Enum.ThumbnailSize.Size48x48 or
			thumbnailSize == Enum.ThumbnailSize.Size60x60 or
			thumbnailSize == Enum.ThumbnailSize.Size100x100 then
				size = 100
		elseif thumbnailSize == Enum.ThumbnailSize.Size150x150 or
			thumbnailSize == Enum.ThumbnailSize.Size180x180 or
			thumbnailSize == Enum.ThumbnailSize.Size352x352 then
				size = 352
		elseif thumbnailSize == Enum.ThumbnailSize.Size420x420 then
				size = 720
		end
		return getRbxthumbWithTypeSizeAndOptions(userId, UserLibConstants.RbxthumbTypes.Avatar, size)
	end

	return "ThumbnailErrorForSocialUtil.GetPlayerImage"
end

return SocialUtil
