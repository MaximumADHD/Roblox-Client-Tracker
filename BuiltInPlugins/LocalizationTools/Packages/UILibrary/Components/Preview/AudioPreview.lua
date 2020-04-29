--[[
	This component will be used in the asset preview for audio asset.
	It will provide a still image for sound asset and a progress bar.
	The progress bar will keep moving if the sound is playing.

	Necessary properties:
	number SoundId, used for play and pause the sound
	bool ShowTreeView, used to adjust time label component for audio control based on if we are
		showing tree view button or not.

	Optional properties:
	UDim2 position, default to UDim2(0, 0, 0, 0)
	UDim2 size, default to UDim2(1, 0, 1, 0)
	number layoutOrder, used by the layouter to change the position of the component
	callBack ReportPlay, analytics events.
	callback ReportPause,
]]
local FFlagHideOneChildTreeviewButton = game:GetFastFlag("HideOneChildTreeviewButton")

local RunService = game:GetService("RunService")

local Library = script.Parent.Parent.Parent
local Roact = require(Library.Parent.Roact)

local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local PluginContext = require(Library.Plugin)
local getPlugin = PluginContext.getPlugin

local PROGRESS_BAR_HEIGHT = 6
local AUDIO_CONTROL_HEIGHT = 35
local AUDIO_CONTROL_WIDTH_OFFSET_WITH_TREE = 50
local AUDIO_CONTROL_WIDTH_OFFSET_NO_TREE = 70

if FFlagHideOneChildTreeviewButton then
	AUDIO_CONTROL_WIDTH_OFFSET_NO_TREE = 10
end

local AudioControl = require(Library.Components.Preview.AudioControl)

local AudioPreview = Roact.PureComponent:extend("AudioPreview")

function AudioPreview:init(props)
	self.soundRef = Roact.createRef()
	local plugin = getPlugin(self)

	self.state = {
		timeLength = 0,    -- Update each time we set the assetId.
		isPlaying = false,
		isLoaded = false,
		currentTime = 0,
	}

	self.playSound = function(assetId)
		local soundObj = self.soundRef.current
		if soundObj then
			soundObj.SoundId = self.props.SoundId
			plugin:PlaySound(soundObj)
		end
		self:setState({
			isPlaying = true,
			currentTime = 0,
		})

		if self.props.reportPlay then
			self.props.ReportPlay()
		end
	end

	self.resumeSound = function(assetId)
		local soundObj = self.soundRef.current
		if soundObj then
			soundObj.SoundId = self.props.SoundId
			plugin:ResumeSound(soundObj)
		end

		self:setState({
			isPlaying = true,
			timeLength = soundObj.TimeLength,
		})

		if self.props.reportPlay then
			self.props.ReportPlay()
		end
	end

	self.pauseSound = function(assetId)
		local soundObj = self.soundRef.current
		if soundObj then
			plugin:PauseSound(soundObj)
		end

		self:setState({
			isPlaying = false,
		})

		if self.props.ReportPause then
			self.props.ReportPause()
		end
	end

	self.onSoundEnded = function(soundId)
		self:setState({
			isPlaying = false,
			timeLength = 0,
			currentTime = 0,
		})
	end

	self.onSoundChange = function(rbx, property)
		local soundObj = self.soundRef.current
		local isLoaded = soundObj and soundObj.IsLoaded
		if not self.isMounted then
			return
		end
		if property == "TimeLength" then
			local timeLength = soundObj.TimeLength
			self:setState({
				timeLength = timeLength, -- unit: seconds
				isLoaded = isLoaded,
			})

		elseif isLoaded ~= self.state.isLoaded then
			self:setState({
				isLoaded = isLoaded,
			})
		end
	end

	self.getAudioLength = function()
		local soundObj = self.soundRef.current
		if soundObj then
			return math.max(soundObj.TimeLength, 1)
		end
	end
end

function AudioPreview:didMount()
	self.isMounted = true
	local soundObj = self.soundRef.current
	if soundObj then
		soundObj.SoundId = self.props.SoundId
	end

	self.runServiceConnection = RunService.RenderStepped:Connect(function(step)
		if (not self.state.isPlaying) then
			return
		end
		local state = self.state
		local newTime = self.state.currentTime + step

		if newTime >= state.timeLength then
			newTime = state.timeLength
		end
		if self.isMounted then
			self:setState({
				currentTime = newTime
			})
		end
	end)
end

function AudioPreview:willUnmount()
	self.isMounted = false
	if self.runServiceConnection then
		self.runServiceConnection:Disconnect()
	end
end

function AudioPreview:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state
		local position = props.position
		local size = props.size or UDim2.new(1, 0, 1, 0)
		local audioPreviewTheme = theme.assetPreview.audioPreview

		local layoutOrder = props.layoutOrder
		local progress
		if state.timeLength ~= nil and state.timeLength ~= 0 then
			progress = state.currentTime / state.timeLength
		else
			progress = 0
		end
		local showTreeView = props.ShowTreeView
		local audioControlOffset = showTreeView and AUDIO_CONTROL_WIDTH_OFFSET_WITH_TREE or AUDIO_CONTROL_WIDTH_OFFSET_NO_TREE
		local timeLength = self.getAudioLength() or 0
		local isLoaded = state.isLoaded
		local isPlaying = state.isPlaying

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,

			BackgroundTransparency = 1,
			BackgroundColor3 = audioPreviewTheme.backgroundColor,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder,
		},{
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10),
			}),

			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, 0),
				PaddingRight = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
			}),

			AudioPlayerFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -PROGRESS_BAR_HEIGHT- AUDIO_CONTROL_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				LayoutOrder = 1,
			}, {
				AudioPlayerImage = Roact.createElement("ImageLabel", {
					Size = UDim2.new(1, 0, 1, 0),
					Image = audioPreviewTheme.audioPlay_BG,
					ScaleType = Enum.ScaleType.Fit,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					ImageColor3 = audioPreviewTheme.audioPlay_BG_Color,
				})
			}),

			ProgressBarFrame = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, PROGRESS_BAR_HEIGHT),

				BackgroundColor3 = audioPreviewTheme.progressBar_BG_Color,
				BorderSizePixel = 0,
				BackgroundTransparency = 0,

				LayoutOrder = 2,
			}, {
				ProgressBar = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = audioPreviewTheme.progressBar,
					BackgroundTransparency = 0,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(progress, 0, 0, PROGRESS_BAR_HEIGHT),
				})
			}),

			AudioControlBase = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, AUDIO_CONTROL_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 3,
			}, {
				AudioControl = Roact.createElement(AudioControl, {
					position = UDim2.new(0, 0, 0, 0),
					size = UDim2.new(1, 0, 0, AUDIO_CONTROL_HEIGHT),
					audioControlOffset = audioControlOffset,
					timeLength = timeLength,
					isPlaying = isPlaying,
					isLoaded = isLoaded,
					timePassed = state.currentTime,
					onResume = self.resumeSound,
					onPause = self.pauseSound,
					onPlay = self.playSound,
				}),
			}),

			SoundObj = Roact.createElement("Sound", {
				Looped = false,
				[Roact.Ref] = self.soundRef,
				[Roact.Event.Ended] = self.onSoundEnded,
				[Roact.Event.Changed] = self.onSoundChange,
			})
		})
	end)
end

return AudioPreview