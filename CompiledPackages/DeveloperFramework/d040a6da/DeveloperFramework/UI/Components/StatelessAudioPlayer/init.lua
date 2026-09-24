--[[
	Uncontrolled (stateless) audio player component.

	Required Props:
		string SoundId: The ID of the sound to play. (should be prefixed with rbxassetid://)
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
		Enum.UsageContext UsageContext: The UsageContext for previewed assets.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local Typecheck = require(Framework.Util.Typecheck)

local Container = require(Framework.UI.Components.Container)
local Image = require(Framework.UI.Components.Image)
local MediaPlayerControls = require(Framework.UI.Components.MediaPlayerControls)
local MediaPlayerSignal = require(Framework.UI.Components.MediaPlayerWrapper.MediaPlayerSignal)

local StatelessAudioPlayer = Roact.PureComponent:extend("StatelessAudioPlayer")
Typecheck.wrap(StatelessAudioPlayer, script)

function StatelessAudioPlayer:init()
	self.soundRef = Roact.createRef()

	self.onSoundChange = function(rbx: Sound, property: string)
		if self.unmounting then
			return
		end
		-- If the sound asset id changes, the player should pause and reset the time to 0
		if property == "SoundId" then
			self.props.OnEnd()
		end
		if property == "TimeLength" then
			self.props.SetTimeLength(rbx.TimeLength)
			self.props.SetIsLoaded(rbx.IsLoaded)
		elseif rbx.IsLoaded ~= self.props.IsLoaded then
			self.props.SetIsLoaded(rbx.IsLoaded)
		end
	end

	self.handleMediaPlayerSignal = function(updateType)
		local soundObj = self.soundRef:getValue()
		local unmounting = self.unmounting
		if not soundObj or unmounting then
			return
		end

		if updateType == MediaPlayerSignal.PLAY then
			soundObj.SoundId = self.props.SoundId
			soundObj.Playing = true
		elseif updateType == MediaPlayerSignal.PAUSE then
			soundObj.Playing = false
		elseif updateType == MediaPlayerSignal.SET_TIME then
			if self.props.IsPlaying then
				soundObj.TimePosition = self.props.CurrentTime
			end
		end
	end
end

function StatelessAudioPlayer:didMount()
	self.mediaPlayerSignalConnection = self.props.MediaPlayerSignal:Connect(self.handleMediaPlayerSignal)
end

function StatelessAudioPlayer:willUnmount()
	self.unmounting = true
	if self.mediaPlayerSignalConnection then
		self.mediaPlayerSignalConnection:Disconnect()
		self.mediaPlayerSignalConnection = nil
	end
end

function StatelessAudioPlayer:render()
	local props = self.props
	local style = self.props.Stylizer
	local layoutOrder = props.LayoutOrder
	local position = props.Position
	local size = props.Size

	local controlsSize = MediaPlayerControls.calculateSize(style.MediaPlayerControls)

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
			Padding = UDim.new(0, 10),
		}),

		PlaceholderImageFrame = Roact.createElement(Container, {
			LayoutOrder = 1,
			Size = UDim2.new(UDim.new(1, 0), UDim.new(1, 0) - controlsSize.Y),
		}, {
			PlaceholderImage = Roact.createElement(Image, {
				Style = style.PlaceholderImage,
			}),
		}),

		MediaPlayerControls = Roact.createElement(MediaPlayerControls, {
			LayoutOrder = 2,
			Style = style.MediaPlayerControls,
			IsPlaying = props.IsPlaying,
			IsLoaded = props.IsLoaded,
			OnPause = props.OnPause,
			OnPlay = props.OnPlay,
			TimeLength = props.TimeLength,
			CurrentTime = props.CurrentTime,
			OnScrub = props.SetCurrentTime,
		}),

		SoundObj = Roact.createElement("Sound", {
			Looped = false,
			SoundId = props.SoundId,
			UsageContextPermission = props.UsageContext,
			[Roact.Ref] = self.soundRef,
			[Roact.Event.Changed] = self.onSoundChange,
			[Roact.Event.Ended] = props.OnEnd,
		}),
	})
end

StatelessAudioPlayer = withContext({
	Stylizer = ContextServices.Stylizer,
})(StatelessAudioPlayer)

return StatelessAudioPlayer
