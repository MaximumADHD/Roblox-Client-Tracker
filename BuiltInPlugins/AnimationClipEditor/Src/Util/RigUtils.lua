--[[
	A set of utilities for interfacing between Motor6D Rigs and the AnimationClip editor.
]]

local FFlagStudioAnimEditorFocusRig = game:DefineFastFlag("StudioAnimEditorFocusRig", false)
local FFlagStudioFixAnimEditorDescendants = game:DefineFastFlag("StudioFixAnimEditorDescendants", false)

local DEFAULT_TOLERANCE = 0.0001

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local buildHierarchy = require(Plugin.Src.Util.buildHierarchy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)

local Workspace = game:GetService("Workspace")

local Constants = require(Plugin.Src.Util.Constants)

local RigUtils = {}

-- Get the rig descendants, ignoring the AnimSaves folder.
-- If we go into AnimSaves, we go through all animations, which
-- would take forever if the animations are big!
local function getDescendants(descendants, model)
	if not (model:IsA("Model") and model.Name == "AnimSaves") then
		for _, ch in ipairs(model:GetChildren()) do
			table.insert(descendants, ch)
			getDescendants(descendants, ch)
		end
	end
	return descendants
end

-- Returns a list of every Motor6D in the rig.
function RigUtils.getMotors(rig)
	local motors = {}

	local descendants
	if FFlagStudioFixAnimEditorDescendants then
		descendants = getDescendants({}, rig)
	else
		descendants = rig:GetDescendants()
	end

	for _, child in ipairs(descendants) do
		if child:IsA("Motor6D") then
			table.insert(motors, child)
		end
	end
	return motors
end

local function getTemporaryConstraints()
	return Workspace:FindFirstChild(Constants.TEMPORARY_CONSTRAINTS)
end

local function usingTemporaryConstraints()
	return getTemporaryConstraints() ~= nil
end

local function getConstraints(rig)
	local constraints = {}

	local target = getTemporaryConstraints() or rig
	local descendants
	if FFlagStudioFixAnimEditorDescendants then
		descendants = getDescendants({}, target)
	else
		descendants = target:GetDescendants()
	end

	for _, child in ipairs(descendants) do
		if child:IsA("BallSocketConstraint") or child:IsA("HingeConstraint") then
			table.insert(constraints, child)
		end
	end
	return constraints
end

function RigUtils.getAnimationController(rig)
	return rig:FindFirstChildOfClass("Humanoid") or rig:FindFirstChildOfClass("AnimationController")
end

-- Returns a rig's Animator, or creates one if it does not exist.
local function getAnimator(rig)
	local animationController = RigUtils.getAnimationController(rig)
	local animator = animationController:FindFirstChildOfClass("Animator")
	if animator then
		return animator
	else
		return Instance.new("Animator", animationController)
	end
end

-- Given a rig, finds the root-most part of the rig.
function RigUtils.findRootPart(rig)
	for _, child in ipairs(rig:GetChildren()) do
		if child:IsA("BasePart") then
			local root = child:GetRootPart()
			if root then
				return root
			end
		end
	end
	if rig.PrimaryPart then
		return rig.PrimaryPart
	else
		return rig:FindFirstChild("HumanoidRootPart")
	end
end

local function checkForCircularRig(motors)
	local traversed = {}
	for part1, motor in pairs(motors) do
		local part0 = motor.Part0
		if part0 and part1 and part0 == part1 then
			return true
		end
		while part0 ~= nil and part0 ~= game.Workspace do
			local connectedMotor = motors[part0]
			if connectedMotor then
				part0 = connectedMotor.Part0
				if not traversed[connectedMotor] then
					traversed[connectedMotor] = {}
				else
					return true
				end
			else
				break
			end
		end
		traversed = {}
	end
	return false
end

