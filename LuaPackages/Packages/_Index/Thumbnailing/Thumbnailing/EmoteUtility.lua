--[[
	Utility function for generating thumbnail pictures based on emotes: we need to identify the
	optimal keyframe in the emote, then pose the character according to that keyframe.

	We keep and return a record of the joints we changed and what we changed them from so
	that you can undo a pose.
]]
local KeyframeSequenceProvider = game:GetService("KeyframeSequenceProvider")
local InsertService = game:GetService("InsertService")

local module = {}

-- In cases where no asset id is provided for posing the avatar, fall back a pose
-- based on this animation.
-- Note: this only works on prod, not sitetest or gametest.
local FALLBACK_POSE_ANIMATION_ID = "http://www.roblox.com/asset/?id=532421348"

-- Particularly on the universal app, we often call SetPlayerCharacterPose several times
-- in a row with the same emote/pose assets.
-- We can avoid a bunch of async calls by caching results.
local cachedPoseAssetId = nil
local cachedPoseAsset = nil
local cachedKeyframeSequenceId = nil
local cachedKeyframeSequence = nil

local function getPoseAsset(poseAssetId)
	if poseAssetId == cachedPoseAssetId then
		return cachedPoseAsset
	end
	local retVal = InsertService:LoadAsset(poseAssetId):GetChildren()[1]
	cachedPoseAsset = retVal
	cachedPoseAssetId = poseAssetId
	return retVal
end

-- Note, this is a yielding function.
local function getKeyframeSequence(keyframeSequenceId)
	if keyframeSequenceId == cachedKeyframeSequenceId then
		return cachedKeyframeSequence
	end
	local retVal = KeyframeSequenceProvider:GetKeyframeSequenceAsync(keyframeSequenceId)
	cachedKeyframeSequenceId = keyframeSequenceId
	cachedKeyframeSequence = retVal
	return retVal
end

module.GetJointBetween = function(part0, part1)
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

--[[
	When applying a pose to a character, we may want to add to a 'blacklist': any joints
	posed by the keyframe are added to the blacklist.
	Subsequent calls to ApplyPose may opt to 'respect blacklist'.  In that case
	we will not pose any joints that are already in the blacklist.
]]
module.ApplyPose = function(character, poseKeyframe, generateBlacklist, respectBlacklist)
	local function recurApplyPoses(parentPose, poseObject)
		if parentPose then
			local joint = module.GetJointBetween(character[parentPose.Name], character[poseObject.Name])
			if not respectBlacklist or not jointBlacklist[joint] then
				joint.C1 = joint.C1 * poseObject.CFrame:Inverse()
				if generateBlacklist then
					jointBlacklist[joint] = true
				end
			end
		end

		for _, subPose in pairs(poseObject:GetSubPoses()) do
			recurApplyPoses(poseObject, subPose)
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
module.GetEmoteKeyFrames = function(poseAsset)
	-- Just a heads-up: currently the poseAsset is a keyframe sequence iff the user did not make
	-- an explicit "I want this emote" choice, and we are falling back to a pose based on user's
	-- current idle animation.
	if poseAsset.ClassName == "KeyframeSequence" then
		return poseAsset:GetKeyframes()
	else
		local kfs = getKeyframeSequence(poseAsset.AnimationId)
		return kfs:GetKeyframes()
	end
end

module.GetThumbnailKeyframe = function(thumbnailKeyframeNumber, emoteKeyframes, rotationDegrees)
	local thumbnailKeyframe
	-- Check that the index provided as the keyframe number is valid
	if thumbnailKeyframeNumber and thumbnailKeyframeNumber > 0 and thumbnailKeyframeNumber <= #emoteKeyframes then
		thumbnailKeyframe = emoteKeyframes[thumbnailKeyframeNumber]
	else
		thumbnailKeyframe = emoteKeyframes[math.ceil(#emoteKeyframes/2)]
	end

	if rotationDegrees ~= 0 then
		local rootPose = thumbnailKeyframe:GetPoses()[1]
		if rootPose then
			local upperTorsoPose = rootPose:GetSubPoses()[1]
			if upperTorsoPose then
				upperTorsoPose.CFrame = upperTorsoPose.CFrame * CFrame.Angles(0, math.rad(rotationDegrees), 0)
			end
		end
	end
	return thumbnailKeyframe
end

--[[
	FIXME(dbanks)
	2019/09/27
	For backwards compatibility.  Remove once no one is calling this anymore.
]]
module.SetPlayerCharacterEmote = function(character, emoteAssetId, confirmProceedAfterYield)
	return module.SetPlayerCharacterPose(character, emoteAssetId, confirmProceedAfterYield)
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
local function doR15ToolPose(character, humanoid, tool, thumbnailKeyframe, defaultToolKeyframe, suggestedKeyframeFromTool)
	if suggestedKeyframeFromTool then
		-- If it's the pose suggested by tool, do not respect blacklist (blacklist shouldn't exist
		-- anyway).  Tool knows exactly how to pose each joint.
		module.ApplyPose(character, suggestedKeyframeFromTool, --[[generateBlacklist =]] false, --[[applyBlacklist=]] false)
	else
		-- If it's the pose passed in, selected by user, first do the 'default' tool pose (raising)
		-- the arm, and generating blacklist: we don't want the selected pose to re-position the joints
		-- involved in the tool pose.
		if defaultToolKeyframe then
			module.ApplyPose(character, defaultToolKeyframe, --[[generateBlacklist =]] true, --[[applyBlacklist =]]false)
		end
		-- Now apply the user-selected pose.
		module.ApplyPose(character, thumbnailKeyframe, --[[generateBlacklist =]] false, --[[applyBlacklist=]] true)
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
		local poseAsset = getPoseAsset(poseAssetId)

		-- In the current setup, a user may select an emote to pose their avatar for a picture.
		-- If they do this, the 'poseAsset' is an Animation, and we consider that a 'stronger'
		-- vote for how to pose than any info we may get from a tool they are holding.
		-- If they did not select an emote, the poseAsset is a KeyframeSequence (based on the
		-- user's idle animation).  In that case, we defer to the tool: if it has something to
		-- say about how we pose, use that.
		if poseAsset.ClassName ~= "KeyframeSequence" then
			givenPoseTrumpsToolPose = true
		end

		local thumbnailKeyframeNumber = module.GetNumberValueWithDefault(poseAsset,
			"ThumbnailKeyframe",
			nil)
		local rotationDegrees = 0

		if useRotationInPoseAsset then
			rotationDegrees = module.GetNumberValueWithDefault(poseAsset,
				"ThumbnailCharacterRotation",
				0)
		end

		local emoteKeyframes
		emoteKeyframes = module.GetEmoteKeyFrames(poseAsset)
		thumbnailKeyframe = module.GetThumbnailKeyframe(thumbnailKeyframeNumber,
			emoteKeyframes,
			rotationDegrees)
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
		local poseKeyframeSequence = getKeyframeSequence(poseAnimationId)
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
			local toolKeyframes = module.GetEmoteKeyFrames(toolHoldAnimationObject)
			defaultToolKeyframe = module.GetThumbnailKeyframe(nil, toolKeyframes, 0)

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
			doR15ToolPose(character, humanoid, tool, thumbnailKeyframe, defaultToolKeyframe, suggestedKeyframeFromTool)
		else
			module.ApplyPose(character, thumbnailKeyframe, false, false)
		end
	end
end

return module
