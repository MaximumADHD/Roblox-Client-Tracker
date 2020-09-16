--[[
	// FileName:    SocialUtil.lua
	// Written by:  TheGamer101
	// Description: Utility code related to social features.
]]
local SocialUtil = {}

--[[ Services ]]--
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

--[[ Constants ]]--
--todo: remove map when GetFFlagUseThumbnailUrl is removed
local THUMBNAIL_SIZE_MAP = {
	[Enum.ThumbnailSize.Size48x48]   =  48,
	[Enum.ThumbnailSize.Size180x180] = 180,
	[Enum.ThumbnailSize.Size420x420] = 420,
	[Enum.ThumbnailSize.Size60x60]   =  60,
	[Enum.ThumbnailSize.Size100x100] = 100,
	[Enum.ThumbnailSize.Size150x150] = 150,
	[Enum.ThumbnailSize.Size352x352] = 352
}


local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CoreGuiModules = RobloxGui:WaitForChild("Modules")

--[[ Flags ]]--
local GetFFlagUseThumbnailUrl = require(CoreGuiModules.Common.Flags.GetFFlagUseThumbnailUrl)

--todo: remove these when GetFFlagUseThumbnailUrl is removed
local LegacyThumbnailUrls = require(CoreGuiModules.Common.LegacyThumbnailUrls)

local THUMBNAIL_FALLBACK_URLS = {
	[Enum.ThumbnailType.HeadShot] = LegacyThumbnailUrls.Headshot,
	[Enum.ThumbnailType.AvatarBust] = LegacyThumbnailUrls.Bust,
	[Enum.ThumbnailType.AvatarThumbnail] = LegacyThumbnailUrls.Thumbnail,
}
-- end remove block

local DEFAULT_THUMBNAIL_SIZE = Enum.ThumbnailSize.Size100x100
local DEFAULT_THUMBNAIL_TYPE = Enum.ThumbnailType.AvatarThumbnail
--todo: remove these when GetFFlagUseThumbnailUrl is removed
local GET_PLAYER_IMAGE_DEFAULT_TIMEOUT = 5
local GET_USER_THUMBNAIL_ASYNC_RETRY_TIME = 1
-- end remove block

local gutartSuccess,gutart = pcall(function()
	return tonumber(settings():GetFVariable("GetUserThumbnailAsyncRetryTime"))
end)
local gpidtSuccess,gpidt = pcall(function()
	return tonumber(settings():GetFVariable("GetPlayerImageDefaultTimeout"))
end)

if gutartSuccess then
    GET_USER_THUMBNAIL_ASYNC_RETRY_TIME = gutart
end

if gpidtSuccess then
    GET_PLAYER_IMAGE_DEFAULT_TIMEOUT = gpidt
end

--[[ Functions ]]--

--todo: remove this function when GetFFlagUseThumbnailUrl is removed
-- The thumbanil isn't guaranteed to be generated, this will just create the url using string.format and immediately return it.
function SocialUtil.GetFallbackPlayerImageUrl(userId, thumbnailSize, thumbnailType)
	local sizeNumber = THUMBNAIL_SIZE_MAP[thumbnailSize]
	if not sizeNumber then
		if thumbnailSize then
			warn("SocialUtil.GetPlayerImage: No thumbnail size in map for " ..tostring(thumbnailSize))
		end

		sizeNumber = THUMBNAIL_SIZE_MAP[DEFAULT_THUMBNAIL_SIZE]
	end

	local thumbnailFallbackUrl = THUMBNAIL_FALLBACK_URLS[thumbnailType]
	if not thumbnailFallbackUrl then
		if thumbnailType then
			warn("SocialUtil.GetPlayerImage: No thumbnail fallback url in map for " ..tostring(thumbnailType))
		end

		thumbnailFallbackUrl = THUMBNAIL_FALLBACK_URLS[DEFAULT_THUMBNAIL_TYPE]
	end

	return thumbnailFallbackUrl:format(sizeNumber, sizeNumber, userId)
end

-- This function will wait for up to timeOut seconds for the thumbnail to be generated.
-- It will just return a fallback (probably N/A) url if it's not generated in time.
function SocialUtil.GetPlayerImage(userId, thumbnailSize, thumbnailType, timeOut)
	if not thumbnailSize then thumbnailSize = DEFAULT_THUMBNAIL_SIZE end
	if not thumbnailType then thumbnailType = DEFAULT_THUMBNAIL_TYPE end
	if not timeOut then timeOut = GET_PLAYER_IMAGE_DEFAULT_TIMEOUT end

	if GetFFlagUseThumbnailUrl() then
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
			return "rbxthumb://type=AvatarHeadShot&id=" .. userId .."&w=" .. size .. "&h=" .. size
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
			return "rbxthumb://type=Avatar&id=" .. userId .."&w=" .. size .. "&h=" .. size
		end

		return "ThumbnailErrorForSocialUtil.GetPlayerImage"
	else

		local finished = false
		local finishedBindable = Instance.new("BindableEvent") -- fired with one parameter: imageUrl

		delay(timeOut, function()
			if not finished then
				finished = true
				finishedBindable:Fire(SocialUtil.GetFallbackPlayerImageUrl(userId, thumbnailSize, thumbnailType))
			end
		end)

		spawn(function()
			while true do
				if finished then
					break
				end

				local thumbnailUrl, isFinal = Players:GetUserThumbnailAsync(userId, thumbnailType, thumbnailSize)

				if finished then
					break
				end

				if isFinal then
					finished = true
					finishedBindable:Fire(thumbnailUrl)
					break
				end

				wait(GET_USER_THUMBNAIL_ASYNC_RETRY_TIME)
			end
		end)

		local imageUrl = finishedBindable.Event:Wait()
		return imageUrl
	end
end

return SocialUtil
