--[[
	Builder: AvatarMoment.

	Constrained single-avatar scene from a saved outfit or a user:
	  outfitId          → HumanoidDescription + rig type (via resolveOutfit.resolve)
	  userId            → the same, for the user's current avatar (resolveUser)
	  cameraPath        → orbit path (default: subtle; closeup = same orbit, face frame)
	  emote             → default emote by name, resolved for the subject's rig
	  emoteId           → any animation asset, played as authored
	  backgroundAssetId → cyclorama asset

	Exactly one of outfitId and userId. They resolve through different engine
	calls, so both set leaves no rule for which appearance wins. 0 counts as
	absent: an IntValue left at its default parses as 0, and 0 is not an id.

	userId is behind MomentScenesAvatarMomentUserId. While that flag is off, a
	userId is ignored and outfitId stays required, so a host that already
	integrated this package keeps the outfit path.

	Only appearance and rig type come from that identity. An outfit or a user
	can also carry equipped emotes, and those are deliberately ignored: emote,
	background and camera stay scene args so they compose against any subject
	without having to mint a new outfit id for every combination.

	The cost of taking an id is that it has to exist — there is no
	bespoke-description path here. That is the accepted trade for args that are
	plain serializable values an engine API resolves on its own.

	Background is always resolved to something (never nil / none).
]]
local Types = require(script.Parent.Parent.Types)
local avatarFloorPosition = require(script.Parent._Utils.avatarFloorPosition)
local frameCamera = require(script.Parent._Utils.frameCamera)
local cameraPath = require(script.Parent._Utils.cameraPath)
local avatarBackground = require(script.Parent._Utils.avatarBackground)
local avatarRig = require(script.Parent._Utils.avatarRig)
local createPlayhead = require(script.Parent._Utils.createPlayhead)
local addKeyLight = require(script.addKeyLight)
local addFallbackBackdrop = require(script.addFallbackBackdrop)
local resolveOutfit = require(script.resolveOutfit)
local emotes = require(script.emotes)
local Flags = require(script.Flags)

type MomentScene = Types.MomentScene
type CameraPathName = cameraPath.PathName
type EmoteName = emotes.EmoteName
type FitCamera = (avatars: { Model }, fovDegrees: number) -> (CFrame, Vector3, number)

export type AvatarMomentArgs = {
	outfitId: number?,
	userId: number?,
	cameraPath: CameraPathName?,
	emote: EmoteName?,
	emoteId: number?,
	backgroundAssetId: number?,
}

local DEFAULT_FOV = 56
local DEFAULT_EMOTE: EmoteName = "wave"
local AVATAR_NAME = "Avatar"
local DEFAULT_CAMERA_PATH: CameraPathName = "subtle"
local EMOTE_TIMELINE_LOOPS = 4

local function resolveBackgroundAssetId(backgroundAssetId: number?): number
	if typeof(backgroundAssetId) == "number" and backgroundAssetId > 0 then
		return backgroundAssetId
	end
	return avatarBackground.DEFAULT_ASSET_ID
end

--[[
	A name, then a raw id, then the default name.

	The name wins because it is the only one of the two that can be resolved for
	whichever rig the subject turned out to be. A raw id is played as authored
	even on an R6 rig: substituting a clip the scene did not ask for is a worse
	surprise than a still pose, and the warning is what makes that pose
	diagnosable instead of mysterious.

	Rejects 0 as well as nil. An authored IntValue left alone parses as 0, and 0
	is truthy, so `args.emoteId or ...` would send `rbxassetid://0` to the rig
	and burn the full settle timeout waiting for a Length that never resolves.
]]
local function resolveEmoteId(args: AvatarMomentArgs, rigType: Enum.HumanoidRigType): number
	if emotes.isName(args.emote) then
		return emotes.resolve(args.emote :: EmoteName, rigType)
	end
	if args.emote ~= nil then
		warn(`AvatarMoment: unknown emote {args.emote}, falling through to emoteId or {DEFAULT_EMOTE}`)
	end
	if typeof(args.emoteId) == "number" and args.emoteId > 0 then
		if rigType == Enum.HumanoidRigType.R6 then
			warn(
				`AvatarMoment: emoteId {args.emoteId} plays as authored on an R6 rig, and an R15 clip will not move it. The emote arg resolves per rig.`
			)
		end
		return args.emoteId
	end
	return emotes.resolve(DEFAULT_EMOTE, rigType)
end

local function addBackdrop(root: Model, backgroundAssetId: number?): Model?
	addKeyLight(root)
	local assetId = resolveBackgroundAssetId(backgroundAssetId)
	local cyclorama = avatarBackground.attach(root, assetId)
	if cyclorama == nil then
		addFallbackBackdrop(root)
	end
	return cyclorama
end

-- 0 is absent. An untouched IntValue parses as 0, which is not an id.
local function positiveId(value: any): number?
	if typeof(value) == "number" and value > 0 then
		return value
	end
	return nil
end

