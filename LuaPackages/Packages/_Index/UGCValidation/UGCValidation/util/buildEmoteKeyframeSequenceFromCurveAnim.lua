--[[
	Builds a KeyframeSequence directly from a CurveAnimation by traversing its folder
	hierarchy. Unlike buildEmoteKeyframeSequence (which only handles known R15 joints),
	this function reads ALL joints from the folder tree and preserves the parent-child
	hierarchy via nested Poses. This supports R15, R15+, and any custom rig.

	The CurveAnimation stores tracks in nested folders:
	  CurveAnimation
	    └── LowerTorso (Folder) ← root
	          ├── Position / Rotation (tracks)
	          ├── UpperTorso (Folder)
	          │     ├── Position / Rotation
	          │     ├── Head (Folder) ...
	          │     ├── LeftUpperArm (Folder)
	          │     │     ├── LeftShoulder_Bone (Folder) ← R15+ bone
	          │     │     └── ...
	          │     └── ...
	          └── ...

	The folder nesting IS the parent-child hierarchy. Nested Poses in the output
	KeyframeSequence mirror this so the C++ exporter can build correct glTF node
	hierarchy (parent rotation propagates to children automatically).
]]

local root = script.Parent.Parent
local CurveAnimationHierarchyUtils = require(root.util.CurveAnimationHierarchyUtils)

local Vector3CurveName = "Vector3Curve"
local EulerRotationCurveName = "EulerRotationCurve"
local RotationCurveName = "RotationCurve"
local FloatCurveName = "FloatCurve"

local function hasFloatCurveKeys(inst: Instance): boolean
	for _, child in inst:GetChildren() do
		if child:IsA(FloatCurveName) and #(child :: FloatCurve):GetKeys() > 0 then
			return true
		end
	end
	return false
end

local function rotationCurveHasKeys(rot: Instance): boolean
	if rot:IsA(EulerRotationCurveName) then
		return hasFloatCurveKeys(rot)
	elseif rot:IsA(RotationCurveName) then
		return (rot :: any):GetNumberOfKeys() > 0
	end
	return false
end

local function folderHasTracks(folder: Instance): boolean
	local pos = folder:FindFirstChild("Position")
	local rot = folder:FindFirstChild("Rotation")
	return (pos ~= nil and pos:IsA(Vector3CurveName) and hasFloatCurveKeys(pos))
		or (rot ~= nil and rotationCurveHasKeys(rot))
end

-- Returns true if this folder OR any descendant folder has animation tracks.
-- Used to skip R15+ bones that exist in the rig but were never animated
-- (e.g. Chest/Spine/Clavicle when an R15 emote is played on an R15+ body).
local function subtreeHasTracks(folder: Instance): boolean
	if folderHasTracks(folder) then
		return true
	end
	for _, child in folder:GetDescendants() do
		if child:IsA("Folder") and folderHasTracks(child) then
			return true
		end
	end
	return false
end

local function getFolderRoot(curveAnim: CurveAnimation): Folder?
	for _, child in curveAnim:GetChildren() do
		if child:IsA("Folder") then
			return child :: Folder
		end
	end
	return nil
end

local function getAnimLength(folder: Instance): number
	local maxTime = 0
	for _, desc in folder:GetDescendants() do
		if desc:IsA(FloatCurveName) then
			for _, key in (desc :: FloatCurve):GetKeys() do
				if key.Time > maxTime then
					maxTime = key.Time
				end
			end
		elseif desc:IsA(RotationCurveName) then
			local count = (desc :: any):GetNumberOfKeys()
			if count > 0 then
				local lastKey = (desc :: any):GetKeyAtIndex(count)
				if lastKey.Time > maxTime then
					maxTime = lastKey.Time
				end
			end
		end
	end
	return maxTime
end

local function samplePosition(folder: Instance, time: number): Vector3
	local pos = folder:FindFirstChild("Position")
	if not pos or not pos:IsA(Vector3CurveName) then
		return Vector3.zero
	end
	local x = pos:FindFirstChild("X")
	local y = pos:FindFirstChild("Y")
	local z = pos:FindFirstChild("Z")
	return Vector3.new(
		if x and x:IsA(FloatCurveName) then (x :: FloatCurve):GetValueAtTime(time) else 0,
		if y and y:IsA(FloatCurveName) then (y :: FloatCurve):GetValueAtTime(time) else 0,
		if z and z:IsA(FloatCurveName) then (z :: FloatCurve):GetValueAtTime(time) else 0
	)
