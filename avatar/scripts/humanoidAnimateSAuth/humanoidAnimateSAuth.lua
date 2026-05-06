local module = {}

-- State stored in HumanoidRootPart/Humanoid for Server Authority rollback:
export type AnimationStateAttributesType = {
	-- Previous humanoid state to check for changes:
	previousHumanoidState: Enum.HumanoidStateType,
	previousHumanoidSpeed: number,
	-- Details of what's currently playing:
	pose: string, -- What "pose"/animation am I currently doing?
	currentAnimId: number, -- numeric asset ID of the track that's currently playing.  Poses may correspond to mutliple animationIDs, so this further disambiguates pose.
	-- Time until next pose/animation (0 means the next animation should start immediately once queued):
	currentAnimTimeRemaining: number,
	-- Details for the next animation I want to transition to:
	queuedPose: string, -- What pose am I striking next? Note: pose gets mapped to Animation names via POSE_TO_ANIM_NAME
	queuedAnimSpeed: number,  -- What speed will I play that next animation at?
	queuedTransitionTime: number, -- Once currentAnimTimeRemaining hits 0, how quickly do I fade out from that animation to this?
	-- Am I playing an emote?
	currentlyPlayingEmote: boolean,
	-- Properties for tracking tool animations (they run in parallel to the main pose animations):
	previousToolState: string,
	queuedToolAnimName: string,
	toolAnimationTimeRemaining: number
}

---------------------------------------------------------
-- FOR DEBUGGING:
---------------------------------------------------------

local isDebugPrinting = false
local function debugPrint(...)
	if isDebugPrinting then
		print(...)
	end
end

local function printAnimState(animState: AnimationStateAttributesType)
	print("time = ", time(), " AnimState: pose=", animState.pose, ", currentAnimId=", animState.currentAnimId, ", currentAnimTimeRemaining=", animState.currentAnimTimeRemaining,
		", queuedPose=", animState.queuedPose, ", queuedAnimSpeed=", animState.queuedAnimSpeed,
		", queuedTransitionTime=", animState.queuedTransitionTime, ", currentlyPlayingEmote=", tostring(animState.currentlyPlayingEmote))
end

local Players = game:GetService("Players")

--------------------------------------------------------------------------------
-- CONSTANTS (rig-independent)
--------------------------------------------------------------------------------

local DEFAULT_TRANSITION_TIME = 0.1
local JUMP_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local CLIMB_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local EMOTE_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local TOOL_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local SWIM_TRANSITION_TIME = 0.4  -- R15 only, but harmless to define
local SIT_TRANSITION_TIME = 0.5

local TOOL_ANIM_DURATION = 0.3

-- R15 only, but harmless to define:
local HUMANOID_HIP_HEIGHT = 2
-- Thresholds for toggling swim vs swimidle animations:
local SWIM_START_THRESHOLD = 1.025 -- If not swimming, start swimming once we exceed this speed
local SWIM_STOP_THRESHOLD = 0.975 -- If swimming, stop swimming once we drop below this speed

-- for R6, /emote dance --> randomly selects from dance1/dance2/dance3
local DANCE_OPTIONS_R6 = {"dance1", "dance2", "dance3"}

local POSE_TO_ANIM_NAME = {
	Standing = "idle",
	Running = "walk",
	Jumping = "jump",
	FreeFall = "fall",
	Climbing = "climb",
	Seated = "sit",
	Swimming = "swim",
	SwimIdle = "swimidle",
}

local TOOL_ANIM_MAP = {
	None = "toolnone",
	Slash = "toolslash",
	Lunge = "toollunge",
}
local TOOL_ANIM_NAMES = {}
for _, animName in pairs(TOOL_ANIM_MAP) do
	TOOL_ANIM_NAMES[animName] = true
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

-- Extract the numeric asset ID from any animation ID format:
-- "rbxassetid://69420666" → 69420666
-- "http://www.roblox.com/asset/?id=10921259953" → 10921259953
local function extractAnimIdNumber(animationId)
	return tonumber(tostring(animationId):match("%d+")) or -1
end

local function convertPoseToAnimationName(pose)
	local animName = POSE_TO_ANIM_NAME[pose]
	if not animName then
		warn("INVALID POSE: ", pose)
		return nil
	end
	return animName
end

