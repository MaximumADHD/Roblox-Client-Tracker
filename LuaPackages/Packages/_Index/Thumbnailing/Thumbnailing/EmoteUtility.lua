--[[
	Utility function for generating thumbnail pictures based on emotes: we need to identify the
	optimal keyframe in the emote, then pose the character according to that keyframe.

	We keep and return a record of the joints we changed and what we changed them from so
	that you can undo a pose.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local InsertService = game:GetService("InsertService")
local FStringEmoteUtilityFallbackPoseAssetId = game:DefineFastString("EmoteUtilityFallbackPoseAssetId", "10921261056")
local FFlagEmoteUtilityNoLuaCaching = game:DefineFastFlag("EmoteUtilityNoLuaCaching", false)
local FFlagEmoteUtilityDontUseC1ToPose = game:DefineFastFlag("EmoteUtilityDontUseC1ToPose", false)
local FFlagEmoteUtilityRefactorYieldingWork = game:DefineFastFlag("EmoteUtilityRefactorYieldingWork", false)

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")

local module = {}

-- In cases where no asset id is provided for posing the avatar, fall back a pose
-- based on this animation.
-- Note: this only works on prod, not sitetest or gametest.
-- Note: this is an ID for a *pose*, not an *animation*.
-- My process for getting this pose asset id:
--   On Web go Animations -> Rthro -> Idle Rthro, leads you to: https://www.roblox.com/catalog/2510235063/Rthro-Idle
--   In Studio, use this asset id to load up the animation: in Command bar type "game:GetService("InsertService"):LoadAsset(2510235063).Parent = workspace"
--   In Studio, drill down Model.R15Anim.pose.RthroIdlePose.  It has "AnimationId" field "rbxassetid://10921261056"
--   That 10921261056 is the value I want.
local FALLBACK_POSE_ASSET_ID = "http://www.roblox.com/asset/?id=" .. FStringEmoteUtilityFallbackPoseAssetId

-- FIXME(dbanks)
-- 2022/11/14
-- Caching is done automatically in C++.  No need to cache again in lua.
-- Remove with FFlagEmoteUtilityNoLuaCaching.
local cachedPoseAsset = nil
local cachedPoseAssetIdOrUrl = nil
local cachedAnimationClip = nil
local cachedAnimationClipId = nil
local cachedPoseAssetIsIdleAnim = nil

module.debugLoadAssetsFromFiles = false
module.debugLoadAssetsFromFilesInSubdir = ""

--[[
	In tests, we don't want to actually hit backends to load assets.
	Sometimes we make a bunch of requests and get throttled.  Plus backends go up & down ->
	flaky test.
	If some third party (e.g. lua app) is using this and we want to customize where to look for local
	files, pass in debugLoadAssetsFromFilesInSubdir, e.g. if rbxassets are normally loaded from
	dir "content" and our files are in content/animations, pass in debugLoadAssetsFromFilesInSubdir = "animations/"
]]
module.SetDebugLoadAssetsFromFiles =
	function(debugLoadAssetsFromFiles: boolean, debugLoadAssetsFromFilesInSubdir: string?)
		module.debugLoadAssetsFromFiles = debugLoadAssetsFromFiles
		if debugLoadAssetsFromFilesInSubdir then
			module.debugLoadAssetsFromFilesInSubdir = debugLoadAssetsFromFilesInSubdir
		end
	end

local function isOnRCC()
	-- FIXME(dbanks)
	-- I'd like to just call RunService:IsClient but there's a bug where this returns 'true' on RCC:
	-- https://jira.rbx.com/browse/AVBURST-10987
	-- Once this issue is resolved, change this to call RunService:IsClient.
	-- For now, we settle for a bit of a hacky (but correct) workaround.
	local success, isRCC = pcall(function()
		return game:GetService("ThumbnailGenerator") ~= nil
	end)
	return success and isRCC
end

-- Helper for assembling & sending a report counter.
local function reportCounter(actionName, success)
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

local loadAsset = function(poseAssetId: string): Model
	if module.debugLoadAssetsFromFiles then
		-- load local asset.
		local url = "rbxasset://" .. module.debugLoadAssetsFromFilesInSubdir .. tostring(poseAssetId) .. ".rbxm"
		return InsertService:LoadLocalAsset(url)
	else
		return InsertService:LoadAsset(poseAssetId)
	end
end

-- poseAssetIdOrUrl identifies the pose asset we want to load.
-- If it's a number, it's an assetId: e.g. 10300116892
-- If it's a string, it's a url including an asset hash: e.g.
-- "http://www.roblox.com/Asset/?hash=225a9c414cf0f236d56759a5fabf56e4"
-- Depending on the type we use a different approach to load the asset.
local function getPoseAsset(poseAssetIdOrUrl)
	if not FFlagEmoteUtilityNoLuaCaching then
		if poseAssetIdOrUrl == cachedPoseAssetIdOrUrl then
			return cachedPoseAsset, cachedPoseAssetIsIdleAnim
		end
	end

	local asset
	local success
	local actionName
	if typeof(poseAssetIdOrUrl) == "number" then
		success, asset = pcall(function()
			return loadAsset(poseAssetIdOrUrl):GetChildren()[1]
		end)
		actionName = "EmoteUtility_LoadAsset"
	else
		success, asset = pcall(function()
			return game:GetObjects(poseAssetIdOrUrl)[1]
		end)
		actionName = "EmoteUtility_GetObjects"
	end

	-- On success or failure, add a Counter describing what happened.
	reportCounter(actionName, success)

	-- If we didn't succeed, send more details of failure.
	-- Also return nil.
	if not success then
		local target
		if isOnRCC() then
			target = "RCC"
		else
			target = "Client"
		end

		local eventCtx = "EmoteUtility_getPoseAsset"
		local eventName = actionName .. "_Failed"
		RbxAnalyticsService:SendEventDeferred(target, eventCtx, eventName, {
			poseAssetIdOrUrl = poseAssetIdOrUrl,
		})

		return nil, nil
	end

	local poseAssetIsIdleAnim = false
	if asset.ClassName == "Folder" then
		poseAssetIsIdleAnim = true
		local parent = asset:FindFirstChild("Pose", true) or asset:FindFirstChild("pose", true)
		if parent == nil then
			parent = asset:FindFirstChild("Idle", true) or asset:FindFirstChild("idle", true)
		end
		if parent then
			asset = parent:FindFirstChildWhichIsA("Animation", true)
		else
			asset = asset:FindFirstChildWhichIsA("Animation", true)
		end
	end

	if not FFlagEmoteUtilityNoLuaCaching then
		cachedPoseAsset = asset
		cachedPoseAssetIdOrUrl = poseAssetIdOrUrl
		cachedPoseAssetIsIdleAnim = poseAssetIsIdleAnim
	end

	return asset, poseAssetIsIdleAnim
end

-- Note, this is a yielding function.
-- May return nil if we have problems fetching animation clip.
local function getAnimationClip(animationClipId: string): Model?
	if not FFlagEmoteUtilityNoLuaCaching then
		if animationClipId == cachedAnimationClipId then
			return cachedAnimationClip
		end
	end

	local success, animationClip
	if module.debugLoadAssetsFromFiles then
		local assetId
		for v in string.gmatch(animationClipId, ".*id=([0-9]+)") do
			assetId = v
		end
		assert(assetId, "assetId should be non-nil")

		success, animationClip = pcall(function()
			return loadAsset(assetId)
		end)
	else
		success, animationClip = pcall(function()
			return AnimationClipProvider:GetAnimationClipAsync(animationClipId)
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
			animationClipId = animationClipId,
		})
		return nil
	end

	if not FFlagEmoteUtilityNoLuaCaching then
		cachedAnimationClipId = animationClipId
		cachedAnimationClip = animationClip
	end

	return animationClip
end

module.GetJointBetween = function(part0, part1)
	if not part0 or not part1 then
		return
	end

	for _, obj in pairs(part1:GetChildren()) do
		if obj:IsA("Motor6D") and obj.Part0 == part0 then
			return obj
		end
	end

	return nil
end

-- We may call applyPoseInner a number of times: pose face, pose for tool, pose whole body based on emote, etc.
-- We keep track of "joints we have already posed".
-- We do this because single call may be applying a tool, an emote, and a face pose.
-- When applying the face pose, which has nothing useful to say about, say,
-- the position of the knees, we don't want to override the position of something we already
-- positioned earlier.
-- So as we position joints we add them to blacklist: later poses can't reposition these joints.
-- (So you want to do 'highest priority' posing first)
-- Note: since this is a global, it is important to call clearJointBlacklist right before calling your ApplyPoses,
-- then call ApplyPoses with no yielding work in between, then call clearJointBlacklist when you're done.
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

--[[
	Experience suggests that on RCC, if just change the "Transform" on a joint, the avatar doesn't move.
	We have to play the animation a bit to get things to jump into place.
]]
local function forceAnimationToStep(character: Model)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator then
			animator:StepAnimations(0.1)
		end
	end
end

-- It's possible that a Keyframe contains invalid NumberPoses (e.g APIs not yet enabled)
-- If any individual property doesn't exist then applying the Keyframe should still succeed.
local function trySetProperty(inst, propName, value)
	pcall(function()
		inst[propName] = value
	end)
end

-- Apply properties from NumberPoses to an Instance in the Character
-- This is currently used for FaceControls but more similar controlers may be added in the future.
local function applyControlsFolder(character, parentPose, folder)
	if not parentPose then
		return
	end

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
	Does this poseKeyframe pose the face?
]]
module.PoseKeyframeHasFaceAnimation = function(poseKeyframe)
	local function recurHasFaceAnimation(poseObject)
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
	When applying a pose to a character, we may want to add to a 'blacklist': any joints
	posed by the keyframe are added to the blacklist.
	Subsequent calls to ApplyPose may opt to 'respect blacklist'.  In that case
	we will not pose any joints that are already in the blacklist.
]]
local function applyPoseInner(
	character,
	poseKeyframe,
	DEPRECATED_generateBlacklist: boolean,
	DEPRECATED_respectBlacklist: boolean
)
	local function recurApplyPoses(parentPose, poseObject)
		if parentPose and poseObject:IsA("Pose") then
			local part0, part1 = character:FindFirstChild(parentPose.Name), character:FindFirstChild(poseObject.Name)
			local joint = module.GetJointBetween(part0, part1)

			local shouldPositionJoint
			if FFlagEmoteUtilityDontUseC1ToPose then
				shouldPositionJoint = joint and not jointIsBlacklisted(joint)
			else
				shouldPositionJoint = joint and (not DEPRECATED_respectBlacklist or not jointBlacklist[joint])
			end

			if shouldPositionJoint then
				if FFlagEmoteUtilityDontUseC1ToPose then
					joint.Transform = poseObject.CFrame
					blacklistJoint(joint)
				else
					joint.C1 = joint.C1 * poseObject.CFrame:Inverse()
					if DEPRECATED_generateBlacklist then
						jointBlacklist[joint] = true
					end
				end
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

	for _, poseObj in pairs(poseKeyframe:GetPoses()) do
		recurApplyPoses(nil, poseObj)
	end