function RigUtils.rigHasErrors(rig)
	local errorList = {}
	local motorsMap = {}
	local partsWithMultipleParents = {}
	local motorsWithMissingPart0 = {}
	local motorsWithMissingPart1 = {}
	local unanchoredPartExists = false

	local motors = RigUtils.getMotors(rig)
	local parts = RigUtils.getRigInfo(rig)

	for _, motor in pairs(motors) do
		local part0 = motor.Part0
		local part1 = motor.Part1
		if not part0 or (part0 and part0.Parent == nil) then
			table.insert(motorsWithMissingPart0, motor)
		end
		if not part1 or (part1 and part1.Parent == nil) then
			table.insert(motorsWithMissingPart1, motor)
		end
		if part0 and part1 and (not part0.Anchored or not part1.Anchored) then
			unanchoredPartExists = true
		end
		if part0 and part1 and rig:FindFirstChild(part0.Name, true) and rig:FindFirstChild(part1.Name, true) then
			if motorsMap[part1] then
				table.insert(partsWithMultipleParents, part1)
				--motorsMap = {}
				--break
			else
				motorsMap[part1] = motor
			end
		end
	end

	local nameCollision = false
	for _, part1 in ipairs(parts) do
		for _, part2 in ipairs(parts) do
			if part1 ~= part2 and part1.Name == part2.Name then
				table.insert(errorList, {
					ID = Constants.RIG_ERRORS.NameCollision,
				})
				nameCollision = true
				break
			end
			if nameCollision then
				break
			end
		end
	end

	if #motors == 0 then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.NoMotors,
		})
	end

	if not unanchoredPartExists then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.PartsAnchored,
		})
	end

	if #partsWithMultipleParents > 0 then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.MultipleParents,
			Data = partsWithMultipleParents,
		})
	end

	if #motorsWithMissingPart0 > 0 then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.MissingPart0,
			Data = motorsWithMissingPart0,
		})
	end

	if #motorsWithMissingPart1 > 0 then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.MissingPart1,
			Data = motorsWithMissingPart1,
		})
	end

	if checkForCircularRig(motorsMap) then
		table.insert(errorList, {
			ID = Constants.RIG_ERRORS.CircularRig,
		})
	end

	return #errorList > 0, errorList
end

function RigUtils.buildR15Constraints(rig)
	local _, motorMap = RigUtils.getRigInfo(rig)
	local constraints = {}
	for name, config in pairs(Constants.PartToConstraintConfigMap) do
		local props = {}
		props.Attachment0, props.Attachment1 = RigUtils.findMatchingAttachments(motorMap[name].Part0, motorMap[name].Part1)

		local constraintName = string.gsub(props.Attachment0.Name, "Attachment", "")

		if config.LowerAngle ~= nil then
			props.LowerAngle = config.LowerAngle
		end

		if config.TwistLimitsEnabled ~= nil then
			props.TwistLimitsEnabled = config.TwistLimitsEnabled
			props.TwistUpperAngle = config.TwistUpperAngle
			props.TwistLowerAngle = config.TwistLowerAngle
		end

		props.Restitution = config.Restitution
		props.LimitsEnabled = config.LimitsEnabled
		props.UpperAngle = config.UpperAngle

		props.Enabled = false

		constraints[constraintName] = {
			Type = config.Type,
			Props = props,
		}
	end
	return constraints
end

function RigUtils.canUseIK(rig)
	if not rig then
		return false, false
	end

	local _, motorMap, constraintsMap = RigUtils.getRigInfo(rig)
	if next(constraintsMap) ~= nil then
		return true, usingTemporaryConstraints()
	end

	for childPart, parentPart in pairs(Constants.R15links) do
		local motor = motorMap[childPart]
		if motor then
			if motor.Part0.Name ~= parentPart then
				return false, false
			end
		end
	end

	return true, true
end

function RigUtils.getPartByName(rig, name)
	local _, motorMap = RigUtils.getRigInfo(rig)
	local motor = motorMap[name]
	if motor then
		return motor.Part1
	end
end

