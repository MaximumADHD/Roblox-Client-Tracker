local FastFlags = require(script.Parent.Parent.FastFlags)

local Clip = {}

Clip.length = 2.0
Clip.loopAnimation = false
Clip.animationPriority = "Core"
if FastFlags:isUseHipHeightInKeyframeSequencesOn() then
	Clip.authoredHipHeight = nil
end
Clip.AnimationPriorityChangeEvent = nil
Clip.LengthChangedEvent = nil
Clip.LoopingToggleEvent = nil
Clip.MaxLength = 30

function Clip:init(Paths)
	self.Paths = Paths
	self.LengthChangedEvent = Paths.UtilityScriptEvent:new()
	self.LoopingToggleEvent = Paths.UtilityScriptEvent:new()
	self.AnimationPriorityChangeEvent = Paths.UtilityScriptEvent:new()
end

function Clip:terminate(Paths)
	self.LoopingToggleEvent = nil
	self.LengthChangedEvent = nil

	if FastFlags:isIKModeFlagOn() then
		self.Paths = nil
	end
end

function Clip:isLengthOk(len)
	return len > 0 and len <= self.MaxLength
end

function Clip:setLength(len, serialize, doRecreateTrack)
	doRecreateTrack = doRecreateTrack == nil and true or doRecreateTrack
	if nil ~= self.Paths then
		len = self.Paths.DataModelSession:formatTimeValue(len, false)
	end

	if not self:isLengthOk(len)	then
		return
	end

	self.length = len
	if serialize and self.Paths then
		self.Paths.Globals.Plugin:SetSetting("AnimEditor_AnimLength", self.length)
	end

	if nil ~= self.LengthChangedEvent then
		if FastFlags:isCheckForSavedChangesOn() then
			self.LengthChangedEvent:fire(self.length, doRecreateTrack)
		else
			self.LengthChangedEvent:fire(self.length)
		end
	end
end

function Clip:getLength()
	return self.length
end

function Clip:getScaledLength(scale, doClamp)
	doClamp = nil == doClamp and true or doClamp
	return self:getLength()*(doClamp and math.clamp(scale, 0, 1) or scale)
end

function Clip:setLooping(loop, doRecreateTrack)
	doRecreateTrack = doRecreateTrack == nil and true or doRecreateTrack
	self.loopAnimation = loop
	if nil ~= self.LoopingToggleEvent then
		if FastFlags:isCheckForSavedChangesOn() then
			self.LoopingToggleEvent:fire(self.loopAnimation, doRecreateTrack)
		else
			self.LoopingToggleEvent:fire(self.loopAnimation)
		end
	end
end

function Clip:getLooping()
	return self.loopAnimation
end

function Clip:setPriority(priority)
	self.animationPriority = priority
	if nil ~= self.AnimationPriorityChangeEvent then
		self.AnimationPriorityChangeEvent:fire(priority)
	end
end

function Clip:getPriority()
	return self.animationPriority
end

if FastFlags:isUseHipHeightInKeyframeSequencesOn() then
	function Clip:setAuthoredHipHeight(hipHeight)
		self.authoredHipHeight = hipHeight
	end

	function Clip:getAuthoredHipHeight()
		return self.authoredHipHeight
	end
end

function Clip:keyframeTimeClamp(time)
	return math.clamp(time, 0, self.length)
end

function Clip:getKeyframe(time)
	time = self:keyframeTimeClamp(time)
	return self.Paths.DataModelKeyframes.keyframeList[time]
end

function Clip:createPosesFromKeyframeHelper(keyframeData, poseParent, partData, forExport)
	if not partData then return end
	local poseData = keyframeData.Poses[partData.Item]
	local didCreatePose = false

	if poseData then
		local posedPartData = poseData.Item
		poseParent = self.Paths.HelperFunctionsCreation:make("Pose", {
			Name = partData.Name,
			Parent = poseParent,
			Weight = 1,
			MaskWeight = 0,
			CFrame = (posedPartData.OriginC1 and posedPartData.OriginC1:inverse() * poseData.CFrame:inverse() * posedPartData.OriginC1) or poseData.CFrame,
		})

		poseParent.EasingStyle = poseData.EasingStyle
		poseParent.EasingDirection = poseData.EasingDirection
		didCreatePose = true
	end

	--Creates parent poses. Weight set to 0 because these are poses that did not exist that we create for saving only.
	--When importing a pose, we ignore poses with weight 0.
	for _, childPartData in pairs(partData.Children) do
		if keyframeData.Poses[childPartData.Item] and not didCreatePose then
			poseParent = self.Paths.HelperFunctionsCreation:make("Pose", {
				Name = partData.Name,
				Parent = poseParent,
				Weight = 0,
				MaskWeight = 0,
				CFrame = CFrame.new(),
			})

			poseParent.EasingStyle = Enum.PoseEasingStyle.Linear
			poseParent.EasingDirection = Enum.PoseEasingDirection.Out
			didCreatePose = true
		end

		self:createPosesFromKeyframe(keyframeData, poseParent, childPartData, forExport)
	end
