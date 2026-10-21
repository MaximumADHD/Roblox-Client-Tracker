--[[
	An Image Carousel. By default, it shows a single image and moves to the next image when hovered.
	You can change it to auto advance to the next image when it's not hovered via props.

	Required Props:
		table ImageStrings: Table of image strings for the carousel in the order they should appear.

	Optional Props:
		number ImageCornerRadius: The radius for the UICorner. If not provided, image corners won't be rounded.
		Enum.ScaleType ImageScaleType: Scale type to use for the image in the carousel
		boolean DisableAnimations: Whether or not to disable the fade animation between images
		string PaneStyle: The style type of the pane that contains the image carousel.
		UDim2 Size: The size of this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.

		boolean AutoAdvance: Whether to autoadvance the carousel after AutoAdvanceTimer milliseconds
		number AutoAdvanceTimer: Number of milliseconds seconds to wait before the image carousel autoadvances.
		boolean DisableHoverToggle: If false, hover toggle is enabled. This means the AutoAdvance bool is flipped when entering/leaving hovering. E.g. if you were auto advancing on hover, then off hover it won't autoadvance and vice versa.
		boolean ResetWhenHoveredOff: Whether or not to go back to the first image and reset the hover timers when the user hovers off the image.
		boolean ShowNavigationOnHover: Whether to show the arrows on hover
		callback OnImageChange: function that's called when an image changes. Calls on animation finish if animations are enabled.
		number OnImageChangeTransparencyThreshold: If provided, will call the OnImageChange callback when the transparency of the image fading in is >= this threshold. Irrelevant if animations are disabled.
		callback OnSetImages: function that's called when the component sets the images, which can happen in didMount or didUpdate.

		Vector2 ButtonAnchorPoint: Anchor point for the buttons to move images.
		Color3 ButtonBackgroundColor: Backgorund color for the buttons.
		string ButtonCursor: Type of cursor to use when hovering over the buttons.
		Color3 ButtonHoverColor: Hover color for the buttons.
		table ButtonPadding: Padding for the buttons.
		UDim2 ButtonPosition: Position for the buttons.
		UDim2 ButtonSize: Size of the buttons.
		string ButtonIcon: Icon to use for the button.
		Color3 ButtonIconColor: Color of the icon in the buttons.
		Enum.ScaleType ButtonIconScaleType: Scale type to use for the icon in the buttons.
		UDim2 ButtonIconSize: Size of the icon in the buttons.
		number ButtonImageTransparency: Image transparency of the buttons.
]]
local ContentProvider = game:GetService("ContentProvider")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Typecheck = require(Framework.Util).Typecheck
local Dash = require(Framework.Parent.Dash)
local shallowEqual = Dash.shallowEqual
local Otter = (if Framework.Parent:FindFirstChild("Otter") then require(Framework.Parent.Otter) else nil) :: any
local Util = require(Framework.Util)
local prioritize = Util.prioritize

local Image = require(Framework.UI.Components.Image)
local IconButton = require(Framework.UI.Components.IconButton)
local Pane = require(Framework.UI.Components.Pane)

local ImageCarousel = Roact.PureComponent:extend("ImageCarousel")
Typecheck.wrap(ImageCarousel, script)

local RunService = game:GetService("RunService")

export type Props = {
	ImageStrings: { string },
	ImageCornerRadius: number?,
	ImageScaleType: Enum.ScaleType?,

	PaneStyle: string?,
	Size: UDim2?,

	AutoAdvance: boolean?,
	AutoAdvanceTimer: number,
	DisableHoverToggle: boolean?,
	ResetWhenHoveredOff: boolean?,
	ShowNavigationOnHover: boolean?,
	OnImageChange: ((indexOfImageShown: number, fromAutoRotation: boolean?) -> nil)?,
	OnImageChangeTransparencyThreshold: number?,
	OnSetImages: ((indexOfImageShown: number) -> nil)?,

	ButtonAnchorPoint: Vector2?,
	ButtonBackgroundColor: Color3?,
	ButtonCursor: string?,
	ButtonHoverColor: Color3?,
	ButtonPadding: { [string]: number }?,
	ButtonPosition: UDim2?,
	ButtonSize: UDim2?,
	ButtonIcon: string?,
	ButtonIconColor: Color3?,
	ButtonIconScaleType: Enum.ScaleType?,
	ButtonIconSize: UDim2?,
	ButtonImageTransparency: number?,
}