function RigUtils.findMatchingAttachments(part0, part1)
	for _, child in ipairs(part0:GetChildren()) do
		if child:IsA("Attachment") then
			local other = part1:FindFirstChild(child.Name)
			if other then
				return child, other
			end
		end
	end
end

-- Given a rig, builds a hierarchy table that the Editor can use.
function RigUtils.buildRigHierarchy(rig)
	local rootPart = RigUtils.findRootPart(rig)
	local motors = RigUtils.getMotors(rig)
	assert(rootPart, "Rig is missing a root part.")

	local root = rootPart.Name
	return {
		[root] = buildHierarchy(root, function(partName)
			local children = {}
			for _, motor in ipairs(motors) do
				if motor.Part0.Name == partName then
					table.insert(children, motor.Part1.Name)
				end
			end
			return children
		end)
	}
end

local function getRigPose(motorData)
	local rigPose = {}
	for _, data in pairs(motorData) do
		rigPose[data.Part0] = data.Part0.CFrame
		rigPose[data.Part1] = data.Part1.CFrame
	end
	return rigPose
end

local function restoreMotor(data)
	local motor = Instance.new("Motor6D")
	motor.Name = data.Name
	motor.Part0 = data.Part0
	motor.Part1 = data.Part1
	motor.C0 = data.C0
	motor.C1 = data.C1
	motor.Parent = data.Parent
end

local function calculateTransformHelper(p0, p1, c0, c1)
	return c0:inverse() * p0:inverse() * p1 * c1
end

local function calculateTransform(data, ikPose)
	return calculateTransformHelper(ikPose[data.Part0], ikPose[data.Part1], data.C0, data.C1)
end

function RigUtils.getJointTransform(joint)
	return calculateTransformHelper(joint.Part0.CFrame, joint.Part1.CFrame, joint.C0, joint.C1)
end

local function restoreMotors(rig, ikPose, motorData, changedValues)
	local _, _, constraintMap = RigUtils.getRigInfo(rig)

	for part, data in pairs(motorData) do
		if constraintMap[part.Name] ~= nil then
			constraintMap[part.Name].Enabled = false
		end

		if part ~= RigUtils.findRootPart(rig) then
			part.Anchored = false
		end

		if data.Attachment0 then
			local attachment0 = part:FindFirstChild(data.Attachment0.Name)
			if attachment0 then
				attachment0.Axis = data.Attachment0.Axis
				attachment0.SecondaryAxis = data.Attachment0.SecondaryAxis
			end
		end

		if data.Attachment1 then
			local attachment1 = part:FindFirstChild(data.Attachment1.Name)
			if attachment1 then
				attachment1.Axis = data.Attachment1.Axis
				attachment1.SecondaryAxis = data.Attachment1.SecondaryAxis
			end
		end

		restoreMotor(data)

		changedValues[part.Name] = calculateTransform(data, ikPose)
	end
end

function RigUtils.ikDragEnd(rig, motorData)
	local changedValues = {}
	local ikPose = getRigPose(motorData)
	restoreMotors(rig, ikPose, motorData, changedValues)
	return changedValues
end

local function removeMotors(part, motor, motorData)
	if part and motor then
		motorData[part] = {
			Name = motor.Name,
			Parent = motor.Parent,
			Part0 = motor.Part0,
			Part1 = motor.Part1,
			C0 = motor.C0,
			C1 = motor.C1,
		}

		local previousCFrame = part.CFrame
		motor:Destroy()
		part.CFrame = previousCFrame
	end
end

local function getPartParent(motorMap, part)
	if motorMap then
		local motor = motorMap[part.Name]
		if motor then
			return motor.Part0
		end
	end
end

local function distanceFromRoot(motorMap, part)
	local currentPart = part
	local distance = -1
	while currentPart ~= nil do
		currentPart = getPartParent(motorMap, currentPart)
		distance = distance + 1
	end
	return distance
end