end

local removeUnincludedParts = nil
if not FastFlags:isLockedPartStaysAnimatableOn() then
	removeUnincludedParts = function(self, keyframe)
		--Collect all poses in given keyframe
		local poses = {}
		local function recurse(parent)
			for _, child in pairs(parent:GetChildren()) do
				if child:IsA("Pose") then
					table.insert(poses, child)
				end
				recurse(child)
			end
		end
		recurse(keyframe)


		for _, pose in pairs(poses) do
			local poseHasIncludedChildren = false
			local poseIncluded = self.Paths.DataModelRig.partInclude[pose.Name] and (pose.Name ~= "HumanoidRootPart")
			for _, child in pairs(pose:GetChildren()) do
				if self.Paths.DataModelRig.partInclude[child.Name] then
					poseHasIncludedChildren = true
					break
				end
			end

			if (not poseIncluded) then
				pose.Weight = 0

				if (not poseHasIncludedChildren) then
					for _, child in pairs(pose:GetChildren()) do
						child.Parent = pose.Parent
					end
					pose:Destroy()
				end
			end
		end
	end	
end

function Clip:createPosesFromKeyframe(keyframeData, poseParent, partData, forExport)
	self:createPosesFromKeyframeHelper(keyframeData, poseParent, partData, forExport)

	if not FastFlags:isLockedPartStaysAnimatableOn() and forExport then
		removeUnincludedParts(self, poseParent)
	end
end

