--[[
	Shared MomentScene playhead.

	Generic clock (Heartbeat + play/pause/seek/dispose). Optional AnimationTracks.
	Omit a field to keep the default. Method fields wrap the default via `super`.
]]
local RunService = game:GetService("RunService")

local Types = require(script.Parent.Parent.Parent.Types)

export type Playhead = Types.Playhead

export type CreatePlayheadOptions = {
	root: Model,
	tracks: { AnimationTrack }?,
	-- Stepped after every seek so the rig pose lands in the same frame, but only
	-- where the engine is not already stepping it. See poseRig.
	animator: Animator?,
	-- Policy the defaults still use. Returned getDuration is this (or clip length).
	getDuration: (() -> number)?,
	getClipLength: (() -> number)?,
	canPlay: (() -> boolean)?,
	syncVisuals: ((t: number) -> ())?,
	-- Members: omit = default. If set, first argument is the default implementation.
	play: ((super: () -> ()) -> ())?,
	pause: ((super: () -> ()) -> ())?,
	seek: ((super: (offset: number) -> (), offset: number) -> ())?,
	dispose: ((super: () -> ()) -> ())?,
	getIsPlaying: ((super: () -> boolean) -> boolean)?,
	getPosition: ((super: () -> number) -> number)?,
}

local function defaultClipLength(tracks: { AnimationTrack }): number
	local len = 0
	for _, track in tracks do
		if track.Length > len then
			len = track.Length
		end
	end
	return len
end

local function wrapAction(default: () -> (), override: ((() -> ()) -> ())?): () -> ()
	if override == nil then
		return default
	end
	return function()
		override(default)
	end
end

local function wrapSeek(
	default: (offset: number) -> (),
	override: (((offset: number) -> (), number) -> ())?
): (offset: number) -> ()
	if override == nil then
		return default
	end
	return function(offset: number)
		override(default, offset)
	end
end

local function wrapBool(default: () -> boolean, override: ((() -> boolean) -> boolean)?): () -> boolean
	if override == nil then
		return default
	end
	return function()
		return override(default)
	end
end

local function wrapNumber(default: () -> number, override: ((() -> number) -> number)?): () -> number
	if override == nil then
		return default
	end
	return function()
		return override(default)
	end
end

local function createPlayhead(options: CreatePlayheadOptions): Playhead
	local root = options.root
	local tracks: { AnimationTrack } = options.tracks or {}

	local getClipLength = options.getClipLength or function()
		return defaultClipLength(tracks)
	end
	local getDuration = options.getDuration or getClipLength
	local syncVisuals = options.syncVisuals
	local animator = options.animator
	local canPlay = options.canPlay or function()
		return getDuration() > 0
	end

	local playhead = 0
	local isPlaying = false
	local disposed = false
	local heartbeat: RBXScriptConnection? = nil

	local function stopClock()
		if heartbeat ~= nil then
			heartbeat:Disconnect()
			heartbeat = nil
		end
	end

	-- Writing TimePosition only stores the time; the pose is computed when the
	-- Animator is stepped. The engine does that while the game runs, and nothing
	-- does when it is not, so a host that seeks and captures without yielding
	-- would keep the previous pose.
	--
	-- Gated on IsRunning because StepAnimations throws while the game is running.
	--
	-- Runs at every duration, including zero: a pose emote loads fine and reports
	-- zero Length, so that scene needs the step as much as a moving one does.
	local function poseRig()
		if animator ~= nil and not RunService:IsRunning() then
			animator:StepAnimations(0)
		end
	end

	local function applyPlayhead(offset: number)
		local d = getDuration()
		local clip = getClipLength()
		if d <= 0 then
			playhead = 0
			poseRig()
			if syncVisuals ~= nil then
				syncVisuals(playhead)
			end
			return
		end
		playhead = math.clamp(offset, 0, d)
		if clip > 0 then
			for _, track in tracks do
				track.TimePosition = playhead % clip
			end
		end
		poseRig()
		if syncVisuals ~= nil then
			syncVisuals(playhead)
		end
	end

	local function startClock()
		if heartbeat ~= nil or disposed then
			return
		end
		heartbeat = RunService.Heartbeat:Connect(function(dt: number)
			if disposed or not isPlaying then
				return
			end
			local d = getDuration()
			if d <= 0 then
				return
			end
			applyPlayhead((playhead + dt) % d)
		end)
	end

	local defaultPlay = function()
		if disposed then
			return
		end
		if not canPlay() then
			isPlaying = false
			return
		end
		if syncVisuals ~= nil then
			syncVisuals(playhead)
		end
		for _, track in tracks do
			track:AdjustSpeed(1)
			if not track.IsPlaying then
				-- Explicit zero fade. Play's default 0.1s fade ramps the track
				-- weight only as the Animator is stepped with real time, and the
				-- only stepping in a non-running host is StepAnimations(0), so the
				-- weight would stay at 0 and the capture would get an unposed rig.
				track:Play(0)
			end
		end
		applyPlayhead(playhead)
		isPlaying = true
		startClock()
	end

	local defaultPause = function()
		if disposed then
			return
		end
		stopClock()
		for _, track in tracks do
			track:AdjustSpeed(0)
		end
		isPlaying = false
	end

	local defaultSeek = function(offset: number)
		if disposed then
			return
		end
		applyPlayhead(offset)
	end

	local defaultDispose = function()
		if disposed then
			return
		end
		disposed = true
		isPlaying = false
		stopClock()
		for _, track in tracks do
			track:AdjustSpeed(0)
			track:Stop(0)
		end
		table.clear(tracks)
		root:Destroy()
	end

	-- Opening frame: camera/tracks at t=0 without a host seek(0).
	applyPlayhead(0)

	return {
		play = wrapAction(defaultPlay, options.play),
		pause = wrapAction(defaultPause, options.pause),
		seek = wrapSeek(defaultSeek, options.seek),
		dispose = wrapAction(defaultDispose, options.dispose),
		getIsPlaying = wrapBool(function()
			return isPlaying
		end, options.getIsPlaying),
		getPosition = wrapNumber(function()
			return playhead
		end, options.getPosition),
		getDuration = getDuration,
	}
end

return createPlayhead