function RigUtils.pinForLimbMode(part, motorMap)
	local pinnedParts = {}

	local upperTorsoMotor = motorMap[Constants.R15_PARTS.UpperTorso]
	local lowerTorsoMotor = motorMap[Constants.R15_PARTS.LowerTorso]
	local leftFootMotor = motorMap[Constants.R15_PARTS.LeftFoot]
	local rightFootMotor = motorMap[Constants.R15_PARTS.RightFoot]

	if upperTorsoMotor and lowerTorsoMotor then
		if part ~= upperTorsoMotor.Part1 and part ~= lowerTorsoMotor.Part1 then
			pinnedParts[upperTorsoMotor.Part1] = true
			pinnedParts[lowerTorsoMotor.Part1] = true
		elseif leftFootMotor and rightFootMotor then
			pinnedParts[leftFootMotor.Part1] = true
			pinnedParts[rightFootMotor.Part1] = true
		end
	end

	return pinnedParts
end

function RigUtils.getPoseCFrames(rig)
	local cframes = {}
	local _, motorMap = RigUtils.getRigInfo(rig)
	for _, motor in pairs(motorMap) do
		cframes[motor.Part0.Name] = motor.Part0.CFrame
		cframes[motor.Part1.Name] = motor.Part1.CFrame
	end
	return cframes
end

function RigUtils.fixRigAttachments(constraintMap, startingPose, motorData)
	if not startingPose or startingPose == Roact.None then
		return
	end

	for _, constraint in pairs(constraintMap) do
		local part0 = constraint.Attachment0.Parent
		local part1 = constraint.Attachment1.Parent
		if constraint:IsA("BallSocketConstraint") and motorData[part0] and motorData[part1] then
			local nextConstraint
			for _, value in pairs(constraintMap) do
				if value.Attachment0.Parent == part1 then
					nextConstraint = value
				end
			end

			local direction
			if nextConstraint then
				local p0 = startingPose[nextConstraint.Attachment1.Parent.Name]
				local p1 = startingPose[part1.Name]
				direction = (p0.p - p1.p).Unit
			else
				local p0 = startingPose[part1.Name]
				local p1 = startingPose[part0.Name]
				direction = (p0.p - p1.p).Unit
			end

			motorData[part0]["Attachment0"] = {
				Axis = constraint.Attachment0.Axis,
				SecondaryAxis = constraint.Attachment0.SecondaryAxis,
				Name = constraint.Attachment0.Name,
			}

			motorData[part1]["Attachment1"] = {
				Axis = constraint.Attachment1.Axis,
				SecondaryAxis = constraint.Attachment1.SecondaryAxis,
				Name = constraint.Attachment1.Name,
			}

			constraint.Attachment0.Axis = direction
			constraint.Attachment1.Axis = direction
		end
	end
end

function RigUtils.ikDragStart(rig, part, limbMode, startingPose, pinnedParts)
	local visited = {}
	local priorityTable = {}
	local motorData = {}

	local _, motorMap, constraintMap = RigUtils.getRigInfo(rig)

	local function addChain(item)
		local distance = distanceFromRoot(motorMap, item)
		while distance >= 0 do
			if not visited[item] then
				priorityTable[#priorityTable + 1] = {
					Item = item,
					Priority = distance
				}
				visited[item] = true
			end

			item = getPartParent(motorMap, item)
			distance = distance - 1
		end
	end

	if limbMode then
		pinnedParts = RigUtils.pinForLimbMode(part, motorMap)
	end

	addChain(part)

	for pinnedPart, pinned in pairs(pinnedParts) do
		if pinned and pinnedPart.Name ~= part.Name then
			addChain(pinnedPart)
		end
	end

	table.sort(priorityTable, function(a, b) return a.Priority > b.Priority end)

	for i = 1, #priorityTable do
		local currentItem = priorityTable[i].Item
		removeMotors(currentItem, motorMap[currentItem.Name], motorData)
		if pinnedParts[currentItem] and currentItem.Name ~= part.Name then
			currentItem.Anchored = true
		end
	end

	RigUtils.fixRigAttachments(constraintMap, startingPose, motorData)

	for part in pairs(motorData) do
		local constraint = constraintMap[part.Name]
		if constraint then
			constraint.Enabled = true
		end
	end

	return motorData