function Clip:getPreviousPose(time, part)
	local closestPose = nil

	for keyframeTime, keyframe in self.Paths.HelperFunctionsIteration:spairs(self.Paths.DataModelKeyframes.keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		if keyframeTime > time then
			break
		end

		if keyframe.Poses[part] then
			closestPose = keyframe.Poses[part]
		end
	end

	return closestPose
end

function Clip:getClosestNextPose(time, part)
	local closestPose = nil

	for keyframeTime,  keyframe in self.Paths.HelperFunctionsIteration:spairs(self.Paths.DataModelKeyframes.keyframeList, function(t, a, b) return t[a].Time > t[b].Time end) do
		if keyframeTime <= time then
			break
		end

		if keyframe.Poses[part] then
			closestPose = keyframe.Poses[part]
		end
	end

	return closestPose
end

function Clip:getClosestPoseTime(time)
	local closestTime = nil
	for keyframeTime, keyframe in pairs(self.Paths.DataModelKeyframes.keyframeList) do
		local keyframeHasPoses = not self.Paths.HelperFunctionsTable:isNilOrEmpty(keyframe.Poses)
		if keyframeHasPoses then
			if nil == closestTime or math.abs(time-keyframeTime) < math.abs(time-closestTime) then
				closestTime = keyframeTime
			end
		end
	end
	return closestTime
end

if FastFlags:isFixInterpolationSettingOn() then
	function Clip:getClosestPreviousTime(time)
		local closestTime = nil

		for keyframeTime, _ in self.Paths.HelperFunctionsIteration:spairs(self.Paths.DataModelKeyframes.keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
			if keyframeTime > time then
				break
			end

			closestTime = keyframeTime
		end

		return closestTime
	end
end

local function createPoseFromLastKeyframe(self, time, keyframeData, part)
	if (part ~= nil) then
		local poseParent = keyframeData

		-- see if we can find a pose for this part
		local pose = self:getPreviousPose(time, part)

		if (pose ~= nil) then
			local item = pose.Item
			poseParent = Make('Pose', {
				Name = part.Name,
				Parent = keyframeData,
				Weight = 1,
				CFrame =(item.OriginC1
					         and item.OriginC1:inverse()*pose.CFrame:inverse()*item.OriginC1
					         or  pose.CFrame)
			})

			poseParent.EasingStyle = pose.EasingStyle
			poseParent.EasingDirection = pose.EasingDirection
		end

		for _, childPart in pairs(part.Children) do
			createPoseFromLastKeyframe(self, time, poseParent, childPart)
		end
	end
end

function Clip:createMarkersFromKeyframe(keyframe, kfd)
	for _, marker in pairs(keyframe.Markers) do
		local markerInstance = Instance.new("KeyframeMarker")
		markerInstance.Name = marker:getName()
		markerInstance.Value = marker:getValue()
		kfd:AddMarker(markerInstance)
	end
end

function Clip:createAnimationFromCurrentData(forExport, cutoffAtCurrentLength)
	local kfs = Instance.new('KeyframeSequence')
	kfs.Name = "Test"
	kfs.Loop = self.loopAnimation
	kfs.Priority = self.animationPriority
	if FastFlags:isUseHipHeightInKeyframeSequencesOn() then
		kfs.AuthoredHipHeight = self.authoredHipHeight ~= nil and self.authoredHipHeight or self.Paths.DataModelRig:getHipHeight()
	end
	for time, keyframe in self.Paths.HelperFunctionsIteration:spairs(self.Paths.DataModelKeyframes.keyframeList, function(t, a, b) return t[a].Time < t[b].Time end) do
		if not cutoffAtCurrentLength or (cutoffAtCurrentLength and time <= self:getLength()) then
			local kfd = Instance.new('Keyframe')
			kfd.Name = keyframe.Name
			kfd.Time = time
			kfd.Parent = kfs

			-- go through part heirarach
			local shouldExport = forExport == nil and true or forExport
			if FastFlags:isEnableRigSwitchingOn() then
				for _, rootItem in pairs(self.Paths.DataModelRig:getItems()) do
					self:createPosesFromKeyframe(keyframe, kfd, rootItem, shouldExport)
				end
			else
				self:createPosesFromKeyframe(keyframe, kfd, self.Paths.DataModelRig:getItem(), shouldExport)
			end
			if FastFlags:isAnimationEventsOn() then
				self:createMarkersFromKeyframe(keyframe, kfd)
			end
		end
	end

	-- check for end animation keyframe
	local keyframe = self:getKeyframe(self.length)
	if (keyframe == nil) then
		local kfd = self.Paths.HelperFunctionsCreation:make('Keyframe', {
			Name = "KF" .. self.length,
			Time = self.length,
			Parent = kfs,
		})

		if FastFlags:isEnableRigSwitchingOn() then
			for _, rootItem in pairs(self.Paths.DataModelRig:getItems()) do
				createPoseFromLastKeyframe(self, self.length, kfd, rootItem)
			end
		else
			createPoseFromLastKeyframe(self, self.length, kfd, self.Paths.DataModelRig:getItem())
		end
	end
	return kfs
end

function Clip:loadImportAnim(animId)
	local isNumber = type(animId) == "number"
	local isUserdata = type(animId) == "userdata"

	if (isNumber and animId > 0) or isUserdata then
	if FastFlags:isCheckForSavedChangesOn() then
		self.Paths.DataModelKeyframes:resetKeyframes(false)
	else
		self.Paths.DataModelKeyframes:resetKeyframes()
	end

		local kfs
		if isNumber then
		local kfsp = game:GetService('KeyframeSequenceProvider')
			kfs = kfsp:GetKeyframeSequenceById(animId, false)
		else
			kfs = animId
		end
		self.Paths.DataModelKeyframes:loadKeyframeSequence(kfs)
	end
end

function Clip:saveCurrentAnimation(animName)
	local dummy = nil
	if FastFlags:isEnableRigSwitchingOn() then
		dummy = self.Paths.DataModelRig:getModel()
	else
		dummy = self.Paths.DataModelRig:getItem().Item.Parent
	end
	local AnimationBlock = dummy:FindFirstChild("AnimSaves")
	if AnimationBlock == nil then
		AnimationBlock = Instance.new('Model')
		AnimationBlock.Name = "AnimSaves"
		AnimationBlock.Parent = dummy
	end

	local save = AnimationBlock:FindFirstChild(animName)
	if save then
		save:Destroy()
	end

	save = self:createAnimationFromCurrentData(true, true)
	save.Name = animName
	save.Parent = AnimationBlock
	if FastFlags:isUseAnimationNameAsTitleOn() then
		self.Paths.DataModelSession:setSessionTitle(animName)
	end
	if FastFlags:isCheckForSavedChangesOn() then
		self.Paths.UtilityScriptUndoRedo:markAnimationSaved()
	end
end

function Clip:autoSave()
	self:saveCurrentAnimation("Automatic Save")
end

function Clip:loadCurrentAnimation(animName)
	local dummy = nil
	if FastFlags:isEnableRigSwitchingOn() then
		dummy = self.Paths.DataModelRig:getModel()
	else
		dummy = self.Paths.DataModelRig:getItem().Item.Parent
	end
	local AnimationBlock = dummy:FindFirstChild("AnimSaves")
	if AnimationBlock == nil then
		return
	end

	local Animation = AnimationBlock:FindFirstChild(animName)
	if Animation == nil then
		return
	end

	self:loadImportAnim(Animation)
	self.Paths.UtilityScriptUndoRedo:reset()
	if FastFlags:isUseAnimationNameAsTitleOn() then
		self.Paths.DataModelSession:setSessionTitle(animName)
	end
end

return Clip