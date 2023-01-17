local SocialRoactChat = script:FindFirstAncestor("SocialRoactChat")
local dependencies = require(SocialRoactChat.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local userPresenceText = {
	[EnumPresenceType.Offline] = "Common.Presence.Label.Offline",
	[EnumPresenceType.Online] = "Common.Presence.Label.Online",
	[EnumPresenceType.InGame] = "",
	[EnumPresenceType.InStudio] = "",
}

local userPresenceImage = {
	[EnumPresenceType.Offline] = "",
	[EnumPresenceType.Online] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-online-14x14.png",
	[EnumPresenceType.InGame] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-ingame-14x14.png",
	[EnumPresenceType.InStudio] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-instudio-14x14.png",
}

local getUserPresenceText = function(user)
	local presence = user.userPresenceType
	local lastLocation = user.lastLocation

	if presence == EnumPresenceType.Offline then
		return userPresenceText[EnumPresenceType.Offline]
	elseif presence == EnumPresenceType.Online then
		return userPresenceText[EnumPresenceType.Online]
	elseif (presence == EnumPresenceType.InGame) or (presence == EnumPresenceType.InStudio) then
		if lastLocation then
			return tostring(lastLocation)
		else
			return userPresenceText[EnumPresenceType.Online]
		end
	end

	return ""
end

local getUserDisplayPresence = function(presence, isLocalUser: boolean?)
	if not presence then
		return {
			text = "",
		}
	end
	return isLocalUser
			and {
				text = userPresenceText[EnumPresenceType.Online],
				image = userPresenceImage[EnumPresenceType.Online],
			}
		or {
			text = getUserPresenceText(presence),
			image = userPresenceImage[presence.userPresenceType],
		}
end

return {
	getUserDisplayPresence = getUserDisplayPresence,
	getUserPresenceText = getUserPresenceText,
	userPresenceImage = userPresenceImage,
	userPresenceText = userPresenceText,
}
