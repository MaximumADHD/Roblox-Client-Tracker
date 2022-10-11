local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local Pause = require(Plugin.Src.Actions.Pause)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)
local SetPlaybackStartInfo = require(Plugin.Src.Actions.SetPlaybackStartInfo)
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFFlagRetirePause = require(Plugin.LuaFlags.GetFFlagRetirePause)

local RunService = game:GetService("RunService")

local Playback = Roact.PureComponent:extend("Playback")

function Playback:didMount()
	self.StartTime = nil
	self.Stepped = RunService.Heartbeat:Connect(function()
		local props = self.props
		local playhead = props.Playhead
		local playbackSpeed = props.PlaybackSpeed
		local playbackStartInfo = props.PlaybackStartInfo

		local isPlaying
		if GetFFlagFacialAnimationRecordingInStudio() then
			isPlaying = props.PlayState == Constants.PLAY_STATE.Play or props.PlayState == Constants.PLAY_STATE.Reverse
		else
			isPlaying = props.PlayState ~= Constants.PLAY_STATE.Pause
		end

		if isPlaying and props.AnimationData ~= nil then
			local metadata = props.AnimationData.Metadata
			if metadata.EndTick > 0 then
				local now = tick()
				local endTick = metadata.EndTick
				if not playbackStartInfo.startTime then
					local startPlayhead = playhead
					if props.PlayState == Constants.PLAY_STATE.Play and startPlayhead >= math.floor(endTick) then
						startPlayhead = 0
					end
					if props.PlayState == Constants.PLAY_STATE.Reverse and startPlayhead <= 0 then
						startPlayhead = math.floor(endTick)
					end

					playbackStartInfo = {
						startTime = now,
						startPlayhead = startPlayhead,
					}
					props.SetPlaybackStartInfo(playbackStartInfo)
				end

				local elapsed = (now - playbackStartInfo.startTime) * playbackSpeed
				if props.PlayState == Constants.PLAY_STATE.Reverse then
					elapsed = -elapsed
				end
				local newTick = playbackStartInfo.startPlayhead + elapsed * Constants.TICK_FREQUENCY

				if metadata.Looping then
					newTick = newTick % endTick
				else
					newTick = math.clamp(newTick, 0, endTick)
					if
						(newTick == endTick and props.PlayState == Constants.PLAY_STATE.Play)
						or (newTick == 0 and props.PlayState == Constants.PLAY_STATE.Reverse)
					then
						if GetFFlagRetirePause() then
							props.SetPlayState(Constants.PLAY_STATE.Pause)
						else
							props.Pause()
						end
					end
				end
				props.StepAnimation(newTick)
			else
				if GetFFlagRetirePause() then
					props.SetPlayState(Constants.PLAY_STATE.Pause)
				else
					props.Pause()
				end
			end
		else
			props.SetPlaybackStartInfo({})
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

local function mapStateToProps(state)
	return {
		AnimationData = state.AnimationData,
		IsPlaying = state.Status.IsPlaying,
		PlayState = state.Status.PlayState,
		Playhead = state.Status.Playhead,
		PlaybackSpeed = state.Status.PlaybackSpeed,
		PlaybackStartInfo = state.Status.PlaybackStartInfo,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		StepAnimation = function(tck)
			dispatch(StepAnimation(tck))
		end,

		Pause = if not GetFFlagRetirePause()
			then function()
				dispatch(Pause())
			end
			else nil,

		SetPlaybackStartInfo = function(playbackStartInfo)
			dispatch(SetPlaybackStartInfo(playbackStartInfo))
		end,

		SetPlayState = function(playState)
			dispatch(SetPlayState(playState))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Playback)
