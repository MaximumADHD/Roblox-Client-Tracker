local AVATAR_IMAGE_LINK = "rbxthumb://type=AvatarHeadShot&id=%s&w=150&h=150"

return function(userId)
	return string.format(AVATAR_IMAGE_LINK, tostring(userId))
end
