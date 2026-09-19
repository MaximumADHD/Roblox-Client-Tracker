--[[
	Uncontrolled (stateless) video player component.

	Required Props:
		string VideoId: The ID of the video to play. (should be prefixed with rbxassetid://)
		number TimeLength: The length of the media (seconds).
		number CurrentTime: Current position within the media (seconds).
		boolean IsPlaying: Whether or not the media is currently playing.
		boolean IsLoaded: Whether or not the media is loaded.
		callback OnEnd: Called when the media ends.
		callback OnPause: Called when clicking the pause button.
		callback OnPlay: Called when clicking the play button.
		callback SetIsLoaded: Called when the media loads or unloads.
			SetIsLoaded(isLoaded: boolean)
		callback SetCurrentTime: May be called to set the current time (seconds).
		callback SetTimeLength: May be called to set the media length (seconds).
		Signal MediaPlayerSignal: Used to listen for imperatives from the parent (e.g. "Play" based on an external action).

	Optional Props:
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Vector2 AnchorPoint: The AnchorPoint of the component
		number LayoutOrder: The LayoutOrder of the component
		UDim2 Position: The Position of the component
		Style Style: The styling for the component.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Typecheck = require(Framework.Util.Typecheck)
local Immutable = require(Framework.Util.Immutable)
local Math = require(Framework.Util.Math)
local isInputMainPress = require(Framework.Util.isInputMainPress)

local Container = require(Framework.UI.Components.Container)
local Image = require(Framework.UI.Components.Image)
local HoverArea = require(Framework.UI.Components.HoverArea)

local MediaPlayerControls = require(Framework.UI.Components.MediaPlayerControls)
local MediaPlayerSignal = require(Framework.UI.Components.MediaPlayerWrapper.MediaPlayerSignal)

local StatelessVideoPlayer = Roact.PureComponent:extend("StatelessVideoPlayer")
Typecheck.wrap(StatelessVideoPlayer, script)

local getFFlagDFVideoStudioPreviewPermissionFix =
	require(Framework.SharedFlags.getFFlagDFVideoStudioPreviewPermissionFix)

function StatelessVideoPlayer:init()
	self.layoutRef = Roact.createRef()
	self.videoRef = Roact.createRef()
	self.videoContainerRef = Roact.createRef()

	self.onVideoChange = function(_rbx, property)
		local videoFrame = self.videoRef:getValue()
		local unmounting = self.unmounting
		if not videoFrame or unmounting then
			return
		end
		local isLoaded = videoFrame and videoFrame.IsLoaded
		-- If the video asset id changes, the player should pause and reset the time to 0
		if property == "Video" then
			self.props.OnEnd()
		end
		if property == "TimeLength" then
			self.props.SetTimeLength(videoFrame.TimeLength)
			self.props.SetIsLoaded(isLoaded)
		elseif isLoaded ~= self.props.IsLoaded then
			self.props.SetIsLoaded(isLoaded)
		elseif property == "Resolution" then
			self.onResize()
		end
	end

	self.handleMediaPlayerSignal = function(updateType)
		local videoFrame = self.videoRef:getValue()
		local unmounting = self.unmounting
		if not videoFrame or unmounting then
			return
		end

		if updateType == MediaPlayerSignal.PLAY then
			videoFrame:Play()
		elseif updateType == MediaPlayerSignal.PAUSE then
			videoFrame:Pause()
		elseif updateType == MediaPlayerSignal.SET_TIME then
			videoFrame.TimePosition = self.props.CurrentTime
		end
	end

	self.togglePlay = function()
		if self.props.IsPlaying then
			self.props.OnPause()
		else
			self.props.OnPlay()
		end
	end

	self.onResize = function()
		local currentLayout = self.layoutRef:getValue()
		local videoFrame = self.videoRef:getValue()
		local videoContainer = self.videoContainerRef:getValue()

		if not videoFrame or not currentLayout or not videoContainer then
			return
		end

		local resolution = videoFrame.Resolution

		local aspectRatio = resolution.X / resolution.Y

		-- Video Resolution is (0,0) until it finishes loading
		if Math.isNaN(aspectRatio) then
			return
		end

		local height = videoContainer.AbsoluteSize.Y
		local width = height * aspectRatio
		if currentLayout.AbsoluteContentSize.X < width then
			width = currentLayout.AbsoluteContentSize.X
			height = width * (1 / aspectRatio)
		end

		videoFrame.Size = UDim2.new(UDim.new(0, width), UDim.new(0, height))
	end

	self.onInputBegan = function(_, input)
		local isMainPress = isInputMainPress(input)
		if isMainPress and self.props.IsLoaded then
			self.togglePlay()
		end
	end
end

function StatelessVideoPlayer:didMount()
	self.onResize()
	if getFFlagDFVideoStudioPreviewPermissionFix() then
		local videoFrame = self.videoRef:getValue()
		if videoFrame then
			videoFrame:SetStudioPreview(true)
			videoFrame.Video = self.props.VideoId
		end
	end
	self.mediaPlayerSignalConnection = self.props.MediaPlayerSignal:Connect(self.handleMediaPlayerSignal)
end

function StatelessVideoPlayer:didUpdate(prevProps)
	if getFFlagDFVideoStudioPreviewPermissionFix() then
		if prevProps.VideoId == self.props.VideoId then
			return
		end
		local videoFrame = self.videoRef:getValue()
		if videoFrame then
			videoFrame.Video = self.props.VideoId
		end
	end
end

function StatelessVideoPlayer:willUnmount()
	self.unmounting = true
	if self.mediaPlayerSignalConnection then
		self.mediaPlayerSignalConnection:Disconnect()
		self.mediaPlayerSignalConnection = nil
	end
end

function StatelessVideoPlayer:render()
	local props = self.props

	local isLoaded = props.IsLoaded
	local isPlaying = props.IsPlaying

	local style = props.Stylizer

	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size

	local controlsSize = MediaPlayerControls.calculateSize(style.MediaPlayerControls)
	local padding = UDim.new(0, 10)

	return Roact.createElement(Container, {
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = padding,

			[Roact.Change.AbsoluteContentSize] = self.onResize,
			[Roact.Ref] = self.layoutRef,
		}),

		VideoContainer = Roact.createElement(Container, {
			LayoutOrder = 1,
			Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0) - controlsSize.Y - padding),
			[Roact.Ref] = self.videoContainerRef,
		}, {
			HoverArea = Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
			VideoFrame = Roact.createElement("VideoFrame", {
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				Looped = false,
				Video = if getFFlagDFVideoStudioPreviewPermissionFix() then nil else props.VideoId,
				[Roact.Ref] = self.videoRef,
				[Roact.Event.Changed] = self.onVideoChange,
				[Roact.Event.Ended] = props.OnEnd,
				[Roact.Event.InputBegan] = self.onInputBegan,
			}, {
				PausedOverlay = not isPlaying and Roact.createElement(
					Container,
					Immutable.JoinDictionaries({
						Size = UDim2.new(1, 0, 1, 0),
					}, style.PausedOverlay),
					{
						PlayVideoIcon = isLoaded and Roact.createElement(Image, {
							Style = style.PlayVideoIcon,
						}),
					}
				),
			}),
		}),

		MediaPlayerControls = Roact.createElement(MediaPlayerControls, {
			Style = style.MediaPlayerControls,
			LayoutOrder = 2,
			IsPlaying = props.IsPlaying,
			IsLoaded = props.IsLoaded,
			OnPause = props.OnPause,
			OnPlay = props.OnPlay,
			TimeLength = props.TimeLength,
			CurrentTime = props.CurrentTime,
			OnScrub = props.SetCurrentTime,
		}),
	})
end

StatelessVideoPlayer = withContext({
	Stylizer = ContextServices.Stylizer,
})(StatelessVideoPlayer)

return StatelessVideoPlayer