type _Props = Props & {
	Stylizer: { [string]: any },
}

ImageCarousel.defaultProps = {
	AutoAdvanceTimer = 5000,
	OnImageChangeTransparencyThreshold = 1,
}

type _State = {
	autoAdvance: boolean?,
	currentImageTransparency: number?,
	fadeInProgress: boolean?,
	-- fromAutoRotation indicates whether or not the image changed due to auto-rotating from the auto advance timer being hit
	-- i.e. if this is false, it means the user clicked the arrows to advance the carousel
	-- Used for analytics tracking by Toolbox
	fromAutoRotation: boolean?,
	imageElements: { string },
	indexOfImageShown: number,
	indexOfNextImage: number?,
	isHovering: boolean,
	startTimeForAutoAdvanceTimer: number,
}

function ImageCarousel:init()
	local state: _State = {
		autoAdvance = self.props.AutoAdvance,
		currentImageTransparency = 0,
		fadeInProgress = false,
		imageElements = {},
		indexOfImageShown = 1,
		isHovering = false,
		startTimeForAutoAdvanceTimer = os.clock(),
	}
	self.state = state
	self.state = {
		autoAdvance = self.props.AutoAdvance,
		currentImageTransparency = 0,
		fadeInProgress = false,
		imageElements = {},
		indexOfImageShown = 1,
		isHovering = false,
		startTimeForAutoAdvanceTimer = os.clock(),
	}
	self._useAnimations = Otter and not self.props.DisableAnimations
	if self._useAnimations then
		self:_createOtterMotors()
	end
	self.preloadedImagesAlready = false
	-- Only preload on init (as opposed to hover) if the carousel can auto advance without hovering
	-- This saves some unnecessary network requests
	if self.props.AutoAdvance then
		self:_handlePreloadImages()
	end
	self._onMouseEnter = function()
		if not self.props.AutoAdvance then
			self:_handlePreloadImages()
		end
		local enableHoverToggle = not self.props.DisableHoverToggle
		local newAutoAdvance = if enableHoverToggle then not self.props.AutoAdvance else self.props.AutoAdvance
		-- If hover toggle is disabled, mouse enter actions shouldn't affect whether we autoadvance
		local newStartTimeForAutoAdvanceTimer = if enableHoverToggle
			then os.clock()
			else self.state.startTimeForAutoAdvanceTimer
		self:setState({
			autoAdvance = newAutoAdvance,
			startTimeForAutoAdvanceTimer = newStartTimeForAutoAdvanceTimer,
			isHovering = true,
		})
	end

	self._onMouseLeave = function()
		-- If hover toggle is disabled, mouse leave actions shouldn't affect whether we autoadvance
		local newStartTimeForAutoAdvanceTimer = if self.props.ResetWhenHoveredOff
				or not self.props.DisableHoverToggle
			then os.clock()
			else self.state.startTimeForAutoAdvanceTimer
		local newIndexOfImageShown = if self.props.ResetWhenHoveredOff then 1 else nil
		self:setState({
			-- Can't just set to self.props.AutoAdvance since if it's nil then setState won't update the variable to be nil, it'll just ignore it
			autoAdvance = if self.props.AutoAdvance then true else false,
			startTimeForAutoAdvanceTimer = newStartTimeForAutoAdvanceTimer,
			indexOfImageShown = newIndexOfImageShown,
			isHovering = false,
		})
		-- Reset the animation vars
		if self.props.ResetWhenHoveredOff and self._useAnimations then
			self:_resetAnimation(newIndexOfImageShown)
		end
	end
	self._moveRight = function()
		self:setState({
			startTimeForAutoAdvanceTimer = os.clock(),
		})
		self:_changeImageIndexBy(1)
	end

	self._moveLeft = function()
		self:setState({
			startTimeForAutoAdvanceTimer = os.clock(),
		})
		self:_changeImageIndexBy(-1)
	end
end

