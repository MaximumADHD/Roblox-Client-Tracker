local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)
local SetPlaybackStartInfo = require(Plugin.Src.Actions.SetPlaybackStartInfo)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

local RunService = game:GetService("RunService")
local Playback = Roact.PureComponent:extend("Playback")

function Playback:didMount()
	self.StartTime = nil
	self.Stepped = RunService.Heartbeat:Connect(function()
		local props = self.props
		local playhead = props.Playhead
		local playbackSpeed = props.PlaybackSpeed
		local playbackStartInfo = props.PlaybackStartInfo

		if props.IsPlaying and props.AnimationData ~= nil then
			local metadata = props.AnimationData.Metadata
			if metadata.EndFrame > 0 then
				local now = tick()
				if GetFFlagUseTicks() then
					if not playbackStartInfo.startTime then
						local startPlayhead = playhead
						if startPlayhead >= math.floor(metadata.EndFrame) then
							startPlayhead = 0
						end
						playbackStartInfo = {
							startTime = now,
							startPlayhead = startPlayhead,
						}
						props.SetPlaybackStartInfo(playbackStartInfo)
					end
				else
					if not self.StartTime then
						self.StartTime = now
						self.PlayheadStart = playhead
						if self.PlayheadStart >= math.floor(metadata.EndFrame) then
							self.PlayheadStart = 0
						end
					end
				end

				local newFrame
				if GetFFlagUseTicks() then
					local elapsed = (now - playbackStartInfo.startTime) * playbackSpeed
					newFrame = playbackStartInfo.startPlayhead + elapsed * Constants.TICK_FREQUENCY
				else
					local elapsed = now - self.StartTime
					newFrame = self.PlayheadStart + elapsed * metadata.FrameRate
				end

				if metadata.Looping then
					newFrame = newFrame % metadata.EndFrame
				else
					newFrame = math.clamp(newFrame, 0, metadata.EndFrame)
					if newFrame == metadata.EndFrame then
						props.SetIsPlaying(false)
					end
				end
				props.StepAnimation(newFrame)
			else
				props.SetIsPlaying(false)
			end
		else
			if GetFFlagUseTicks() then
				props.SetPlaybackStartInfo({})
			else
				if self.StartTime ~= nil then
					self.StartTime = nil
				end
			end
		end
	end)
end

function Playback:render()
	return nil
end

function Playback:willUnmount()
	if self.Stepped then
		self.Stepped:Disconnect()
	end
end

local function mapStateToProps(state, props)
	return {
		AnimationData = state.AnimationData,
		IsPlaying = state.Status.IsPlaying,
		Playhead = state.Status.Playhead,
		PlaybackSpeed = state.Status.PlaybackSpeed,
		PlaybackStartInfo = state.Status.PlaybackStartInfo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		StepAnimation = function(frame)
			dispatch(StepAnimation(frame))
		end,

		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,

		SetPlaybackStartInfo = function(playbackStartInfo)
			dispatch(SetPlaybackStartInfo(playbackStartInfo))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Playback)