--[[
	Play Animation on previwing avatar

	Required Props:
		table PreviewAvatars: array of PreviewAvatar items to be animated.
		callback OnPlayheadChanged: function fired when playhead has changed.
		callback OnIsPlayingChanged: function fired when playing state changes.
		callback OnTrackLengthChanged: function fired when target track length changes.

	Optional Props:
		number AnimationId: animation id that should currently be playing.
		number PlayheadOverride: manually set playhead to specified value.
		number IsPlayingOverride: manually force animations on/off.
]]

local Packages = script.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local Framework = require(Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AnimationPlayback = Roact.PureComponent:extend("AnimationPlayback")

local RunService = game:GetService("RunService")

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(AnimationPlayback, script)

function AnimationPlayback:init()
	self.state = {
		playhead = 0,
		trackLength = 0,
		isPlaying = false,
	}
	self.tracks = {}
	self.animations = {}
	self.previousAnimationURL = nil
	self.previousPreviewAvatars = nil
end

local function hasFinished(self, now)
	local _, track = next(self.tracks)
	if track then
		return now - self.StartTime > track.Length
	end

	return false
end

local function setPlayhead(self, time, skipStateUpdate)
	if not skipStateUpdate then
		self:setState({
			playhead = time,
		})
	end

	self.props.OnPlayheadChanged(time)
end

local function setTrackLength(self, length, skipStateUpdate)
	if not skipStateUpdate then
		self:setState({
			trackLength = length,
		})
	end

	self.props.OnTrackLengthChanged(length)
end

local function setIsPlaying(self, isPlaying, skipStateUpdate)
	if not skipStateUpdate then
		self:setState({
			isPlaying = isPlaying,
		})
	end

	self.props.OnIsPlayingChanged(isPlaying)
end

function AnimationPlayback:didMount()
	self.Stepped = RunService.Heartbeat:Connect(function()
		local props = self.props
		local state = self.state
		local playhead = state.playhead
		local _, track = next(self.tracks)
		if state.isPlaying and track and track.Length > 0 then
			if track.Length ~= state.trackLength then
				setTrackLength(self, track.Length)
			end
			local now = tick()
			if not self.StartTime then
				self.StartTime = now - playhead
			end
			if hasFinished(self, now) then
				self.StartTime += track.Length
			end
			local elapsed = now - self.StartTime
			setPlayhead(self, elapsed)
		elseif self.StartTime ~= nil then
			self.StartTime = nil
		end
	end)
end

local function getAnimator(avatar)
	if not avatar then
		return nil
	end
	local animationController = avatar:FindFirstChildOfClass("Humanoid") or avatar:FindFirstChildOfClass("AnimationController")
	local animator = animationController and animationController:FindFirstChildOfClass("Animator")
	if animator then
		return animator
	else
		return Instance.new("Animator", animationController)
	end
end

function AnimationPlayback:render()
	local props = self.props
	local state = self.state
	local previewingAvatars = props.PreviewAvatars
	for _, avatar in ipairs(previewingAvatars) do
		local instance = avatar.model
		local animator = getAnimator(instance)
		if animator and self.tracks[instance] then
			self.tracks[instance]:Play()
			animator:StepAnimations(0)
			animator:StepAnimations(state.playhead)
		end
	end
end

function AnimationPlayback:cleanOldAnims(skipStateUpdate)
	for _, track in pairs(self.tracks) do
		track:Stop(0)
		track:Destroy()
	end
	self.tracks = {}

	local previewingAvatars = self.props.PreviewAvatars
	for _, avatar in ipairs(previewingAvatars) do
		local instance = avatar.model
		local animator = getAnimator(instance)
		if animator then
			animator:StepAnimations(0)
		end

		--reset the joints
		if instance then
			for _, descendant in pairs(instance:GetDescendants()) do
				if descendant:IsA("Motor6D") then
					local joint = descendant
					joint.CurrentAngle = 0
					joint.Transform = CFrame.new()
				end
			end
		end
	end

	for _, animation in pairs(self.animations) do
		animation:Destroy()
	end

	self.animations = {}
	self.StartTime = nil

	setTrackLength(self, 0, skipStateUpdate)
	setIsPlaying(self, false, skipStateUpdate)
	setPlayhead(self, 0, skipStateUpdate)
end

local function animationIdToURL(animationId)
	return "http://www.roblox.com/asset/?id="..tostring(animationId)
end

local function didPreviewAvatarsChange(self, previewingAvatars)
	if (previewingAvatars and not self.previousPreviewAvatars) or
		(#previewingAvatars ~= #self.previousPreviewAvatars) then
		return true
	end

	for index, avatar in ipairs(previewingAvatars) do
		if avatar ~= self.previousPreviewAvatars[index] then
			return true
		end
	end

	return false
end

function AnimationPlayback:didUpdate(prevProps, prevState)
	local props = self.props
	local previewingAvatars = props.PreviewAvatars
	local animationId = props.AnimationId
	if animationId and #previewingAvatars > 0 then
		local animationURL = animationIdToURL(animationId)
		local animChanged = not self.previousAnimationURL or self.previousAnimationURL ~= animationURL
		local avatarsChanged = didPreviewAvatarsChange(self, previewingAvatars)
		self.previousAnimationURL = animationURL
		self.previousPreviewAvatars = previewingAvatars
		if animChanged or avatarsChanged then
			self:cleanOldAnims()
			for _, avatar in ipairs(previewingAvatars) do
				local instance = avatar.model
				local humanoid = instance:FindFirstChildOfClass("Humanoid")
				if humanoid then
					self.animations[instance] = Instance.new("Animation")
					self.animations[instance].AnimationId = animationURL
					self.tracks[instance] = humanoid:LoadAnimation(self.animations[instance])
					setIsPlaying(self, true)
					setPlayhead(self, 0)
				end
			end
		end

		if prevProps.PlayheadOverride ~= props.PlayheadOverride and props.PlayheadOverride >=0 then
			setPlayhead(self, props.PlayheadOverride)
		end

		if prevProps.IsPlayingOverride ~= props.IsPlayingOverride and props.IsPlayingOverride ~= nil then
			setIsPlaying(self, props.IsPlayingOverride)
		end
	elseif self.state.isPlaying then
		self:cleanOldAnims()
		self.previousAnimationURL = nil
		self.previousPreviewAvatars = nil
	end
end

function AnimationPlayback:willUnmount()
	self:cleanOldAnims(true)
	if self.Stepped then
		self.Stepped:Disconnect()
	end
end

return AnimationPlayback