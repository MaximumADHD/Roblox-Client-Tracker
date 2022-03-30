--[[
	Create a generic button that can be themed for different state the background and content.
]]
local Button = script.Parent
local Core = Button.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Interactable = require(Core.Control.Interactable)

local ControlState = require(Core.Control.Enum.ControlState)
local getContentStyle = require(script.Parent.getContentStyle)

local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(Core.ImageSet.ImageSetComponent)
local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)
local GenericTextLabel = require(Core.Text.GenericTextLabel.GenericTextLabel)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local validateImage = require(Core.ImageSet.Validator.validateImage)

local CONTENT_PADDING = 5
local PLACEHOLDER_ABSOLUTE_SIZE_PX = 100

local GenericButton = Roact.PureComponent:extend("GenericButton")

function GenericButton:init()
	self:setState({
		controlState = ControlState.Initialize,
		absoluteSize = Vector2.new(PLACEHOLDER_ABSOLUTE_SIZE_PX, PLACEHOLDER_ABSOLUTE_SIZE_PX)
	})

	self.onStateChanged = function(oldState, newState)
		self:setState({
			controlState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end

	self.onAbsoluteSizeChanged = function(rbx)
		self:setState({
			absoluteSize = rbx.AbsoluteSize,
		})
	end
end

local colorStateMap = t.interface({
	-- The default state theme color class
	[ControlState.Default] = t.string,
})

local validateProps = t.interface({
	--The icon of the button
	icon = t.optional(validateImage),

	--The text of the button
	text = t.optional(t.string),

	--The icon of the controller input (A/B/X/Y button) needed to activate the button
	inputIcon = t.optional(validateImage),

	--The image being used as the background of the button
	buttonImage = validateImage,

	--The font style for the button text
	fontStyle = t.optional(t.union(t.string, validateFontInfo)),

	--The image used to indicate a loading bar for when isDelayedInput is set
	delayedInputImage = t.optional(validateImage),

	--The theme color class mapping for different button states
	buttonStateColorMap = colorStateMap,

	--The theme color class mapping for different content states
	contentStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different text states
	textStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different icon states
	iconStateColorMap = t.optional(colorStateMap),

	--The theme color class mapping for different input icon states
	inputIconStateColorMap = t.optional(colorStateMap),

	--Is the button disabled
	isDisabled = t.optional(t.boolean),

	--Is the button loading
	isLoading = t.optional(t.boolean),

	--Determine if it should setup a delay on the input
	isDelayedInput = t.optional(t.boolean),

	--Used to start the input delay, set to true when you want to start the animation.
	enableInputDelayed = t.optional(t.boolean),

	--Amount of seconds to delay input
	delayInputSeconds = t.optional(t.numberPositive),

	--The activated callback for the button
	onActivated = t.callback,

	--The state change callback for the button
	onStateChanged = t.optional(t.callback),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),

	forwardedRef = t.optional(t.table)

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance
})

GenericButton.defaultProps = {
	fontStyle = "Header2",
	isDisabled = false,
	isLoading = false,
	isDelayedInput = false,
	enableInputDelayed = false,
	delayInputSeconds = 3,
	SliceCenter = Rect.new(8, 8, 9, 9),
}

function GenericButton:render()
	local isDelayedInput = self.props.isDelayedInput
	local enableInputDelayed = self.props.enableInputDelayed
	local delayInputSeconds = self.props.delayInputSeconds

	if UIBloxConfig.genericButtonInputChanges and isDelayedInput then
		return withAnimation({
			loadingProgress = enableInputDelayed and 0 or 1.0,
		}, function(values)
			-- Clamp because dampingRatio is < 1
			local loadingProgress = math.clamp(values.loadingProgress, 0, 1)
			return self:renderButton(loadingProgress)
		end, {
			frequency = 1/delayInputSeconds,
			dampingRatio = 0.8,
		})
	else
		return self:renderButton()
	end
end

function GenericButton:renderButton(loadingProgress)
	return withStyle(function(style)
		assert(validateProps(self.props))
		assert(t.table(style), "Style provider is missing.")

		local currentState = self.state.controlState

		local text = self.props.text
		local icon = self.props.icon
		local inputIcon = self.props.inputIcon
		local isLoading = self.props.isLoading
		local isDisabled = self.props.isDisabled
		local isDelayedInput = self.props.isDelayedInput

		local userInteractionEnabled = self.props.userInteractionEnabled

		local buttonImage = self.props.buttonImage
		local fontStyle = self.props.fontStyle
		local delayedInputImage = self.props.delayedInputImage
		local buttonStateColorMap = self.props.buttonStateColorMap
		local contentStateColorMap = self.props.contentStateColorMap
		local textStateColorMap = self.props.textStateColorMap or contentStateColorMap
		local iconStateColorMap = self.props.iconStateColorMap or contentStateColorMap
		local inputIconStateColorMap = self.props.inputIconStateColorMap or contentStateColorMap

		if text then
			assert(colorStateMap(textStateColorMap), "textStateColorMap is missing or invalid.")
		end
		if icon then
			assert(colorStateMap(iconStateColorMap), "iconStateColorMap is missing or invalid.")
		end
		if inputIcon then
			assert(colorStateMap(inputIconStateColorMap), "inputIconStateColorMap is missing or invalid.")
		end
		if UIBloxConfig.genericButtonInputChanges and isDelayedInput then
			assert(delayedInputImage, "delayedInputImage is missing or invalid")
		end

		if isLoading then
			isDisabled = true
		end

		if isDisabled then -- or isLoading
			isDelayedInput = false
		end

		if type(fontStyle) == "string" then
			fontStyle = style.Font[fontStyle]
		end

		-- Loading image has flat edge on left side for the animation
		local loadingImage = nil
		if UIBloxConfig.genericButtonInputChanges then
			loadingImage = delayedInputImage
			if loadingProgress == 1 then
				-- Swap to original button image to prevent flat edge peaking on the left side
				loadingImage = buttonImage
			end

			if isDelayedInput and loadingProgress ~= 0 then
				userInteractionEnabled = false
			end
		end

		local buttonStyle = getContentStyle(buttonStateColorMap, currentState, style)
		local textStyle = text and getContentStyle(textStateColorMap, currentState, style)
		local iconStyle = icon and getContentStyle(iconStateColorMap, currentState, style)
		local inputIconStyle = inputIcon and getContentStyle(inputIconStateColorMap, currentState, style)

		local buttonContentLayer
		if isLoading then
			buttonContentLayer = {
				isLoadingShimmer = Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 1, 0),
				})
			}
		else
			-- We want to set maxSize for the textLabel: what's the biggest the text
			-- can be.
			local maxSizeX = self.state.absoluteSize.X - 2 * CONTENT_PADDING
			local maxSizeY = self.state.absoluteSize.Y - 2 * CONTENT_PADDING
			if icon then
				maxSizeX -= (CONTENT_PADDING + getIconSize(IconSize.Medium))
			end
			local maxSize = Vector2.new(maxSizeX, maxSizeY)

			buttonContentLayer = self.props[Roact.Children] or {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, CONTENT_PADDING),
				}),
				Icon = icon and Roact.createElement(ImageSetComponent.Label, {
					Size = UDim2.new(0, getIconSize(IconSize.Medium), 0, getIconSize(IconSize.Medium)),
					BackgroundTransparency = 1,
					Image = icon,
					ImageColor3 = iconStyle.Color,
					ImageTransparency = iconStyle.Transparency,
					LayoutOrder = 1,
				}) or nil,
				Text = text and Roact.createElement(GenericTextLabel, {
					BackgroundTransparency = 1,
					Text = text,
					fontStyle = fontStyle,
					colorStyle = textStyle,
					LayoutOrder = 2,
					maxSize = maxSize,
				}) or nil,
			}
			if UIBloxConfig.genericButtonInputChanges then
				-- buttonMiddleContent should never == self.props[Roact.Children] and init the standard button content
				buttonContentLayer = self.props[Roact.Children] or {
					ButtonMiddleContent = Roact.createElement("Frame", {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, buttonContentLayer),
					ButtonIcon = inputIcon and Roact.createElement(ImageSetComponent.Label, {
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, -4, 0.5, 0),
						Size = UDim2.new(0, getIconSize(IconSize.Medium), 0, getIconSize(IconSize.Medium)),
						BackgroundTransparency = 1,
						Image = inputIcon,
						ImageColor3 = inputIconStyle.Color,
						ImageTransparency = inputIconStyle.Transparency,
					}) or nil,
				}
			end
		end

		return Roact.createElement(Interactable, Cryo.Dictionary.join(self.props, {
			-- We are going to pass along to interactable some of the props that were
			-- passed in to us.  Remove the ones it doesn't understand.
			forwardedRef = Cryo.None,
			icon = Cryo.None,
			text = Cryo.None,
			inputIcon = Cryo.None,
			buttonImage = Cryo.None,
			fontStyle = Cryo.None,
			delayedInputImage = Cryo.None,
			buttonStateColorMap = Cryo.None,
			contentStateColorMap = Cryo.None,
			textStateColorMap = Cryo.None,
			iconStateColorMap = Cryo.None,
			inputIconStateColorMap = Cryo.None,
			onActivated = Cryo.None,
			isLoading = Cryo.None,
			isDelayedInput = Cryo.None,
			enableInputDelayed = Cryo.None,
			delayInputSeconds = Cryo.None,
			[Roact.Children] = Cryo.None,

			[Roact.Ref] = self.props.forwardedRef,
			isDisabled = isDisabled,
			onStateChanged = self.onStateChanged,
			userInteractionEnabled = userInteractionEnabled,
			Image = buttonImage,
			ScaleType = Enum.ScaleType.Slice,
			ImageColor3 = buttonStyle.Color,
			ImageTransparency = buttonStyle.Transparency,
			BackgroundTransparency = 1,
			AutoButtonColor = false,
			[Roact.Event.Activated] = self.props.onActivated,
			[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
		}), {
			ButtonContent = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, buttonContentLayer),
			LoadingImage = (UIBloxConfig.genericButtonInputChanges and isDelayedInput) and
			Roact.createElement(ImageSetComponent.Label, {
				Size = UDim2.new(loadingProgress, 0, 1, 0),
				Position = UDim2.new(1, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = loadingImage,
				ImageColor3 = Color3.new(0, 0, 0),
				ImageTransparency = 0.5,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = self.props.SliceCenter,
			}),
		})
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(GenericButton, Cryo.Dictionary.join(props, {
		forwardedRef = ref
	}))
end)
