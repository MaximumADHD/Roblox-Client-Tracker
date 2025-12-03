--[[
	Utility function for generating thumbnail pictures based on emotes: we need to identify the
	optimal keyframe in the emote, then pose the character according to that keyframe.

	We keep and return a record of the joints we changed and what we changed them from so
	that you can undo a pose.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local InsertService = game:GetService("InsertService")
local FStringEmoteUtilityFallbackKeyframeSequenceAssetId =
	game:DefineFastString("EmoteUtilityFallbackKeyframeSequenceAssetId", "10921261056")
local FFlagFixKeyframeGeneration = game:DefineFastFlag("FixKeyframeGeneration", false)

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local module = {}

type AnimationAssetIdOrUrl = string | number

type AttachmentsByName = { [string]: Attachment }

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
}

type ConfirmProceedAfterYieldType = (number?, number?) -> boolean

export type MapAssetIdToFileNameType = (number) -> string

module.FallbackKeyframeSequenceAssetId = FStringEmoteUtilityFallbackKeyframeSequenceAssetId
module.debugLoadAssetsFromFiles = false
module.mapAssetIdToFileName = nil :: MapAssetIdToFileNameType?

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

-- Helper for assembling & sending a report counter.
local function reportCounter(actionName: string, success: boolean)
	local prefix
	local suffix
	if isOnRCC() then
		prefix = "RCC"
	else
		prefix = "Client"
	end
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
		local target
		if isOnRCC() then
			target = "RCC"
		else
			target = "Client"
		end

		local eventCtx = "EmoteUtility_getPoseAsset"
		local eventName = actionName .. "_Failed"
		RbxAnalyticsService:SendEventDeferred(target, eventCtx, eventName, {
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
		local targetName
		if isOnRCC() then
			targetName = "RCC"
		else
			targetName = "Client"
		end
		local eventCtx = "EmoteUtility_GetAnimationClip"
		local eventName = "EmoteUtility_GetAnimationClip_GetAnimationClipAsyncFailed"
		RbxAnalyticsService:SendEventDeferred(targetName, eventCtx, eventName, {
			keyframeSequenceId = animationClipAssetId,
		})
		return nil
	end

	return animationClip
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
local function applyKeyframeInner(character: Model, poseKeyframe: Keyframe?)
	local function recurApplyPoses(parentPose: Instance?, poseObject: Instance)
		if parentPose and poseObject:IsA("Pose") then
			local part0 = character:FindFirstChild(parentPose.Name) :: Part
			local part1 = character:FindFirstChild(poseObject.Name) :: Part
			local motor6d = module.GetMotor6DBetween(part0, part1)

			local shouldPositionJoint = motor6d and not jointIsBlacklisted(motor6d)

			if shouldPositionJoint then
				assert(motor6d, "motor6d is non-nil. Silence type checker.")
				motor6d.Transform = poseObject.CFrame
				blacklistJoint(motor6d)
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
	Final application of pose keyframes in the case where user is holding a tool.
	Also worries about attaching/welding/equipping the tool.
]]
local function applyR15KeyframeWithTool(
	character: Model,
	humanoid: Humanoid,
	tool: Tool,
	animationAssetId: number?,
	poseKeyframe: Keyframe?,
	defaultToolKeyframe: Keyframe?,
	suggestedKeyframeFromTool: Keyframe?
)
	if suggestedKeyframeFromTool then
		-- If it's the pose suggested by tool, do not respect blacklist (blacklist shouldn't exist
		-- anyway).  Tool knows exactly how to pose each joint.
		applyKeyframeInner(character, suggestedKeyframeFromTool)
		-- Then apply the user-selected pose.
		applyKeyframeInner(character, poseKeyframe)
	else
		-- If it's the pose passed in, selected by user, first do the 'default' tool pose (raising)
		-- the arm, and generating blacklist: we don't want the selected pose to re-position the joints
		-- involved in the tool pose.
		applyKeyframeInner(character, defaultToolKeyframe)
		-- Now apply the user-selected pose.
		-- Do this iff the user-selected pose was explicitly set with a animationAssetId.
		-- Note this is the assetId that was passed in, not the asset id that we may have finally
		-- used to pose (maybe different if original id was nil and we're using some kind of fallback logic).
		-- If animationAssetId is nil, any pose we have is based on some aritary idle anim, and we don't want to mix that
		-- with tool-based poses (design decision)
		if animationAssetId ~= nil then
			applyKeyframeInner(character, poseKeyframe)
		end
	end

	-- Sort out attaching the tool to the avatar.
	attachToolToCharacter(character, humanoid, tool)
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
): (Keyframe?, boolean, AnimationAssetIdOrUrl?)
	local thumbnailKeyframe
	local givenPoseTrumpsToolPose = false
	local finalAnimationAssetIdOrUrl = nil

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

		local thumbnailKeyframeNumber = module.GetNumberValueWithDefault(animation, "ThumbnailKeyframe", nil)

		local thumbnailTime = module.GetNumberValueWithDefault(animation, "ThumbnailTime", nil)

		local rotationDegrees = 0
		if useRotationInPoseAsset then
			rotationDegrees = module.GetNumberValueWithDefault(animation, "ThumbnailCharacterRotation", 0) :: number
		end

		local emoteAnimationClip = module.GetAnimationClip(animation)
		if emoteAnimationClip then
			if emoteAnimationClip:IsA("KeyframeSequence") then
				thumbnailKeyframe =
					module.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteAnimationClip, rotationDegrees)
			elseif emoteAnimationClip:IsA("CurveAnimation") then
				thumbnailKeyframe =
					module.GetThumbnailKeyframeFromCurve(thumbnailTime, emoteAnimationClip, rotationDegrees)
			else
				error("Unsupported Animation type:" .. emoteAnimationClip.ClassName)
			end
		end
	else
		if useFallbackAnimations then
			local keyframeSequenceAssetUrl = module.FALLBACK_KEYFRAME_SEQUENCE_ASSET_URL
			local animateScript = character:FindFirstChild("Animate")
			if animateScript then
				local equippedPoseValue = animateScript:FindFirstChild("Pose") or animateScript:FindFirstChild("pose")
				if equippedPoseValue then
					local poseAnim = equippedPoseValue:FindFirstChildOfClass("Animation")
					if poseAnim then
						keyframeSequenceAssetUrl = poseAnim.AnimationId
					end
				end
			end

			finalAnimationAssetIdOrUrl = keyframeSequenceAssetUrl

			local poseAnimationClip = getAnimationClipByAssetId(keyframeSequenceAssetUrl)
			if poseAnimationClip then
				if not poseAnimationClip:IsA("KeyframeSequence") then
					-- unexpected bad situation: we can't seem to find a keyframe.
					return nil, false, finalAnimationAssetIdOrUrl
				end
				local poseKeyframeSequence = poseAnimationClip :: KeyframeSequence
				thumbnailKeyframe = poseKeyframeSequence:GetKeyframes()[1] :: Keyframe
			end
		end
	end

	return thumbnailKeyframe, givenPoseTrumpsToolPose, finalAnimationAssetIdOrUrl
