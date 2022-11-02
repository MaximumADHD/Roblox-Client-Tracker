local SocialLuaAnalytics = script.Parent.Parent.Parent
local dependencies = require(SocialLuaAnalytics.dependencies)
local Enums = require(SocialLuaAnalytics.Analytics.Enums)
local PresenceTypes = Enums.PresenceTypes
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local typesDictionary = {
	[PresenceType.InGame] = PresenceTypes.InGame.rawValue(),
	[PresenceType.InStudio] = PresenceTypes.InStudio.rawValue(),
	[PresenceType.Offline] = PresenceTypes.Offline.rawValue(),
	[PresenceType.Online] = PresenceTypes.Online.rawValue(),
}

return function(presence: any)
	if not presence then
		return nil
	end

	return typesDictionary[presence]
end
