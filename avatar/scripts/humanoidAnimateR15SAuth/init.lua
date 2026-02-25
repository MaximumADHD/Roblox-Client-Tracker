local module = {}

local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local animator = if humanoid then humanoid:FindFirstChildOfClass("Animator") else nil
if not animator then
	warn("Animator not found!")
	return module
end

--------------------------------------------------------------------------------
-- ATTRIBUTE BINDING
--------------------------------------------------------------------------------

function module.bindToAttributes(instance:Instance)
	local t = {}
	setmetatable(t, {
		__index = function(tbl, key)
			return instance:GetAttribute(key)
		end,
		__newindex = function(tbl, key, value)
			instance:SetAttribute(key, value)
		end,
	})
	return t
end

-- State stored in HumanoidRootPart/Humanoid for Server Authority rollback:
export type AnimationStateAttributesType = {
	-- Previous humanoid state to check for changes:
	previousHumanoidState: Enum.HumanoidStateType,
	previousHumanoidSpeed: number,
	-- What "pose"/animation am I currently doing?
	pose: string,
	currentAnimId: string, -- store ID instead of track handle
	-- Time until next pose/animation:
	currentAnimTimeRemaining: number,
	-- Details for the next animation I want to transition to:
	queuedPose: string,
	queuedAnimSpeed: number,
	queuedTransitionTime: number,
	-- Am I playing an emote?
	currentlyPlayingEmote: boolean,
	-- Properties for tracking tool animations (they run in parallel to the main pose animations):
	previousToolState: string,
	activeToolAnimationId: string,
	queuedToolAnimName: string,
	toolAnimationTimeRemaining: number
}

---------------------------------------------------------
-- FOR DEBUGGING:
---------------------------------------------------------

local isDebugPrinting = false
local function debugPrint(...)
	if (isDebugPrinting) then
		print(...)
	end
end

local function printAnimState(animState)
	print('time = ', time(), ' AnimState: pose=', animState.pose, ', currentAnimId=', animState.currentAnimId, ', currentAnimTimeRemaining=', animState.currentAnimTimeRemaining,
		', queuedPose=', animState.queuedPose, ', queuedAnimSpeed=', animState.queuedAnimSpeed,
		', queuedTransitionTime=', animState.queuedTransitionTime, ', currentlyPlayingEmote=', tostring(animState.currentlyPlayingEmote))
end