end

-- Given a rig and a set of tracks, finds which parts are not used, but have
-- Motor6Ds which can be animated. Returns a list of tracks for these parts.
function RigUtils.getUnusedRigTracks(rig, tracks)
	local unusedTracks = {}
	local rootPart = RigUtils.findRootPart(rig)
	local parts, partNameToMotorMap = RigUtils.getRigInfo(rig)

	for _, part in ipairs(parts) do
		if partNameToMotorMap[part.Name] and part ~= rootPart then
			local used = false
			for _, track in ipairs(tracks) do
				if part.Name == track.Name then
					used = true
					break
				end
			end
			if not used then
				table.insert(unusedTracks, {
					Name = part.Name,
					Instance = "Root",
				})
			end
		end
	end

	table.sort(unusedTracks, function(first, second)
		return first.Name < second.Name
	end)
	return unusedTracks
end

-- Finds every kinematic part in the rig, and returns both a list of these parts,
-- and a table mapping part names to motors in the rig that control that part.
function RigUtils.getRigInfo(rig)
	local parts = {}
	local motors = RigUtils.getMotors(rig)
	local constraints = getConstraints(rig)

	local partNameToMotorMap = {}
	local partNameToConstraintMap = {}

	for _, child in ipairs(rig:GetChildren()) do
		if child:IsA("BasePart") then
			for _, motor in ipairs(motors) do
				if motor.Part1 == child then
					partNameToMotorMap[child.Name] = motor
					table.insert(parts, child)
					break
				end
			end
			for _, constraint in ipairs(constraints) do
				if constraint.Attachment1.Parent == child then
					partNameToConstraintMap[child.Name] = constraint
					break
				end
			end
		end
	end
	return parts, partNameToMotorMap, partNameToConstraintMap
end

-- For KeyframeSequence animations, traverse all poses and sub-poses for a given keyframe.
local function traversePoses(instance, func)
	local poses = instance:IsA("Keyframe") and instance:GetPoses()
		or instance:IsA("Pose") and instance:GetSubPoses()

	for _, pose in pairs(poses) do
		if pose:IsA("Pose") then
			func(pose)
			traversePoses(pose, func)
		end
	end
end

-- For KeyframeSequence animations, traverse all events for a given keyframe.
local function traverseKeyframeMarkers(instance, func)
	for _, child in pairs(instance:GetChildren()) do
		if child:IsA("KeyframeMarker") then
			func(child)
		end
	end
end

-- For KeyframeSequence animations, get a keyframe at a given time, or
-- create a new keyframe if one does not exist.
local function getKeyframeInstance(keyframeSequence, time)
	for _, keyframe in pairs(keyframeSequence:GetKeyframes()) do
		if math.abs(keyframe.Time - time) < 0.0001 then
			return keyframe
		end
	end
	local newKeyframe = Instance.new("Keyframe")
	newKeyframe.Time = time
	newKeyframe.Parent = keyframeSequence
	return newKeyframe
end

-- For KeyframeSequence animations, we have to make sure every pose has
-- a chain all the way back to the root part. This function
-- constructs the chain, making use of existing poses along the way
-- if they exist.
local function makePoseChain(keyframe, trackName, rig, trackData)
	local rootPart = RigUtils.findRootPart(rig)

	local poseInstance = keyframe:FindFirstChild(trackName, true)
	if poseInstance == nil then
		poseInstance = Instance.new("Pose")
		poseInstance.Name = trackName
	else
		poseInstance.Weight = 1
	end
	poseInstance.CFrame = trackData.Value
	poseInstance.EasingStyle = trackData.EasingStyle.Name
	poseInstance.EasingDirection = trackData.EasingDirection.Name

	local poseChain = poseInstance
	local currentPart = rig:FindFirstChild(trackName, true)
	if currentPart then
		repeat
			local connection = currentPart:FindFirstChildOfClass("Motor6D")
			if connection then
				currentPart = connection.Part0
				local parentPose = keyframe:FindFirstChild(currentPart.Name, true)
				if not parentPose then
					parentPose = Instance.new("Pose")
					parentPose.Name = currentPart.Name
					parentPose.Weight = 0
				end
				poseChain.Parent = parentPose
				poseChain = parentPose
			else
				currentPart = nil
			end
		until currentPart == nil or currentPart == rootPart or poseChain.Weight == 0
	end

	poseChain.Parent = keyframe
