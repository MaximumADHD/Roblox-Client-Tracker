--!nonstrict
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
local UIBloxConfig = require(UIBlox.UIBloxConfig)

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
local validateTypographyInfo = require(UIBlox.Core.Style.Validator.validateTypographyInfo)
local HoverButtonBackground = require(Core.Button.HoverButtonBackground)
local StandardButtonSize = require(Button.Enum.StandardButtonSize)

local validateImage = require(Core.ImageSet.Validator.validateImage)
local enumerateValidator = require(UIBlox.Utility.enumerateValidator)

local CONTENT_PADDING = 5
local PLACEHOLDER_ABSOLUTE_SIZE_PX = 100

local GenericButton = Roact.PureComponent:extend("GenericButton")

function GenericButton:init()
	self:setState({
		controlState = ControlState.Initialize,
		absoluteSize = Vector2.new(PLACEHOLDER_ABSOLUTE_SIZE_PX, PLACEHOLDER_ABSOLUTE_SIZE_PX),
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
		if self.props[Roact.Change.AbsoluteSize] then
			self.props[Roact.Change.AbsoluteSize](rbx)
		end
	end
end

local colorStateMap = t.interface({
	-- The default state theme color class
	[ControlState.Default] = t.string,
})

GenericButton.validateProps = t.interface({
	--The icon of the button
	icon = t.optional(validateImage),

	--The text of the button
	text = t.optional(t.string),

	--The icon of the controller input (A/B/X/Y button) needed to activate the button
	inputIcon = t.optional(validateImage),

	--The image being used as the background of the button
	buttonImage = validateImage,

	--The font style for the button text
	fontStyle = t.optional(t.union(t.string, validateFontInfo, validateTypographyInfo)),

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

	--Determine whether hover background is enabled
	isHoverBackgroundEnabled = t.optional(t.boolean),

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

	--Which standard button size we should use, instead of fixed Size, to determine button height and font size
	standardSize = t.optional(enumerateValidator(StandardButtonSize)),

	--For standard buttons, optionally override the default max width of 640 for Regular and Small,
	--or set a max width for XSmall (e.g. width of parent container)
	maxWidth = t.optional(t.numberPositive),

	--For standard buttons, optionally override the default width behavior.
	--If true: button just wide enough to fit its text. If false: default to the full width of its container.
	fitContent = t.optional(t.boolean),

	-- Override for the button text
	buttonTextOverride = t.optional(t.strictInterface({
		Size = t.optional(t.UDim2),
		TextSize = t.optional(t.number),
		TextWrapped = t.optional(t.boolean),
		TextTruncate = t.optional(t.enum(Enum.TextTruncate)),
		TextXAlignment = t.optional(t.enum(Enum.TextXAlignment)),
	})),

	forwardedRef = t.optional(t.table),

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

	if isDelayedInput then
		return withAnimation({
			loadingProgress = enableInputDelayed and 0 or 1.0,
		}, function(values)
			-- Clamp because dampingRatio is < 1
			local loadingProgress = math.clamp(values.loadingProgress, 0, 1)
			return self:renderButton(loadingProgress)
		end, {
			frequency = 1 / delayInputSeconds,
			dampingRatio = 0.8,
		})
	else
		return self:renderButton()
	end
end

function GenericButton:renderButton(loadingProgress)
	return withStyle(function(style)
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
		local size = self.props.Size
		local standardSize = self.props.standardSize
		local maxWidth = self.props.maxWidth or 640
		local fitContent = self.props.fitContent

		if text then
			assert(colorStateMap(textStateColorMap), "textStateColorMap is missing or invalid.")
		end
		if icon then
			assert(colorStateMap(iconStateColorMap), "iconStateColorMap is missing or invalid.")
		end
		if inputIcon then
			assert(colorStateMap(inputIconStateColorMap), "inputIconStateColorMap is missing or invalid.")
		end
		if isDelayedInput and delayedInputImage == nil then
			-- Instead of breaking when delayedInput is true and no image is provided, disable delayedInput.
			-- Ideally two props don't depend on eachothers existence to work properly.
			isDelayedInput = false
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
		local loadingImage = delayedInputImage
		if loadingProgress == 1 then
			-- Swap to original button image to prevent flat edge peaking on the left side
			loadingImage = buttonImage
		end

		if isDelayedInput and loadingProgress ~= 0 then
			userInteractionEnabled = false
		end

		local buttonStyle = getContentStyle(buttonStateColorMap, currentState, style)
		local textStyle = text and getContentStyle(textStateColorMap, currentState, style)
		local iconStyle = icon and getContentStyle(iconStateColorMap, currentState, style)
		local inputIconStyle = inputIcon and getContentStyle(inputIconStateColorMap, currentState, style)
		local isHoverState = currentState == ControlState.Hover
		-- Temp solution to add an additional hover background layer for Hover state.
		-- For long term, need design support to provide a new style with dedicated hover state color
		local showHoverBackground
		if UIBloxConfig.enableGenericButtonHoverBackgroundFix then
			showHoverBackground = isHoverState and self.props.isHoverBackgroundEnabled == true
		else
			showHoverBackground = false
		end

		-- Handle standard button sizes
		local sidePadding = CONTENT_PADDING
		if standardSize then
			local height
			local fitContentDefault
			if standardSize == StandardButtonSize.Regular then
				height = 48
				sidePadding = 12
				fontStyle = style.Font.Header2
				fitContentDefault = false
			elseif standardSize == StandardButtonSize.Small then
				height = 36
				sidePadding = 8
				fontStyle = style.Font.Header2
				fitContentDefault = false
			elseif standardSize == StandardButtonSize.XSmall then
				height = 28
				sidePadding = 8
				fontStyle = style.Font.CaptionHeader
				fitContentDefault = true
			end
			if fitContent == nil then
				fitContent = fitContentDefault
			end
			local widthScale = if fitContent then 0 else 1
			size = UDim2.new(widthScale, 0, 0, height)
		end

		local buttonContentLayer
		if isLoading then
			buttonContentLayer = {
				isLoadingShimmer = Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(1, 0, 1, 0),
				}),
			}
		else
			-- We want to set maxSize for the textLabel: what's the biggest the text can be.
			local containerWidth = self.state.absoluteSize.X
			if standardSize and fitContent then
				-- If no max width has been provided, the limit is infinity (math.huge)
				containerWidth = maxWidth
			end

			local maxSizeY = self.state.absoluteSize.Y - 2 * CONTENT_PADDING
			local maxSizeX = containerWidth - 2 * sidePadding
			if icon then
				maxSizeX -= (CONTENT_PADDING + getIconSize(IconSize.Medium))
			end
			local maxSize = Vector2.new(maxSizeX, maxSizeY)

			buttonContentLayer = self.props[Roact.Children]
				or {
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
					Text = text
							and Roact.createElement(
								GenericTextLabel,
								Cryo.Dictionary.join({
									BackgroundTransparency = 1,
									Text = text,
									fontStyle = fontStyle,
									colorStyle = textStyle,
									LayoutOrder = 2,
									maxSize = maxSize,
									-- For standard buttons, text should truncate with ... and never wrap onto 2 lines
									TextWrapped = if standardSize then false else nil,
									TextTruncate = if standardSize then Enum.TextTruncate.AtEnd else nil,
									-- For standard buttons, if there's an icon, left-align the text to avoid a big gap
									-- between icon and text, especially in cases where the text is truncated
									TextXAlignment = if standardSize and icon then Enum.TextXAlignment.Left else nil,
								}, self.props.buttonTextOverride or {})
							)
						or nil,
				}

			-- buttonMiddleContent should never == self.props[Roact.Children] and init the standard button content
			buttonContentLayer = self.props[Roact.Children]
				or {
					ButtonMiddleContent = Roact.createElement("Frame", {
						AutomaticSize = if fitContent then Enum.AutomaticSize.X else nil,
						Size = if fitContent then UDim2.fromScale(0, 1) else UDim2.fromScale(1, 1),
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

		return Roact.createElement(
			Interactable,
			Cryo.Dictionary.join(self.props, {
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
				isHoverBackgroundEnabled = Cryo.None,
				isDelayedInput = Cryo.None,
				enableInputDelayed = Cryo.None,
				delayInputSeconds = Cryo.None,
				standardSize = Cryo.None,
				maxWidth = Cryo.None,
				fitContent = Cryo.None,
				buttonTextOverride = Cryo.None,
				[Roact.Children] = Cryo.None,

				Size = size,
				AutomaticSize = if fitContent then Enum.AutomaticSize.X else nil,
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
			}),
			{
				-- For standard button sizes, enforce max width if present
				UISizeConstraint = if standardSize and maxWidth
					then Roact.createElement("UISizeConstraint", {
						-- Each standard size has a fixed height, so the max height can be infinite (math.huge)
						MaxSize = Vector2.new(maxWidth, math.huge),
					})
					else nil,
				-- For standard button sizes, require sidePadding (only really necessary if scaleWidthAutomatically)
				UIPadding = if standardSize
					then Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, sidePadding),
						PaddingRight = UDim.new(0, sidePadding),
					})
					else nil,
				ButtonContent = Roact.createElement("Frame", {
					AutomaticSize = if fitContent then Enum.AutomaticSize.X else nil,
					Size = if fitContent then UDim2.fromScale(0, 1) else UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
				}, buttonContentLayer),
				LoadingImage = isDelayedInput and Roact.createElement(ImageSetComponent.Label, {
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
				HoverBackground = showHoverBackground and Roact.createElement(HoverButtonBackground) or nil,
			}
		)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(
		GenericButton,
		Cryo.Dictionary.join(props, {
			forwardedRef = ref,
		})
	)
end)
