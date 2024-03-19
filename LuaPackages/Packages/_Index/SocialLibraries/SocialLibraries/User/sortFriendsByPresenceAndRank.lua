--!!! DEPRECATED, use sortFriendsByCorrectedPresenceAndRank instead

local SocialLibraries: any = script:FindFirstAncestor("SocialLibraries")
local dependencies: any = require(SocialLibraries.dependencies)
local RoduxPresence: any = dependencies.RoduxPresence
local UserModel: any = dependencies.UserModel
local t: any = dependencies.t
local PresenceType: any = RoduxPresence.Enums.PresenceType
type enumerateType = {
	rawValue: () -> (number),
}
type User = {
	userPresenceType: enumerateType?,
	presence: string?,
	friendRank: number?,
	displayName: string?,
	username: string?,
	name: string?,
}

local PRESENCE: { [any]: number } = {
	InGame = 3,
	Online = 2,
	InStudio = 1,
	Offline = 0,
}

-- RoduxPresence Presence Type Enums
local RODUX_PRESENCE_WEIGHTS: { [any]: number } = {
	[PresenceType.InGame.rawValue()] = PRESENCE.InGame,
	[PresenceType.Online.rawValue()] = PRESENCE.Online,
	[PresenceType.InStudio.rawValue()] = PRESENCE.InStudio,
	[PresenceType.Offline.rawValue()] = PRESENCE.Offline,
}
-- UserModel Presence Type Enums
local USERMODEL_PRESENCE_WEIGHTS: { [any]: number } = {
	[UserModel.PresenceType.IN_GAME] = PRESENCE.InGame,
	[UserModel.PresenceType.ONLINE] = PRESENCE.Online,
	[UserModel.PresenceType.IN_STUDIO] = PRESENCE.InStudio,
	[UserModel.PresenceType.OFFLINE] = PRESENCE.Offline,
}

local getRoduxPresenceWeight = function(presenceType: number?): number
	return t.number(presenceType) and RODUX_PRESENCE_WEIGHTS[presenceType]
		or RODUX_PRESENCE_WEIGHTS[PresenceType.Offline]
end

local getUserModelWeight = function(userPresenceType: string?): number
	return t.string(userPresenceType) and USERMODEL_PRESENCE_WEIGHTS[userPresenceType]
		or USERMODEL_PRESENCE_WEIGHTS[UserModel.PresenceType.OFFLINE]
end

local getPresences = function(friend1: User, friend2: User): (number, number)
	local friend1PresenceWeight: number = 0
	local friend2PresenceWeight: number = 0

	if friend1.userPresenceType and friend2.userPresenceType then
		friend1PresenceWeight = getRoduxPresenceWeight(friend1.userPresenceType.rawValue())
		friend2PresenceWeight = getRoduxPresenceWeight(friend2.userPresenceType.rawValue())
	elseif friend1.presence and friend2.presence then
		friend1PresenceWeight = getUserModelWeight(friend1.presence)
		friend2PresenceWeight = getUserModelWeight(friend2.presence)
	end

	return friend1PresenceWeight, friend2PresenceWeight
end

local getUsername = function(friend1: User, friend2: User): (string, string)
	return friend1.username or friend1.name or "", friend2.username or friend2.name or ""
end

return function(friend1: User, friend2: User): boolean
	local friend1PresenceWeight: number, friend2PresenceWeight: number = getPresences(friend1, friend2)
	if friend1PresenceWeight ~= friend2PresenceWeight then
		return friend1PresenceWeight > friend2PresenceWeight
	end

	local friend1Rank: number = t.number(friend1.friendRank) and friend1.friendRank or 0
	local friend2Rank: number = t.number(friend2.friendRank) and friend2.friendRank or 0
	if friend1Rank ~= friend2Rank then
		return friend1Rank < friend2Rank
	end

	local friend1DisplayName: string = t.string(friend1.displayName) and friend1.displayName or ""
	local friend2DisplayName: string = t.string(friend2.displayName) and friend2.displayName or ""
	if string.lower(friend1DisplayName) ~= string.lower(friend2DisplayName) then
		return string.lower(friend1DisplayName) < string.lower(friend2DisplayName)
	end

	local friend1Username: string, friend2Username: string = getUsername(friend1, friend2)
	return string.lower(friend1Username) < string.lower(friend2Username)
end
