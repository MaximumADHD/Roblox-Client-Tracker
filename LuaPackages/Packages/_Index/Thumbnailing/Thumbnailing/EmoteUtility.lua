--[[
	Utility function for generating thumbnail pictures based on emotes: we need to identify the
	optimal keyframe in the emote, then pose the character according to that keyframe.

	We keep and return a record of the joints we changed and what we changed them from so
	that you can undo a pose.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local InsertService = game:GetService("InsertService")
local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local FStringEmoteUtilityFallbackKeyframeSequenceAssetId =
	game:DefineFastString("EmoteUtilityFallbackKeyframeSequenceAssetId", "10921261056")
local FFlagEmoteUtilityDefaultMoodFromCharacter = game:DefineFastFlag("EmoteUtilityDefaultMoodFromCharacter", false)
local FFlagEmoteUtilityUseIdleAnimationFallback = game:DefineFastFlag("EmoteUtilityUseIdleAnimationFallback", false)
local FFlagEmoteUtilityReportPoseAnimationDownloadFailure =
	game:DefineFastFlag("EmoteUtilityReportPoseAnimationDownloadFailure", false)
local FFlagEmoteUtilityRetargetPoses = game:DefineFastFlag("EmoteUtilityRetargetPoses", false)
local FStringEmoteUtilityCanonicalR15RigUri =
	game:DefineFastString("EmoteUtilityCanonicalR15RigUri", "rbxasset://avatar/characterR15.rbxm")
local FFlagEmoteUtilityCurveRotationOnlyJoints = game:DefineFastFlag("EmoteUtilityCurveRotationOnlyJoints", false)

local module = {}

type AnimationAssetIdOrUrl = string | number

type AttachmentsByName = { [string]: Attachment }

type AnimatableJoint = AnimationConstraint | Motor6D
type SomeKindOfRotationCurve = EulerRotationCurve | RotationCurve

export type KeyframesForPose = {
	-- The asset id passed in.  This is an explicit choice by the user: they picked this emote to pose.
	-- If nil, it means they didn't pick an emote.
	originalAnimationAssetId: number?,
	-- The asset id used to generate the final pose keyframe.  If originalAnimationAssetId is non-nil, it's that.
	-- Otherwise if this wasn't a closeup and we used fallback logic, some id of the asset we fell back to.
	-- Doesn't so much matter what the id is as long as it's globally unique.
	finalAnimationAssetIdOrUrl: AnimationAssetIdOrUrl?,
	poseKeyframe: Keyframe?,
	moodKeyframe: Keyframe?,
	defaultToolKeyframe: Keyframe?,
	suggestedKeyframeFromTool: Keyframe?,
	-- The rig each keyframe above was authored on: the AnimationRigData published inside its clip, or for
	-- suggestedKeyframeFromTool a child of the ThumbnailPose. Nil means the canonical R15 rig.
	poseSourceRig: AnimationRigData?,
	moodSourceRig: AnimationRigData?,
	defaultToolSourceRig: AnimationRigData?,
	suggestedToolSourceRig: AnimationRigData?,
}

-- A keyframe to pose with, and the rig it was authored on (nil for the canonical R15 rig)
type PoseLayer = { keyframe: Keyframe, sourceRig: AnimationRigData? }

type ConfirmProceedAfterYieldType = (number?, number?) -> boolean

export type MapAssetIdToFileNameType = (number) -> string

module.FallbackKeyframeSequenceAssetId = FStringEmoteUtilityFallbackKeyframeSequenceAssetId
module.debugLoadAssetsFromFiles = false
module.mapAssetIdToFileName = nil :: MapAssetIdToFileNameType?

module.EmoteUtilitySupportAJU = true

-- In cases where no asset id is provided for posing the avatar, fall back a pose based on this animation.
-- Note: this only works on prod, not sitetest or gametest.
-- Note: this is an ID for a *keyframe sequence*, not an *animation*.
-- My process for getting this keyframe sequence asset id:
--   On Web go Animations -> Rthro -> Idle Rthro, leads you to: https://www.roblox.com/catalog/2510235063/Rthro-Idle
--   In Studio, use this asset id to load up the animation: in Command bar type "game:GetService("InsertService"):LoadAsset(2510235063).Parent = workspace"
--   In Studio, drill down Model.R15Anim.pose.RthroIdlePose.  It has "AnimationId" field "rbxassetid://10921261056"
--   That 10921261056 is the value I want.
module.FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL = "http://www.roblox.com/asset/?id="
	.. FStringEmoteUtilityFallbackKeyframeSequenceAssetId

-- We may call applyKeyframeInner a number of times: pose face, pose for tool, pose whole body based on emote, etc.
-- We keep track of "joints we have already posed".
-- We do this because single call may be applying a tool, an emote, and a face pose.
-- When applying the face pose, which has nothing useful to say about, say,
-- the position of the knees, we don't want to override the position of something we already
-- positioned earlier.
-- So as we position joints we add them to blacklist: later poses can't reposition these joints.
-- (So you want to do 'highest priority' posing first)
-- Note: since this is a global, it is important to call clearJointBlacklist right before calling your ApplyKeyframe,
-- then call ApplyKeyframe with no yielding work in between, then call clearJointBlacklist when you're done.
local jointBlacklist: { [Instance]: boolean } = {}

local function clearJointBlacklist()
	jointBlacklist = {}
end

local function blacklistJoint(joint: Instance)
	jointBlacklist[joint] = true
end

local function jointIsBlacklisted(joint: Instance): boolean
	if not jointBlacklist[joint] then
		return false
	end
	return true
end

local function getCameraOffset(fov: number, extentsSize: Vector3): number
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.sqrt(xSize ^ 2 + ySize ^ 2 + zSize ^ 2)
	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)

	local halfSize = maxSize / 2
	return halfSize * fovMultiplier
end

local function isOnRCC(): boolean
	-- FIXME(dbanks)
	-- I'd like to just call RunService:IsClient but there's a bug where this returns 'true' on RCC:
	-- https://jira.rbx.com/browse/AVBURST-10987
	-- Once this issue is resolved, change this to call RunService:IsClient.
	-- For now, we settle for a bit of a hacky (but correct) workaround.
	local success, isRCC = pcall(function()
		-- selene: allow(incorrect_standard_library_use) | ThumbnailGenerator is available on RCC
		local checkFunc = game.GetService
		-- selene: allow(incorrect_standard_library_use) | ThumbnailGenerator is available on RCC
		return checkFunc(game, "ThumbnailGenerator") ~= nil
	end)
	return success and isRCC
end

local function getAnalyticsTarget(): string
	if isOnRCC() then
		return "RCC"
	else
		return "Client"
	end
end

-- Helper for assembling & sending a report counter.
local function reportCounter(actionName: string, success: boolean)
	local prefix = getAnalyticsTarget()
	local suffix
	if success then
		suffix = "Success"
	else
		suffix = "Failure"
	end
	local counterName = prefix .. "_" .. actionName .. "_" .. suffix

	RbxAnalyticsService:ReportCounter(counterName)
end

-- animationAssetIdOrUrl identifies the pose asset we want to load.
-- If it's a number, it's an assetId: e.g. 10300116892
-- If it's a string, it's a url including an asset hash: e.g.
-- "http://www.roblox.com/Asset/?hash=225a9c414cf0f236d56759a5fabf56e4"
-- Depending on the type we use a different approach to load the asset.
local function getAnimationAndIsIdle(animationAssetIdOrUrl: AnimationAssetIdOrUrl): (Animation?, boolean?)
	assert(
		typeof(animationAssetIdOrUrl) == "number" or typeof(animationAssetIdOrUrl) == "string",
		"getAnimationAndIsIdle expects animationAssetIdOrUrl to be a number or string"
	)

	local animation: Animation?
	local success
	local actionName

	if typeof(animationAssetIdOrUrl) == "number" then
		local instance
		success, instance = module.LoadAsset(animationAssetIdOrUrl)
		if success and instance then
			animation = instance:GetChildren()[1] :: Animation
		end
		actionName = "EmoteUtility_LoadAsset"
	else
		local instance
		success, instance = pcall(function()
			return game:GetObjects(animationAssetIdOrUrl)[1]
		end)
		if success and instance then
			animation = instance :: Animation
		end
		actionName = "EmoteUtility_GetObjects"
	end

	-- On success or failure, add a Counter describing what happened.
	reportCounter(actionName, success)

	-- If we didn't succeed, send more details of failure.
	-- Also return nil.
	if not success or not animation then
		local eventCtx = "EmoteUtility_getPoseAsset"
		local eventName = actionName .. "_Failed"
		RbxAnalyticsService:SendEventDeferred(getAnalyticsTarget(), eventCtx, eventName, {
			animationAssetIdOrUrl = animationAssetIdOrUrl,
		})

		return nil, nil
	end

	assert(animation, "animation is non-nil. Silence type checker.")
	local animationAssetIsIdleAnim = false
	if animation.ClassName == "Folder" then
		animationAssetIsIdleAnim = true
		local parent = animation:FindFirstChild("Pose", true) or animation:FindFirstChild("pose", true)
		if parent == nil then
			parent = animation:FindFirstChild("Idle", true) or animation:FindFirstChild("idle", true)
		end
		if parent then
			animation = parent:FindFirstChildWhichIsA("Animation", true)
		else
			animation = animation:FindFirstChildWhichIsA("Animation", true)
		end
	end

	return animation, animationAssetIsIdleAnim
end

-- Note, this is a yielding function.
-- May return nil if we have problems fetching the animation clip.
-- Note that the actual thing we load might be some derived class of
-- AnimationClip, e.g. KeyframeSequence.
local function getAnimationClipByAssetId(animationClipAssetId: string): AnimationClip?
	local success, animationClip
	if module.debugLoadAssetsFromFiles then
		local assetId
		for v in string.gmatch(animationClipAssetId, ".*id=([0-9]+)") do
			assetId = v
		end
		assert(assetId, "assetId should be non-nil")
		local assetIdAsNumber = tonumber(assetId)
		assert(assetIdAsNumber, "assetIdAsNumber should be non-nil")

		local animationClipInstance
		success, animationClipInstance = module.LoadAsset(assetIdAsNumber)
		if success and animationClipInstance then
			animationClip = animationClipInstance :: AnimationClip
		end
	else
		success, animationClip = pcall(function()
			return AnimationClipProvider:GetAnimationClipAsync(animationClipAssetId)
		end)
	end

	reportCounter("EmoteUtility_GetAnimationClipAsync", success)

	if not success then
		local eventCtx = "EmoteUtility_GetAnimationClip"
		local eventName = "EmoteUtility_GetAnimationClip_GetAnimationClipAsyncFailed"
		RbxAnalyticsService:SendEventDeferred(getAnalyticsTarget(), eventCtx, eventName, {
			keyframeSequenceId = animationClipAssetId,
		})
		return nil
	end

	return animationClip
end

local function getThumbnailKeyframeFromAnimationOrUrl(
	animationOrUrl: Animation | string,
	rotationDegrees: number,
	defaultThumbnailKeyframeNumber: number?
): (Keyframe?, AnimationRigData?)
	local thumbnailKeyframeNumber = defaultThumbnailKeyframeNumber
	local thumbnailTime = nil
	local animationClip
	if typeof(animationOrUrl) == "string" then
		animationClip = getAnimationClipByAssetId(animationOrUrl)
	else
		thumbnailKeyframeNumber =
			module.GetNumberValueWithDefault(animationOrUrl, "ThumbnailKeyframe", defaultThumbnailKeyframeNumber)
		thumbnailTime = module.GetNumberValueWithDefault(animationOrUrl, "ThumbnailTime", nil)
		animationClip = module.GetAnimationClip(animationOrUrl)
	end
	if not animationClip then
		return nil
	end

	-- The animation editor publishes the rig a clip was authored on inside it
	local sourceRig = animationClip:FindFirstChildOfClass("AnimationRigData")
	if animationClip:IsA("KeyframeSequence") then
		return module.GetThumbnailKeyframe(thumbnailKeyframeNumber, animationClip :: KeyframeSequence, rotationDegrees),
			sourceRig
	elseif animationClip:IsA("CurveAnimation") then
		return module.GetThumbnailKeyframeFromCurve(thumbnailTime, animationClip :: CurveAnimation, rotationDegrees),
			sourceRig
	else
		error("Unsupported Animation type:" .. animationClip.ClassName)
		return nil
	end
end

-- It's possible that a Keyframe contains invalid NumberPoses (e.g APIs not yet enabled)
-- If any individual property doesn't exist then applying the Keyframe should still succeed.
local function trySetProperty(inst: Instance, propName: string, value: any?)
	pcall(function()
		-- Type checker doesn't like dynamic prop lookups. Cast to any to make it shut up.
		(inst :: any)[propName] = value
	end)
end

-- Apply properties from NumberPoses to an Instance in the Character
-- This is currently used for FaceControls but more similar controlers may be added in the future.
local function applyControlsFolder(character: Model, parentPose: Instance?, folder: Folder)
	if not parentPose then
		return
	end
	assert(parentPose, "parentPose is non-nil. Silence type checker.")

	local parentPart = character:FindFirstChild(parentPose.Name)
	if not parentPart then
		return
	end

	local controls = parentPart:FindFirstChild(folder.Name)
	if not controls then
		return
	end

	for _, subPose in folder:GetChildren() do
		if subPose:IsA("NumberPose") then
			trySetProperty(controls, subPose.Name, subPose.Value)
		end
	end
end

--[[
	When applying a keyframe to a character, we may want to add to a 'blacklist': any joints
	posed by the keyframe are added to the blacklist.
	Subsequent calls to ApplyKeyframe may opt to 'respect blacklist'.  In that case
	we will not pose any joints that are already in the blacklist.
]]
-- Applies only a keyframe's control folders (FaceControls), leaving its joint poses alone
local function applyKeyframeControls(character: Model, keyframe: Keyframe?)
	local function recurApplyControls(parentPose: Instance?, poseObject: Instance)
		if poseObject:IsA("Folder") then
			applyControlsFolder(character, parentPose, poseObject)
		else
			for _, subPose in poseObject:GetChildren() do
				recurApplyControls(poseObject, subPose)
			end
		end
	end

	if keyframe then
		for _, poseObj in keyframe:GetPoses() do
			recurApplyControls(nil, poseObj)
		end
	end
end

local function applyKeyframeInner(character: Model, poseKeyframe: Keyframe?)
	local function recurApplyPoses(parentPose: Instance?, poseObject: Instance)
		if parentPose and poseObject:IsA("Pose") then
			local part0 = character:FindFirstChild(parentPose.Name) :: Part
			local part1 = character:FindFirstChild(poseObject.Name) :: Part
			local joint: AnimatableJoint? = module.GetJointBetween(part0, part1)

			local shouldPositionJoint = joint and not jointIsBlacklisted(joint)

			if shouldPositionJoint then
				assert(joint, "joint is non-nil. Silence type checker.")
				-- Type checker doesn't work correctly with class unions
				local jointAny = joint :: any
				jointAny.Transform = poseObject.CFrame
				blacklistJoint(joint)
			end
		end

		-- Handling a Folder rather than a standard Pose (CFrame value)
		-- Need to apply the NumberPoses in the Folder to the corresponding properties
		-- of the Instance with the same name in the character
		-- This is currently only used for FaceControls
		if poseObject:IsA("Folder") then
			applyControlsFolder(character, parentPose, poseObject)
		else
			for _, subPose in poseObject:GetChildren() do
				recurApplyPoses(poseObject, subPose)
			end
		end
	end

	if poseKeyframe then
		for _, poseObj in pairs(poseKeyframe:GetPoses()) do
			recurApplyPoses(nil, poseObj)
		end
	end
end

local function getRotatedKeyframe(keyframe: Keyframe, rotationDegrees: number?): Keyframe
	if not rotationDegrees or rotationDegrees == 0 then
		return keyframe
	end
	assert(rotationDegrees, "rotationDegrees is non-nil. Silence type checker.")

	local rotatedKeyframe = keyframe:Clone()

	-- Apply rotation to the root joint (the first sub pose of the first pose)
	local rootPose = rotatedKeyframe:GetPoses()[1] :: Pose
	if rootPose then
		local lowerTorsoPose = rootPose:GetSubPoses()[1] :: Pose
		if lowerTorsoPose then
			lowerTorsoPose.CFrame = lowerTorsoPose.CFrame * CFrame.Angles(0, math.rad(rotationDegrees), 0)
		end
	end

	return rotatedKeyframe
end

-- Return a CFrame value for either a EulerRotationCurve or RotationCurve at a specfied time
local function getRotationCFrame(rotationCurve: SomeKindOfRotationCurve, timePosition: number): CFrame?
	if rotationCurve:IsA("EulerRotationCurve") then
		return rotationCurve:GetRotationAtTime(timePosition)
	elseif rotationCurve:IsA("RotationCurve") then
		return rotationCurve:GetValueAtTime(timePosition)
	else
		error("Unsupported rotation type:" .. rotationCurve.ClassName)
		return nil
	end
end

local function findAttachmentsRecur(parent: Instance, resultTable: AttachmentsByName)
	for _, obj in pairs(parent:GetChildren()) do
		if obj:IsA("Attachment") then
			resultTable[obj.Name] = obj
		elseif not obj:IsA("Tool") and not obj:IsA("Accoutrement") then
			-- Leave out tools and accoutrements in the character
			findAttachmentsRecur(obj, resultTable)
		end
	end
end

local function findAttachmentsInTool(tool: Tool): AttachmentsByName
	local attachments = {} :: AttachmentsByName
	findAttachmentsRecur(tool, attachments)
	return attachments
end

local function findAttachmentsInCharacter(character: Model): AttachmentsByName
	local attachments = {} :: AttachmentsByName
	findAttachmentsRecur(character, attachments)
	return attachments
end

local function weldAttachments(attach1: Attachment, attach2: Attachment): Weld
	local weld = Instance.new("Weld")
	weld.Part0 = attach1.Parent :: Part?
	weld.Part1 = attach2.Parent :: Part?
	weld.C0 = attach1.CFrame
	weld.C1 = attach2.CFrame
	weld.Parent = attach1.Parent
	return weld
end

local function attachToolToCharacter(character: Model, humanoid: Humanoid, tool: Tool)
	local characterAttachments = findAttachmentsInCharacter(character)
	local toolAttachments = findAttachmentsInTool(tool)
	local foundAttachments = false
	for _, attachment in pairs(toolAttachments) do
		local matchingAttachment = characterAttachments[attachment.Name]
		if matchingAttachment then
			foundAttachments = true
			weldAttachments(matchingAttachment, attachment)
		end
	end
	if foundAttachments then
		tool.Parent = character
	else
		tool.Parent = nil
		local handle = tool:FindFirstChild("Handle") :: Part
		local grip = tool.Grip
		if handle and grip then
			local attachment = characterAttachments["RightGripAttachment"]
			if attachment then
				local parent = attachment.Parent :: Part
				handle.CFrame = parent.CFrame * attachment.CFrame * grip:Inverse()
			end
		end
		humanoid:EquipTool(tool)
	end
end

--[[
	The body pose layers for a character holding a tool, highest priority first: a joint posed by an earlier
	layer is not re-posed by a later one.
]]
local function getToolBodyLayersInPriorityOrder(keyframesForPose: KeyframesForPose): { PoseLayer }
	local layers: { PoseLayer } = {}
	local function addLayer(keyframe: Keyframe?, sourceRig: AnimationRigData?)
		if keyframe then
			table.insert(layers, { keyframe = keyframe, sourceRig = sourceRig })
		end
	end
	if keyframesForPose.suggestedKeyframeFromTool then
		-- If it's the pose suggested by tool, do not respect blacklist (blacklist shouldn't exist
		-- anyway).  Tool knows exactly how to pose each joint.
		addLayer(keyframesForPose.suggestedKeyframeFromTool, keyframesForPose.suggestedToolSourceRig)
		-- Then apply the user-selected pose.
		addLayer(keyframesForPose.poseKeyframe, keyframesForPose.poseSourceRig)
	else
		-- If it's the pose passed in, selected by user, first do the 'default' tool pose (raising)
		-- the arm, and generating blacklist: we don't want the selected pose to re-position the joints
		-- involved in the tool pose.
		addLayer(keyframesForPose.defaultToolKeyframe, keyframesForPose.defaultToolSourceRig)
		-- Now apply the user-selected pose.
		-- Do this iff the user-selected pose was explicitly set with a animationAssetId.
		-- Note this is the assetId that was passed in, not the asset id that we may have finally
		-- used to pose (maybe different if original id was nil and we're using some kind of fallback logic).
		-- If animationAssetId is nil, any pose we have is based on some aritary idle anim, and we don't want to mix that
		-- with tool-based poses (design decision)
		if keyframesForPose.originalAnimationAssetId ~= nil then
			addLayer(keyframesForPose.poseKeyframe, keyframesForPose.poseSourceRig)
		end
	end
	return layers
end

--[[
	Final application of pose keyframes in the case where user is holding a tool.
	Also worries about attaching/welding/equipping the tool.
]]
local function applyR15KeyframeWithTool(
	character: Model,
	humanoid: Humanoid,
	tool: Tool,
	keyframesForPose: KeyframesForPose
)
	for _, layer in getToolBodyLayersInPriorityOrder(keyframesForPose) do
		applyKeyframeInner(character, layer.keyframe)
	end

	-- Sort out attaching the tool to the avatar.
	attachToolToCharacter(character, humanoid, tool)
end

--[[
	Retargeted posing.

	applyKeyframeInner copies each Pose's CFrame straight onto the joint's Transform, which is only right when the
	character has the rest pose the keyframe was authored on. R15+ bodies are often A- or T-posed at rest, and their
	torso and clavicle joints are Bones, which applyKeyframeInner doesn't reach. So on RCC we instead play each keyframe
	through the character's Animator, whose RobustRetargeter maps it from its source rig (the clip's AnimationRigData, or
	the canonical R15 rig) onto the character, then step the Animator once.

	RobustRetargeter needs a HumanoidRigDescription (HRD) on one of the two rigs, and uses each HRD's T-pose adjustments
	to relate the rest poses. Many bodies ship without an HRD, so ensureRigDescription estimates one.
]]