function ImageCarousel:_createOtterMotors()
	self._transparencyMotor = Otter.createSingleMotor(0)
	self._transparencyMotor:onStep(function(currentImageTransparency)
		self:setState({
			currentImageTransparency = currentImageTransparency,
		})
	end)
	-- Called when we set the motor to 0 with an instant goal to reset the animation OR the animation finished and reached 1 with its spring goal
	self._transparencyMotor:onComplete(function()
		-- We need this to prevent an infinite loop when we reset the motor to 0 instantly
		if self.state.currentImageTransparency == 0 then
			return
		end
		self:_resetAnimation(self.state.indexOfNextImage)
	end)
end

-- Can be called when:
-- a current animation is in progress when an image change is triggered, so the animation needs to be reset so the next one can start.
-- an animation finished and we want to reset to set up for the next one
function ImageCarousel:_resetAnimation(indexOfImageToResetTo: number)
	local props: _Props = self.props
	local state: _State = self.state
	if props.OnImageChange and state.currentImageTransparency >= props.OnImageChangeTransparencyThreshold then
		props.OnImageChange(indexOfImageToResetTo, state.fromAutoRotation)
	end
	self:setState({
		indexOfImageShown = indexOfImageToResetTo,
		fadeInProgress = false,
	})
	-- Reset the motor
	self._transparencyMotor:setGoal(Otter.instant(0))
	-- setGoal takes a frame to kick in, so we need to call self.motor:step(0) to force the immediate change to happen
	-- This is helpful in case we set a new spring goal right afterwards
	self._transparencyMotor:step(0)
end

-- Without preloading, there'll be a slight period where there's no image between image transitions
function ImageCarousel:_handlePreloadImages(forcePreload: boolean)
	if not forcePreload and self.preloadedImagesAlready then
		return
	end
	task.spawn(function()
		ContentProvider:PreloadAsync(self.props.ImageStrings)
	end)
	self.preloadedImagesAlready = true
end

function ImageCarousel:_createImageElement(imageString: string, index: number?)
	local style = self.props.Stylizer
	return Roact.createElement(Image, {
		Style = {
			Image = imageString,
			Size = self.props.Size,
			ScaleType = prioritize(self.props.ImageScaleType, style.ImageScaleType),
			Transparency = if not self._useAnimations
				then nil
				elseif index == self.state.indexOfImageShown then self.state.currentImageTransparency
				elseif index == self.state.indexOfNextImage then 1 - self.state.currentImageTransparency
				else 1,
		},
		OnMouseEnter = self._onMouseEnter,
		OnMouseLeave = self._onMouseLeave,
	}, {
		UICorner = if self.props.ImageCornerRadius
			then Roact.createElement("UICorner", {
				CornerRadius = UDim.new(0, self.props.ImageCornerRadius),
			})
			else nil,
	})
end

function ImageCarousel:_createImageElements()
	local imageElements = {}
	for i = 1, #self.props.ImageStrings do
		table.insert(imageElements, i, self:_createImageElement(self.props.ImageStrings[i], i))
	end
	return imageElements
end

function ImageCarousel:_createMoveButton(buttonSpecificStyle: {
	Icon: string,
	Padding: { [string]: number },
	Position: number,
	ShouldMoveRight: boolean,
	ZIndex: number,
})
	local props: _Props = self.props
	local style = props.Stylizer
	local moveButtonsStyle = style.MoveButtons

	return Roact.createElement(IconButton, {
		AnchorPoint = prioritize(props.ButtonAnchorPoint, moveButtonsStyle.AnchorPoint),
		BackgroundColor = prioritize(props.ButtonBackgroundColor, moveButtonsStyle.BackgroundColor),
		Cursor = prioritize(props.ButtonCursor, moveButtonsStyle.Cursor),
		HoverColor = prioritize(props.ButtonHoverColor, moveButtonsStyle.HoverColor),
		IconColor = prioritize(props.ButtonIconColor, moveButtonsStyle.Color),
		IconScaleType = prioritize(props.ButtonIconScaleType, moveButtonsStyle.IconScaleType),
		IconSize = prioritize(props.ButtonIconSize, moveButtonsStyle.IconSize),
		ImageTransparency = prioritize(props.ButtonImageTransparency, moveButtonsStyle.ImageTransparency),
		LeftIcon = prioritize(props.ButtonIcon, buttonSpecificStyle.Icon),
		OnClick = if buttonSpecificStyle.ShouldMoveRight
			then function()
				self:setState({
					fromAutoRotation = false,
				})
				self._moveRight()
			end
			else function()
				self:setState({
					fromAutoRotation = false,
				})
				self._moveLeft()
			end,
		Padding = prioritize(props.ButtonPadding, buttonSpecificStyle.Padding),
		Position = buttonSpecificStyle.Position,
		Size = prioritize(props.ButtonSize, moveButtonsStyle.Size),
		ZIndex = buttonSpecificStyle.ZIndex,
	})
