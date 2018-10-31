-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local PlayState = {}

PlayState.Paths = nil

PlayState.IsPlaying = nil
PlayState.StoppedConnect = nil
PlayState.CurrentAnimTrack = nil
PlayState.Animator = nil

PlayState.PlayEvent = nil
PlayState.PauseEvent = nil

function PlayState:init(Paths)
	self.Paths = Paths
	self.PlayEvent = Paths.UtilityScriptEvent:new()
	self.PauseEvent = Paths.UtilityScriptEvent:new()
end

local function stopTrack(self)
	if nil ~= self.CurrentAnimTrack and nil ~= self.Animator then
		self.CurrentAnimTrack:Stop(0)		
		-- Reset Transform property for Motor6Ds
		for part,elem in pairs(self.Paths.DataModelRig.partList) do
			if elem.Motor6D ~= nil then
				elem.Motor6D.Transform = CFrame.new()
			end
		end
	
		self.Animator:StepAnimations(0)
		
		for part,elem in pairs(self.Paths.DataModelRig.partList) do
			if (elem.Motor6D ~= nil) then
				elem.Motor6D.CurrentAngle = 0
				elem.Motor6D.C1 = elem.OriginC1
			end
		end	
		
		if FastFlags:isScrubbingPlayingMatchFlagOn() then
			self.CurrentAnimTrack:Destroy()
		end
		self.CurrentAnimTrack = nil
		self.Animator = nil
	end
end

function PlayState:terminate()
	if self.IsPlaying then
		self:pause()
	end
	
	if FastFlags:isScrubbingPlayingMatchFlagOn() then
		stopTrack(self)
		self.Paths = nil
	end

	self.PlayEvent = nil
	self.PauseEvent = nil
end

local function internalPause(self, playOnceAnimationEnded)
	if self.IsPlaying then	
		self.IsPlaying:disconnect()
		self.IsPlaying = nil
		
		local trackTime = playOnceAnimationEnded and self.CurrentAnimTrack.Length or self.CurrentAnimTrack.TimePosition

		if not FastFlags:isScrubbingPlayingMatchFlagOn() then
			stopTrack(self)
		end
			
		self.Paths.DataModelSession:setScrubberTime(trackTime)
		self.PauseEvent:fire()
	end	
end

local function loadAnimation(self)
	local kfsp = game:GetService('KeyframeSequenceProvider')

	local kfs = nil
	kfs = self.Paths.DataModelClip:createAnimationFromCurrentData(true, true)
	local animID = kfsp:RegisterKeyframeSequence(kfs)
	local dummy = self.Paths.DataModelRig:getItem().Item.Parent

	local AnimationBlock = dummy:FindFirstChild("AnimSaves")
	if AnimationBlock == nil then
		AnimationBlock = Instance.new('Model')
		AnimationBlock.Name = "AnimSaves"
		AnimationBlock.Parent = dummy
	end

	local Animation = AnimationBlock:FindFirstChild("TestAnim")
	if Animation == nil then
		Animation = Instance.new('Animation')
		Animation.Name = "TestAnim"
		Animation.Parent = AnimationBlock
	end
	Animation.AnimationId = animID
	
	return self.Paths.DataModelRig.AnimationController:LoadAnimation(Animation)	
end

local function createAnimation(self)
	stopTrack(self)
	
	-- Update the model to start positions
	for part,elem in pairs(self.Paths.DataModelRig.partList) do
		if (elem.Motor6D ~= nil) then
			elem.Motor6D.C1 = elem.OriginC1
			if not FastFlags:isScrubbingPlayingMatchFlagOn() then
				self.Paths.DataModelRig:nudgeView()
			end
		end
	end

	if FastFlags:isScrubbingPlayingMatchFlagOn() then
		self.CurrentAnimTrack = loadAnimation(self)
	else
		local kfsp = game:GetService('KeyframeSequenceProvider')

		local kfs = self.Paths.DataModelClip:createAnimationFromCurrentData()
		local animID = kfsp:RegisterKeyframeSequence(kfs)
		local dummy = self.Paths.DataModelRig:getItem().Item.Parent

		local AnimationBlock = dummy:FindFirstChild("AnimSaves")
		if AnimationBlock == nil then
			AnimationBlock = Instance.new('Model')
			AnimationBlock.Name = "AnimSaves"
			AnimationBlock.Parent = dummy
		end

		local Animation = AnimationBlock:FindFirstChild("TestAnim")
		if Animation == nil then
			Animation = Instance.new('Animation')
			Animation.Name = "TestAnim"
			Animation.Parent = AnimationBlock
		end
		Animation.AnimationId = animID
		
		self.CurrentAnimTrack = self.Paths.DataModelRig.AnimationController:LoadAnimation(Animation)
	end
		
	self.CurrentAnimTrack:Play(0, 1, 1)			

	self.Animator = self.Paths.DataModelRig.AnimationController:FindFirstChildOfClass("Animator")
	return nil ~= self.Animator
end

local function doesAnimationExist(self)
	return nil ~= self.CurrentAnimTrack and nil ~= self.Animator
end