-- The shortest-arc rotation that turns the first direction onto the second
local function rotationBetween(from: Vector3, to: Vector3): CFrame
	local axis = from:Cross(to)
	if axis.Magnitude < 1e-6 then
		return CFrame.new()
	end
	return CFrame.fromAxisAngle(axis.Unit, math.atan2(axis.Magnitude, from:Dot(to)))
end

-- An AnimationConstraint missing either Attachment doesn't join anything, so it doesn't count as a joint
local function asAnimatableJoint(instance: Instance?): AnimatableJoint?
	if instance and instance:IsA("Motor6D") then
		return instance :: Motor6D
	end
	if instance and instance:IsA("AnimationConstraint") then
		local constraint = instance :: AnimationConstraint
		if constraint.Attachment0 and constraint.Attachment1 then
			return constraint
		end
	end
	return nil
end

local function findJointInPart(model: Model, partName: string, jointName: string): AnimatableJoint?
	local part = model:FindFirstChild(partName)
	return asAnimatableJoint(part and part:FindFirstChild(jointName))
end

--[[
	The joint or R15+ Bone with the given name in one of the character's body parts. Joints are named like their rig
	label, and Bones can be nested. Accessories and Tools aren't searched: a rigged accessory can have Bones named like
	body joints.
]]
local function findBodyJoint(model: Model, name: string): Instance?
	for _, part in model:GetChildren() do
		if part:IsA("BasePart") then
			local found = part:FindFirstChild(name, true)
			if found and (found:IsA("Bone") or asAnimatableJoint(found)) then
				return found
			end
		end
	end
	return nil