end

--[[
	Get keyframe to pose face based on mood asset id.
]]
local function getMoodThumbnailKeyframe(moodAssetIdOrUrl: AnimationAssetIdOrUrl?): Keyframe?
	local thumbnailKeyframe
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

	local thumbnailKeyframeNumber = module.GetNumberValueWithDefault(animation, "ThumbnailKeyframe", nil)

	local thumbnailTime = module.GetNumberValueWithDefault(animation, "ThumbnailTime", nil)

	local emoteAnimationClip = module.GetAnimationClip(animation)
	if emoteAnimationClip then
		if emoteAnimationClip:IsA("KeyframeSequence") then
			thumbnailKeyframe = module.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteAnimationClip, 0)
		elseif emoteAnimationClip:IsA("CurveAnimation") then
			thumbnailKeyframe = module.GetThumbnailKeyframeFromCurve(thumbnailTime, emoteAnimationClip, 0)
		else
			error("Unsupported Animation type:" .. emoteAnimationClip.ClassName)
		end
	end

	return thumbnailKeyframe
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
local function getToolKeyframes(character: Model, givenPoseTrumpsToolPose: boolean): (Keyframe?, Keyframe?)
	local suggestedKeyframeFromTool: Keyframe?
	local defaultToolKeyframe
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

	return suggestedKeyframeFromTool, defaultToolKeyframe
end

