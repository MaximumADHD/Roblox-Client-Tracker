--[[
	Utility function for generating thumbnail pictures based on emotes: we need to identify the
	optimal keyframe in the emote, then pose the character according to that keyframe.

	We keep and return a record of the joints we changed and what we changed them from so
	that you can undo a pose.
]]
local AnimationClipProvider = game:GetService("AnimationClipProvider")
local InsertService = game:GetService("InsertService")

local module = {}

-- In cases where no asset id is provided for posing the avatar, fall back a pose
-- based on this animation.
-- Note: this only works on prod, not sitetest or gametest.
local FALLBACK_POSE_ANIMATION_ID = "http://www.roblox.com/asset/?id=532421348"

-- Particularly on the universal app, we often call SetPlayerCharacterPose several times
-- in a row with the same emote/pose assets.
-- We can avoid a bunch of async calls by caching results.
local cachedPoseAsset = nil
local cachedPoseAssetId = nil
local cachedAnimationClip = nil
local cachedAnimationClipId = nil
local cachedPoseAssetIsIdleAnim = nil

local function getPoseAsset(poseAssetId)
	if poseAssetId == cachedPoseAssetId then
		return cachedPoseAsset, cachedPoseAssetIsIdleAnim
	end
	local asset = InsertService:LoadAsset(poseAssetId):GetChildren()[1]

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

	cachedPoseAsset = asset
	cachedPoseAssetId = poseAssetId
	cachedPoseAssetIsIdleAnim = poseAssetIsIdleAnim
	return asset, poseAssetIsIdleAnim
end

-- Note, this is a yielding function.
local function getAnimationClip(animationClipId)
	if animationClipId == cachedAnimationClipId then
		return cachedAnimationClip
	end

	local animationClip = AnimationClipProvider:GetAnimationClipAsync(animationClipId)
	cachedAnimationClipId = animationClipId
	cachedAnimationClip = animationClip
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

local jointBlacklist = {}

local function clearJointBlacklist()
	jointBlacklist = {}
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
	When applying a pose to a character, we may want to add to a 'blacklist': any joints
	posed by the keyframe are added to the blacklist.
	Subsequent calls to ApplyPose may opt to 'respect blacklist'.  In that case
	we will not pose any joints that are already in the blacklist.
]]
module.ApplyPose = function(character, poseKeyframe, generateBlacklist, respectBlacklist)
	local function recurApplyPoses(parentPose, poseObject)
		if parentPose and poseObject:IsA("Pose") then
			local part0, part1 = character:FindFirstChild(parentPose.Name), character:FindFirstChild(poseObject.Name)
			local joint = module.GetJointBetween(part0, part1)
			if joint and (not respectBlacklist or not jointBlacklist[joint]) then
				joint.C1 = joint.C1 * poseObject.CFrame:Inverse()
				if generateBlacklist then
					jointBlacklist[joint] = true
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

module.GetNumberValueWithDefault = function(poseAsset, name, defaultValue)
	local finalValue = defaultValue
	local numberValue = poseAsset:FindFirstChild(name)
	if numberValue and numberValue:IsA("NumberValue") then
		finalValue = numberValue.Value
	end
	return finalValue
end

-- Note, this is a yielding function.
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