end

-- Exporting to KeyframeSequence animation requires a dummy rig so that we
-- can determine which parts are connected to other parts to build a pose chain.
function RigUtils.toRigAnimation(animationData, rig)
	assert(animationData ~= nil, "No data table was provided.")
	assert(rig ~= nil, "Exporting to KeyframeSequence requires a reference rig.")
	local metadata = animationData.Metadata
	local events = animationData.Events
	local namedKeyframes = events.NamedKeyframes
	local frameRate = metadata.FrameRate

	local keyframeSequence = Instance.new("KeyframeSequence")
	keyframeSequence.Name = metadata.Name
	keyframeSequence.Loop = metadata.Looping
	keyframeSequence.Priority = metadata.Priority
	local numPoses = 0
	local numEvents = 0

	-- Create poses
	local root = animationData.Instances.Root
	assert(root.Type == Constants.INSTANCE_TYPES.Rig, "Can only export Rig animations to KeyframeSequence.")
	local tracks = root.Tracks
	for trackName, track in pairs(tracks) do
		for _, keyframe in pairs(track.Keyframes) do
			local time = keyframe / frameRate
			local keyframeInstance = getKeyframeInstance(keyframeSequence, time)
			local trackData = track.Data[keyframe]
			makePoseChain(keyframeInstance, trackName, rig, trackData)

			-- Set keyframe name, if one exists
			if namedKeyframes[keyframe] then
				keyframeInstance.Name = namedKeyframes[keyframe]
			end

			numPoses = numPoses + 1
		end
	end

	-- Create events
	for _, frame in ipairs(events.Keyframes) do
		local data = events.Data[frame]
		for name, value in pairs(data) do
			local time = frame / frameRate
			local keyframeInstance = getKeyframeInstance(keyframeSequence, time)
			local marker = Instance.new("KeyframeMarker", keyframeInstance)
			marker.Name = name
			marker.Value = value

			numEvents = numEvents + 1
		end
	end

	local numKeyframes = #keyframeSequence:GetKeyframes()
	return keyframeSequence, numKeyframes, numPoses, numEvents
end