local function printPlayingAnimationTracks()
	local animTracks = animator:GetPlayingAnimationTracks()

	-- Loop through each ID you are looking for
	if (#animTracks == 1) then
		local track = animTracks[1]
		print('Active animation track1: ', track.Name, track.Animation.AnimationId, track.IsPlaying, track.Looped, track.TimePosition, track.Speed, track.WeightCurrent, track.WeightTarget)
	else
		for i, track in ipairs(animTracks) do
			print('Active animation track: ', i, track.Name, track.Animation.AnimationId, track.IsPlaying, track.Looped, track.TimePosition, track.Speed, track.WeightCurrent, track.WeightTarget)
		end
	end
	return
end

local function isAnimationIdPlaying(animationId, animTracks)
	if not animTracks then
		animTracks = animator:GetPlayingAnimationTracks()
	end
	for _,animTrack in ipairs(animTracks) do
		if animTrack.Animation.AnimationId == animationId then
			return true
		end
	end
	return false
end

local disableRunWalkBlend = false

--------------------------------------------------------------------------------
-- CONSTANTS
--------------------------------------------------------------------------------

local DEFAULT_TRANSITION_TIME = 0.1
local RUNNING_TRANSITION_TIME = 0.2
local JUMP_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local FALL_TRANSITION_TIME = 0.2
local LANDING_TRANSITION_TIME = 0.2
local CLIMB_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local EMOTE_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local TOOL_TRANSITION_TIME = DEFAULT_TRANSITION_TIME
local SWIM_TRANSITION_TIME = 0.4
local SIT_TRANSITION_TIME = 0.5

local JUMP_ANIM_DURATION = 0.31
local TOOL_ANIM_DURATION = 0.3

local HUMANOID_HIP_HEIGHT = 2

local DEFAULT_ANIMS = {
	idle  	  = {{ id = "http://www.roblox.com/asset/?id=507766388", weight = 9 },
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
	dance 	  = {{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 },
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
-- This will get updated if you add a custom run animation under the Animate module:
local fixedRunAnimId = DEFAULT_ANIMS["run"][1].id
assert(#(DEFAULT_ANIMS["run"]) == 1)

local EMOTES = {
	wave = { looping = false },
	point = { looping = false },
	dance = { looping = true },
	dance2 = { looping = true },
	dance3 = { looping = true },
	laugh = { looping = false },
	cheer = { looping = false },
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
-- This will get updated later in this script if you add custom tool animations under the Animate module:
local toolAnimIds = {}
for _, animName in pairs(TOOL_ANIM_MAP) do
	for _, variant in pairs(DEFAULT_ANIMS[animName]) do
		toolAnimIds[variant.id] = true
	end
end

--------------------------------------------------------------------------------
-- HELPER FUNCTIONS
--------------------------------------------------------------------------------

local function stopToolAnimations(toolAnimIds, transitionTime, destroyTracks)
	transitionTime = transitionTime or 0
	debugPrint('[AnimRepl][Lua] stopToolAnimations: transitionTime=', transitionTime)
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		if toolAnimIds[track.Animation.AnimationId] == nil then
			continue
		end
		debugPrint('[AnimRepl][Lua] Stop: name=', track.Name, ' id=', track.Animation.AnimationId, ' transitionTime=', transitionTime)
		track:Stop(transitionTime)
		if destroyTracks then
			track:Destroy()
		end
	end
end

-- TODO track names or IDs?
local function stopNontoolAnimations(toolAnimIds, transitionTime, destroyTracks)
	transitionTime = transitionTime or 0
	debugPrint('[AnimRepl][Lua] stopNontoolAnimations: transitionTime=', transitionTime)
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		if toolAnimIds[track.Animation.AnimationId] then
			continue
		end
		debugPrint('[AnimRepl][Lua] Stop: name=', track.Name, ' id=', track.Animation.AnimationId, ' transitionTime=', transitionTime)
		track:Stop(transitionTime)
		if destroyTracks then
			track:Destroy()
		end
	end
end

local function stopAllAnimations(transitionTime, destroyTracks)
	transitionTime = transitionTime or 0
	debugPrint('[AnimRepl][Lua] stopAllAnimations: transitionTime=', transitionTime)
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		debugPrint('[AnimRepl][Lua] Stop: name=', track.Name, ' id=', track.Animation.AnimationId, ' transitionTime=', transitionTime)
		track:Stop(transitionTime)
		if destroyTracks then
			track:Destroy()
		end
	end
end

-- TODO these should be a C++ function
-- These three functions ASSUME that you cannot have more than one track of the same animationId playing at the same time
local function getPlayingAnimationTrackFromID(animationId, animTracks)
	if not animTracks then
		animTracks = animator:GetPlayingAnimationTracks()
	end
	for _,animTrack in ipairs(animTracks) do
		if animTrack.IsPlaying and animTrack.Animation.AnimationId == animationId then
			return animTrack
		end
	end
	return nil
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
			if track.IsPlaying and track.Animation.AnimationId == id then
				table.insert(foundTracks, track)
				-- Break the inner loop at the first match per ID
				break
			end
		end
	end
	return foundTracks
end


--------------------------------------------------------------------------------
-- Run/walk blend helpers
--------------------------------------------------------------------------------

local function getHeightScale()
	if not humanoid.AutomaticScalingEnabled then
		-- When auto scaling is not enabled, the rig scale stands in for
		-- a computed scale.
		return character:GetScale()
	end

	local scale = humanoid.HipHeight / HUMANOID_HIP_HEIGHT
	local AnimationSpeedDampeningObject = script:FindFirstChild("ScaleDampeningPercent")
	if AnimationSpeedDampeningObject ~= nil then
		scale = 1 + (humanoid.HipHeight - HUMANOID_HIP_HEIGHT) * AnimationSpeedDampeningObject.Value / HUMANOID_HIP_HEIGHT
	end
	return scale
end

local function rootMotionCompensation(speed)
	debugPrint('calling rootMotionCompensation with speed = ', speed)
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
	debugPrint('Setting run speed to ', speed)

	local walkAnimationWeight, runAnimationWeight, timeWarp = getRunWalkBlendWeights(speed)
	debugPrint('Adjusting weights to be walk=', walkAnimationWeight, ', run=', runAnimationWeight, ', timeWarp=', timeWarp)

	if walkAnimTrack then
		walkAnimTrack:AdjustWeight(walkAnimationWeight)
		walkAnimTrack:AdjustSpeed(timeWarp)
	else
		warn('Trying to set nil walk track!')
	end
	if runAnimTrack then
		runAnimTrack:AdjustWeight(runAnimationWeight)
		runAnimTrack:AdjustSpeed(timeWarp)
	else
		warn('I tried to get the run animation track for ', fixedRunAnimId, ' but it was nil')
	end
end

--------------------------------------------------------------------------------
-- HELPER FUNCTIONS FOR CONFIGURING ANIMATION SET
--------------------------------------------------------------------------------

local animTable = {} -- TODO does this have to be stored?
local PreloadedAnims = {}

local function rollAnimation(animName)
	-- TODO quick hack for now to make it deterministic:
	return 1
	-- TODO make this deterministic
	--debugPrint('calling rollAnimation with animName = ', animName)
	--local roll = math.random(1, animTable[animName].totalWeight)
	--local origRoll = roll
	--local idx = 1
	--while (roll > animTable[animName][idx].weight) do
	--	roll = roll - animTable[animName][idx].weight
	--	idx = idx + 1
	--end
	--return idx
end

-- TODO pass in humanoid?
local function configureAnimationSet(name, fileList)
	if (animTable[name] ~= nil) then
		for _, connection in pairs(animTable[name].connections) do
			connection:disconnect()
		end
	end
	animTable[name] = {}
	animTable[name].count = 0
	animTable[name].totalWeight = 0	
	animTable[name].connections = {}

	local allowCustomAnimations = true

	local success, msg = pcall(function() allowCustomAnimations = game:GetService("StarterPlayer").AllowCustomAnimations end)
	if not success then
		allowCustomAnimations = true
	end

	-- check for config values
	local config = script:FindFirstChild(name)
	if (allowCustomAnimations and config ~= nil) then
		table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
		table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))

		local idx = 0
		for _, childPart in pairs(config:GetChildren()) do
			if (childPart:IsA("Animation")) then
				local newWeight = 1
				local weightObject = childPart:FindFirstChild("Weight")
				if (weightObject ~= nil) then
					newWeight = weightObject.Value
				end
				animTable[name].count = animTable[name].count + 1
				idx = animTable[name].count
				animTable[name][idx] = {}
				animTable[name][idx].anim = childPart
				animTable[name][idx].weight = newWeight
				animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
				table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
				table.insert(animTable[name].connections, childPart.ChildAdded:connect(function(property) configureAnimationSet(name, fileList) end))
				table.insert(animTable[name].connections, childPart.ChildRemoved:connect(function(property) configureAnimationSet(name, fileList) end))
			end
		end
	end

	-- fallback to defaults
	if (animTable[name].count <= 0) then
		for idx, anim in pairs(fileList) do
			animTable[name][idx] = {}
			animTable[name][idx].anim = Instance.new("Animation")
			animTable[name][idx].anim.Name = name
			animTable[name][idx].anim.AnimationId = anim.id
			animTable[name][idx].weight = anim.weight
			animTable[name].count = animTable[name].count + 1
			animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
		end
	end

	-- preload anims
	for i, animType in pairs(animTable) do
		for idx = 1, animType.count, 1 do
			local anim = animType[idx].anim
			local animationId = anim.AnimationId

			-- if it's a tool anim, update toolAnimIds list:
			if (TOOL_ANIM_NAMES[anim.Name]) then
				toolAnimIds[animationId] = true
			end

			if PreloadedAnims[animationId] == nil then
				humanoid:LoadAnimation(anim)
				PreloadedAnims[animationId] = true
			end				
		end
	end
end

-- Setup animation objects
local function scriptChildModified(child)
	local fileList = DEFAULT_ANIMS[child.Name]
	if (fileList ~= nil) then
		configureAnimationSet(child.Name, fileList)
	end	
end

-- Configure set of valid animations:
script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)
for name, fileList in pairs(DEFAULT_ANIMS) do
	configureAnimationSet(name, fileList)
end	

fixedRunAnimId = animTable["run"][1].anim.AnimationId
assert(animTable["run"].count == 1)

--------------------------------------------------------------------------------
-- HELPER FUNCTIONS FOR TOOL ANIMATIONS
--------------------------------------------------------------------------------

local function transitionToNextToolAnimation(animState, toolAnimName)
	local idx = rollAnimation(toolAnimName)
	local anim = animTable[toolAnimName][idx].anim
	local newAnimId = anim.AnimationId

	-- this logic differs from the standard transition logic because we want to restart the tool animation even if we are already playing it
	local animTrack = getPlayingAnimationTrackFromID(animState.activeToolAnimationId)
	if (not animTrack) then
		animState.activeToolAnimationId = ""
	end

	if (animState.activeToolAnimationId ~= newAnimId) then
		local transitionTime = if toolAnimName == "toolnone" then TOOL_TRANSITION_TIME else 0

		-- Need to load a new animation
		stopToolAnimations(toolAnimIds, transitionTime)

		animTrack = animator:LoadAnimation(anim)

		animTrack.Priority = if toolAnimName == "toolnone" then Enum.AnimationPriority.Idle else Enum.AnimationPriority.Action
		debugPrint('playing new tool animation: ', toolAnimName, ' with id ', newAnimId, ' with transition time ', animState.queuedTransitionTime, ' and priority ', animTrack.Priority)
		animTrack:Play(transitionTime)
	end

	animState.activeToolAnimationId = newAnimId
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
			debugPrint('Tool state changed from ', animState.previousToolState, ' to ', handleState)

			animState.toolAnimationTimeRemaining = 0
			animState.queuedToolAnimName = TOOL_ANIM_MAP[handleState]

			handle:SetAttribute("State", "")
		end

		if animState.toolAnimationTimeRemaining > 0 then
			animState.toolAnimationTimeRemaining -= deltaTime
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
		stopToolAnimations(toolAnimIds)
		animState.activeToolAnimationId = ""
		animState.toolAnimationTimeRemaining = 0
	end
end

--------------------------------------------------------------------------------
-- HELPER FUNCTIONS FOR EMOTES
--------------------------------------------------------------------------------

-- TODO

------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

local function convertPoseToAnimationName(pose)
	if pose == "Standing" then
		return "idle"
	elseif pose == "Running" then
		return "walk"
	elseif pose == "Jumping" then
		return "jump"
	elseif pose == "FreeFall" then
		return "fall"
	elseif pose == "Climbing" then
		return "climb"
	elseif pose == "Seated" then
		return "sit"
	elseif pose == "Swimming" then
		return "swim"
	elseif pose == "SwimIdle" then
		return "swimidle"
	else
		warn('INVALID POSE!')
		return nil
	end
end

local function transitionToQueuedAnimation(animState)
	local newAnimName = convertPoseToAnimationName(animState.queuedPose)
	debugPrint('trying to transition to queued animation ', newAnimName)
	local idx = rollAnimation(newAnimName)
	local anim = animTable[newAnimName][idx].anim
	local newAnimId = anim.AnimationId

	local animTrack = getPlayingAnimationTrackFromID(animState.currentAnimId)
	if (not animTrack) then -- the track isnt playing anymore
		animState.currentAnimId = ""
	end

	local runTrack = getPlayingAnimationTrackFromID(fixedRunAnimId)
	if (animState.queuedPose == "Running" and not runTrack and not disableRunWalkBlend) then
		animState.currentAnimId = ""
	end

	-- Load in new animation or find the current one:
	if animState.currentAnimId ~= newAnimId then
		-- TODO only stop the main track..?
		stopNontoolAnimations(toolAnimIds, animState.queuedTransitionTime)

		debugPrint('[AnimRepl][Lua] LoadAnimation: name=', newAnimName, ' id=', newAnimId, ' pose=', animState.queuedPose)

		animTrack = animator:LoadAnimation(anim)
		animTrack.Priority = Enum.AnimationPriority.Core -- TODO consider other priorities
		if (animState.queuedPose == "Jumping") then
			animState.currentAnimTimeRemaining = animTrack.Length
		end

		debugPrint('[AnimRepl][Lua] Play: name=', newAnimName, ' id=', newAnimId, ' transitionTime=', animState.queuedTransitionTime, ' speed=', animTrack.Speed)
		animTrack:Play(animState.queuedTransitionTime)

		if (animState.queuedPose == "Jumping") then
			animState.currentAnimTimeRemaining = JUMP_ANIM_DURATION
		end

		animState.currentAnimId = newAnimId

		--------------------------------------------------------------------------------
		-- SPECIAL LOGIC FOR WALK-RUN BLEND
		--------------------------------------------------------------------------------
		if (animState.queuedPose == "Running" and not disableRunWalkBlend) then
			local runAnimName = "run"
			local idx = rollAnimation(runAnimName)
			local runAnim = animTable[runAnimName][idx].anim
			debugPrint('[AnimRepl][Lua] LoadAnimation (run blend): id=', runAnim.AnimationId)
			runTrack = animator:LoadAnimation(runAnim)
			runTrack.Priority = Enum.AnimationPriority.Core -- TODO consider other priorities

			debugPrint('[AnimRepl][Lua] Play (run blend): id=', runAnim.AnimationId, ' transitionTime=', animState.queuedTransitionTime)
			runTrack:Play(animState.queuedTransitionTime)
		end
		--------------------------------------------------------------------------------
		--------------------------------------------------------------------------------
	end

	animState.pose = animState.queuedPose
	if (animState.queuedAnimSpeed > 0) then
		if (animState.pose == "Running") then
			if (not disableRunWalkBlend) then
				setRunSpeed(animState.queuedAnimSpeed, animTrack, runTrack)
			end
		elseif (animState.queuedAnimSpeed ~= animTrack.Speed) then
			animTrack:AdjustSpeed(animState.queuedAnimSpeed)
		end
		animState.currentAnimTimeRemaining = animTrack.Length / animState.queuedAnimSpeed
	end

	animState.queuedPose = ""
	animState.queuedAnimSpeed = 0
	animState.queuedTransitionTime = 0
end

function module.setupAnimation()
	local animState = module.bindToAttributes(humanoidRootPart)

	stopAllAnimations(0, true)

	-- Initialize state variables
	animState.previousHumanoidState = humanoid:GetState()
	animState.previousHumanoidSpeed = 0
	animState.pose = "Standing"
	animState.currentAnimId = ""
	animState.currentAnimTimeRemaining = 0
	animState.queuedPose = ""
	animState.queuedAnimSpeed = 0 -- TODO maybe make -1 mean default speed
	animState.queuedTransitionTime = 0
	animState.previousToolState = ""
	animState.activeToolAnimationId = ""
	animState.queuedToolAnimName = ""
	animState.toolAnimationTimeRemaining = 0
	animState.currentlyPlayingEmote = false

	--------------------------------------------------------------------------------
	-- Humanoid state transition functions
	--------------------------------------------------------------------------------

	-- TODO is it okay for these to change outside of BindToSimulation?
	local function queueAnimation(animState, nextPose, transitionTime, animSpeed, timeToNextAnimation)
		animState.queuedPose = nextPose
		animState.queuedTransitionTime = transitionTime or 0
		animState.queuedAnimSpeed = animSpeed or 0
		if timeToNextAnimation then
			animState.currentAnimTimeRemaining = timeToNextAnimation
		else
			animState.currentAnimTimeRemaining = 0
		end
	end

	local function onRunning(animState, speed)
		debugPrint("onRunning, speed: " .. tostring(speed))
		local heightScale = getHeightScale()

		local movedDuringEmote = animState.currentlyPlayingEmote and humanoid.MoveDirection == Vector3.new(0, 0, 0)
		local speedThreshold = movedDuringEmote and (humanoid.WalkSpeed / heightScale) or 0.75
		if speed > speedThreshold * heightScale then
			local scale = 16.0
			queueAnimation(animState, "Running", RUNNING_TRANSITION_TIME, speed / scale)
		else
			if not animState.currentlyPlayingEmote then
				queueAnimation(animState, "Standing", RUNNING_TRANSITION_TIME)
			end
		end
	end

	local function onClimbing(animState, speed)
		local heightScale = getHeightScale()
		speed /= heightScale
		local CLIMBING_SCALE = 5.0
		queueAnimation(animState, "Climbing", CLIMB_TRANSITION_TIME, speed / CLIMBING_SCALE)
	end

	local function onFreeFall(animState)
		if animState.pose == "Jumping" then
			queueAnimation(animState, "FreeFall", FALL_TRANSITION_TIME, nil, animState.currentAnimTimeRemaining)
		elseif animState.pose ~= "FreeFall" then
			queueAnimation(animState, "FreeFall", FALL_TRANSITION_TIME)
		end
	end

	-- TODO for some reason this is still a little wonky.
	local function onSwimming(animState, speed)
		debugPrint("onSwimming, speed: " .. tostring(speed))
		local heightScale = getHeightScale()
		speed /= heightScale
		if speed > 1.00 then
			local SWIMMING_SCALE = 10.0
			queueAnimation(animState, "Swimming", SWIM_TRANSITION_TIME, speed / SWIMMING_SCALE)
		else
			queueAnimation(animState, "SwimIdle", SWIM_TRANSITION_TIME)
		end
	end

	local function processHumanoidStateChanges(animState)
		local currentState = humanoid:GetState()

		local speed = 0
		local previousSpeed = 0

		-- We'll do a speed check for states with speed:
		if currentState == Enum.HumanoidStateType.Running or
			currentState == Enum.HumanoidStateType.Climbing or
			currentState == Enum.HumanoidStateType.Swimming then
			speed = humanoidRootPart.AssemblyLinearVelocity.Magnitude
			previousSpeed = animState.previousHumanoidSpeed
		end

		-- TODO fuzzy check on speed?
		if currentState == animState.previousHumanoidState and speed == previousSpeed then
			return -- nothing to do, nothing has changed.
		end

		debugPrint('[AnimRepl][Lua] HumanoidState changed: ', animState.previousHumanoidState, ' -> ', currentState, ' speed=', speed)

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
			-- TODO this wasn't there before, do we want this?
			queueAnimation(animState, "Flying")
		else
			warn('Unhandled humanoid state: ', currentState)
		end

		animState.previousHumanoidState = currentState
		animState.previousHumanoidSpeed = humanoidRootPart.AssemblyLinearVelocity.Magnitude
	end


	------------------------------------------------------------------------------------------------------------
	--- Finally, bind an update step to the simulation
	------------------------------------------------------------------------------------------------------------

	local function stepAnimate(deltaTime)
		-- TODO for optimization:
		-- 		Minimize calls to GetAttribute by fetching attributes once at beginning and setting them once at the end?
		processHumanoidStateChanges(animState)

		debugPrint('time: ', time(), ', Calling stepAnimate, currentPose = ', animState.pose, ', next pose:', animState.queuedPose)
		--printAnimState(animState)
		--printPlayingAnimationTracks()

		if animState.currentAnimTimeRemaining > 0 then
			animState.currentAnimTimeRemaining -= deltaTime
			-- Not time to make a change yet
			--return
		elseif animState.queuedPose ~= "" then
			-- Nothing to do
			if (animState.queuedPose == "Dead" or animState.queuedPose == "GettingUp" or animState.queuedPose == "FallingDown" or animState.queuedPose == "PlatformStanding" or animState.queuedPose == "Flying") then
				stopNontoolAnimations(toolAnimIds, 0, false)
			else
				transitionToQueuedAnimation(animState)
			end
		end

		-- TODO logic for emojis

		updateToolAnimations(deltaTime, animState)
	end

	local RunService = game:GetService("RunService")
	RunService:BindToSimulation(function(deltaTime)
		-- This code runs 60 times per second
		stepAnimate(deltaTime)
	end)

	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------

	debugPrint('done with module.setupAnimation')
end

return module
