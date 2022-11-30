local AVATAR_IMAGE_LINK = "rbxthumb://type=Avatar&id=%s&w=352&h=352"

return function(userId)
	return string.format(AVATAR_IMAGE_LINK, tostring(userId))
end