end

-- A joint's frame in each of its two parts, at rest: Attachment CFrames (through any R15+ Bones, at their rest CFrames), or
-- C0/C1 for Motor6D
local function getJointLocalFrames(joint: AnimatableJoint): (CFrame, CFrame)
	if joint:IsA("Motor6D") then
		local motor = joint :: Motor6D
		return motor.C0, motor.C1
	end
	local function inPart(attachment: Attachment): CFrame
		local cframe = attachment.CFrame
		local current: Instance? = attachment.Parent
		while current and current:IsA("Bone") do
			cframe = (current :: Bone).CFrame * cframe
			current = (current :: Instance).Parent
		end
		return cframe
	end
	local constraint = joint :: AnimationConstraint
	return inPart(constraint.Attachment0 :: Attachment), inPart(constraint.Attachment1 :: Attachment)
end

type ArmRestGeometry = {
	shoulderFrame: CFrame,
	elbowFrame: CFrame,
	upperDirection: Vector3,
	lowerDirection: Vector3,
}

--[[
	One arm's rest pose in UpperTorso space, from the joint frames alone, so it doesn't depend on where an earlier posing
	left the parts. Segment directions run from the part's center to its child joint, not joint to joint, because R15
	shoulder joints sit at the inner corner of the upper arm.
]]
local function getArmRestGeometry(model: Model, side: string): ArmRestGeometry?
	local shoulder = findJointInPart(model, side .. "UpperArm", side .. "Shoulder")
	local elbow = findJointInPart(model, side .. "LowerArm", side .. "Elbow")
	local wrist = findJointInPart(model, side .. "Hand", side .. "Wrist")
	if not (shoulder and elbow and wrist) then
		return nil
	end
	local shoulderInTorso, shoulderInUpperArm = getJointLocalFrames(shoulder)
	local elbowInUpperArm, elbowInLowerArm = getJointLocalFrames(elbow)
	local wristInLowerArm = getJointLocalFrames(wrist)

	local upperArm = shoulderInTorso * shoulderInUpperArm:Inverse()
	local elbowFrame = upperArm * elbowInUpperArm
	local lowerArm = elbowFrame * elbowInLowerArm:Inverse()
	local wristFrame = lowerArm * wristInLowerArm
	return {
		shoulderFrame = shoulderInTorso,
		elbowFrame = elbowFrame,
		upperDirection = (elbowFrame.Position - upperArm.Position).Unit,
		lowerDirection = (wristFrame.Position - lowerArm.Position).Unit,
	}
end