-- Importing a R15 animation from a KeyframeSequence and its children
function RigUtils.fromRigAnimation(keyframeSequence, frameRate, snapTolerance)
	assert(keyframeSequence ~= nil
		and typeof(keyframeSequence) == "Instance"
		and keyframeSequence.ClassName == "KeyframeSequence",
		"Expected a KeyframeSequence for the AnimationData."
	)
	assert(frameRate ~= nil, "Expected a frameRate for the AnimationData.")

	local keyframes = keyframeSequence:GetKeyframes()
	local length = 0
	local lastKeyframe
	local animationData = AnimationData.new(keyframeSequence.Name, frameRate, Constants.INSTANCE_TYPES.Rig)
	local numPoses = 0
	local numEvents = 0

	local tracks = animationData.Instances.Root.Tracks
	for _, keyframe in pairs(keyframes) do
		local time = keyframe.Time
		local frame = KeyframeUtils.snapToFrame(time * frameRate, snapTolerance or DEFAULT_TOLERANCE)

		-- Add keyframes at this frame
		traversePoses(keyframe, function(pose)
			local poseName = pose.Name
			if poseName ~= "HumanoidRootPart" and pose.Weight ~= 0 then
				if tracks[poseName] == nil then
					AnimationData.addTrack(tracks, poseName)
				end
				local track = tracks[poseName]
				AnimationData.addKeyframe(track, frame, pose.CFrame)
				AnimationData.setKeyframeData(track, frame, {
					EasingStyle = pose.EasingStyle,
					EasingDirection = pose.EasingDirection,
				})

				numPoses = numPoses + 1
			end
		end)

		-- Add events at this frame
		traverseKeyframeMarkers(keyframe, function(marker)
			AnimationData.addEvent(animationData.Events, frame,
				marker.Name, marker.Value)

			numEvents = numEvents + 1
		end)

		-- Adjust animation length to fit the last keyframe
		if time > length then
			lastKeyframe = keyframe
			length = math.max(length, keyframe.Time)
		end

		if keyframe.Name ~= Constants.DEFAULT_KEYFRAME_NAME then
			AnimationData.setKeyframeName(animationData, frame, keyframe.Name)
		end
	end

	-- If the last keyframe was empty and only there to determine length,
	-- we need to add an explicit keyframe at the end of the animation to
	-- preserve the correct length.
	local endFrame = KeyframeUtils.getNearestFrame(length * frameRate)
	if lastKeyframe and #lastKeyframe:GetChildren() == 0 then
		for _, track in pairs(tracks) do
			local lastFrame = track.Keyframes[#track.Keyframes]
			local lastValue = track.Data[lastFrame].Value
			AnimationData.addKeyframe(track, endFrame, lastValue)
		end
	end

	animationData.Metadata.EndFrame = endFrame
	animationData.Metadata.Priority = keyframeSequence.Priority
	animationData.Metadata.Looping = keyframeSequence.Loop
	animationData.Metadata.Name = keyframeSequence.Name

	local numKeyframes = #keyframeSequence:GetKeyframes()
	return animationData, numKeyframes, numPoses, numEvents
end

function RigUtils.stepRigAnimation(rig, instance, frame)
	local animator = getAnimator(rig)
	local parts, partsToMotors = RigUtils.getRigInfo(rig)

	for _, part in ipairs(parts) do
		local motor = partsToMotors[part.Name]
		local track = instance.Tracks[part.Name]
		if track then
			motor.Transform = KeyframeUtils:getValue(track, frame)
		else
			motor.Transform = CFrame.new()
		end
	end
	animator:StepAnimations(0)
end

function RigUtils.clearPose(rig)
	local animator = getAnimator(rig)
	local parts, partsToMotors = RigUtils.getRigInfo(rig)

	for _, part in ipairs(parts) do
		local motor = partsToMotors[part.Name]
		motor.Transform = CFrame.new()
	end
	animator:StepAnimations(0)
end

function RigUtils.getAnimSavesFolder(rig, create)
	local animSaves = rig:FindFirstChild("AnimSaves")
	if animSaves then
		return animSaves
	elseif create then
		local newAnimSaves = Instance.new("Model")
		newAnimSaves.Name = "AnimSaves"
		newAnimSaves.Parent = rig
		return newAnimSaves
	else
		return nil
	end
end

function RigUtils.getAnimSaves(rig)
	local animSaves = RigUtils.getAnimSavesFolder(rig)
	if animSaves then
		local children = animSaves:GetChildren()
		local animations = {}
		for _, child in ipairs(children) do
			if child:IsA("KeyframeSequence") then
				table.insert(animations, child)
			end
		end
		return animations
	else
		return {}
	end
end

function RigUtils.focusCamera(rig)
	assert(FFlagStudioAnimEditorFocusRig)
	local camera = Workspace:FindFirstChildOfClass("Camera")
	if camera then
		local extents = rig:GetExtentsSize()
		local width = math.max(extents.X, extents.Z)
		local rootPart = RigUtils.findRootPart(rig)
		local rootFrame = rootPart.CFrame

		local center = rootFrame.Position + rootFrame.LookVector * (width * 2)
		camera.CFrame = CFrame.new(center, rootFrame.Position)
		camera.Focus = rootFrame
	end
end

return RigUtils