module.GetThumbnailKeyframe = function(thumbnailKeyframeNumber, emoteKeyframeSequence, rotationDegrees)
	local emoteKeyframes = emoteKeyframeSequence:GetKeyframes()

	local thumbnailKeyframe
	-- Check that the index provided as the keyframe number is valid
	if thumbnailKeyframeNumber and thumbnailKeyframeNumber > 0 and thumbnailKeyframeNumber <= #emoteKeyframes then
		thumbnailKeyframe = emoteKeyframes[thumbnailKeyframeNumber]
	else
		thumbnailKeyframe = emoteKeyframes[math.ceil(#emoteKeyframes/2)]
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
function module.GetThumbnailKeyframeFromCurve(thumbnailTime, curveAnimation, rotationDegrees)
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
local function doR15ToolPose(character, humanoid, tool, poseAssetId, thumbnailKeyframe, defaultToolKeyframe, suggestedKeyframeFromTool)
	if suggestedKeyframeFromTool then
		-- If it's the pose suggested by tool, do not respect blacklist (blacklist shouldn't exist
		-- anyway).  Tool knows exactly how to pose each joint.
		module.ApplyPose(character, suggestedKeyframeFromTool, --[[generateBlacklist =]] true, --[[applyBlacklist=]] false)
		-- Then apply the user-selected pose.
		module.ApplyPose(character, thumbnailKeyframe, --[[generateBlacklist =]] false, --[[applyBlacklist=]] true)
	else
		-- If it's the pose passed in, selected by user, first do the 'default' tool pose (raising)
		-- the arm, and generating blacklist: we don't want the selected pose to re-position the joints
		-- involved in the tool pose.
		if defaultToolKeyframe then
			module.ApplyPose(character, defaultToolKeyframe, --[[generateBlacklist =]] true, --[[applyBlacklist =]]false)
		end
		-- Now apply the user-selected pose.
		-- Do this iff the user-selected pose was explicitly set with a poseAssetId.  If not, it's a a pose based
		-- on idle animation, and we don't want to do arbitrary idle animation + tool because for some gear that doesn't look
		-- right.
		if poseAssetId ~= nil then
			module.ApplyPose(character, thumbnailKeyframe, --[[generateBlacklist =]] false, --[[applyBlacklist=]] true)
		end
	end
	clearJointBlacklist()

	-- Sort out attaching the tool to the avatar.
	attachToolToCharacter(character, humanoid, tool)
end

--[[
	Given a pose asset ID, figure out the keyframe we're going to use to pose the avatar.
	- may be nil, in which case we use a fallback/constant keyframe.  This is a 'weak'
	  pose which may be trumped by a tool's suggested pose.
	- may be asset id for a keyframe sequence.  This is also a 'weak' pose which may be
	  trumped by a tool's suggested pose.
	- may be asset id for an animation.  This is a 'strong' pose which is considered more
	  important than any suggestion from tool.

    useRotationInPoseAsset, if true, means we look for a "ThumbnailCharacterRotation"
	number value in the pose asset and use that to rotate the avatar.

	Return the keyframe and a bool on whether or not this trumps tools suggestions.
]]
local function getMainThumbnailKeyframe(character, poseAssetId, useRotationInPoseAsset)
	local thumbnailKeyframe
	local givenPoseTrumpsToolPose = false

	if poseAssetId then
		local poseAsset, poseAssetIsIdleAnim = getPoseAsset(poseAssetId)

		-- In the current setup, a user may select an emote to pose their avatar for a picture.
		-- If they do this, the 'poseAsset' is an Animation, and we consider that a 'stronger'
		-- vote for how to pose than any info we may get from a tool they are holding.
		-- If they did not select an emote, we defer to the tool: if it has something to
		-- say about how we pose, use that.
		if not poseAssetIsIdleAnim then
			givenPoseTrumpsToolPose = true
		end

		local thumbnailKeyframeNumber = module.GetNumberValueWithDefault(poseAsset,
			"ThumbnailKeyframe",
			nil)

		local thumbnailTime = module.GetNumberValueWithDefault(poseAsset,
			"ThumbnailTime",
			nil)

		local rotationDegrees = 0
		if useRotationInPoseAsset then
			rotationDegrees = module.GetNumberValueWithDefault(poseAsset,
				"ThumbnailCharacterRotation",
				0)
		end

		local emoteAnimationClip = module.GetEmoteAnimationClip(poseAsset)
		if emoteAnimationClip:IsA("KeyframeSequence") then
			thumbnailKeyframe = module.GetThumbnailKeyframe(thumbnailKeyframeNumber,
				emoteAnimationClip,
				rotationDegrees)
		elseif emoteAnimationClip:IsA("CurveAnimation") then
			thumbnailKeyframe = module.GetThumbnailKeyframeFromCurve(thumbnailTime,
				emoteAnimationClip,
				rotationDegrees)
		else
			error("Unsupported Animation type:", emoteAnimationClip.ClassName)
		end
	else
		local poseAnimationId = FALLBACK_POSE_ANIMATION_ID
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
		thumbnailKeyframe = poseKeyframeSequence:GetKeyframes()[1]
	end

	return thumbnailKeyframe, givenPoseTrumpsToolPose
end

--[[
	Sort out what to do if user is holding a tool.
	Doesn't actually pose the avatar, just collects whether or not we have a tool at
	all, and, if so, either:
	-- suggestedKeyframeFromTool: a pose based on tool's suggestion of how to pose whole body.
	-- defaultToolKeyframe: a minor adjustment to apply to our selected pose to account for
	   having a tool (basically a keyframe that raises the arm)

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
		useSuggestedKeyframeFromTool = suggestedKeyframeFromTool and
			suggestedKeyframeFromTool:IsA("Keyframe")
	end

	-- If the tool is not posing the whole avatar, get a pose based on the avatar's
	-- default "tool" pose (usually just raising the avatar's arm).
	if not useSuggestedKeyframeFromTool then
		suggestedKeyframeFromTool = nil
		local toolHoldAnimationObject = character.Animate.toolnone.ToolNoneAnim
		if toolHoldAnimationObject then
			local toolKeyframeSequence = module.GetEmoteAnimationClip(toolHoldAnimationObject)
			assert(toolKeyframeSequence:IsA("KeyframeSequence"), "ToolNoneAnim must be a KeyframeSequence")
			defaultToolKeyframe = module.GetThumbnailKeyframe(nil, toolKeyframeSequence, 0)

			-- GetEmoteKeyFrames is a yielding function.  Are we still holding this tool?
			-- If not, things are kind of a mess: just proceed like we don't have a tool,
			-- trust the calling code to call again to sort things out with newTool.
			if not tool:IsDescendantOf(character) then
				-- Things are confusing.  Trust the calling code to call this again
				-- with newTool.  Proceed with this call just using no tool.
				return nil, nil, nil
			end
		end
	end

	return tool, defaultToolKeyframe, suggestedKeyframeFromTool
end


--[[
	Pose the given character based on the given asset id.
	poseAssetId could point to an animation asset or a keyframe sequence.
	  * If no poseAssetId is provided we fall back to looking for children of the character
	  with particular names/structure to indicate a pose.
	  Otherwise we fall back to some constant value.  NOTE this constant value will only
	  work on production (hardwired asset id).
	  * If poseAssetId is provided, the caller is assuemd to care about exactly what pose
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
module.SetPlayerCharacterPose = function(character,
	poseAssetId,
	confirmProceedAfterYield,
	ignoreRotationInPoseAsset)
	if poseAssetId ~= nil then
		assert(typeof(poseAssetId) == "number", "EmoteUtility.SetPlayerCharacterPose expects poseAssetId to be a number or nil")
		assert(poseAssetId > 0, "EmoteUtility.SetPlayerCharacterPose expects poseAssetId to be a real asset ID (positive number)")
	end

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then
		return
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
	elseif humanoid.RigType == Enum.HumanoidRigType.R15 then
		local thumbnailKeyframe
		local givenPoseTrumpsToolPose

		-- Get the thumbnails suggested by poseAssetId.
		thumbnailKeyframe, givenPoseTrumpsToolPose =
			getMainThumbnailKeyframe(character, poseAssetId, not ignoreRotationInPoseAsset)

		-- Get the thumbnails related to the tool.
		local tool, defaultToolKeyframe, suggestedKeyframeFromTool = getToolKeyframes(character, givenPoseTrumpsToolPose)

		-- We have called some yielding functions (and now we are done, no more yielding functions).
		-- Do we still want to do this?
		if confirmProceedAfterYield and not confirmProceedAfterYield(poseAssetId) then
			return
		end

		-- Un-pose to stock 'at attention' stance.
		humanoid:BuildRigFromAttachments()
		if tool then
			doR15ToolPose(character, humanoid, tool, poseAssetId, thumbnailKeyframe, defaultToolKeyframe, suggestedKeyframeFromTool)
		else
			module.ApplyPose(character, thumbnailKeyframe, false, false)
		end
	end
end

module.SetPlayerCharacterFace = function(character, poseAssetId, confirmProceedAfterYield)
	assert(poseAssetId ~= nil, "EmoteUtility.SetPlayerCharacterFace non-nil poseAssetId")
	assert(typeof(poseAssetId) == "number", "EmoteUtility.SetPlayerCharacterFace expects poseAssetId to be a number or nil")

	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if not humanoid then
		return
	end

	-- Get the thumbnails suggested by poseAssetId.
	local thumbnailKeyframe = getMainThumbnailKeyframe(character, poseAssetId, true)

	-- We have called some yielding functions (and now we are done, no more yielding functions).
	-- Do we still want to do this?
	if confirmProceedAfterYield and not confirmProceedAfterYield(poseAssetId) then
		return
	end

	module.ApplyPose(character, thumbnailKeyframe, false, false)
end

return module
