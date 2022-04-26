--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local RunService = game:GetService("RunService")

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Urls = require(Plugin.Core.Util.Urls)

local AudioPlayer = Roact.PureComponent:extend("AudioPlayer")

type _InteralAudioPlayerProps = {
	Stylizer: any,
}

type AudioPlayerProps = _InteralAudioPlayerProps & {
	SoundId: number,
	IsPlaying: string,
	OnEnded: () -> nil | nil,
}

type AudioPlayerState = {
	isLoaded: boolean,
	elapsedTime: number,
	totalTime: number,
	indicatorPosition: number?,
}

function AudioPlayer:init(props: AudioPlayerProps)
	self.frameRef = Roact.createRef()
	self.audioRef = Roact.createRef()

	self.state = {
		isLoaded = false,
		elapsedTime = 0,
		totalTime = 0,
	}

	self.onSoundChange = function(_, property)
		if not self.isMounted or not self.audioRef.current then
			return
		end

		self:setState(function(prevState: AudioPlayerState)
			local newState = {
				isLoaded = self.audioRef.current.IsLoaded,
			}

			if property == "TimeLength" and self.audioRef.current.TimeLength ~= prevState.totalTime then
				newState.totalTime = self.audioRef.current.TimeLength
			end

			if
				(property == "Playing" or property == "TimePosition")
				and self.audioRef.current.TimePosition ~= prevState.elapsedTime
			then
				newState.elapsedTime = self.audioRef.current.TimePosition
			end

			return newState
		end)
	end

	self.calculateTimePosition = function(input: InputObject)
		return (input.Position.X - self.frameRef.current.AbsolutePosition.X) / self.frameRef.current.AbsoluteSize.X
	end

	self.handleIndicatorEvent = function(_, input: InputObject)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.indicatorPressed = true
		end
	end

	self.updateTimePosition = function(percent: number)
		local newTime = self.state.totalTime * percent
		self.audioRef.current.TimePosition = newTime
	end

	self.onSoundEnded = function()
		if props.OnEnded then
			props.OnEnded()
		end
	end
end

function AudioPlayer:didMount()
	self.isMounted = true

	self.runServiceConnection = RunService.RenderStepped:Connect(function(step)
		if not self.isMounted or not self.audioRef.current or not self.audioRef.current.IsPlaying then
			return
		end

		self:setState(function(prevState: AudioPlayerState)
			local soundObj = self.audioRef.current
			local elapsedTime = prevState.elapsedTime
			local newTime = elapsedTime + step

			local timeLength = soundObj.TimeLength
			return { elapsedTime = math.min(newTime, timeLength) }
		end)
	end)
end

function AudioPlayer:willUnmount()
	self.isMounted = false
	if self.runServiceConnection then
		self.runServiceConnection:Disconnect()
		self.runServiceConnection = nil
	end
end

function AudioPlayer:render()
	local props: AudioPlayerProps = self.props
	local state: AudioPlayerState = self.state
	local isLoaded = state.isLoaded
	local isPlaying = props.IsPlaying
	local soundId = props.SoundId
	local elapsedTime = state.elapsedTime
	local timeLength = state.totalTime
	local currentProgress = if timeLength ~= 0 then elapsedTime / timeLength else 0
	currentProgress = state.indicatorPosition or currentProgress

	local audioPlayerTheme = props.Stylizer.audioPlayer

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 4),
		BackgroundColor3 = audioPlayerTheme.backgroundColor,
		[Roact.Ref] = self.frameRef,
	}, {
		Button = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 12),
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, 0, 0.5, 0),
			[Roact.Event.InputChanged] = function(_, input: InputObject)
				if input.UserInputType == Enum.UserInputType.MouseMovement and self.indicatorPressed then
					self:setState({ indicatorPosition = self.calculateTimePosition(input) })
				end
			end,
			[Roact.Event.InputEnded] = function(_, input: InputObject)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					self.updateTimePosition(self.calculateTimePosition(input))
					self.indicatorPressed = false
					self:setState({ indicatorPosition = Roact.None })
				end
			end,
		}),
		ProgressBar = Roact.createElement(
			"Frame",
			{
				BackgroundColor3 = audioPlayerTheme.progressBarColor,
				Size = UDim2.new(currentProgress, 0, 1, 0),
				ZIndex = 1,
			},
			Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 4),
			})
		),
		ProgressIndicator = Roact.createElement("Frame", {
			BackgroundColor3 = audioPlayerTheme.indicatorColor,
			Size = UDim2.new(0, 12, 0, 12),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(currentProgress, 0, 0.5, 0),
			ZIndex = 3,
			[Roact.Event.InputBegan] = function(_, input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					self.indicatorPressed = true
				end
			end,
		}, {
			CornerRadius = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),
		}),
		-- Border doesn't show when using UICorner. Creating a slighty larger version on the indicator behind it for the border.
		ProgressIndicatorBorder = Roact.createElement("Frame", {
			BackgroundColor3 = audioPlayerTheme.indicatorBorderColor,
			Size = UDim2.new(0, 14, 0, 14),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(currentProgress, 0, 0.5, 0),
			ZIndex = 2,
		}, {
			UICorner = Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, 14),
			}),
		}),
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(4, 4),
		}),
		Sound = Roact.createElement("Sound", {
			[Roact.Ref] = self.audioRef,
			[Roact.Event.Changed] = self.onSoundChange,
			[Roact.Event.Ended] = self.onSoundEnded,
			SoundId = Urls.constructAssetIdString(soundId),
			Playing = not state.indicatorPosition and isLoaded and isPlaying,
		}),
	})
end

AudioPlayer = withContext({
	Stylizer = ContextServices.Stylizer,
})(AudioPlayer)

return AudioPlayer