--[[
	Experience suggests that on RCC, if just change the "Transform" on a joint, the avatar doesn't move.
	We have to play the animation a bit to get things to jump into place.
]]
module.ForceAnimationToStep = function(character: Model)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator then
			animator:StepAnimations(0.1)
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

module.GetMotor6DBetween = function(part0: Part?, part1: Part?): Motor6D?
	if not part0 or not part1 then
		return nil
	end
	assert(part0, "part0 is non-nil. Silence type checker.")
	assert(part1, "part1 is non-nil. Silence type checker.")

	for _, obj in pairs(part1:GetChildren()) do
		if obj:IsA("Motor6D") and obj.Part0 == part0 then
			return obj
		end
	end

	return nil
end

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
			if FFlagFixKeyframeGeneration and desc.Length == 0 then
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
		if positionCurve and rotationCurve then
			local skorc = rotationCurve :: SomeKindOfRotationCurve
			local v3curve = positionCurve :: Vector3Curve
			local transform = getRotationCFrame(skorc, thumbnailTime)
			if transform then
				transform += Vector3.new(table.unpack(v3curve:GetValueAtTime(thumbnailTime)))

				local pose = Instance.new("Pose")
				pose.CFrame = transform
				pose.Name = folder.Name
				pose.Parent = parent
				subPosesContainer = pose
			end
		elseif FFlagFixKeyframeGeneration and hasSubFolders(folder) then
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
	and clear out each Transform on each Motor6D.
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
		end

		local children = instance:GetChildren()
		for _, c in children do
			recurResetJoint(c)
		end
	end

	recurResetJoint(character)
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

	local poseKeyframe, givenPoseTrumpsToolPose, finalAnimationAssetIdOrUrl =
		getMainThumbnailKeyframe(character, animationAssetId, not ignoreRotationInPoseAsset, useFallbackAnimations)

	local suggestedKeyframeFromTool, defaultToolKeyframe
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
		suggestedKeyframeFromTool, defaultToolKeyframe = getToolKeyframes(character, givenPoseTrumpsToolPose)
	end

	local moodKeyframe
	-- Worry about applying mood asset to pose.
	-- Overall idea:
	-- * If there is no mood asset, skip it.
	-- * If the user did explicitly choose an emote to pose and that emote has mood info, ignore moodAsset:
	--   the emote is a stronger/more explicit choice about mood.
	-- * Otherwise we do care about the mood asset: load it.
	local shouldApplyMood = false
	if moodAssetId and moodAssetId ~= 0 then
		if animationAssetId == nil then
			shouldApplyMood = true
		else
			if not module.PoseKeyframeHasFaceAnimation(poseKeyframe) then
				shouldApplyMood = true
			end
		end
	end
	if shouldApplyMood then
		moodKeyframe = getMoodThumbnailKeyframe(moodAssetId)
	end

	keyframesForPose.poseKeyframe = poseKeyframe
	keyframesForPose.moodKeyframe = moodKeyframe
	keyframesForPose.defaultToolKeyframe = defaultToolKeyframe
	keyframesForPose.suggestedKeyframeFromTool = suggestedKeyframeFromTool
	keyframesForPose.finalAnimationAssetIdOrUrl = finalAnimationAssetIdOrUrl

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
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		if tool then
			local originalAnimationAssetId = keyframesForPose.originalAnimationAssetId
			applyR15KeyframeWithTool(
				character,
				humanoid,
				tool,
				originalAnimationAssetId,
				keyframesForPose.poseKeyframe,
				keyframesForPose.defaultToolKeyframe,
				keyframesForPose.suggestedKeyframeFromTool
			)
		else
			applyKeyframeInner(character, keyframesForPose.poseKeyframe)
		end
	else
		-- Just move the arm for the tool
		module.AdjustArmOnR6ForTool(character)
	end

	-- Apply face pose.
	-- No point in even trying for R6, we know it's null.
	if humanoid.RigType == Enum.HumanoidRigType.R15 then
		applyKeyframeInner(character, keyframesForPose.moodKeyframe)
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
)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end

	-- Humanoid exists.
	assert(humanoid, "humanoid should be non-nil.  Silence type checker.")

	local keyframesForPose =
		module.LoadKeyframesForPose(character, animationAssetId, moodAssetId, ignoreRotationInPoseAsset, forCloseup)

	module.ApplyKeyframesForPose(character, keyframesForPose)
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