--[[
	Gives model a HumanoidRigDescription if it has none: its joints by label, and arm T-pose adjustments estimated from
	the rest pose, rotating each arm segment to point straight out along the torso's X axis (the HRD's T-pose). The
	torso, neck and legs are taken to already be in T-pose.
	Returns whether it created one. Must run before the Animator builds its rig: the rig reads the HRD when it's built,
	so changes to an HRD after that are ignored.
]]
local function ensureRigDescription(model: Model): boolean
	if model:FindFirstChildWhichIsA("HumanoidRigDescription", true) then
		return false
	end

	-- Built unparented and parented last, for the same reason as above
	local hrd = Instance.new("HumanoidRigDescription")
	-- The body joints an HRD describes, by label: the RigLabels without digits and Invalid
	local jointNames = hrd:GetJointNames()
	for _, label in Enum.RigLabel:GetEnumItems() do
		if table.find(jointNames, label.Name) then
			local joint = findBodyJoint(model, label.Name)
			if joint then
				hrd:SetJoint(label, joint)
			end
		end
	end

	local sides = {
		{
			name = "Right",
			outward = Vector3.xAxis,
			shoulder = Enum.RigLabel.RightShoulder,
			elbow = Enum.RigLabel.RightElbow,
		},
		{
			name = "Left",
			outward = -Vector3.xAxis,
			shoulder = Enum.RigLabel.LeftShoulder,
			elbow = Enum.RigLabel.LeftElbow,
		},
	}
	for _, side in sides do
		local arm = getArmRestGeometry(model, side.name)
		if arm then
			hrd:SetTposeAdjustment(
				side.shoulder,
				rotationBetween(
					arm.shoulderFrame:VectorToObjectSpace(arm.upperDirection),
					arm.shoulderFrame:VectorToObjectSpace(side.outward)
				)
			)
			hrd:SetTposeAdjustment(
				side.elbow,
				rotationBetween(
					arm.elbowFrame:VectorToObjectSpace(arm.lowerDirection),
					arm.elbowFrame:VectorToObjectSpace(arm.upperDirection)
				)
			)
		end
	end

	hrd.Parent = model
	return true
end

-- Beyond this angle from straight down, an upper arm at rest means an A- or T-posed rig
local ARMS_DOWN_MAX_DEGREES = 30

--[[
	Whether model rests with its arms hanging down, as standard R15 does: the rest pose that keyframes without rig data
	are authored for, and that applyKeyframeInner poses correctly. Arms it can't find count as down.
]]
local function restsArmsDown(model: Model): boolean
	for _, side in { "Right", "Left" } do
		local arm = getArmRestGeometry(model, side)
		if arm then
			local angle = math.deg(math.acos(math.clamp(arm.upperDirection:Dot(-Vector3.yAxis), -1, 1)))
			if angle > ARMS_DOWN_MAX_DEGREES then
				return false
			end
		end
	end
	return true
end

-- Exposed for tests: the retargeted posing path itself only runs on RCC
module.RestsArmsDown = restsArmsDown
module.EnsureRigDescription = ensureRigDescription

-- The rig of the engine's default R15 character, with an estimated HRD: the source rig for keyframes that don't carry
-- their own, which in practice were authored on R15. Loaded by loadCanonicalR15Rig.
local canonicalR15Rig: AnimationRigData? = nil

--[[
	Loads canonicalR15Rig if it isn't loaded yet. A yielding function (GetObjects), so it's called from
	LoadKeyframesForPose rather than the non-yielding ApplyKeyframesForPose. A failed load is retried next time.
]]
local function loadCanonicalR15Rig()
	if canonicalR15Rig then
		return
	end
	local success, model = pcall(function()
		return game:GetObjects(FStringEmoteUtilityCanonicalR15RigUri)[1]
	end)
	local rig: AnimationRigData? = nil
	if success and model and model:IsA("Model") then
		ensureRigDescription(model)
		local loadedRig = Instance.new("AnimationRigData")
		if loadedRig:LoadFromModel(model) then
			rig = loadedRig
		end
	end
	reportCounter("EmoteUtility_GetCanonicalR15Rig", rig ~= nil)
	canonicalR15Rig = rig
end

local RETARGETED_LAYER_PRIORITIES = {
	Enum.AnimationPriority.Action4,
	Enum.AnimationPriority.Action3,
	Enum.AnimationPriority.Action2,
	Enum.AnimationPriority.Action,
	Enum.AnimationPriority.Movement,
	Enum.AnimationPriority.Idle,
}

-- Tracks from the last retargeted posing of each character; each posing of a character replaces its own
local retargetedTracksByCharacter: { [Model]: { AnimationTrack } } = setmetatable({}, { __mode = "k" }) :: any

local function stopRetargetedTracks(character: Model)
	local tracks = retargetedTracksByCharacter[character]
	if not tracks then
		return
	end
	for _, track in tracks do
		track:Stop(0)
		track:Destroy()
	end
	retargetedTracksByCharacter[character] = nil
end

