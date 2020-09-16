local ContentProvider = game:GetService("ContentProvider")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local GetFFlagUseThumbnailUrl = require(RobloxGui.Modules.Common.Flags.GetFFlagUseThumbnailUrl)

if GetFFlagUseThumbnailUrl() then
	local BaseUrl = ContentProvider.BaseUrl:lower()
	BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
	BaseUrl = string.gsub(BaseUrl, "/www.", "/thumbnails.")
	BaseUrl = string.gsub(BaseUrl, "http:", "https:")

	return {
		Headshot = "rbxthumb://type=AvatarHeadShot&id=%d&w=%d&h=%d",
		Bust =  BaseUrl .. "v1/users/avatar-bust?userIds=%d&size=%dx%d&format=Png&isCircular=false",
		Thumbnail = "rbxthumb://type=Avatar&id=%d&w=%d&h=%d",
	}
else
	--Prefer Rbxthumb urls for new work!
	local BaseUrl = ContentProvider.BaseUrl:lower()
	BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
	BaseUrl = string.gsub(BaseUrl, "http:", "https:")

	return {
		Headshot = BaseUrl .. "headshot-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
		Bust = BaseUrl ..  "bust-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
		Thumbnail = BaseUrl .. "avatar-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
	}
end