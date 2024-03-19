--!strict
local SocialLibraries = script.Parent.Parent.Parent
local dependencies = require(SocialLibraries.dependencies)
local Enums = require(SocialLibraries.Analytics.Enums)
local PresenceTypes = Enums.PresenceTypes
local PresenceType = dependencies.RoduxPresence.Enums.PresenceType

local typesDictionary = {
	[PresenceType.InGame] = PresenceTypes.InGame.rawValue(),
	[PresenceType.InStudio] = PresenceTypes.InStudio.rawValue(),
	[PresenceType.Offline] = PresenceTypes.Offline.rawValue(),
	[PresenceType.Online] = PresenceTypes.Online.rawValue(),
}

return function(presence: any)
	return typesDictionary[presence]
end
