local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local UserModel = dependencies.UserModel

return function(user)
	local presence = user.presence
	local lastLocation = user.lastLocation

	if presence == UserModel.PresenceType.OFFLINE then
		return "Common.Presence.Label.Offline"
	elseif presence == UserModel.PresenceType.ONLINE then
		return "Common.Presence.Label.Online"
	elseif (presence == UserModel.PresenceType.IN_GAME) or (presence == UserModel.PresenceType.IN_STUDIO) then
		if lastLocation then
			return tostring(lastLocation)
		else
			return "Common.Presence.Label.Online"
		end
	end

	return ""
end
