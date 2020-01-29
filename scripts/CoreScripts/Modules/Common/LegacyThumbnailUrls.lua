local ContentProvider = game:GetService("ContentProvider")

--Prefer Rbxthumb urls for new work!

local BaseUrl = ContentProvider.BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
BaseUrl = string.gsub(BaseUrl, "http:", "https:")

return {
	Headshot = BaseUrl .. "headshot-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
	Bust = BaseUrl ..  "bust-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
	Thumbnail = BaseUrl .. "avatar-thumbnail/image?width=%d&height=%d&format=png&userId=%d",
}