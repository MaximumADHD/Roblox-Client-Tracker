local AVATAR_IMAGE_LINK = "rbxthumb://type=AvatarHeadShot&id=%s&w=150&h=150"

return function(userId: string?)
	return if userId then string.format(AVATAR_IMAGE_LINK, userId) else nil
end