-- we want to play, but we want to leave the motors in the position they were at until we have waited a frame for the animation to load (so, no going to T-Pose)
function PlayState:recreateAnimationTrack()
	if doesAnimationExist(self) then
		self.CurrentAnimTrack:Stop(0)						
		self.CurrentAnimTrack:Destroy()		
		self.CurrentAnimTrack = nil
		self.Animator = nil
	end

	self.CurrentAnimTrack = loadAnimation(self)
	self.Animator = self.Paths.DataModelRig.AnimationController:FindFirstChildOfClass("Animator")
	
	spawn(function() 
		-- we need to wait() a frame for the animation to load, and then we can play and go to the correct frame
		wait() 
		local hasThisClassBeenTerminated = nil == self.Paths
		local hasTrackBeenStopped = nil == self.CurrentAnimTrack
		if not hasThisClassBeenTerminated and not hasTrackBeenStopped then
			self.Paths.DataModelRig:resetJoints()
			self.CurrentAnimTrack:Play(0, 1, 1)			
			self:setTime(self.Paths.DataModelSession:getScrubberTime()) 
			self.Paths.DataModelPartManipulator:updateProxyPart()
		end
	end)	
end

function PlayState:pauseAndStop()
	self.Paths.DataModelPlayState:pause()
	stopTrack(self)
end

function PlayState:initPostGUICreate()
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	local recreateAnimation = function()
		if FastFlags:isScrubbingPlayingMatchFlagOn() then
			if not self.Paths.DataModelSession:IsAnimationCurrentlyBeingReset() then
				if self:getIsPlaying() then
					createAnimation(self) 
					self:setTime(self.Paths.DataModelSession:getScrubberTime()) 
				elseif not self.Paths.DataModelPartManipulator:isCurrentlyManipulating() then
					self:recreateAnimationTrack()
				end
			end
		else
			if self:getIsPlaying() then
				createAnimation(self) 
				self:setTime(self.Paths.DataModelSession:getScrubberTime()) 
			end
			self.Paths.DataModelRig:onRigJointsChangeRequired()
		end
	end
	
	self.Connections:add(self.Paths.DataModelClip.LoopingToggleEvent:connect(recreateAnimation))	
	self.Connections:add(self.Paths.DataModelRig.PartIncludeToggleEvent:connect(recreateAnimation))
	self.Connections:add(self.Paths.DataModelClip.LengthChangedEvent:connect(recreateAnimation))
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(recreateAnimation))

	if FastFlags:isScrubbingPlayingMatchFlagOn() then
		self.Connections:add(self.Paths.DataModelKeyframes.PoseTransformChangedEvent:connect(recreateAnimation))
		self.Connections:add(self.Paths.DataModelSession.ScrubberTimeChangeEvent:connect(function(theNewScrubberTime) 
			if not self.Paths.DataModelSession:IsAnimationCurrentlyBeingReset() then 
				if not self:getIsPlaying() then
					self:setTime(theNewScrubberTime)
				end
				self.Paths.DataModelPartManipulator:updateProxyPart()
			end
		end))

		self.Connections:add(self.Paths.DataModelSession.ResetAnimationBeginEvent:connect(function()
			self:pauseAndStop()
		end))

		self.Connections:add(self.Paths.DataModelSession.ResetAnimationEndEvent:connect(recreateAnimation))
	end
end

function PlayState:terminatePreGUIDestroy()
	self.Connections:terminate()
	self.Connections = nil

	if not FastFlags:isScrubbingPlayingMatchFlagOn() then
		self.Paths = nil
	end
end

function PlayState:getIsPlaying()
	return nil ~= PlayState.IsPlaying
end

function PlayState:play()
    if not self.IsPlaying then				
		if not createAnimation(self) then
			return
		end

		if self.Paths.DataModelSession:getScrubberTime() == self.Paths.DataModelClip:getLength() then
			self.Paths.DataModelSession:setScrubberTime(0)
		end

		self:setTime(self.Paths.DataModelSession:getScrubberTime())

		self.IsPlaying = game:GetService("RunService").Heartbeat:connect(function(step)
			local isNoneLoopedAnimAboutToEnd = not self.CurrentAnimTrack.Looped and self.CurrentAnimTrack.TimePosition+step >= self.CurrentAnimTrack.Length
			if isNoneLoopedAnimAboutToEnd then
				internalPause(self, true)
			else
				self.Animator:StepAnimations(step)
				self.Paths.DataModelSession:setScrubberTime(self.CurrentAnimTrack.TimePosition)
			end
		end)

		self.PlayEvent:fire()	
	end	
end

function PlayState:pause()
	internalPause(self)
end

function PlayState:setTime(time)
	if nil ~= self.CurrentAnimTrack and nil ~= self.Animator then
		if FastFlags:isScrubbingPlayingMatchFlagOn() then
			if not self.CurrentAnimTrack.IsPlaying then
				return
			end
			-- stopping the time being set to the absolute end of the animation clip, as setting to the length will show the first frame for a 
			-- looping animation, and it will cause the animation to get set to not playing for a none looped animation
			time = math.clamp(time, 0, self.Paths.DataModelClip:getLength()-0.001)
		end
		self.CurrentAnimTrack.TimePosition = time
		self.Animator:StepAnimations(0)
	end	
end

return PlayState