function module.setupAnimation(character)
	character = character or script.Parent -- Default to assuming character is the parent of this script
	local humanoid = character:WaitForChild("Humanoid")
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local isR6 = (humanoid.RigType == Enum.HumanoidRigType.R6)
	local animator = humanoid:FindFirstChildOfClass("Animator")
	local animateParent = character:WaitForChild("Animate")
	if not animator then
		warn("Animator not found!")
		return
	end

	--------------------------------------------------------------------------------
	-- isR6-DEPENDENT CONSTANTS
	--------------------------------------------------------------------------------

	local RUNNING_TRANSITION_TIME = if isR6 then 0.1 else 0.2
	local FALL_TRANSITION_TIME = if isR6 then 0.3 else 0.2
	local LANDING_TRANSITION_TIME = if isR6 then DEFAULT_TRANSITION_TIME else 0.2
	local JUMP_ANIM_DURATION = if isR6 then 0.3 else 0.31

	--------------------------------------------------------------------------------
	-- DEFAULT ANIMATION IDS
	--------------------------------------------------------------------------------

	local DEFAULT_ANIMS
	if isR6 then
		DEFAULT_ANIMS = {
			idle      = {{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
				{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }},
			walk      = {{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 }},
			jump      = {{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 }},
			fall      = {{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 }},
			climb     = {{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 }},
			sit       = {{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 }},
			toolnone  = {{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 }},
			toolslash = {{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 }},
			toollunge = {{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 }},
			wave      = {{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 }},
			point     = {{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 }},
			dance1    = {{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 }},
			dance2    = {{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 }},
			dance3    = {{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 }},
			laugh     = {{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 }},
			cheer     = {{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 }},
		}
	else
		DEFAULT_ANIMS = {
			idle      = {{ id = "http://www.roblox.com/asset/?id=507766388", weight = 9 },
				{ id = "http://www.roblox.com/asset/?id=507766951", weight = 1 },
				{ id = "http://www.roblox.com/asset/?id=507766666", weight = 1 }},
			walk      = {{ id = "http://www.roblox.com/asset/?id=507777826", weight = 10 }},
			run       = {{ id = "http://www.roblox.com/asset/?id=507767714", weight = 10 }},
			swim      = {{ id = "http://www.roblox.com/asset/?id=507784897", weight = 10 }},
			swimidle  = {{ id = "http://www.roblox.com/asset/?id=507785072", weight = 10 }},
			jump      = {{ id = "http://www.roblox.com/asset/?id=507765000", weight = 10 }},
			fall      = {{ id = "http://www.roblox.com/asset/?id=507767968", weight = 10 }},
			climb     = {{ id = "http://www.roblox.com/asset/?id=507765644", weight = 10 }},
			sit       = {{ id = "http://www.roblox.com/asset/?id=2506281703", weight = 10 }},
			toolnone  = {{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 }},
			toolslash = {{ id = "http://www.roblox.com/asset/?id=522635514", weight = 10 }},
			toollunge = {{ id = "http://www.roblox.com/asset/?id=522638767", weight = 10 }},
			wave      = {{ id = "http://www.roblox.com/asset/?id=507770239", weight = 10 }},
			point     = {{ id = "http://www.roblox.com/asset/?id=507770453", weight = 10 }},
			dance     = {{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507771955", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507772104", weight = 10 }},
			dance2    = {{ id = "http://www.roblox.com/asset/?id=507776043", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507776720", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507776879", weight = 10 }},
			dance3    = {{ id = "http://www.roblox.com/asset/?id=507777268", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507777451", weight = 10 },
				{ id = "http://www.roblox.com/asset/?id=507777623", weight = 10 }},
			laugh     = {{ id = "http://www.roblox.com/asset/?id=507770818", weight = 10 }},
			cheer     = {{ id = "http://www.roblox.com/asset/?id=507770677", weight = 10 }},
		}
	end

	-- Overrides of looping behavior for default emotes:
	local DEFAULT_EMOTE_LOOPING_OVERRIDES = {
		wave  = { looping = false },
		point = { looping = false },
		dance = { looping = true },
		dance2 = { looping = true },
		dance3 = { looping = true },
		laugh = { looping = false },
		cheer = { looping = false },
	}
	if isR6 then
		-- In R6, dance randomly maps to dance1/dance2/dance3, so we need to set looping overrides for those instead of dance:
		DEFAULT_EMOTE_LOOPING_OVERRIDES["dance1"] = { looping = true }
	end

	-- R15-only: run/walk blend toggle
	local disableRunWalkBlend = false

	-- R15: track the run anim id for walk/run blending
	local fixedRunAnimId = nil
	if not isR6 then
		fixedRunAnimId = extractAnimIdNumber(DEFAULT_ANIMS["run"][1].id)
		assert(#(DEFAULT_ANIMS["run"]) == 1)
	end

	-- This will get updated later in this function if custom tool animations are added:
	local toolAnimIds = {}
	for _, animName in pairs(TOOL_ANIM_MAP) do
		for _, variant in ipairs(DEFAULT_ANIMS[animName]) do
			toolAnimIds[extractAnimIdNumber(variant.id)] = true
		end
	end

	local animTable = {}
	local preloadedAnims = {}

	-- Time-based deterministic RNG
	-- Both client and server share the same simulation time() and userId,
	-- so seeding with f(time(), userId) produces identical rolls on both sides.
	local frameRng = nil -- Lazily created on first rollAnimation call per frame
	local frameRngTime = -1 -- The time() for which frameRng was created
	local player = Players:GetPlayerFromCharacter(character)
	local animateUserId = if player then player.UserId else 0

	---------------------------------------------------------
	-- FOR DEBUGGING:
	---------------------------------------------------------

	local function printPlayingAnimationTracks()
		local animTracks = animator:GetPlayingAnimationTracks()

		-- Loop through each ID you are looking for
		if #animTracks == 1 then
			local track = animTracks[1]
			print("Active animation track1: ", track.Name, track.Animation.AnimationId, track.IsPlaying, track.Looped, track.TimePosition, track.Speed, track.WeightCurrent, track.WeightTarget)
		else
			for i, track in ipairs(animTracks) do
				print("Active animation track: ", i, track.Name, track.Animation.AnimationId, track.IsPlaying, track.Looped, track.TimePosition, track.Speed, track.WeightCurrent, track.WeightTarget)
			end
		end
	end

	local function isAnimationIdPlaying(animationId, animTracks)
		if not animTracks then
			animTracks = animator:GetPlayingAnimationTracks()
		end
		for _,animTrack in ipairs(animTracks) do
			if extractAnimIdNumber(animTrack.Animation.AnimationId) == animationId then
				return true
			end
		end
		return false
	end

	--------------------------------------------------------------------------------
	-- HELPER FUNCTIONS
	--------------------------------------------------------------------------------

	local function stopToolAnimations(transitionTime, destroyTracks, animTracks)
		transitionTime = transitionTime or 0
		debugPrint("[AnimRepl][Lua] stopToolAnimations: transitionTime=", transitionTime)
		for _, track in ipairs(animTracks or animator:GetPlayingAnimationTracks()) do
			if toolAnimIds[extractAnimIdNumber(track.Animation.AnimationId)] == nil then
				continue
			end
			debugPrint("[AnimRepl][Lua] Stop: name=", track.Name, " id=", track.Animation.AnimationId, " transitionTime=", transitionTime)
			if track.IsPlaying then
				track:Stop(transitionTime)
			end
			if destroyTracks then
				track:Destroy()
			end
		end
	end

	-- Lookup table of all non-tool animations, to be populated later in setup function:
	local animTableNontoolIds = {}
	local function stopOtherNontoolAnimations(animIDsToKeep, transitionTime, destroyTracks, animTracks)
		transitionTime = transitionTime or 0
		debugPrint("[AnimRepl][Lua] stopOtherNontoolAnimations: transitionTime=", transitionTime)

		for _, track in ipairs(animTracks or animator:GetPlayingAnimationTracks()) do
			local animId = extractAnimIdNumber(track.Animation.AnimationId)
			if not animTableNontoolIds[animId] or animIDsToKeep[animId] then
				continue
			end
			debugPrint("[AnimRepl][Lua] Stop: name=", track.Name, " id=", animId, " transitionTime=", transitionTime)
			if track.IsPlaying then
				track:Stop(transitionTime)
			end
			if destroyTracks then
				track:Destroy()
			end
		end
	end

	local function stopAllAnimations(transitionTime, destroyTracks, animTracks)
		transitionTime = transitionTime or 0
		debugPrint("[AnimRepl][Lua] stopAllAnimations: transitionTime=", transitionTime)
		for _, track in ipairs(animTracks or animator:GetPlayingAnimationTracks()) do
			debugPrint("[AnimRepl][Lua] Stop: name=", track.Name, " id=", track.Animation.AnimationId, " transitionTime=", transitionTime)
			if track.IsPlaying then
				track:Stop(transitionTime)
			end
			if destroyTracks then
				track:Destroy()
			end
		end
	end

	-- TODO the following helper functions should be C++ functions

	-- Return the first playing track matching the animationId
	local function getPlayingAnimationTrackFromID(animationId, animTracks)
		if not animTracks then
			animTracks = animator:GetPlayingAnimationTracks()
		end
		for _,animTrack in ipairs(animTracks) do
			if animTrack.IsPlaying and extractAnimIdNumber(animTrack.Animation.AnimationId) == animationId then
				return animTrack
			end
		end
		return nil
	end

	-- Return the first track matching the animationId
	local function getAnimationTrackFromID(animationId, animTracks)
		if not animTracks then
			animTracks = animator:GetPlayingAnimationTracks()
		end
		for _,animTrack in ipairs(animTracks) do
			if extractAnimIdNumber(animTrack.Animation.AnimationId) == animationId then
				return animTrack
			end
		end
		return nil
	end

	-- Check if the track with the same animationID exists already.  If it does, just reuse that one.
	-- Otherwise load a new one.
	local function loadUniqueAnimation(animation, animator, animTracks)
		local animationId = extractAnimIdNumber(animation.AnimationId)
		local animTrack = getAnimationTrackFromID(animationId, animTracks)
		if animTrack ~= nil then
			return animTrack
		else
			return animator:LoadAnimation(animation)
		end
	end

	local function getPlayingAnimationTracksFromIDs(animationIds, animTracks)
		if not animTracks then
			animTracks = animator:GetPlayingAnimationTracks()
		end
		local foundTracks = {}

		-- Loop through each ID you are looking for
		for _, id in ipairs(animationIds) do
			-- Search through the currently playing tracks
			for _, track in ipairs(animTracks) do
				if track.IsPlaying and extractAnimIdNumber(track.Animation.AnimationId) == id then
					table.insert(foundTracks, track)
					-- Break the inner loop at the first match per ID
					break
				end
			end
		end
		return foundTracks
	end

	--------------------------------------------------------------------------------
	-- SCALE HELPERS
	--------------------------------------------------------------------------------

	local function getHeightScale()
		if isR6 or not humanoid.AutomaticScalingEnabled then
			-- When auto scaling is not enabled, the rig scale stands in for
			-- a computed scale.
			return character:GetScale()
		end

		local hipHeight = humanoid.HipHeight
		local scale = hipHeight / HUMANOID_HIP_HEIGHT
		local AnimationSpeedDampeningObject = animateParent:FindFirstChild("ScaleDampeningPercent")
		if AnimationSpeedDampeningObject ~= nil then
			scale = 1 + (hipHeight - HUMANOID_HIP_HEIGHT) * AnimationSpeedDampeningObject.Value / HUMANOID_HIP_HEIGHT
		end
		return scale
	end

	--------------------------------------------------------------------------------
	-- R15-only: Run/walk blend helpers
	--------------------------------------------------------------------------------

	local function rootMotionCompensation(speed)
		debugPrint("calling rootMotionCompensation with speed = ", speed)
		local speedScaled = speed * 1.25
		local heightScale = getHeightScale()
		local runSpeed = speedScaled / heightScale
		return runSpeed
	end

	local function getRunWalkBlendWeights(speed)
		local runSpeed = rootMotionCompensation(speed)

		local SMALL_BUT_NOT_ZERO = 0.0001
		local NORMALIZED_WALK_SPEED = 0.5 -- established empirically using current `913402848` walk animation
		local NORMALIZED_RUN_SPEED  = 1

		local walkAnimationWeight = SMALL_BUT_NOT_ZERO
		local runAnimationWeight = SMALL_BUT_NOT_ZERO
		local timeWarp = 1

		if runSpeed <= NORMALIZED_WALK_SPEED then
			walkAnimationWeight = 1
			timeWarp = runSpeed/NORMALIZED_WALK_SPEED
		elseif runSpeed < NORMALIZED_RUN_SPEED then
			local fadeInRun = (runSpeed - NORMALIZED_WALK_SPEED)/(NORMALIZED_RUN_SPEED - NORMALIZED_WALK_SPEED)
			walkAnimationWeight = 1 - fadeInRun
			runAnimationWeight  = fadeInRun
		else
			timeWarp = runSpeed/NORMALIZED_RUN_SPEED
			runAnimationWeight = 1
		end
		return walkAnimationWeight, runAnimationWeight, timeWarp
	end

	local function setRunSpeed(speed, walkAnimTrack, runAnimTrack)
		debugPrint("Setting run speed to ", speed)

		local walkAnimationWeight, runAnimationWeight, timeWarp = getRunWalkBlendWeights(speed)
		debugPrint("Adjusting weights to be walk=", walkAnimationWeight, ", run=", runAnimationWeight, ", timeWarp=", timeWarp)

		if walkAnimTrack then
			walkAnimTrack:AdjustWeight(walkAnimationWeight)
			walkAnimTrack:AdjustSpeed(timeWarp)
		else
			warn("Trying to set nil walk track!")
		end
		if runAnimTrack then
			runAnimTrack:AdjustWeight(runAnimationWeight)
			runAnimTrack:AdjustSpeed(timeWarp)
		else
			warn("I tried to get the run animation track for ", fixedRunAnimId, " but it was nil")
		end
	end

	--------------------------------------------------------------------------------
	-- HELPER FUNCTIONS FOR CONFIGURING ANIMATION SET
	--------------------------------------------------------------------------------

	local function getFrameRng()
		local t = time()
		if t ~= frameRngTime then
			-- Combine simulation time and userId into a deterministic seed.
			-- XOR mixes in the userId so different players on the same server
			-- don't get identical sequences.
			local timeBits = math.floor(t * 10000)
			local seed = bit32.bxor(timeBits, animateUserId)
			frameRng = Random.new(seed)
			frameRngTime = t
		end
		return frameRng
	end

	local function rollAnimation(animName)
		local animSet = animTable[animName]
		if animSet == nil then
			return 1
		end
		local totalWeight = animSet.totalWeight
		if totalWeight == nil or totalWeight <= 0 or animSet.count <= 1 then
			return 1
		end

		-- Lazily create a deterministic RNG for this frame, seeded from time() + userId.
		-- Both client and server see the same time() during this simulation step,
		-- so they produce identical rolls without needing attribute storage.
		local rng = getFrameRng()
		local roll = rng:NextInteger(1, totalWeight)

		local idx = 1
		local count = animSet.count
		while idx <= count do
			local entry = animSet[idx]
			if roll <= entry.weight then break end
			roll = roll - entry.weight
			idx = idx + 1
		end
		return idx
	end

	local function configureAnimationSet(name, fileList)
		local existingSet = animTable[name]
		if existingSet ~= nil then
			for _, connection in ipairs(existingSet.connections) do
				connection:Disconnect()
			end
		end
		local animSet = {}
		animSet.count = 0
		animSet.totalWeight = 0
		animSet.connections = {}
		animTable[name] = animSet

		local allowCustomAnimations = true

		local success, _msg = pcall(function() allowCustomAnimations = game:GetService("StarterPlayer").AllowCustomAnimations end)
		if not success then
			allowCustomAnimations = true
		end

		-- check for config values
		local config = animateParent:FindFirstChild(name)
		if allowCustomAnimations and config ~= nil then
			table.insert(animSet.connections, config.ChildAdded:Connect(function(_child) configureAnimationSet(name, fileList) end))
			table.insert(animSet.connections, config.ChildRemoved:Connect(function(_child) configureAnimationSet(name, fileList) end))

			for _, childPart in ipairs(config:GetChildren()) do
				if childPart:IsA("Animation") then
					local newWeight = 1
					local weightObject = childPart:FindFirstChild("Weight")
					if weightObject ~= nil then
						newWeight = weightObject.Value
					end
					animSet.count = animSet.count + 1
					local idx = animSet.count
					local entry = {}
					entry.anim = childPart
					entry.weight = newWeight
					animSet[idx] = entry
					animSet.totalWeight = animSet.totalWeight + newWeight
					table.insert(animSet.connections, childPart.Changed:Connect(function(_property) configureAnimationSet(name, fileList) end))
					table.insert(animSet.connections, childPart.ChildAdded:Connect(function(_property) configureAnimationSet(name, fileList) end))
					table.insert(animSet.connections, childPart.ChildRemoved:Connect(function(_property) configureAnimationSet(name, fileList) end))
				end
			end
		end

		-- fallback to defaults
		if animSet.count <= 0 then
			for idx, anim in ipairs(fileList) do
				local entry = {}
				entry.anim = Instance.new("Animation")
				entry.anim.Name = name
				entry.anim.AnimationId = anim.id
				entry.weight = anim.weight
				animSet[idx] = entry
				animSet.count = animSet.count + 1
				animSet.totalWeight = animSet.totalWeight + anim.weight
			end
		end

		-- preload anims
		for _i, animType in pairs(animTable) do
			for idx = 1, animType.count, 1 do
				local anim = animType[idx].anim
				local animIdNumber = extractAnimIdNumber(anim.AnimationId)

				-- if it's a tool anim, update toolAnimIds list:
				if TOOL_ANIM_NAMES[anim.Name] then
					toolAnimIds[animIdNumber] = true
				end

				if preloadedAnims[animIdNumber] == nil then
					animator:LoadAnimation(anim)
					preloadedAnims[animIdNumber] = true
				end
			end
		end
	end

	-- Setup animation objects
	local function scriptChildModified(child)
		local fileList = DEFAULT_ANIMS[child.Name]
		if fileList ~= nil then
			configureAnimationSet(child.Name, fileList)
		end
	end

	-- Configure set of valid animations:
	animateParent.ChildAdded:Connect(scriptChildModified)
	animateParent.ChildRemoved:Connect(scriptChildModified)
	for name, fileList in pairs(DEFAULT_ANIMS) do
		configureAnimationSet(name, fileList)
	end

	-- R15: update fixedRunAnimId after configureAnimationSet may have overridden it
	if not isR6 then
		fixedRunAnimId = extractAnimIdNumber(animTable["run"][1].anim.AnimationId)
		assert(animTable["run"].count == 1)
	end

	-- Build a lookup of all non-tool animation IDs from animTable so we only
	-- stop animations that this script owns in stopOtherNontoolAnimations,
	-- leaving other humanoid animations (e.g. developer-spawned) untouched.
	for animName, animSet in pairs(animTable) do
		if not TOOL_ANIM_NAMES[animName] then
			for idx = 1, animSet.count do
				animTableNontoolIds[extractAnimIdNumber(animSet[idx].anim.AnimationId)] = true
			end
		end
	end

	--------------------------------------------------------------------------------
	-- ANIMATION QUEUING
	--------------------------------------------------------------------------------

	local function queueAnimation(animState: AnimationStateAttributesType, nextPose, transitionTime, animSpeed, timeToNextAnimation)
		animState.queuedPose = nextPose
		animState.queuedTransitionTime = transitionTime or 0
		animState.queuedAnimSpeed = animSpeed or 0
		animState.currentAnimTimeRemaining = timeToNextAnimation or 0
	end

	--------------------------------------------------------------------------------
	-- HELPER FUNCTIONS FOR TOOL ANIMATIONS
	--------------------------------------------------------------------------------

	local function transitionToNextToolAnimation(animState: AnimationStateAttributesType, toolAnimName)
		local idx = rollAnimation(toolAnimName)
		local anim = animTable[toolAnimName][idx].anim
		local newAnimId = extractAnimIdNumber(anim.AnimationId)

		-- this logic differs from the standard transition logic because we want to restart the tool animation even if we are already playing it
		local animTracks = animator:GetPlayingAnimationTracks()
		local transitionTime = if toolAnimName == "toolnone" then TOOL_TRANSITION_TIME else 0
		stopToolAnimations(transitionTime, nil, animTracks)

		local animTrack = loadUniqueAnimation(anim, animator, animTracks)

		-- Set the Priority and Looped properties explicitly for them to be authoritative/predictable
		animTrack.Looped = if toolAnimName == "toolnone" then true else false
		animTrack.Priority = if toolAnimName == "toolnone" then Enum.AnimationPriority.Idle else Enum.AnimationPriority.Action
		debugPrint("playing new tool animation: ", toolAnimName, " with id ", newAnimId, " with transition time ", animState.queuedTransitionTime, " and priority ", animTrack.Priority)

		animTrack:Play(transitionTime)

		animState.queuedToolAnimName = ""
		animState.toolAnimationTimeRemaining = TOOL_ANIM_DURATION
	end

	local function updateToolAnimations(deltaTime, animState)
		-- Tool Animation handling
		local tool = character:FindFirstChildOfClass("Tool")
		local handle = if tool then tool:FindFirstChild("Handle") else nil

		if tool and handle then
			local handleState = handle:GetAttribute("State") or ""

			if handleState ~= "" then
				debugPrint("Tool state changed from ", animState.previousToolState, " to ", handleState)

				animState.toolAnimationTimeRemaining = 0
				animState.queuedToolAnimName = TOOL_ANIM_MAP[handleState]

				handle:SetAttribute("State", "")
			end

			if animState.toolAnimationTimeRemaining > 0 then
				animState.toolAnimationTimeRemaining -= deltaTime
				animState.toolAnimationTimeRemaining = math.max(animState.toolAnimationTimeRemaining, 0)

				-- Not time to switch to next animation yet, continue playing current tool animation
				return
			end

			local nextToolName = animState.queuedToolAnimName

			if nextToolName ~= "" then
				transitionToNextToolAnimation(animState, nextToolName)

				if nextToolName == "toolnone" then
					animState.queuedToolAnimName = ""
				else
					-- Go back to idle once we're done playing the tool
					animState.queuedToolAnimName = "toolnone"
				end
			end
		else
			stopToolAnimations()
			animState.toolAnimationTimeRemaining = 0
		end
	end

    local function transitionToQueuedAnimation(animState: AnimationStateAttributesType)
		local queuedPose = animState.queuedPose
		local queuedAnimIsEmote = queuedPose:sub(1, 6) == "EMOTE_"
		local newAnimName = ""
		if queuedAnimIsEmote then
			newAnimName = queuedPose:sub(7)
			if isR6 and newAnimName == "dance" then
				-- For R6, dance randomly maps to dance1, dance2, or dance3
				local rng = getFrameRng()
				local roll = rng:NextInteger(1, #DANCE_OPTIONS_R6)
				newAnimName = DANCE_OPTIONS_R6[roll]
			end
		else
			newAnimName = convertPoseToAnimationName(queuedPose)
		end
		debugPrint("trying to transition to queued animation ", newAnimName)
		local idx = rollAnimation(newAnimName)
		local anim = animTable[newAnimName][idx].anim
		local newAnimId = extractAnimIdNumber(anim.AnimationId)

		-- The API name is rather misleading, it should really be animator:GetActiveAnimationTracks since it includes fading out tracks where IsPlaying = false
		local animTracks = animator:GetPlayingAnimationTracks()

		local tracksToPlay = {}
		tracksToPlay[newAnimId] = true

		-- loadUniqueAnimation will first look for an existing track for the same animationID and then load a new one if it doesn't exist
		debugPrint("[AnimRepl][Lua] LoadUniqueAnimation: name=", newAnimName, " id=", newAnimId, " pose=", queuedPose)
		local animTrack = loadUniqueAnimation(anim, animator, animTracks)
		local runTrack = nil
		if not isR6 and queuedPose == "Running" and not disableRunWalkBlend then
			-- For R15's, Running is a special pose that blends two tracks together
			local runAnim = animTable["run"][1].anim
			debugPrint("[AnimRepl][Lua] LoadUniqueAnimation (run blend): id=", runAnim.AnimationId)
			runTrack = loadUniqueAnimation(runAnim, animator,animTracks)
			tracksToPlay[fixedRunAnimId] = true
		end

		local areCorrectAnimationTracksPlaying = false
		if animState.currentAnimId == newAnimId then
			-- If the currentAnimId is the same as the new one, check if the correct track(s) are already playing
			if animTrack.IsPlaying and (runTrack == nil or runTrack.IsPlaying) then
				areCorrectAnimationTracksPlaying = true
			end
		end

		-- Stop all tracks other than the ones we expect to be playing:
		stopOtherNontoolAnimations(tracksToPlay, animState.queuedTransitionTime, nil, animTracks)

		if not areCorrectAnimationTracksPlaying then
			-- The correct tracks aren't playing, so we need to play them.

			-- Set the Priority and Looped properties explicitly for them to be authoritative/predictable
			animTrack.Priority = Enum.AnimationPriority.Core
			local isAnimTrackLooped
			if queuedAnimIsEmote then
				local loopingOverride = DEFAULT_EMOTE_LOOPING_OVERRIDES[newAnimName]
				if loopingOverride then
					isAnimTrackLooped = loopingOverride.looping
				else
					isAnimTrackLooped = false
				end
			else
				-- All non-emote animations are Looped by default since they correspond to a
				-- humanoid state that may exist for an indefinite amount of time.
				isAnimTrackLooped = true
			end
			animTrack.Looped = isAnimTrackLooped

			local startingTimePosition = 0
			if isAnimTrackLooped then
				debugPrint("[AnimRepl][Lua] Previous time position of track, before calling Play() =", animTrack.TimePosition)
				-- If this is a new track, this should still be 0:
				startingTimePosition = animTrack.TimePosition
			end

			debugPrint("[AnimRepl][Lua] Play: name=", newAnimName, " id=", newAnimId, " transitionTime=", animState.queuedTransitionTime, " speed=", animTrack.Speed)
			animTrack:Play(animState.queuedTransitionTime)
			if isAnimTrackLooped then
				-- For looped animations, we want to maintain the same time position if restarting a fading track to minimize visual jitter
				animTrack.TimePosition = startingTimePosition
				debugPrint("[AnimRepl][Lua] Reset time position, track name =", newAnimName, " id=", newAnimId, " starting time position =", animTrack.TimePosition, " with speed:", animTrack.Speed)
			end

			if queuedPose == "Jumping" then
				animState.currentAnimTimeRemaining = JUMP_ANIM_DURATION
			else
				animState.currentAnimTimeRemaining = 0
			end

			animState.currentAnimId = newAnimId

			--------------------------------------------------------------------------------
			-- R15 SPECIAL LOGIC: WALK-RUN BLEND
			--------------------------------------------------------------------------------
			if runTrack then
				-- Set the Priority and Looped properties explicitly for them to be authoritative/predictable
				runTrack.Priority = Enum.AnimationPriority.Core
				runTrack.Looped = true

				debugPrint("[AnimRepl][Lua] Play (run blend): id=", runTrack.Animation.AnimationId, " transitionTime=", animState.queuedTransitionTime)
				local runStartingTimePosition = runTrack.TimePosition
				runTrack:Play(animState.queuedTransitionTime)
				-- For looped animations, we want to maintain the same time position if restarting a fading track to minimize visual jitter
				runTrack.TimePosition = runStartingTimePosition
			end
			--------------------------------------------------------------------------------
		end

		local trackLength = animTrack.Length

		animState.pose = queuedPose
		if animState.queuedAnimSpeed > 0 then
			-- The queued pose had a specified speed, so adjust the track accordingly.
			if not isR6 and queuedPose == "Running" then
				-- R15: blend walk/run weights
				if not disableRunWalkBlend then
					setRunSpeed(animState.queuedAnimSpeed, animTrack, runTrack)
				end
			elseif animState.queuedAnimSpeed ~= animTrack.Speed then
				animTrack:AdjustSpeed(animState.queuedAnimSpeed)
			end
		end

		animState.currentlyPlayingEmote = queuedAnimIsEmote
		if queuedAnimIsEmote and not animTrack.Looped then
			queueAnimation(animState, "Standing", EMOTE_TRANSITION_TIME, nil, trackLength) -- after emote is done, transition back to standing
		else
			animState.queuedPose = ""
			animState.queuedAnimSpeed = 0
			animState.queuedTransitionTime = 0
		end
	end

	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------

	-- Persistent table: only the 2 fields the Chatted handler reads between steps.
	-- Named chatState (not animState) to avoid confusion with the animState parameter in sub-functions.
	local chatState = {
		pose = "Standing",
		currentlyPlayingEmote = false,
	}

	stopAllAnimations(0, true)

	-- Write initial attribute state (once at setup, not per-frame)
	local initAttrs = {
		previousHumanoidState    = humanoid:GetState(),
		previousHumanoidSpeed    = 0,
		pose                     = "Standing",
		currentAnimId            = -1,
		currentAnimTimeRemaining = 0,
		queuedPose               = "Standing",
		queuedAnimSpeed          = 0,
		queuedTransitionTime     = 0,
		previousToolState        = "",
		queuedToolAnimName       = "",
		toolAnimationTimeRemaining = 0,
		currentlyPlayingEmote    = false,
	}
	-- First step, force humanoid to transition to idle:
	transitionToQueuedAnimation(initAttrs)  -- Note that this will modify initAttrs
	-- Set initial attributes on humanoidRootPart:
	for k, v in pairs(initAttrs) do
		humanoidRootPart:SetAttribute(k, v)
	end

	--------------------------------------------------------------------------------
	-- Humanoid state transition functions
	--------------------------------------------------------------------------------

	local function onRunning(animState: AnimationStateAttributesType, speed)
		debugPrint("onRunning, speed: " .. tostring(speed))

		if isR6 then
			local scale = character:GetScale()
			speed = speed / scale

			if speed > 0.01 then
				local WALK_SPEED_SCALE = 14.5
				queueAnimation(animState, "Running", RUNNING_TRANSITION_TIME, speed / WALK_SPEED_SCALE)
			else
				if not animState.currentlyPlayingEmote and animState.pose ~= "Standing" then
					queueAnimation(animState, "Standing", RUNNING_TRANSITION_TIME)
				end
			end
		else
			local heightScale = getHeightScale()

			local movedDuringEmote = animState.currentlyPlayingEmote and humanoid.MoveDirection == Vector3.zero
			local speedThreshold = movedDuringEmote and (humanoid.WalkSpeed / heightScale) or 0.75
			if speed > speedThreshold * heightScale then
				local WALK_SPEED_SCALE = 16.0
				queueAnimation(animState, "Running", RUNNING_TRANSITION_TIME, speed / WALK_SPEED_SCALE)
			else
				if not animState.currentlyPlayingEmote and animState.pose ~= "Standing" then
					queueAnimation(animState, "Standing", RUNNING_TRANSITION_TIME)
				end
			end
		end
	end

	local function onClimbing(animState: AnimationStateAttributesType, speed)
		if isR6 then
			local scale = character:GetScale()
			speed = speed / scale
			local CLIMBING_SCALE = 12.0
			queueAnimation(animState, "Climbing", CLIMB_TRANSITION_TIME, speed / CLIMBING_SCALE)
		else
			local heightScale = getHeightScale()
			speed /= heightScale
			local CLIMBING_SCALE = 5.0
			queueAnimation(animState, "Climbing", CLIMB_TRANSITION_TIME, speed / CLIMBING_SCALE)
		end
	end

	local function onFreeFall(animState: AnimationStateAttributesType)
		if animState.pose == "Jumping" then
			queueAnimation(animState, "FreeFall", FALL_TRANSITION_TIME, nil, animState.currentAnimTimeRemaining)
		elseif animState.pose ~= "FreeFall" then
			queueAnimation(animState, "FreeFall", FALL_TRANSITION_TIME)
		end
	end

	local function onSwimming(animState: AnimationStateAttributesType, speed)
		debugPrint("onSwimming, speed: " .. tostring(speed))

		if isR6 then
			-- R6 doesn't have swim animations; map to Running/Standing instead
			if speed > 0 then
				queueAnimation(animState, "Running", DEFAULT_TRANSITION_TIME)
			else
				queueAnimation(animState, "Standing", DEFAULT_TRANSITION_TIME)
			end
		else
			-- This early-out prevents a feedback loop where the swim animation
			-- generates root motion that keeps the character stuck in the Swimming pose
			if humanoid.MoveDirection == Vector3.zero then
				queueAnimation(animState, "SwimIdle", SWIM_TRANSITION_TIME)
				return
			end

			-- R15: proper swim/swimidle
			local heightScale = getHeightScale()
			speed /= heightScale

			local swimThreshold = if animState.pose == "Swimming" then SWIM_STOP_THRESHOLD else SWIM_START_THRESHOLD
			if speed > swimThreshold then
				local SWIMMING_SCALE = 10.0
				queueAnimation(animState, "Swimming", SWIM_TRANSITION_TIME, speed / SWIMMING_SCALE)
			else
				queueAnimation(animState, "SwimIdle", SWIM_TRANSITION_TIME)
			end
		end
	end

	local function processHumanoidStateChanges(animState: AnimationStateAttributesType)
		local currentState = humanoid:GetState()

		local speed = 0
		local previousSpeed = 0

		-- We'll do a speed check for states with speed:
		local relVelocity = humanoid:GetRelativeVelocityAtFloor()
		if currentState == Enum.HumanoidStateType.Running then
			speed = Vector2.new(relVelocity.X, relVelocity.Z).magnitude
			previousSpeed = animState.previousHumanoidSpeed
		elseif currentState == Enum.HumanoidStateType.Climbing then
			speed = math.abs(relVelocity.Y)
			previousSpeed = animState.previousHumanoidSpeed
		elseif currentState == Enum.HumanoidStateType.Swimming then
			speed = relVelocity.magnitude
			previousSpeed = animState.previousHumanoidSpeed
		end

		-- TODO fuzzy check on speed?
		if currentState == animState.previousHumanoidState and speed == previousSpeed then
			return -- nothing to do, nothing has changed.
		end

		debugPrint("[AnimRepl][Lua] HumanoidState changed: ", animState.previousHumanoidState, " -> ", currentState, " speed=", speed)

		-- Note: this has been ordered approximately from most likely to least likely
		if currentState == Enum.HumanoidStateType.Running then -- 8
			onRunning(animState, speed)
		elseif currentState == Enum.HumanoidStateType.Jumping then -- 3
			queueAnimation(animState, "Jumping", JUMP_TRANSITION_TIME)
		elseif currentState == Enum.HumanoidStateType.Freefall then -- 5
			onFreeFall(animState)
		elseif currentState == Enum.HumanoidStateType.Climbing then -- 12
			onClimbing(animState, speed)
		elseif currentState == Enum.HumanoidStateType.Seated then -- 13
			queueAnimation(animState, "Seated", SIT_TRANSITION_TIME)
		elseif currentState == Enum.HumanoidStateType.Swimming then -- 4
			onSwimming(animState, speed)
		elseif currentState == Enum.HumanoidStateType.FallingDown then -- 0
			queueAnimation(animState, "FallingDown")
		elseif currentState == Enum.HumanoidStateType.GettingUp then -- 2
			queueAnimation(animState, "GettingUp")
		elseif currentState == Enum.HumanoidStateType.Landed then -- 7
			queueAnimation(animState, "Standing", LANDING_TRANSITION_TIME)
		elseif currentState == Enum.HumanoidStateType.PlatformStanding then -- 14
			queueAnimation(animState, "PlatformStanding")
		elseif currentState == Enum.HumanoidStateType.Dead then -- 15
			queueAnimation(animState, "Dead")
		elseif currentState == Enum.HumanoidStateType.Flying then -- 6
			queueAnimation(animState, "Flying")
		else
			warn("Unhandled humanoid state: ", currentState)
		end

		animState.previousHumanoidState = currentState
		animState.previousHumanoidSpeed = speed
	end

	--------------------------------------------------------------------------------
	--- Emotes
	--------------------------------------------------------------------------------

	-- setup emote chat hook
	game:GetService("Players"):GetPlayerFromCharacter(character).Chatted:Connect(function(msg)
		if chatState.pose ~= "Standing" and not chatState.currentlyPlayingEmote then
			return
		end

		local emote = ""
		if msg:sub(1, 3) == "/e " then
			emote = msg:sub(4)
		elseif msg:sub(1, 7) == "/emote " then
			emote = msg:sub(8)
		end

		if DEFAULT_EMOTE_LOOPING_OVERRIDES[emote] ~= nil then
			debugPrint(time(), "Trying to play emote from chat: ", emote)
			-- Runs outside stepAnimate — write to attributes directly so next GetAttributes() picks them up
			humanoidRootPart:SetAttribute("queuedPose",               "EMOTE_"..emote)
			humanoidRootPart:SetAttribute("queuedTransitionTime",     EMOTE_TRANSITION_TIME)
			humanoidRootPart:SetAttribute("queuedAnimSpeed",          0)
			humanoidRootPart:SetAttribute("currentAnimTimeRemaining", 0)
		elseif emote ~= "" then
			warn("Did not find emote matching chat command: ", emote)
		end
		-- No support for custom emotes yet.
	end)

	------------------------------------------------------------------------------------------------------------
	--- Finally, bind an update step to the simulation
	------------------------------------------------------------------------------------------------------------

	local function stepAnimate(deltaTime)
		-- One GetAttributes call gets a fresh copy of all state
		local attrs = humanoidRootPart:GetAttributes()
		local origAttrs = table.clone(attrs)

		-- Process (pass attrs as the animState parameter to all sub-functions)
		processHumanoidStateChanges(attrs)

		debugPrint("time: ", time(), ", Calling stepAnimate, currentPose = ", attrs.pose, ", next pose:", attrs.queuedPose)
		--printAnimState(attrs)
		--printPlayingAnimationTracks()

		if attrs.currentAnimTimeRemaining > 0 then
			attrs.currentAnimTimeRemaining -= deltaTime
			attrs.currentAnimTimeRemaining = math.max(attrs.currentAnimTimeRemaining, 0)
		elseif attrs.queuedPose ~= "" then
			local queuedPose = attrs.queuedPose
			if queuedPose == "Dead" or queuedPose == "GettingUp" or queuedPose == "FallingDown" or queuedPose == "PlatformStanding" or queuedPose == "Flying" then
				stopOtherNontoolAnimations({}, 0, false)
				attrs.pose = queuedPose
				attrs.queuedPose = ""
				attrs.currentAnimId = -1
				attrs.currentAnimTimeRemaining = 0
				attrs.currentlyPlayingEmote = false
			else
				transitionToQueuedAnimation(attrs)
			end
		end

		updateToolAnimations(deltaTime, attrs)

		-- Sync the 2 fields chatState needs for the Chatted handler's next read
		chatState.pose = attrs.pose
		chatState.currentlyPlayingEmote = attrs.currentlyPlayingEmote

		-- Write back only attributes whose value actually changed this frame
		for k, orig in pairs(origAttrs) do
			if attrs[k] ~= orig then
				humanoidRootPart:SetAttribute(k, attrs[k])
			end
		end
	end

	local RunService = game:GetService("RunService")
	RunService:BindToSimulation(function(deltaTime)
		-- This code runs 60 times per second
		stepAnimate(deltaTime)
	end,  Enum.StepFrequency.Hz60)

	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------

	debugPrint("done with module.setupAnimation")
end

return module
