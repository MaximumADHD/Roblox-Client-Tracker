--[[
	The default emotes, as a clip id per rig.

	A clip drives the joints it names, and R6 and R15 name different ones. The
	R15 wave on an R6 rig therefore resolves, loads, plays, and moves nothing —
	a still pose rather than an error. Picking the clip by rig is the only way
	the scene comes back animated.

	Hardcoded because these ids are not environment content. The client carries
	the same constants for the animation set every stock avatar uses, so an id
	that stopped resolving would break default avatars long before it reached a
	moment. Values match Client/content/avatar/scripts/humanoidAnimateSAuth/
	humanoidAnimateSAuth.lua.

	Seven names because seven is what has an R6 clip at all — the modern emote
	catalog is R15-only. An arbitrary catalog emote goes through the emoteId arg
	instead, which carries no rig promise.
]]
export type EmoteName = "wave" | "point" | "dance" | "dance2" | "dance3" | "laugh" | "cheer"

type Clip = {
	r6: number,
	r15: number,
}

--[[
	Spelled out as a record rather than an { [EmoteName]: Clip } indexer so a
	misspelled key is a type error here instead of a nil id at load time.

	`dance` is this package's name for both rigs. R6 calls the same clip
	`dance1`, because a `/emote dance` on an R6 rig picks randomly between its
	three dances — a moment takes the first so one spec renders one clip.
]]
type Clips = {
	wave: Clip,
	point: Clip,
	dance: Clip,
	dance2: Clip,
	dance3: Clip,
	laugh: Clip,
	cheer: Clip,
}

local CLIPS: Clips = table.freeze({
	wave = table.freeze({ r6 = 128777973, r15 = 507770239 }),
	point = table.freeze({ r6 = 128853357, r15 = 507770453 }),
	dance = table.freeze({ r6 = 182435998, r15 = 507771019 }),
	dance2 = table.freeze({ r6 = 182436842, r15 = 507776043 }),
	dance3 = table.freeze({ r6 = 182436935, r15 = 507777268 }),
	laugh = table.freeze({ r6 = 129423131, r15 = 507770818 }),
	cheer = table.freeze({ r6 = 129423030, r15 = 507770677 }),
})

-- Iterated through a string-keyed view because generalized iteration over the
-- record hands back unknown keys.
local NAMES: { [string]: true } = {}
for name in CLIPS :: { [string]: Clip } do
	NAMES[name] = true
end
table.freeze(NAMES)

-- Takes EmoteName rather than string so a misspelled emote is a type error at
-- the call site, and Enum.HumanoidRigType rather than a flag so the caller
-- passes the rig it actually resolved.
local function resolve(name: EmoteName, rigType: Enum.HumanoidRigType): number
	local clip = CLIPS[name]
	if rigType == Enum.HumanoidRigType.R6 then
		return clip.r6
	end
	return clip.r15
end

-- An authored StringValue reaches the builder as any string, so a name has to
-- be checked before resolve is trusted with it. Separate from resolve so that
-- one stays total and needs no nil handling at the two call sites that pass a
-- literal.
local function isName(value: any): boolean
	return typeof(value) == "string" and NAMES[value] == true
end

return {
	resolve = resolve,
	isName = isName,
}