-- Reached only while MomentScenesAvatarMomentUserId is on.
local function resolveSnapshot(args: AvatarMomentArgs)
	local outfitId = positiveId(args.outfitId)
	local userId = positiveId(args.userId)
	-- Two positive ids have no precedence. The calls return different avatars.
	if outfitId ~= nil and userId ~= nil then
		error("AvatarMoment: supply outfitId or userId, not both")
	end
	if outfitId ~= nil then
		return resolveOutfit.resolve(outfitId)
	end
	if userId ~= nil then
		return resolveOutfit.resolveUser(userId)
	end
	error("AvatarMoment: outfitId or userId (positive number) is required")
end

local function buildAvatarMoment(rawArgs: AvatarMomentArgs?): MomentScene
	local args: AvatarMomentArgs = rawArgs or ({} :: any)
	-- Tests assign this field after load, so a local copy would stay false.
	local snapshot
	if Flags.MomentScenesAvatarMomentUserId then
		snapshot = resolveSnapshot(args)
	else
		if typeof(args.outfitId) ~= "number" or args.outfitId <= 0 then
			error("AvatarMoment: outfitId (positive number) is required")
		end
		snapshot = resolveOutfit.resolve(args.outfitId :: number)
	end

	local root = Instance.new("Model")
	root.Name = "Live3DScene"

	local backdrop = addBackdrop(root, args.backgroundAssetId)
	-- Re-home the handle once, after attach parented the cyclorama: attach's own
	-- pinToParent ran while root's pivot was still the cyclorama bbox. Assigning
	-- WorldPivot is sticky — parenting later children does not move it — so this
	-- does not need repeating after the avatar is added.
	root.WorldPivot = CFrame.new()
	if backdrop ~= nil then
		avatarBackground.pinToParent(backdrop, root)
	end

	local avatar = avatarRig.createAvatar(snapshot.humanoidDescription, snapshot.rigType)
	avatar.Name = AVATAR_NAME
	local humanoid = avatar:FindFirstChildOfClass("Humanoid")
	if humanoid ~= nil then
		humanoid.NameOcclusion = Enum.NameOcclusion.OccludeAll
		humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		humanoid.NameDisplayDistance = 0
	end
	avatarFloorPosition.positionOnFloor(avatar, 0, CFrame.new())
	avatar.Parent = root

	local camera = Instance.new("Camera")
	camera.Name = "SceneCamera"
	camera.CameraType = Enum.CameraType.Scriptable
	camera.FieldOfView = DEFAULT_FOV
	camera.Parent = root

	-- Frame the shot before the emote starts. The fit reads head.Position, a
	-- live transform, and playEmote leaves its track running — measuring after
	-- it would seed the orbit from whatever pose the clip had reached, so the
	-- same spec would frame differently run to run.
	local pathName = args.cameraPath or DEFAULT_CAMERA_PATH
	local orbitKeys = cameraPath.resolve(pathName)
	-- Annotated because the two helpers share a signature and Luau will not call
	-- an unannotated union of identical function types.
	local fit: FitCamera = if cameraPath.framingFor(pathName) == "face"
		then frameCamera.fitStandingFace
		else frameCamera.fitStandingCharacters
	local _restCFrame, lookAtPos, orbitDistance = fit({ avatar }, camera.FieldOfView)
	camera.Focus = CFrame.new(lookAtPos)

	local emoteId = resolveEmoteId(args, snapshot.rigType)
	local track = avatarRig.playEmote(avatar, emoteId)
	local tracks: { AnimationTrack } = if track ~= nil then { track } else {}

	local function duration(): number
		local clip = 0
		for _, t in tracks do
			if t.Length > clip then
				clip = t.Length
			end
		end
		if clip <= 0 then
			return 0
		end
		return clip * EMOTE_TIMELINE_LOOPS
	end

	local playhead = createPlayhead({
		root = root,
		tracks = tracks,
		animator = if humanoid ~= nil then humanoid:FindFirstChildOfClass("Animator") else nil,
		getDuration = duration,
		syncVisuals = function(t: number)
			local d = duration()
			local alpha = if d > 0 then (t % d) / d else 0
			camera.CFrame = cameraPath.eval(lookAtPos, orbitDistance, orbitKeys, alpha)
		end,
		play = function(super)
			if humanoid ~= nil then
				humanoid.AutoRotate = false
			end
			super()
		end,
	})

	-- Gates seek UI. A loaded track is not the same as a clock: pose emotes
	-- report zero Length, and a scene with no clock must not claim one or the
	-- host draws a scrubber over nothing. Under-claiming is allowed — a recipe
	-- may run a clock and still say false to suppress the scrubber.
	local hasDuration = duration() > 0
	-- Gates user transport, which is a recipe's choice rather than a fact about
	-- the clock: these two answer different questions and hosts branch on them
	-- separately. This recipe opts users in, floored by reality because a tap
	-- that reaches a no-op play() is a glyph that lies.
	local ALLOWS_USER_TRANSPORT = true
	local canUserToggle = ALLOWS_USER_TRANSPORT and hasDuration

	return {
		root = root,
		camera = camera,
		playhead = playhead,
		capabilities = {
			canUserToggle = canUserToggle,
			hasDuration = hasDuration,
		},
		dispose = playhead.dispose,
	}
end

return buildAvatarMoment