end

local function sampleRotation(folder: Instance, time: number): CFrame
	local rot = folder:FindFirstChild("Rotation")
	if not rot then
		return CFrame.new()
	end
	if rot:IsA(EulerRotationCurveName) then
		return (rot :: EulerRotationCurve):GetRotationAtTime(time)
	elseif rot:IsA(RotationCurveName) then
		return (rot :: any):GetRotationAtTime(time)
	end
	return CFrame.new()
end

-- Recursively build a Pose (and nested child Poses) for a joint folder at a given time.
-- seenGlobal tracks all joint names added anywhere in the tree to prevent duplicates.
local function buildPoseAtTime(folder: Instance, time: number, seenGlobal: { [string]: boolean }): Pose
	local pose = Instance.new("Pose")
	pose.Name = folder.Name
	pose.Weight = 1

	local pos = samplePosition(folder, time)
	local rot = sampleRotation(folder, time)
	pose.CFrame = rot + pos

	-- Recursively add child joint folders as sub-poses.
	-- Only include non-standard joints if they have actual animation tracks somewhere
	-- in their subtree — this prevents R15+ structural bones (Chest, Spine, Clavicles)
	-- from appearing when an R15 emote is played on an R15+ body.
	local addedChildren: { [string]: boolean } = {}
	for _, child in folder:GetChildren() do
		if child:IsA("Folder") and not seenGlobal[child.Name] then
			local isStandardJoint = CurveAnimationHierarchyUtils.isBodyPartFolderNameValid(child.Name)
				or child.Name == CurveAnimationHierarchyUtils.humanoidRootPartName
			if isStandardJoint or subtreeHasTracks(child) then
				seenGlobal[child.Name] = true
				local childPose = buildPoseAtTime(child, time, seenGlobal)
				childPose.Parent = pose
				addedChildren[child.Name] = true
			end
		end
	end

	-- Add any standard body parts that should be children of this folder
	-- but are missing from the CurveAnimation (not animated).
	for _, childInfo in CurveAnimationHierarchyUtils.calculateAcceptableChildBodyPartFolders(folder.Name) do
		local childName = childInfo.Name
		if childName and not addedChildren[childName] and not seenGlobal[childName] then
			seenGlobal[childName] = true
			local missingPose = Instance.new("Pose")
			missingPose.Name = childName
			missingPose.CFrame = CFrame.new()
			missingPose.Weight = 1
			missingPose.Parent = pose
			addedChildren[childName] = true
		end
	end

	return pose
end

local function buildEmoteKeyframeSequenceFromCurveAnim(curveAnim: CurveAnimation, frameDelta: number?): KeyframeSequence
	-- Use 1/24 to match the C++ glTF exporter's k_frameRate (1/24s per frame).
	-- Sampling at 1/30 with k_frameRate=1/24 would make a 1s animation appear as 1.25s.
	local dt = frameDelta or (1 / 24)

	local animRoot = getFolderRoot(curveAnim)
	if not animRoot then
		warn("[buildEmoteKeyframeSequenceFromCurveAnim]: no folder root found in CurveAnimation")
		return Instance.new("KeyframeSequence")
	end

	local animLength = getAnimLength(animRoot)
	if animLength <= 0 then
		warn("[buildEmoteKeyframeSequenceFromCurveAnim]: animation has no keyframes")
		return Instance.new("KeyframeSequence")
	end

	local keyframeSequence = Instance.new("KeyframeSequence")
	keyframeSequence.Name = "EmoteAnimation"

	-- Sample the animation at regular intervals
	local time = 0
	while time <= animLength + dt * 0.5 do
		local t = math.min(time, animLength)
		local keyframe = Instance.new("Keyframe")
		keyframe.Time = t

		-- The root folder becomes the top-level Pose; its children are nested Poses.
		-- seenGlobal prevents any joint name appearing more than once in the hierarchy.
		local seenGlobal: { [string]: boolean } = { [animRoot.Name] = true }
		local rootPose = buildPoseAtTime(animRoot, t, seenGlobal)
		rootPose.Parent = keyframe
		keyframe.Parent = keyframeSequence

		time += dt
	end

	return keyframeSequence
end

return buildEmoteKeyframeSequenceFromCurveAnim