--[[
	Poses character with layers, highest priority first, through its Animator (see "Retargeted posing" above).
	Only valid where the DataModel isn't running (RCC): it steps the Animator by hand. Returns false, having applied
	nothing, if a layer has no source rig and the canonical R15 rig isn't loaded; the caller then poses
	without retargeting.
	The caller still has to ForceAnimationToStep: this only sets joint Transforms.
]]
local function applyKeyframesRetargeted(character: Model, humanoid: Humanoid, layers: { PoseLayer }): boolean
	local sourceRigs: { AnimationRigData } = {}
	for i, layer in layers do
		local rig = layer.sourceRig or canonicalR15Rig
		if not rig then
			return false
		end
		sourceRigs[i] = rig
	end

	-- ForceAnimationToStep disables every AnimationConstraint, and the Animator doesn't step disabled ones, so a second
	-- posing of the same character needs them back on.
	for _, descendant in character:GetDescendants() do
		if descendant:IsA("AnimationConstraint") then
			descendant.Enabled = true
		end
	end

	local animator = humanoid:FindFirstChildOfClass("Animator")
	if ensureRigDescription(character) and animator then
		-- The existing Animator built its rig without the new HRD
		animator:Destroy()
		animator = nil
	end
	if not animator then
		local newAnimator = Instance.new("Animator")
		newAnimator.Parent = humanoid
		animator = newAnimator
	end
	assert(animator, "animator is non-nil. Silence type checker.")

	stopRetargetedTracks(character)
	local tracks: { AnimationTrack } = {}
	retargetedTracksByCharacter[character] = tracks
	local priority = 1
	for i, layer in layers do
		-- Two copies a second apart: a clip needs a length to be evaluated
		local sequence = Instance.new("KeyframeSequence")
		for _, time in { 0, 1 } do
			local copy = layer.keyframe:Clone()
			copy.Time = time
			copy.Parent = sequence
		end
		sourceRigs[i]:Clone().Parent = sequence

		local animation = Instance.new("Animation")
		animation.AnimationId = AnimationClipProvider:RegisterActiveAnimationClip(sequence)
		local track = animator:LoadAnimation(animation)
		track.Priority = RETARGETED_LAYER_PRIORITIES[math.min(priority, #RETARGETED_LAYER_PRIORITIES)]
		track:Play(0)
		table.insert(tracks, track)
		priority += 1
	end
	animator:StepAnimations(1 / 30)
	return true
end

--[[
	Given a pose asset ID (number) or pose asset url (string), figure out the keyframe we're going to use to
	pose the main body of the avatar.

	* if animationAssetIdOrUrl is non-nil, pose using that asset.
	* if animationAssetIdOrUrl is nil, and useFallbackAnimations is true:
	    * if idle anim is equipped, pose using that.
		* else pose using some constant/fallback idle anim.

	If animationAssetIdOrUrl is non-nil asset if for an animation, this is a "strong" pose
	which is considered more important than any pose tweaks from a tool.
	Otherwise our pose is "weak" and can be trumped by tool.

	useRotationInPoseAsset, if true, means we look for a "ThumbnailCharacterRotation"
	number value in the pose asset and use that to rotate the avatar.

	Return the keyframe and a bool on whether or not this trumps tools suggestions.
	May return nil for keyframe.
]]
local function getMainThumbnailKeyframe(
	character: Model,
	animationAssetIdOrUrl: AnimationAssetIdOrUrl?,
	useRotationInPoseAsset: boolean,
	useFallbackAnimations: boolean?
): (Keyframe?, boolean, AnimationAssetIdOrUrl?, AnimationRigData?)
	local thumbnailKeyframe: Keyframe?
	local sourceRig: AnimationRigData?
	local givenPoseTrumpsToolPose: boolean = false
	local finalAnimationAssetIdOrUrl: AnimationAssetIdOrUrl? = nil

	if animationAssetIdOrUrl then
		finalAnimationAssetIdOrUrl = animationAssetIdOrUrl
		local animation, animationAssetIsIdleAnim = getAnimationAndIsIdle(animationAssetIdOrUrl)

		-- animationAsset could be nil if something went wrong.
		if animation == nil then
			return nil, givenPoseTrumpsToolPose, finalAnimationAssetIdOrUrl
		end
		assert(animation, "animation is non-nil. Silence type checker.")

		-- In the current setup, a user may select an emote to pose their avatar for a picture.
		-- If they do this, the 'animationAsset' is an Animation, and we consider that a 'stronger'
		-- vote for how to pose than any info we may get from a tool they are holding.
		-- If they did not select an emote, we defer to the tool: if it has something to
		-- say about how we pose, use that.
		if not animationAssetIsIdleAnim then
			givenPoseTrumpsToolPose = true
		end

		local rotationDegrees: number = 0
		if useRotationInPoseAsset then
			rotationDegrees = module.GetNumberValueWithDefault(animation, "ThumbnailCharacterRotation", 0) :: number
		end

		thumbnailKeyframe, sourceRig = getThumbnailKeyframeFromAnimationOrUrl(animation, rotationDegrees)
	else
		if useFallbackAnimations then
			local poseAnimationOrUrl: Animation | string = module.FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL
			local animateScript = character:FindFirstChild("Animate")
			if animateScript then
				local equippedPoseValue: Instance? = animateScript:FindFirstChild("Pose")
					or animateScript:FindFirstChild("pose")
				if not equippedPoseValue and FFlagEmoteUtilityUseIdleAnimationFallback then
					equippedPoseValue = animateScript:FindFirstChild("Idle") or animateScript:FindFirstChild("idle")
				end
				local equippedPoseAnimation: Animation? = if equippedPoseValue
					then equippedPoseValue:FindFirstChildOfClass("Animation")
					else nil
				if equippedPoseAnimation then
					poseAnimationOrUrl = equippedPoseAnimation
				end
			end

			thumbnailKeyframe, sourceRig = getThumbnailKeyframeFromAnimationOrUrl(poseAnimationOrUrl, 0, 1)
			if typeof(poseAnimationOrUrl) == "string" then
				finalAnimationAssetIdOrUrl = poseAnimationOrUrl
			else
				finalAnimationAssetIdOrUrl = poseAnimationOrUrl.AnimationId
			end
		end
	end

	return thumbnailKeyframe, givenPoseTrumpsToolPose, finalAnimationAssetIdOrUrl, sourceRig
end

--[[
	Get keyframe to pose face based on mood asset id.
]]
local function getMoodThumbnailKeyframe(moodAssetIdOrUrl: AnimationAssetIdOrUrl?): (Keyframe?, AnimationRigData?)
	if not moodAssetIdOrUrl then
		return nil
	end
	assert(moodAssetIdOrUrl, "moodAssetId is non-nil. Silence type checker.")

	local animation, _ = getAnimationAndIsIdle(moodAssetIdOrUrl)

	-- animationAsset could be nil if something went wrong.
	if animation == nil then
		return nil
	end
	assert(animation, "animation is non-nil. Silence type checker.")

	return getThumbnailKeyframeFromAnimationOrUrl(animation, 0)
end

--[[
	Sort out what to do if user is holding a tool.
	Doesn't actually pose the avatar, just collects whether or not we have a tool at
	all and figures out, if we are holding tool, how that might affect the pose.

	Maybe a yielding function.

	Returns:
	-- tool: the tool avatar is holding, if present.  If nil you can ignore suggestedKeyframeFromTool and defaultToolKeyframe
	-- suggestedKeyframeFromTool: a pose based on tool's suggestion of how to pose whole body.  If present, ignore defaultToolKeyframe.
	-- defaultToolKeyframe: user is holding tool but tool doesn't tell us how to pose avatar.  Some default "hold up your arm" pose
	   for holding a tool.

	This may be a yielding function.
]]
-- Returns the tool's suggested keyframe and the default tool keyframe, then the rig each was authored on
local function getToolKeyframes(
	character: Model,
	givenPoseTrumpsToolPose: boolean
): (Keyframe?, Keyframe?, AnimationRigData?, AnimationRigData?)
	local suggestedKeyframeFromTool: Keyframe?
	local defaultToolKeyframe
	local suggestedToolSourceRig: AnimationRigData?
	local defaultToolSourceRig: AnimationRigData?
	local tool = character:FindFirstChildOfClass("Tool")
	if not tool then
		return nil, nil
	end
	assert(tool, "tool is non-nil. Silence type checker.")

	local useSuggestedKeyframeFromTool = false
	if not givenPoseTrumpsToolPose then
		-- Tool is posing the whole avatar.
		suggestedKeyframeFromTool = tool:FindFirstChild("ThumbnailPose") :: Keyframe
		if suggestedKeyframeFromTool and suggestedKeyframeFromTool:IsA("Keyframe") then
			useSuggestedKeyframeFromTool = true
			-- A gear can say which rig its pose was authored on with an AnimationRigData child of the ThumbnailPose
			suggestedToolSourceRig = suggestedKeyframeFromTool:FindFirstChildOfClass("AnimationRigData")
		end
	end

	-- If the tool is not posing the whole avatar, get a pose based on the avatar's
	-- default "tool" pose (usually just raising the avatar's arm).
	if not useSuggestedKeyframeFromTool then
		suggestedKeyframeFromTool = nil
		local animateScript = character:FindFirstChild("Animate")
		if not animateScript then
			return nil, nil
		end
		assert(animateScript, "animateScript is non-nil. Silence type checker.")
		local toolNoneStringValue = animateScript:FindFirstChild("toolnone")
		if not toolNoneStringValue then
			return nil, nil
		end
		assert(toolNoneStringValue, "toolNoneStringValue is non-nil. Silence type checker.")
		local toolHoldAnimationObject = toolNoneStringValue:FindFirstChild("ToolNoneAnim") :: Animation
		if toolHoldAnimationObject then
			local toolAnimationClip = module.GetAnimationClip(toolHoldAnimationObject)
			if not toolAnimationClip then
				-- We couldn't load the animation clip.
				-- Just proceed like there's no tool.
				return nil, nil
			end
			assert(toolAnimationClip, "toolAnimationClip is non-nil. Silence type checker.")
			assert(toolAnimationClip:IsA("KeyframeSequence"), "ToolNoneAnim must be a KeyframeSequence")
			local toolKeyframeSequence = toolAnimationClip :: KeyframeSequence
			defaultToolKeyframe = module.GetThumbnailKeyframe(nil, toolKeyframeSequence, 0)
			defaultToolSourceRig = toolKeyframeSequence:FindFirstChildOfClass("AnimationRigData")

			-- GetAnimationClip is a yielding function.  Are we still holding this tool?
			-- If not, things are kind of a mess: just proceed like we don't have a tool,
			-- trust the calling code to call again to sort things out with newTool.
			if not tool:IsDescendantOf(character) then
				-- Things are confusing.  Trust the calling code to call this again
				-- with newTool.  Proceed with this call just using no tool.
				return nil, nil
			end
		end
	end

	return suggestedKeyframeFromTool, defaultToolKeyframe, suggestedToolSourceRig, defaultToolSourceRig
end

local function getAttachmentCFrame(attachment: Attachment)
	local cframe = attachment.CFrame
	local current: Instance? = attachment.Parent
	-- Includes each Bone's Transform: retargeted posing animates R15+ spine and clavicle bones, which carry the arms and head
	while current and current:IsA("Bone") do
		if FFlagEmoteUtilityRetargetPoses then
			cframe = (current :: Bone).CFrame * (current :: Bone).Transform * cframe
		else
			cframe = (current :: Bone).CFrame * cframe
		end
		current = (current :: Instance).Parent
	end
	return cframe
end

local function getJointParts(joint: Instance): (BasePart?, BasePart?)
	if joint:IsA("JointInstance") then
		return (joint :: JointInstance).Part0, (joint :: JointInstance).Part1
	elseif joint:IsA("Constraint") then
		local attach0 = (joint :: Constraint).Attachment0
		local attach1 = (joint :: Constraint).Attachment1
		local p0 = attach0 and attach0:FindFirstAncestorWhichIsA("BasePart")
		local p1 = attach1 and attach1:FindFirstAncestorWhichIsA("BasePart")
		return p0, p1
	end
	return nil, nil
end

local function applyCFrame(part0: BasePart, part1: BasePart, joint: AnimatableJoint, poseCFrame: CFrame)
	if joint:IsA("AnimationConstraint") then
		local attach0 = (joint :: AnimationConstraint).Attachment0 :: Attachment
		local attach1 = (joint :: AnimationConstraint).Attachment1 :: Attachment
		part1.CFrame = part0.CFrame * getAttachmentCFrame(attach0) * poseCFrame * getAttachmentCFrame(attach1):Inverse()
	elseif joint:IsA("Motor6D") then
		local c0 = (joint :: Motor6D).C0
		local c1 = (joint :: Motor6D).C1
		part1.Anchored = true
		part1.CFrame = part0.CFrame * c0 * poseCFrame * c1:Inverse()
	end
end

local function getJointPose(joint: AnimatableJoint): CFrame
	if joint:IsA("AnimationConstraint") then
		return (joint :: AnimationConstraint).Transform
	elseif joint:IsA("Motor6D") then
		local motor = joint :: Motor6D
		local pose = motor.Transform
		if motor.CurrentAngle ~= 0 then
			pose = pose * CFrame.Angles(0, 0, motor.CurrentAngle)
		end
		return pose
	else
		error("Unsupported joint type:" .. joint.ClassName)
		return CFrame.new()
	end
end

--[[
	Experience suggests that on RCC, if just change the "Transform" on a joint, the avatar doesn't move.
	We have to play the animation a bit to get things to jump into place.
]]
module.ForceAnimationToStep = function(character: Model)
	local partsToProcess = { character:FindFirstChild("HumanoidRootPart") :: BasePart }
	local visited: { [BasePart]: boolean } = {}
	local jointQueue: { { part0: BasePart, part1: BasePart, joint: AnimatableJoint } } = {}

	while #partsToProcess > 0 do
		local currentPart = table.remove(partsToProcess, 1) :: BasePart
		if visited[currentPart] then
			continue
		end
		visited[currentPart] = true

		for _, joint in currentPart:GetJoints() do
			if not joint:IsA("Motor6D") and not joint:IsA("AnimationConstraint") then
				continue
			end

			local part0, part1 = getJointParts(joint)
			if part0 == currentPart and part1 and not visited[part1 :: BasePart] then
				table.insert(jointQueue, { part0 = currentPart, part1 = part1 :: BasePart, joint = joint })
				table.insert(partsToProcess, part1 :: BasePart)
			end
		end
	end

	-- Disable all AnimationConstraints so they don't fight
	-- the CFrame placements we're about to make.
	for _, desc in character:GetDescendants() do
		if desc:IsA("AnimationConstraint") then
			desc.Enabled = false
		end
	end

	for _, entry in jointQueue do
		local joint = entry.joint
		if joint:IsA("Motor6D") or joint:IsA("AnimationConstraint") then
			local poseCFrame: CFrame = getJointPose(joint)
			applyCFrame(entry.part0, entry.part1, joint :: AnimatableJoint, poseCFrame)
		end
	end
end

-- When loading an Animation asset, it's expected that the instance you get back is
-- some parent/container with the Animation you care about as the first child.
-- When loading a KeyframeSequence/AnimationClip asset, it's expected the instance
-- you get back is the actual instance you care about.
module.LoadAsset = function(animationAssetId: number): (boolean, Instance)
	local success, instance = pcall(function()
		if module.debugLoadAssetsFromFiles and module.mapAssetIdToFileName then
			-- load local asset.
			local fileName = module.mapAssetIdToFileName(animationAssetId)
			local url = "rbxasset://" .. fileName
			return InsertService:LoadLocalAsset(url)
		else
			return InsertService:LoadAsset(animationAssetId)
		end
	end)
	return success, instance
end

--[[
	In tests, we don't want to actually hit backends to load assets.
	Sometimes we make a bunch of requests and get throttled.  Plus backends go up & down ->
	flaky test.
	When this is set, you must pass in a function mapping assetId to file name.
	This allows us to give filenames something human-readable ("bodyBuilderEmoteKeyframes")
	and place them in custom subdirs of the main content directory.
]]
module.SetDebugLoadAssetsFromFiles = function(
	debugLoadAssetsFromFiles: boolean,
	mapAssetIdToFileName: MapAssetIdToFileNameType
)
	module.debugLoadAssetsFromFiles = debugLoadAssetsFromFiles
	module.mapAssetIdToFileName = mapAssetIdToFileName
end

module.GetJointBetween = function(part0: Part?, part1: Part?): AnimatableJoint?
	if not part0 or not part1 then
		return nil
	end
	assert(part0, "part0 is non-nil. Silence type checker.")
	assert(part1, "part1 is non-nil. Silence type checker.")

	for _, obj in part1:GetChildren() do
		if obj:IsA("Motor6D") and obj.Part0 == part0 then
			return obj
		elseif obj:IsA("AnimationConstraint") and obj.Part0 == part0 then
			return obj
		end
	end

	return nil
end

-- Legacy name when only Motor6Ds were supported.
module.GetMotor6DBetween = module.GetJointBetween

--[[
	Does this poseKeyframe pose the face?
]]
module.PoseKeyframeHasFaceAnimation = function(poseKeyframe: Keyframe?): boolean
	if not poseKeyframe then
		return false
	end
	assert(poseKeyframe, "poseKeyframe is non-nil. Silence type checker.")

	local function recurHasFaceAnimation(poseObject: Folder | Instance)
		if poseObject:IsA("Folder") then
			return true
		else
			for _, subPose in poseObject:GetChildren() do
				if recurHasFaceAnimation(subPose) then
					return true
				end
			end
		end
		return false
	end

	for _, poseObj in pairs(poseKeyframe:GetPoses()) do
		if recurHasFaceAnimation(poseObj) then
			return true
		end
	end
	return false
end

--[[
	When applying a pose to a character, we build blacklist : record every joint we position.
	Later on, if something else tries to position same joint, ignore that.
]]
module.ApplyKeyframe = function(character: Model, poseKeyframe: Keyframe?)
	clearJointBlacklist()
	applyKeyframeInner(character, poseKeyframe)
	clearJointBlacklist()
	if isOnRCC() then
		module.ForceAnimationToStep(character)
	end
end

module.GetNumberValueWithDefault = function(animationAsset: Animation, name: string, defaultValue: number?): number?
	local finalValue = defaultValue
	local numberValue = animationAsset:FindFirstChild(name)
	if numberValue and numberValue:IsA("NumberValue") then
		finalValue = numberValue.Value
	end
	return finalValue
end

-- Note, this is a yielding function.
-- May return nil if we have problems fetching animation clip.
-- This returns either a KeyframeSequence or a CurveAnimation or nil.
-- KeyframeSequence and CurveAnimation are both AnimationClips.
module.GetAnimationClip = function(animationAsset: KeyframeSequence | CurveAnimation | Animation): AnimationClip?
	-- Just a heads-up: currently the animationAsset is a keyframe sequence if the user did not make
	-- an explicit "I want this emote" choice, and we are falling back to a pose based on user's
	-- current idle animation.
	if animationAsset:IsA("KeyframeSequence") then
		return animationAsset :: KeyframeSequence
	elseif animationAsset:IsA("CurveAnimation") then
		return animationAsset :: CurveAnimation
	elseif animationAsset:IsA("Animation") then
		return getAnimationClipByAssetId((animationAsset :: Animation).AnimationId)
	else
		error("Cannot get AnimationClip from type:" .. animationAsset.ClassName)
		return nil
	end
end

module.GetThumbnailKeyframe = function(
	thumbnailKeyframeNumber: number?,
	emoteKeyframeSequence: KeyframeSequence,
	rotationDegrees: number
): Keyframe
	local emoteKeyframes = emoteKeyframeSequence:GetKeyframes()
	local thumbnailKeyframe
	-- Check that the index provided as the keyframe number is valid
	if thumbnailKeyframeNumber and thumbnailKeyframeNumber > 0 and thumbnailKeyframeNumber <= #emoteKeyframes then
		thumbnailKeyframe = emoteKeyframes[thumbnailKeyframeNumber] :: Keyframe
	else
		thumbnailKeyframe = emoteKeyframes[math.ceil(#emoteKeyframes / 2)] :: Keyframe
	end

	return getRotatedKeyframe(thumbnailKeyframe, rotationDegrees)
end

-- Get the length of a CurveAnimation (i.e the Time of the last Key in the CurveAnimation)
module.GetCurveAnimationTimeLength = function(curveAnimation: CurveAnimation): number
	local maxTimeLength = 0

	for _, desc in curveAnimation:GetDescendants() do
		if desc:IsA("FloatCurve") then
			if desc.Length == 0 then
				continue
			end
			local lastKeyTime = desc:GetKeyAtIndex(desc.Length).Time
			maxTimeLength = math.max(maxTimeLength, lastKeyTime)
		end
	end

	return maxTimeLength
end

-- Samples a CurveAnimation at a given time to create an equivalent Keyframe
-- Default for thumbnailTime is half the length of the CurveAnimation
module.GetThumbnailKeyframeFromCurve = function(
	thumbnailTime: number?,
	curveAnimation: CurveAnimation,
	rotationDegrees: number
): Keyframe
	local animationTimeLength = module.GetCurveAnimationTimeLength(curveAnimation)

	if not thumbnailTime or thumbnailTime < 0 or thumbnailTime > animationTimeLength then
		thumbnailTime = animationTimeLength / 2
	end
	-- This is now non-nil
	assert(thumbnailTime, "thumbnailTime should be non-nil. Silence type checker")

	local CFRAME_CHANNELS = {
		Position = true,
		Rotation = true,
	}

	local function hasSubFolders(folder)
		for _, child in folder:GetChildren() do
			if child:IsA("Folder") then
				return true
			end
		end
		return false
	end

	local function recurGenerateKeyframe(parent: Instance, folder: Folder)
		local subPosesContainer: Instance

		local positionCurve = folder:FindFirstChild("Position")
		local rotationCurve = folder:FindFirstChild("Rotation")
		-- A joint folder has only the channels the joint animates; rotation-only joints are the common case
		local hasTransformCurve = if FFlagEmoteUtilityCurveRotationOnlyJoints
			then positionCurve or rotationCurve
			else positionCurve and rotationCurve
		if hasTransformCurve then
			local transform = if rotationCurve
				then getRotationCFrame(rotationCurve :: SomeKindOfRotationCurve, thumbnailTime)
				else CFrame.new()
			if not transform and FFlagEmoteUtilityCurveRotationOnlyJoints then
				-- A RotationCurve with no keys has no value: pose the joint at identity rather than dropping it and its
				-- child joints
				transform = CFrame.new()
			end
			if transform then
				if positionCurve then
					local v3curve = positionCurve :: Vector3Curve
					transform += Vector3.new(table.unpack(v3curve:GetValueAtTime(thumbnailTime)))
				end

				local pose = Instance.new("Pose")
				pose.CFrame = transform
				pose.Name = folder.Name
				pose.Parent = parent
				subPosesContainer = pose
			end
		elseif hasSubFolders(folder) then
			local transform = CFrame.new()

			local pose = Instance.new("Pose")
			pose.CFrame = transform
			pose.Name = folder.Name
			pose.Parent = parent
			subPosesContainer = pose
		else
			local container = Instance.new("Folder")
			container.Name = folder.Name
			container.Parent = parent
			subPosesContainer = container
		end

		for _, child in folder:GetChildren() do
			if child:IsA("FloatCurve") and not CFRAME_CHANNELS[child] then
				local floatCurve = child :: FloatCurve
				local numberPose = Instance.new("NumberPose")
				numberPose.Name = floatCurve.Name
				local valueAtTime = floatCurve:GetValueAtTime(thumbnailTime)
				if not valueAtTime then
					valueAtTime = 0
				end
				assert(valueAtTime, "valueAtTime should be non-nil. Silence type checker.")
				numberPose.Value = valueAtTime
				numberPose.Parent = subPosesContainer
			elseif child:IsA("Folder") then
				recurGenerateKeyframe(subPosesContainer, child :: Folder)
			end
		end
	end

	local resultKeyframe = Instance.new("Keyframe")
	resultKeyframe.Name = curveAnimation.Name
	resultKeyframe.Time = thumbnailTime
	for _, child in curveAnimation:GetChildren() do
		if child:IsA("Folder") then
			recurGenerateKeyframe(resultKeyframe, child)
		end
	end

	return getRotatedKeyframe(resultKeyframe, rotationDegrees)
end

--[[
	Reset character FaceControls to neutral state.
]]
module.ClearPlayerCharacterFace = function(character: Model)
	-- There doesn't seem to be a simple one-step for this analogous to humanoid:BuildRigFromAttachments()
	-- for resetting the body.  Best suggestion I got was to destroy and replace FaceControls.
	-- I am assuming here that there's only zero or one FaceControls instance.
	local deadMeatFaceControls = character:FindFirstChildWhichIsA("FaceControls", true)
	if deadMeatFaceControls then
		local parent = deadMeatFaceControls.Parent
		local children = deadMeatFaceControls:GetChildren()
		local newFaceControls = Instance.new("FaceControls")
		newFaceControls.Parent = parent
		for _, child in children do
			child.Parent = newFaceControls
		end
		deadMeatFaceControls:Destroy()
	end
end

module.AdjustArmOnR6ForTool = function(character: Model)
	local tool = character:FindFirstChildOfClass("Tool")
	local torso = character:FindFirstChild("Torso")
	if torso then
		local rightShoulder = torso:FindFirstChild("Right Shoulder") :: Motor6D
		if rightShoulder then
			if tool then
				rightShoulder.CurrentAngle = math.rad(90)
				rightShoulder.DesiredAngle = math.rad(90)
			else
				rightShoulder.CurrentAngle = math.rad(0)
				rightShoulder.DesiredAngle = math.rad(0)
			end
		end
	end
end

-- animationAssetIdOrUrl identifies the pose asset we want to load.
-- If it's a number, it's an assetId: e.g. 10300116892
-- If it's a string, it's a url including an asset hash: e.g.
-- "http://www.roblox.com/Asset/?hash=225a9c414cf0f236d56759a5fabf56e4"
-- Depending on the type we will use a different approach to load the asset.
module.SetPlayerCharacterFace = function(character: Model, animationAssetIdOrUrl: AnimationAssetIdOrUrl?)
	-- Early out on nil/empty input.
	if not animationAssetIdOrUrl then
		return
	end
	if animationAssetIdOrUrl == "" then
		return
	end
	if animationAssetIdOrUrl == 0 then
		return
	end

	assert(
		typeof(animationAssetIdOrUrl) == "number" or typeof(animationAssetIdOrUrl) == "string",
		"EmoteUtility.SetPlayerCharacterFace expects animationAssetIdOrUrl to be a number or string"
	)

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then
		return
	end

	-- Get the thumbnails suggested by animationAssetIdOrUrl.
	local moodKeyframe = getMoodThumbnailKeyframe(animationAssetIdOrUrl)

	-- If that fails, just quit.  No posing.
	if not moodKeyframe then
		return
	end

	-- Before applying the pose, clear out any previous face pose (otherwise we get some hybrid of previous & mood)
	module.ClearPlayerCharacterFace(character)
	module.ApplyKeyframe(character, moodKeyframe)
end

--[[
	Experimentation suggests that just calling "humanoid:BuildRigFromAttachments()"
	isn't good enough to get the avatar in neutral t-pose: we also have to go through
	and clear out each Transform on each Motor6D and AnimationConstraint (and Bone, which retargeted posing animates).
]]
module.SetPlayerCharacterNeutralPose = function(character: Model)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end
	assert(humanoid, "humanoid should be non-nil. Silence type checker.")

	humanoid:BuildRigFromAttachments()
	-- Don't do anything else unless it's R15.
	if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		return
	end

	module.ClearPlayerCharacterFace(character)

	local function recurResetJoint(instance: Instance)
		if instance:IsA("Motor6D") then
			local motor6D = instance :: Motor6D
			motor6D.Transform = CFrame.new()
		elseif instance:IsA("AnimationConstraint") then
			instance.Transform = CFrame.new()
		elseif FFlagEmoteUtilityRetargetPoses and instance:IsA("Bone") then
			(instance :: Bone).Transform = CFrame.new()
		end

		local children = instance:GetChildren()
		for _, c in children do
			recurResetJoint(c)
		end
	end

	recurResetJoint(character)
end

module.FindDefaultMoodAnimationId = function(character: Model): string?
	local animateScript = character:FindFirstChild("Animate")
	if not animateScript then
		return nil
	end

	local moodStringValue = animateScript:FindFirstChild("mood")
	if not moodStringValue then
		return nil
	end

	local moodAnim = moodStringValue:FindFirstChildOfClass("Animation")
	if not moodAnim or moodAnim.AnimationId == "" then
		return nil
	end

	return moodAnim.AnimationId
end

local function loadKeyframesForPoseR15(
	character: Model,
	animationAssetId: number?,
	moodAssetId: number?,
	ignoreRotationInPoseAsset: boolean?,
	forCloseup: boolean?
): KeyframesForPose?
	local keyframesForPose: KeyframesForPose = {}
	keyframesForPose.originalAnimationAssetId = animationAssetId

	-- Get the thumbnails suggested by animationAssetId.
	-- Note: this is a yielding call.
	local useFallbackAnimations
	if forCloseup then
		useFallbackAnimations = false
	else
		useFallbackAnimations = true
	end

	-- The source rig for keyframes without their own, needed if ApplyKeyframesForPose retargets
	if FFlagEmoteUtilityRetargetPoses and isOnRCC() then
		loadCanonicalR15Rig()
	end

	local poseKeyframe, givenPoseTrumpsToolPose, finalAnimationAssetIdOrUrl, poseSourceRig =
		getMainThumbnailKeyframe(character, animationAssetId, not ignoreRotationInPoseAsset, useFallbackAnimations)

	local suggestedKeyframeFromTool, defaultToolKeyframe, suggestedToolSourceRig, defaultToolSourceRig
	-- If there's no pose, don't even bother trying to load tool pose.
	if not forCloseup and poseKeyframe then
		-- If user is holding a tool, that may affect how we pose.  Sort that out.
		-- Note: this is also a yielding call.
		-- I considered trying to run getToolKeyframes and getMainThumbnailKeyframe in parallel, but
		-- running getMainThumbnailKeyframe first gives us givenPoseTrumpsToolPose, which is an input to getToolKeyframes.
		-- Without givenPoseTrumpsToolPose, getToolKeyframes would always have to hit backend to fetch defaultToolKeyframe.
		-- With givenPoseTrumpsToolPose, we might skip that call because the tool has a suggestion on how to pose avatar
		-- and we know we want to use it.
		--
		-- So by running them in sequence I may be able to save us a backend call.
		suggestedKeyframeFromTool, defaultToolKeyframe, suggestedToolSourceRig, defaultToolSourceRig =
			getToolKeyframes(character, givenPoseTrumpsToolPose)
	end

	local moodKeyframe, moodSourceRig
	-- Worry about applying mood asset to pose.
	-- Overall idea:
	-- * If there is no mood asset, skip it.
	-- * If the user did explicitly choose an emote to pose and that emote has mood info, ignore moodAsset:
	--   the emote is a stronger/more explicit choice about mood.
	-- * Otherwise we do care about the mood asset: load it.
	local shouldApplyMood = false
	if FFlagEmoteUtilityDefaultMoodFromCharacter or (moodAssetId and moodAssetId ~= 0) then
		if animationAssetId == nil then
			shouldApplyMood = true
		else
			if not module.PoseKeyframeHasFaceAnimation(poseKeyframe) then
				shouldApplyMood = true
			end
		end
	end
	if shouldApplyMood then
		if FFlagEmoteUtilityDefaultMoodFromCharacter then
			if moodAssetId and moodAssetId ~= 0 then
				moodKeyframe, moodSourceRig = getMoodThumbnailKeyframe(moodAssetId)
			end

			-- Fallback to default R15 mood animation
			if not moodKeyframe then
				local defaultMoodAnimationId = module.FindDefaultMoodAnimationId(character)
				if defaultMoodAnimationId then
					local moodAnimationClip = getAnimationClipByAssetId(defaultMoodAnimationId)
					if moodAnimationClip and moodAnimationClip:IsA("KeyframeSequence") then
						moodKeyframe = module.GetThumbnailKeyframe(nil, moodAnimationClip, 0)
						moodSourceRig = moodAnimationClip:FindFirstChildOfClass("AnimationRigData")
					end
				end
			end
		else
			moodKeyframe, moodSourceRig = getMoodThumbnailKeyframe(moodAssetId)
		end
	end

	keyframesForPose.poseKeyframe = poseKeyframe
	keyframesForPose.moodKeyframe = moodKeyframe
	keyframesForPose.defaultToolKeyframe = defaultToolKeyframe
	keyframesForPose.suggestedKeyframeFromTool = suggestedKeyframeFromTool
	keyframesForPose.finalAnimationAssetIdOrUrl = finalAnimationAssetIdOrUrl
	keyframesForPose.poseSourceRig = poseSourceRig
	keyframesForPose.moodSourceRig = moodSourceRig
	keyframesForPose.defaultToolSourceRig = defaultToolSourceRig
	keyframesForPose.suggestedToolSourceRig = suggestedToolSourceRig

	return keyframesForPose
end

--[[
	Load what we need to load for this character/pose/mood combo.
	Do not apply anything to the character.

	If forCloseup is true:
	* If animationAssetId is present, use that to pose.
	* Otherwise fall back to t-pose.
	  * No worries about tools or tool poses.
	  * No worries about fallback to equipped idle or default idle anim.
	If forCloseup is false:
	* If animationId is present, use that to pose.
	* Otherwise, if idle anim is equipped, use that to pose.
	* Otherwise pose with default idle anim.
	* If avatar is holding a tool, get tool poses.

	Yielding.
]]
module.LoadKeyframesForPose = function(
	character: Model,
	animationAssetId: number?,
	moodAssetId: number?,
	ignoreRotationInPoseAsset: boolean?,
	forCloseup: boolean?
): KeyframesForPose?
	-- sanity checks on args.
	assert(character, "character should be non-nil")
	if animationAssetId ~= nil then
		assert(
			typeof(animationAssetId) == "number",
			"EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a number or nil"
		)
		assert(
			animationAssetId > 0,
			"EmoteUtility.LoadKeyframesForPose expects animationAssetId to be a real asset ID (positive number)"
		)
	end
	if moodAssetId ~= nil then
		assert(
			typeof(moodAssetId) == "number",
			"EmoteUtility.LoadKeyframesForPose expects moodAssetId to be a number or nil"
		)
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return nil
	end
	assert(humanoid, "humanoid should be non-nil. Silence type checker.")

	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		return loadKeyframesForPoseR15(character, animationAssetId, moodAssetId, ignoreRotationInPoseAsset, forCloseup)
	else
		-- Nothing really much to do for r6.
		-- can't apply keyframes to body or face.
		local keyframesForPose: KeyframesForPose = {}
		keyframesForPose.originalAnimationAssetId = animationAssetId
		return keyframesForPose
	end
end

--[[
	Apply KeyframesForPose to the character.
	This does actually pose the character.
	Not yielding.
]]
module.ApplyKeyframesForPose = function(character: Model, keyframesForPose: KeyframesForPose?)
	assert(character, "character should be non-nil")
	if not keyframesForPose then
		return
	end
	assert(keyframesForPose, "keyframesForPose should be non-nil. Silence type checker.")

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end
	assert(humanoid, "humanoid should be non-nil. Silence type checker.")

	-- Un-pose avatar to neutral face/body.
	module.SetPlayerCharacterNeutralPose(character)
	clearJointBlacklist()

	-- Apply body pose.
	local tool = character:FindFirstChildOfClass("Tool")
	local retargeted = false
	-- Retargeting is limited to the cases posing without it gets wrong: A- or T-posed avatars, and a ThumbnailPose that says
	-- it was authored on another rig. Standard R15 avatars keep their exact thumbnails, because R15 to R15 retargeting isn't
	-- the identity (its IK re-solves the limbs for the destination's proportions).
	local shouldRetarget = FFlagEmoteUtilityRetargetPoses
		and humanoid.RigType == Enum.HumanoidRigType.R15
		and isOnRCC()
		and (
			not restsArmsDown(character)
			or (
				tool ~= nil
				and keyframesForPose.suggestedKeyframeFromTool ~= nil
				and keyframesForPose.suggestedToolSourceRig ~= nil
			)
		)
	if shouldRetarget then
		local layers: { PoseLayer } = if tool then getToolBodyLayersInPriorityOrder(keyframesForPose) else {}
		if not tool and keyframesForPose.poseKeyframe then
			table.insert(
				layers,
				{ keyframe = keyframesForPose.poseKeyframe, sourceRig = keyframesForPose.poseSourceRig }
			)
		end
		-- The face pose last, so as in applyKeyframeInner it can't re-pose a joint the body pose set. Its face controls
		-- are applied again below, after the body pose, as applyKeyframeInner would.
		if keyframesForPose.moodKeyframe then
			table.insert(
				layers,
				{ keyframe = keyframesForPose.moodKeyframe, sourceRig = keyframesForPose.moodSourceRig }
			)
		end
		retargeted = applyKeyframesRetargeted(character, humanoid, layers)
		if retargeted and tool then
			attachToolToCharacter(character, humanoid, tool)
		end
	end

	-- Retargeted posing has already posed the body and face
	if humanoid.RigType == Enum.HumanoidRigType.R15 and not retargeted then
		if tool then
			applyR15KeyframeWithTool(character, humanoid, tool, keyframesForPose)
		else
			applyKeyframeInner(character, keyframesForPose.poseKeyframe)
		end
	elseif humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		-- Just move the arm for the tool
		module.AdjustArmOnR6ForTool(character)
	end

	-- Apply face pose.
	-- No point in even trying for R6, we know it's null.
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		if retargeted then
			-- The Animator gave the body pose's face controls priority over the face pose's; give them back to the
			-- face pose, as applyKeyframeInner does
			applyKeyframeControls(character, keyframesForPose.moodKeyframe)
		else
			applyKeyframeInner(character, keyframesForPose.moodKeyframe)
		end
	end

	clearJointBlacklist()
	if isOnRCC() then
		module.ForceAnimationToStep(character)
	end
end

--[[
	Pose the given character based on the given asset ids.

	If the animationAssetId contains details that pose the face, ignore moodAssetId.
	Otherwise pose face with moodAssetId if present.

	ignoreRotationInPoseAsset is an optional param: if false, and animationAsset has a
	"ThumbnailCharacterRotation" NumberValue, use that to rotate the avatar as
	part of the pose.  If true, ignore "ThumbnailCharacterRotation" NumberValue on
	pose asset.

	forCloseup is an optional param.  If present and true:
	-- we don't bother with tool-related poses.
	-- if animationAssetId is nil, we don't bother with fallback logic.
]]
module.SetPlayerCharacterPoseWithMoodFallback = function(
	character: Model,
	animationAssetId: number?,
	moodAssetId: number?,
	ignoreRotationInPoseAsset: boolean?,
	forCloseup: boolean?
): string?
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	-- Humanoid exists.
	assert(humanoid, "humanoid should be non-nil.  Silence type checker.")

	local keyframesForPose =
		module.LoadKeyframesForPose(character, animationAssetId, moodAssetId, ignoreRotationInPoseAsset, forCloseup)
	module.ApplyKeyframesForPose(character, keyframesForPose)

	if not FFlagEmoteUtilityReportPoseAnimationDownloadFailure or not keyframesForPose then
		return nil
	end

	return humanoid.RigType == Enum.HumanoidRigType.R15
			and animationAssetId ~= nil
			and keyframesForPose.poseKeyframe == nil
			and "Failed to download requested pose animation"
		or nil
end

--[[
	This function calculates the camera CFrame for Emote thumbnailing. All parameters beside the model are normally provided within the Emote.
]]
module.ThumbnailZoomExtents = function(
	model: Model,
	thumbnailCameraFOV: number,
	horizontalOffset: number,
	verticalOffset: number,
	thumbnailZoom: number
): CFrame
	local modelCFrame = model:GetModelCFrame()
	local lookVector = modelCFrame.LookVector

	local humanoidRootPart = model:FindFirstChild("HumanoidRootPart") :: Part
	if humanoidRootPart then
		lookVector = humanoidRootPart.CFrame.LookVector
	end

	local initialCameraCFrame = CFrame.new(modelCFrame.Position + (lookVector * 5), modelCFrame.Position)

	local position = modelCFrame.Position
	position = position + Vector3.new(horizontalOffset, -verticalOffset, 0)

	local extentsSize: Vector3 = model:GetExtentsSize()
	local cameraOffset = getCameraOffset(thumbnailCameraFOV, extentsSize)

	local zoomFactor = 1 / thumbnailZoom
	cameraOffset = cameraOffset * zoomFactor

	local cameraRotation = initialCameraCFrame - initialCameraCFrame.Position
	local newCameraCFrame = cameraRotation + position + (lookVector * cameraOffset)
	return newCameraCFrame
end

return module
