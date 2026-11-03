--[[
	Resolve an outfit id or a user id into the rig type and HumanoidDescription
	an AvatarMoment builds from. The builder supplies exactly one.

	An outfit is two engine calls, because they answer different halves:
	  Players:GetHumanoidDescriptionFromOutfitIdAsync  assets, body colors, scales
	  AvatarEditorService:GetOutfitDetailsAsync        PlayerAvatarType, "R15"/"R6"

	A user is the same split:
	  Players:GetHumanoidDescriptionFromUserIdAsync    the user's current avatar
	  Players:GetCharacterAppearanceInfoAsync          playerAvatarType, "R15"/"R6"

	All of these are the Async spellings. The older non-Async names still work
	and still yield identically, but they are deprecated and analyze fails on
	them. GetHumanoidDescriptionFromUserId is that older name.

	The rig call is not optional dressing. A HumanoidDescription carries no rig
	type — there is no RigType property on it — and the user description call
	drops resolvedAvatarType before Lua sees the instance. Building from the
	description alone renders an R6 avatar as R15 without complaint.

	The calls work from a client and from a server, and they yield: measured
	around 0.15s each against a warm outfit.

	Only appearance is consumed here. An outfit or a user can also carry
	equipped emotes, and AvatarMoment ignores them on purpose — emote and
	background are scene args so they compose against any subject without having
	to mint a new outfit id for every combination.
]]
local Players = game:GetService("Players")

export type AvatarSnapshot = {
	rigType: Enum.HumanoidRigType,
	humanoidDescription: HumanoidDescription,
}

local DEFAULT_RIG_TYPE = Enum.HumanoidRigType.R15

-- The two values the service is known to return. Split out from the mapping
-- below so the recognized set is assertable without capturing a warning.
local function isKnownAvatarType(name: string?): boolean
	return name == "R6" or name == "R15"
end

--[[
	The one name -> Enum mapping in the recipe. PlayerAvatarType arrives as a
	string and a rig only becomes an Enum in here.

	Anything that is not "R6" resolves to R15, which is both the engine's modern
	default and what an outfit with unreadable details is most likely to be.

	A value that is neither also warns. A renamed or recased key reaches here as
	an ordinary miss, so without the warning every R6 outfit would render as R15
	with nothing logged — the same silent failure the details warning below
	exists to prevent, arriving through a path that lookup succeeds on.
]]
local function rigTypeFromName(name: string?): Enum.HumanoidRigType
	if not isKnownAvatarType(name) then
		warn(`resolveOutfit: unrecognized PlayerAvatarType {name}, assuming R15`)
	end
	if name == "R6" then
		return Enum.HumanoidRigType.R6
	end
	return DEFAULT_RIG_TYPE
end

--[[
	Soft on purpose. An outfit whose appearance resolved is worth rendering even
	when its details did not, and AvatarEditorService is not guaranteed to be
	reachable from every host — a thumbnail job that loses this call should come
	back with an R15 rig rather than no scene at all. The warning is so a host
	silently rendering every R6 outfit as R15 is visible rather than inferred.
]]
local function resolveRigType(outfitId: number): Enum.HumanoidRigType
	local ok, details = pcall(function()
		return game:GetService("AvatarEditorService"):GetOutfitDetailsAsync(outfitId)
	end)
	if not ok or typeof(details) ~= "table" then
		warn(`resolveOutfit: outfit {outfitId} details unavailable, assuming R15 ({details})`)
		return DEFAULT_RIG_TYPE
	end
	return rigTypeFromName((details :: any).PlayerAvatarType)
end

--[[
	Hard on purpose, unlike the rig type: an outfit that does not resolve leaves
	nothing to render. A deleted or private outfit surfaces here as an HTTP 404.
]]
local function resolve(outfitId: number): AvatarSnapshot
	local ok, description = pcall(function()
		return Players:GetHumanoidDescriptionFromOutfitIdAsync(outfitId)
	end)
	if not ok or typeof(description) ~= "Instance" then
		error(`resolveOutfit: outfit {outfitId} did not resolve ({description})`)
	end

	return {
		rigType = resolveRigType(outfitId),
		humanoidDescription = description :: HumanoidDescription,
	}
end

--[[
	Soft on purpose, same as an outfit's details. playerAvatarType is the saved
	rig, so a user whose info call fails renders as R15 rather than losing the
	scene. A place-forced rig is not in this payload: the description was
	fetched with the current placeId and can disagree.
]]
local function resolveUserRigType(userId: number): Enum.HumanoidRigType
	local ok, info = pcall(function()
		return Players:GetCharacterAppearanceInfoAsync(userId)
	end)
	if not ok or typeof(info) ~= "table" then
		warn(`resolveOutfit: user {userId} appearance info unavailable, assuming R15 ({info})`)
		return DEFAULT_RIG_TYPE
	end
	return rigTypeFromName((info :: any).playerAvatarType)
end

--[[
	Hard on purpose, unlike the rig type: a user that does not resolve leaves
	nothing to render.
]]
local function resolveUser(userId: number): AvatarSnapshot
	local ok, description = pcall(function()
		return Players:GetHumanoidDescriptionFromUserIdAsync(userId)
	end)
	if not ok or typeof(description) ~= "Instance" then
		error(`resolveOutfit: user {userId} did not resolve ({description})`)
	end

	return {
		rigType = resolveUserRigType(userId),
		humanoidDescription = description :: HumanoidDescription,
	}
end

return {
	resolve = resolve,
	resolveUser = resolveUser,
	rigTypeFromName = rigTypeFromName,
	isKnownAvatarType = isKnownAvatarType,
}