end

function ImageCarousel:_getInBoundsImagesIndex(rawIndex: number)
	local length = #self.props.ImageStrings
	local inBoundsIndex = rawIndex % length
	if inBoundsIndex == 0 then
		inBoundsIndex = length
	end
	return inBoundsIndex
end

function ImageCarousel:_changeImageIndexBy(delta: number)
	-- If animation is still ongoing but we want to change, then complete the animation instantly so it doesn't interfere with the next one
	-- Follows invariant: indexOfImageShown should always be the image being transitioned away from (if in middle of animation) or the image being shown (if animation finished)
	if self._useAnimations and self.state.fadeInProgress then
		self:_resetAnimation(self.state.indexOfNextImage)
	end
	local current = self.state.indexOfImageShown
	local nextIndex
	nextIndex = self:_getInBoundsImagesIndex(current + delta)

	if self._useAnimations then
		self:setState({
			indexOfImageShown = current,
			indexOfNextImage = nextIndex,
			fadeInProgress = true,
		})
		self._transparencyMotor:setGoal(Otter.spring(1, { frequency = 0.8 }))
	else
		self:setState({
			indexOfImageShown = nextIndex,
		})
	end

	if self.props.OnImageChange and not self._useAnimations then
		self.props.OnImageChange(nextIndex, self.state.fromAutoRotation)
	end
end

function ImageCarousel:willUpdate(nextProps)
	if nextProps.ImageStrings ~= self.props.ImageStrings then
		self:_handlePreloadImages(true)
	end
end

function ImageCarousel:didMount()
	self._unmounting = false
	self._heartbeat = RunService.Heartbeat:Connect(function()
		if not self._unmounting then
			self:_update()
		end
	end)
	self:setState({
		imageElements = self:_createImageElements(),
	})
	if self.props.OnSetImages then
		self.props.OnSetImages(1)
	end
end

function ImageCarousel:willUnmount()
	self._unmounting = true
	if self._heartbeat then
		self._heartbeat:Disconnect()
	end
	if self._useAnimations then
		self._transparencyMotor:destroy()
	end
end

function ImageCarousel:_update()
	local state = self.state
	local props: _Props = self.props
	local currentTime = os.clock()
	if state.autoAdvance and currentTime - state.startTimeForAutoAdvanceTimer >= (props.AutoAdvanceTimer / 1000) then
		self:setState({
			fromAutoRotation = true,
		})
		self._moveRight()
	end
end

function ImageCarousel:didUpdate(previousProps)
	if not shallowEqual(previousProps.ImageStrings, self.props.ImageStrings) then
		self:setState({
			imageElements = self:_createImageElements(),
		})
		if self.props.OnSetImages then
			self.props.OnSetImages(self.state.indexOfImageShown)
		end
	end
end

function ImageCarousel:render()
	local props: _Props = self.props
	local state = self.state
	local style = props.Stylizer
	local showNavigation = props.ShowNavigationOnHover and state.isHovering
	assert(type(self.props.ImageStrings) == "table", "Expected 'ImageStrings' to be a table.")

	return Roact.createElement(Pane, {
		Size = prioritize(props.Size, style.Size),
		Style = props.PaneStyle,
	}, {
		LeftButton = if showNavigation then self:_createMoveButton(style.LeftButton) else nil,
		CurrentCarouselImage = self:_createImageElement(
			self.props.ImageStrings[state.indexOfImageShown],
			state.indexOfImageShown
		),
		NextCarouselImage = if self._useAnimations
				and state.fadeInProgress
				and state.indexOfNextImage
			then self:_createImageElement(self.props.ImageStrings[state.indexOfNextImage], state.indexOfNextImage)
			else nil,
		RightButton = if showNavigation then self:_createMoveButton(style.RightButton) else nil,
	})
end

ImageCarousel = withContext({
	Stylizer = ContextServices.Stylizer,
})(ImageCarousel)

return ImageCarousel