end

--[[
	When applying a pose to a character, we build blacklist : record every joint we position.
	Later on, if something else tries to position same joint, ignore that.
]]
module.ApplyPose =
	function(character, poseKeyframe, DEPRECATED_generateBlacklist: boolean, DEPRECATED_respectBlacklist: boolean)
		if FFlagEmoteUtilityDontUseC1ToPose then
			clearJointBlacklist()
		end
		applyPoseInner(character, poseKeyframe, DEPRECATED_generateBlacklist, DEPRECATED_respectBlacklist)
		if FFlagEmoteUtilityDontUseC1ToPose then
			clearJointBlacklist()
			if isOnRCC() then
				forceAnimationToStep(character)
			end
		end
	end

module.GetNumberValueWithDefault = function(poseAsset, name: string, defaultValue: number): number
	local finalValue = defaultValue
	local numberValue = poseAsset:FindFirstChild(name)
	if numberValue and numberValue:IsA("NumberValue") then
		finalValue = numberValue.Value
	end
	return finalValue
end

-- Note, this is a yielding function.
-- May return nil if we have problems fetching animation clip.
module.GetEmoteAnimationClip = function(poseAsset)
	-- Just a heads-up: currently the poseAsset is a keyframe sequence iff the user did not make
	-- an explicit "I want this emote" choice, and we are falling back to a pose based on user's
	-- current idle animation.
	if poseAsset:IsA("AnimationClip") then
		return poseAsset
	elseif poseAsset:IsA("Animation") then
		return getAnimationClip(poseAsset.AnimationId)
	else
		error("Unknown poseAsset type:", poseAsset.ClassName)
	end
