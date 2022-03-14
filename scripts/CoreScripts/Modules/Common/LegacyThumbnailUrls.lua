local ContentProvider = game:GetService("ContentProvider")

local BaseUrl = ContentProvider.BaseUrl:lower()
BaseUrl = string.gsub(BaseUrl, "/m.", "/www.")
BaseUrl = string.gsub(BaseUrl, "/www.", "/thumbnails.")
BaseUrl = string.gsub(BaseUrl, "http:", "https:")

return {
	Headshot = "rbxthumb://type=AvatarHeadShot&id=%d&w=%d&h=%d",
	Bust =  BaseUrl .. "v1/users/avatar-bust?userIds=%d&size=%dx%d&format=Png&isCircular=false",
	Thumbnail = "rbxthumb://type=Avatar&id=%d&w=%d&h=%d",
}