end

local function getRotatedKeyframe(keyframe, rotationDegrees)
	if not rotationDegrees or rotationDegrees == 0 then
		return keyframe
	end

	local rotatedKeyframe = keyframe:Clone()

	-- Apply rotation to the root joint (the first sub pose of the first pose)
	local rootPose = rotatedKeyframe:GetPoses()[1]
	if rootPose then
		local lowerTorsoPose = rootPose:GetSubPoses()[1]
		if lowerTorsoPose then
			lowerTorsoPose.CFrame = lowerTorsoPose.CFrame * CFrame.Angles(0, math.rad(rotationDegrees), 0)
		end
	end

	return rotatedKeyframe
end

module.GetThumbnailKeyframe = function(
	thumbnailKeyframeNumber: number,
	emoteKeyframeSequence: KeyframeSequence,
	rotationDegrees: number
): Keyframe
	local emoteKeyframes = emoteKeyframeSequence:GetKeyframes()

	local thumbnailKeyframe
	-- Check that the index provided as the keyframe number is valid
	if thumbnailKeyframeNumber and thumbnailKeyframeNumber > 0 and thumbnailKeyframeNumber <= #emoteKeyframes then
		thumbnailKeyframe = emoteKeyframes[thumbnailKeyframeNumber]
	else
		thumbnailKeyframe = emoteKeyframes[math.ceil(#emoteKeyframes / 2)]
	end

	return getRotatedKeyframe(thumbnailKeyframe, rotationDegrees)
end

-- Get the length of a CurveAnimation (i.e the Time of the last Key in the CurveAnimation)
function module.GetCurveAnimationTimeLength(curveAnimation)
	local maxTimeLength = 0

	for _, desc in curveAnimation:GetDescendants() do
		if desc:IsA("FloatCurve") then
			local lastKeyTime = desc:GetKeyAtIndex(desc.Length).Time
			maxTimeLength = math.max(maxTimeLength, lastKeyTime)
		end
	end

	return maxTimeLength
end

-- Return a CFrame value for either a EulerRotationCurve or RotationCurve at a specfied time
local function getRotationCFrame(rotationCurve, timePosition)
	if rotationCurve:IsA("EulerRotationCurve") then
		return rotationCurve:GetRotationAtTime(timePosition)
	elseif rotationCurve:IsA("RotationCurve") then
		return rotationCurve:GetValueAtTime(timePosition)
	else
		error("Unsupported rotation type:", rotationCurve.ClassName)
	end
end

-- Samples a CurveAnimation at a given time to create an equivalent Keyframe
-- Default for thumbnailTime is half the length of the CurveAnimation
function module.GetThumbnailKeyframeFromCurve(thumbnailTime, curveAnimation, rotationDegrees: number): Keyframe
	local animationTimeLength = module.GetCurveAnimationTimeLength(curveAnimation)

	if not thumbnailTime or thumbnailTime < 0 or thumbnailTime > animationTimeLength then
		thumbnailTime = animationTimeLength / 2
	end

	local CFRAME_CHANNELS = {
		Position = true,
		Rotation = true,
	}

	local function recurGenerateKeyframe(parent, folder)
		local subPosesContainer

		local positionCurve = folder:FindFirstChild("Position")
		local rotationCurve = folder:FindFirstChild("Rotation")
		if positionCurve and rotationCurve then
			local transform = getRotationCFrame(rotationCurve, thumbnailTime)
			transform += Vector3.new(table.unpack(positionCurve:GetValueAtTime(thumbnailTime)))

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
				local numberPose = Instance.new("NumberPose")
				numberPose.Name = child.Name
				numberPose.Value = child:GetValueAtTime(thumbnailTime)
				numberPose.Parent = subPosesContainer
			elseif child:IsA("Folder") then
				recurGenerateKeyframe(subPosesContainer, child)
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

local function findAttachmentsRecur(parent, resultTable)
	for _, obj in pairs(parent:GetChildren()) do
		if obj:IsA("Attachment") then
			resultTable[obj.Name] = obj
		elseif not obj:IsA("Tool") and not obj:IsA("Accoutrement") then
			-- Leave out tools and accoutrements in the character
			findAttachmentsRecur(obj, resultTable)
		end
	end
end

local function findAttachmentsInTool(tool)
	local attachments = {}
	findAttachmentsRecur(tool, attachments)
	return attachments
end

local function findAttachmentsInCharacter(character)
	local attachments = {}
	findAttachmentsRecur(character, attachments)
	return attachments
end

local function weldAttachments(attach1, attach2)
	local weld = Instance.new("Weld")
	weld.Part0 = attach1.Parent
	weld.Part1 = attach2.Parent
	weld.C0 = attach1.CFrame
	weld.C1 = attach2.CFrame
	weld.Parent = attach1.Parent
	return weld
end

local function attachToolToCharacter(character, humanoid, tool)
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
		if tool:FindFirstChild("Handle") then
			local attachment = characterAttachments["RightGripAttachment"]
			if attachment then
				tool.Handle.CFrame = attachment.Parent.CFrame * attachment.CFrame * tool.Grip:inverse()
			end
		end
		humanoid:EquipTool(tool)
	end
end

--[[
	Final application of poses in the case where user is holding a tool.
	Also worries about attaching/welding/equipping the tool.
]]
local function doR15ToolPose(
	character,
	humanoid,
	tool,
	poseAssetId,
	poseKeyframe,
	defaultToolKeyframe,
	suggestedKeyframeFromTool
)
	if suggestedKeyframeFromTool then
		-- If it's the pose suggested by tool, do not respect blacklist (blacklist shouldn't exist
		-- anyway).  Tool knows exactly how to pose each joint.
		applyPoseInner(
			character,
			suggestedKeyframeFromTool,
			--[[generateBlacklist =]]
			true,
			--[[applyBlacklist=]]
			false
		)
		-- Then apply the user-selected pose.
		applyPoseInner(character, poseKeyframe, --[[generateBlacklist =]] false, --[[applyBlacklist=]] true)
	else
		-- If it's the pose passed in, selected by user, first do the 'default' tool pose (raising)
		-- the arm, and generating blacklist: we don't want the selected pose to re-position the joints
		-- involved in the tool pose.
		if defaultToolKeyframe then
			applyPoseInner(character, defaultToolKeyframe, --[[generateBlacklist =]] true, --[[applyBlacklist =]] false)
		end
		-- Now apply the user-selected pose.
		-- Do this iff the user-selected pose was explicitly set with a poseAssetId.  If not, it's a a pose based
		-- on idle animation, and we don't want to do arbitrary idle animation + tool because for some gear that doesn't look
		-- right.
		if poseAssetId ~= nil then
			applyPoseInner(character, poseKeyframe, --[[generateBlacklist =]] false, --[[applyBlacklist=]] true)
		end
	end
	if not FFlagEmoteUtilityDontUseC1ToPose then
		clearJointBlacklist()
	end

	-- Sort out attaching the tool to the avatar.
	attachToolToCharacter(character, humanoid, tool)
end

--[[
	Given a pose asset ID (number) or pose asset url (string), figure out the keyframe we're going to use to
	pose the avatar.
	- may be nil, in which case we use a fallback/constant keyframe.  This is a 'weak'
	  pose which may be trumped by a tool's suggested pose.
	- may be asset id for a keyframe sequence.  This is also a 'weak' pose which may be
	  trumped by a tool's suggested pose.
	- may be asset id for an animation.  This is a 'strong' pose which is considered more
	  important than any suggestion from tool.

	useRotationInPoseAsset, if true, means we look for a "ThumbnailCharacterRotation"
	number value in the pose asset and use that to rotate the avatar.

	Return the keyframe and a bool on whether or not this trumps tools suggestions.
	May return nil for keyframe.
]]
local function getMainThumbnailKeyframe(character, poseAssetIdOrUrl, useRotationInPoseAsset)
	local thumbnailKeyframe
	local givenPoseTrumpsToolPose = false

	if poseAssetIdOrUrl then
		local poseAsset, poseAssetIsIdleAnim = getPoseAsset(poseAssetIdOrUrl)

		-- poseAsset could be nil if something went wrong.
		if poseAsset == nil then
			return nil, givenPoseTrumpsToolPose
		end

		-- In the current setup, a user may select an emote to pose their avatar for a picture.
		-- If they do this, the 'poseAsset' is an Animation, and we consider that a 'stronger'
		-- vote for how to pose than any info we may get from a tool they are holding.
		-- If they did not select an emote, we defer to the tool: if it has something to
		-- say about how we pose, use that.
		if not poseAssetIsIdleAnim then
			givenPoseTrumpsToolPose = true
		end

		local thumbnailKeyframeNumber = module.GetNumberValueWithDefault(poseAsset, "ThumbnailKeyframe", nil)

		local thumbnailTime = module.GetNumberValueWithDefault(poseAsset, "ThumbnailTime", nil)

		local rotationDegrees = 0
		if useRotationInPoseAsset then
			rotationDegrees = module.GetNumberValueWithDefault(poseAsset, "ThumbnailCharacterRotation", 0)
		end

		local emoteAnimationClip = module.GetEmoteAnimationClip(poseAsset)
		if emoteAnimationClip then
			if emoteAnimationClip:IsA("KeyframeSequence") then
				thumbnailKeyframe =
					module.GetThumbnailKeyframe(thumbnailKeyframeNumber, emoteAnimationClip, rotationDegrees)
			elseif emoteAnimationClip:IsA("CurveAnimation") then
				thumbnailKeyframe =
					module.GetThumbnailKeyframeFromCurve(thumbnailTime, emoteAnimationClip, rotationDegrees)
			else
				error("Unsupported Animation type:", emoteAnimationClip.ClassName)
			end
		end
	else
		local poseAnimationId = FALLBACK_POSE_ASSET_ID
		local animateScript = character:FindFirstChild("Animate")
		if animateScript then
			local equippedPoseValue = animateScript:FindFirstChild("Pose") or animateScript:FindFirstChild("pose")
			if equippedPoseValue then
				local poseAnim = equippedPoseValue:FindFirstChildOfClass("Animation")
				if poseAnim then
					poseAnimationId = poseAnim.AnimationId
				end
			end
		end

		local poseKeyframeSequence = getAnimationClip(poseAnimationId)
		thumbnailKeyframe = if poseKeyframeSequence then poseKeyframeSequence:GetKeyframes()[1] else nil
	end

	return thumbnailKeyframe, givenPoseTrumpsToolPose
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
local function getToolKeyframes(character, givenPoseTrumpsToolPose)
	local suggestedKeyframeFromTool
	local defaultToolKeyframe
	local tool = character:FindFirstChildOfClass("Tool")
	if not tool then
		return nil, nil, nil
	end

	local useSuggestedKeyframeFromTool = false
	if not givenPoseTrumpsToolPose then
		-- Tool is posing the whole avatar.
		suggestedKeyframeFromTool = tool:FindFirstChild("ThumbnailPose")
		useSuggestedKeyframeFromTool = suggestedKeyframeFromTool and suggestedKeyframeFromTool:IsA("Keyframe")
	end

	-- If the tool is not posing the whole avatar, get a pose based on the avatar's
	-- default "tool" pose (usually just raising the avatar's arm).
	if not useSuggestedKeyframeFromTool then
		suggestedKeyframeFromTool = nil
		local toolHoldAnimationObject = character.Animate.toolnone.ToolNoneAnim
		if toolHoldAnimationObject then
			local toolKeyframeSequence = module.GetEmoteAnimationClip(toolHoldAnimationObject)
			if not toolKeyframeSequence then
				-- We couldn't load the animation clip.
				-- Just proceed like there's no tool.
				return nil, nil, nil
			end
			assert(toolKeyframeSequence:IsA("KeyframeSequence"), "ToolNoneAnim must be a KeyframeSequence")
			defaultToolKeyframe = module.GetThumbnailKeyframe(nil, toolKeyframeSequence, 0)

			-- GetEmoteAnimationClip is a yielding function.  Are we still holding this tool?
			-- If not, things are kind of a mess: just proceed like we don't have a tool,
			-- trust the calling code to call again to sort things out with newTool.
			if not tool:IsDescendantOf(character) then
				-- Things are confusing.  Trust the calling code to call this again
				-- with newTool.  Proceed with this call just using no tool.
				return nil, nil, nil
			end
		end
	end

	return tool, suggestedKeyframeFromTool, defaultToolKeyframe
end

--[[
	Reset character FaceControls to neutral state.
]]
module.ClearPlayerCharacterFace = function(character)
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

-- Check for cases where we can quickly/easily resolve pose, with no async complications.
-- If we find one, return true.
module.SetPlayerCharacterPoseEasyOut = function(character: Model, humanoid: Humanoid)
	if not humanoid then
		return true
	end

	if humanoid.RigType == Enum.HumanoidRigType.R6 then
		local tool = character:FindFirstChildOfClass("Tool")
		if tool then
			character.Torso["Right Shoulder"].CurrentAngle = math.rad(90)
			character.Torso["Right Shoulder"].DesiredAngle = math.rad(90)
		else
			character.Torso["Right Shoulder"].CurrentAngle = math.rad(0)
			character.Torso["Right Shoulder"].DesiredAngle = math.rad(0)
		end
		return true
	end
	return false
end

--[[
	Do the work needed to convert our resource ids/urls describing pose into
	useful keyframe data we can use to pose the avatar.
	This may involve several RPCs to fetch resources from backend.

	Returns:
	-- poseKeyframe: pose based on poseAssetId.
	-- tool: the tool avatar is holding, if present.  If nil you can ignore suggestedKeyframeFromTool and defaultToolKeyframe
	-- suggestedKeyframeFromTool: a pose based on tool's suggestion of how to pose whole body.  If present, ignore defaultToolKeyframe.
	-- defaultToolKeyframe: user is holding tool but tool doesn't tell us how to pose avatar.  Some default "hold up your arm" pose
	   for holding a tool.
]]
-- FIXME(dbanks)
-- 2023/05/04
-- Once FFlagEmoteUtilityRefactorYieldingWork is on for good, remove the second return arg: don't need it.
local function doYieldingWorkToLoadPoseInfo(
	character: Model,
	poseAssetId: number?,
	ignoreRotationInPoseAsset: boolean?
): (Keyframe?, Tool?, Keyframe?, Tool?)
	local poseKeyframe
	local givenPoseTrumpsToolPose

	-- Get the thumbnails suggested by poseAssetId.
	-- Note: this is a yielding call.
	poseKeyframe, givenPoseTrumpsToolPose =
		getMainThumbnailKeyframe(character, poseAssetId, not ignoreRotationInPoseAsset)

	-- Don't bother with tool info we don't even have a main body pose.
	if not poseKeyframe then
		return nil, nil, nil, nil
	end

	-- If user is holding a tool, that may affect how we pose.  Sort that out.
	-- Note: this is also a yielding call.
	-- I considered trying to run getToolKeyframes and getMainThumbnailKeyframe in parallel, but
	-- running getMainThumbnailKeyframe first gives us givenPoseTrumpsToolPose, which is an input to getToolKeyframes.
	-- Without givenPoseTrumpsToolPose, getToolKeyframes would always have to hit backend to fetch defaultToolKeyframe.
	-- With givenPoseTrumpsToolPose, we might skip that call because the tool has a suggestion on how to pose avatar
	-- and we know we want to use it.
	--
	-- So by running them in sequence I may be able to save us a backend call.
	local tool, suggestedKeyframeFromTool, defaultToolKeyframe = getToolKeyframes(character, givenPoseTrumpsToolPose)

	return poseKeyframe, tool, suggestedKeyframeFromTool, defaultToolKeyframe
end

-- poseAssetIdOrUrl identifies the pose asset we want to load.
-- If it's a number, it's an assetId: e.g. 10300116892
-- If it's a string, it's a url including an asset hash: e.g.
-- "http://www.roblox.com/Asset/?hash=225a9c414cf0f236d56759a5fabf56e4"
-- Depending on the type we will use a different approach to load the asset.
module.SetPlayerCharacterFace = function(character, poseAssetIdOrUrl, confirmProceedAfterYield)
	-- Early out on nil/empty input.
	if not poseAssetIdOrUrl then
		return
	end
	if poseAssetIdOrUrl == "" then
		return
	end
	if poseAssetIdOrUrl == 0 then
		return
	end

	assert(
		typeof(poseAssetIdOrUrl) == "number" or typeof(poseAssetIdOrUrl) == "string",
		"EmoteUtility.SetPlayerCharacterFace expects poseAssetIdOrUrl to be a number or string"
	)

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then
		return
	end

	-- Get the thumbnails suggested by poseAssetIdOrUrl.
	local moodKeyframe = getMainThumbnailKeyframe(character, poseAssetIdOrUrl, true)

	-- If that fails, just quit.  No posing.
	if not moodKeyframe then
		return
	end

	-- We have called some yielding functions (and now we are done, no more yielding functions).
	-- Do we still want to do this?
	if confirmProceedAfterYield and not confirmProceedAfterYield(poseAssetIdOrUrl) then
		return
	end

	-- Before applying the pose, clear out any previous face pose (otherwise we get some hybrid of previous & mood)
	module.ClearPlayerCharacterFace(character)

	module.ApplyPose(character, moodKeyframe, false, false)
end

--[[
	Experimentation suggests that just calling "humanoid:BuildRigFromAttachments()"
	isn't good enough to get the avatar in neutral t-pose: we also have to go through
	and clear out each Transform on each Motor6D.
]]
module.SetPlayerCharacterNeutralPose = function(character)
	module.ClearPlayerCharacterFace(character)
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	humanoid:BuildRigFromAttachments()

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

--[[
	Load what we need to load for this character/pose/mood combo.
	Do not apply anything to the character.
	Yielding.
]]
export type KeyframesForPose = {
	poseAssetId: number?,
	poseKeyframe: Keyframe?,
	moodKeyframe: Keyframe?,
	defaultToolKeyframe: Keyframe?,
	suggestedKeyframeFromTool: Keyframe?,
}

module.LoadKeyframesForPose = function(
	character: Model,
	poseAssetId: number?,
	moodAssetId: number?,
	ignoreRotationInPoseAsset: boolean?
): KeyframesForPose
	local keyframesForPose: KeyframesForPose = {}
	keyframesForPose.poseAssetId = poseAssetId

	assert(character, "character should be non-nil")
	if poseAssetId ~= nil then
		assert(
			typeof(poseAssetId) == "number",
			"EmoteUtility.LoadKeyframesForPose expects poseAssetId to be a number or nil"
		)
		assert(
			poseAssetId > 0,
			"EmoteUtility.LoadKeyframesForPose expects poseAssetId to be a real asset ID (positive number)"
		)
	end
	if moodAssetId ~= nil then
		assert(
			typeof(moodAssetId) == "number",
			"EmoteUtility.LoadKeyframesForPose expects moodAssetId to be a number or nil"
		)
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
		-- Only R15 avatars can be posed: there are no asset ids to load.
		return keyframesForPose
	end

	local poseKeyframe, _, suggestedKeyframeFromTool, defaultToolKeyframe =
		doYieldingWorkToLoadPoseInfo(character, poseAssetId, ignoreRotationInPoseAsset)

	local moodKeyframe
	local poseKeyframeHasFaceAnimation = module.PoseKeyframeHasFaceAnimation(poseKeyframe)
	if not poseKeyframeHasFaceAnimation and moodAssetId and moodAssetId ~= 0 then
		-- Get the face keyframes.
		-- Note: this is yielding function.  I considered making it parallel with doYieldingWorkToLoadPoseInfo, but
		-- doYieldingWorkToLoadPoseInfo gives us poseKeyframe which in turn tells us poseKeyframeHasFaceAnimation.
		-- Depending on the results of doYieldingWorkToLoadPoseInfo we might not even need to make this call.
		moodKeyframe = getMainThumbnailKeyframe(character, moodAssetId, true)
	end

	keyframesForPose.poseKeyframe = poseKeyframe
	keyframesForPose.moodKeyframe = moodKeyframe
	keyframesForPose.defaultToolKeyframe = defaultToolKeyframe
	keyframesForPose.suggestedKeyframeFromTool = suggestedKeyframeFromTool

	return keyframesForPose
end

--[[
	Apply KeyframesForPose to the character.
	This does actually pose the character.
	Not yielding.
]]
module.ApplyKeyframesForPose = function(character: Model, keyframesForPose: KeyframesForPose)
	assert(character, "character should be non-nil")

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	-- Un-pose avatar to neutral face/body.
	if FFlagEmoteUtilityDontUseC1ToPose then
		module.SetPlayerCharacterNeutralPose(character)
	else
		humanoid:BuildRigFromAttachments()
		module.ClearPlayerCharacterFace(character)
	end

	if FFlagEmoteUtilityDontUseC1ToPose then
		clearJointBlacklist()
	end

	-- Apply body pose.
	local tool = character:FindFirstChildOfClass("Tool")

	if tool then
		doR15ToolPose(
			character,
			humanoid,
			tool,
			keyframesForPose.poseAssetId,
			keyframesForPose.poseKeyframe,
			keyframesForPose.defaultToolKeyframe,
			keyframesForPose.suggestedKeyframeFromTool
		)
	else
		applyPoseInner(character, keyframesForPose.poseKeyframe, false, false)
	end

	-- Apply face pose.
	if keyframesForPose.moodKeyframe then
		applyPoseInner(character, keyframesForPose.moodKeyframe, false, false)
	end

	if FFlagEmoteUtilityDontUseC1ToPose then
		clearJointBlacklist()
		if isOnRCC() then
			forceAnimationToStep(character)
		end
	end
end

--[[
	Pose the given character based on the given asset ids.

	If the poseAssetId contains details that pose the face, ignore moodAssetId.
	Otherwise pose face with moodAssetId if present.

	poseAssetId could point to an animation asset or a keyframe sequence.
	* If no poseAssetId is provided we fall back to looking for children of the character
	with particular names/structure to indicate a pose.
	Otherwise we fall back to some constant value.  NOTE this constant value will only
	work on production (hardwired asset id).
	* If poseAssetId is provided, the caller is assumed to care about exactly what pose
	we are getting.  Since this function has async yield in it, hit the provided
	confirmProceedAfterYield callback after all the yielding stuff to confirm we still
	really want to do this.

	This should properly account for the following quirks:
	* If tool present, try to adjust pose to account for tool.
	* If R6, just do very simple adaptation to account for possible tool.

	ignoreRotationInPoseAsset is an optional param: if false, and poseAsset has a
	"ThumbnailCharacterRotation" NumberValue, use that to rotate the avatar as
	part of the pose.  If true, ignore "ThumbnailCharacterRotation" NumberValue on
	pose asset.
]]
-- FIXME(dbanks)
-- 2023/05/08
-- Remove DEPRECATED_confirmProceedAfterYield with FFlagEmoteUtilityRefactorYieldingWork
module.SetPlayerCharacterPoseWithMoodFallback = function(
	character: Model,
	poseAssetId: number?,
	moodAssetId: number?,
	ignoreRotationInPoseAsset: boolean,
	DEPRECATED_confirmProceedAfterYield: (number?, number?) -> boolean
)
	if FFlagEmoteUtilityRefactorYieldingWork then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if module.SetPlayerCharacterPoseEasyOut(character, humanoid) then
			return
		end
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			return
		end

		local keyframesForPose =
			module.LoadKeyframesForPose(character, poseAssetId, moodAssetId, ignoreRotationInPoseAsset)

		module.ApplyKeyframesForPose(character, keyframesForPose)
	else
		if poseAssetId ~= nil then
			assert(
				typeof(poseAssetId) == "number",
				"EmoteUtility.SetPlayerCharacterPoseWithMoodFallback expects poseAssetId to be a number or nil"
			)
			assert(
				poseAssetId > 0,
				"EmoteUtility.SetPlayerCharacterPoseWithMoodFallback expects poseAssetId to be a real asset ID (positive number)"
			)
		end
		if moodAssetId ~= nil then
			assert(
				typeof(moodAssetId) == "number",
				"EmoteUtility.SetPlayerCharacterPoseWithMoodFallback expects moodAssetId to be a number or nil"
			)
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if module.SetPlayerCharacterPoseEasyOut(character, humanoid) then
			return
		end
		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			return
		end

		local poseKeyframe, tool, suggestedKeyframeFromTool, defaultToolKeyframe =
			doYieldingWorkToLoadPoseInfo(character, poseAssetId, ignoreRotationInPoseAsset)

		-- If we failed to get info on how to pose the body, just quit.
		if not poseKeyframe then
			return
		end

		local moodKeyframe
		local poseKeyframeHasFaceAnimation = module.PoseKeyframeHasFaceAnimation(poseKeyframe)
		if not poseKeyframeHasFaceAnimation and moodAssetId and moodAssetId ~= 0 then
			-- Get the face keyframes.
			-- Note: this is yielding function.  I considered making it parallel with doYieldingWorkToLoadPoseInfo, but
			-- doYieldingWorkToLoadPoseInfo gives us poseKeyframe which in turn tells us poseKeyframeHasFaceAnimation.
			-- Depending on the results of doYieldingWorkToLoadPoseInfo we might not even need to make this call.
			moodKeyframe = getMainThumbnailKeyframe(character, moodAssetId, true)
		end

		-- We have called some yielding functions (and now we are done, no more yielding functions).
		-- Do we still want to do this?
		if
			DEPRECATED_confirmProceedAfterYield and not DEPRECATED_confirmProceedAfterYield(poseAssetId, moodAssetId)
		then
			return
		end

		-- Un-pose avatar to neutral face/body.
		if FFlagEmoteUtilityDontUseC1ToPose then
			module.SetPlayerCharacterNeutralPose(character)
		else
			humanoid:BuildRigFromAttachments()
			module.ClearPlayerCharacterFace(character)
		end

		if FFlagEmoteUtilityDontUseC1ToPose then
			clearJointBlacklist()
		end

		-- Apply body pose.
		if tool then
			doR15ToolPose(
				character,
				humanoid,
				tool,
				poseAssetId,
				poseKeyframe,
				defaultToolKeyframe,
				suggestedKeyframeFromTool
			)
		else
			applyPoseInner(character, poseKeyframe, false, false)
		end

		-- Apply face pose.
		if moodKeyframe then
			applyPoseInner(character, moodKeyframe, false, false)
		end

		if FFlagEmoteUtilityDontUseC1ToPose then
			clearJointBlacklist()
			if isOnRCC() then
				forceAnimationToStep(character)
			end
		end
	end
end

--[[
	Very similar to SetPlayerCharacterPoseWithMoodFallback, except there's no option to set the mood before setting
	the emote.
	Rendered obsolete by SetPlayerCharacterPoseWithMoodFallback.
	Remove with FFlagEmoteUtilityDontUseC1ToPose.
	I'd like to rename to "DEPRECATED_SetPlayerCharacterPose" but things get all confusing with multiple repos depending
	on this, easier to just leave as-is.
]]
module.SetPlayerCharacterPose =
	function(character: Model, poseAssetId: number, confirmProceedAfterYield, ignoreRotationInPoseAsset: boolean)
		if poseAssetId ~= nil then
			assert(
				typeof(poseAssetId) == "number",
				"EmoteUtility.SetPlayerCharacterPose expects poseAssetId to be a number or nil"
			)
			assert(
				poseAssetId > 0,
				"EmoteUtility.SetPlayerCharacterPose expects poseAssetId to be a real asset ID (positive number)"
			)
		end

		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if module.SetPlayerCharacterPoseEasyOut(character, humanoid) then
			return
		end

		if humanoid.RigType ~= Enum.HumanoidRigType.R15 then
			return
		end

		local poseKeyframe, tool, suggestedKeyframeFromTool, defaultToolKeyframe =
			doYieldingWorkToLoadPoseInfo(character, poseAssetId, ignoreRotationInPoseAsset)

		-- If we failed to get info on how to pose the body, just quit.
		if not poseKeyframe then
			return
		end

		-- We have called some yielding functions (and now we are done, no more yielding functions).
		-- Do we still want to do this?
		if confirmProceedAfterYield and not confirmProceedAfterYield(poseAssetId) then
			return
		end

		-- Un-pose to stock 'at attention' stance.
		humanoid:BuildRigFromAttachments()

		-- Iff this is going to pose the face, first unpose the face.
		-- (If it's not going to pose the face then leave it alone: before this function was called we may have already
		-- moved face into a pose we like based on mood, say by applying CharacterAppearance to Player.
		if module.PoseKeyframeHasFaceAnimation(poseKeyframe) then
			module.ClearPlayerCharacterFace(character)
		end

		if tool then
			doR15ToolPose(
				character,
				humanoid,
				tool,
				poseAssetId,
				poseKeyframe,
				defaultToolKeyframe,
				suggestedKeyframeFromTool
			)
		else
			module.ApplyPose(character, poseKeyframe, false, false)
		end
	end

local function getCameraOffset(fov: number, extentsSize: Vector3): number
	local xSize, ySize, zSize = extentsSize.X, extentsSize.Y, extentsSize.Z

	local maxSize = math.sqrt(xSize ^ 2 + ySize ^ 2 + zSize ^ 2)
	local fovMultiplier = 1 / math.tan(math.rad(fov) / 2)

	local halfSize = maxSize / 2
	return halfSize * fovMultiplier
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

	local humanoidRootPart = model:FindFirstChild("HumanoidRootPart")
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
