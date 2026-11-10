--[[
	(REQUIRES CHANGES)
	This component will be deprecated in future in favor of a stylesheet for the plain Frame instance.
	A basic pane with minimal configuration.
	All standard props are passed through to the underlying instance, which may be a Frame or ImageLabel.

	Optional Props:
		table ForwardRef: An optional ref to pass to the underlying Frame.
		boolean Active: Whether to sink input.
		Enum.AutomaticSize AutomaticSize: Automatic sizing for the component. (PREFER X-Fit, X-FitX or X-FitY tag)
		Color3 BackgroundColor: Override the color of the background. (PREFER BackgroundColor3 or a style tag)
		Padding Padding: An optional number or table adding a UIPadding instance. (PREFER X-Pad tag)
		Enum.FillDirection Layout: An optional Enum.FillDirection adding a UIListLayout instance. (PREFER X-Column or X-Row tag)
		number Spacing: An optional number or UDim to space elements out by. (PREFER X-Column or X-Row tag)
		Enum.HorizontalAlignment HorizontalAlignment: Property on UIListLayout (PREFER X-Left, X-Center or X-Right)
		Enum.VerticalAlignment VerticalAlignment: Property on UIListLayout (PREFER X-Top, X-Middle or X-Bottom)
		table Border: Override the border of this pane (Color, Size or Image, Background, SliceCenter? (PREFER Border tag)
		callback OnClick: Triggered when the user clicks on this component.
		callback OnRightClick: Triggered when the user right-clicks on this component.
		callback OnPress: Triggered when the user clicks or taps on this component.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext. (DEPRECATED)
		Style Style: The style of the component. (PREFER style tag)
		number ZIndex: The ZIndex of the component.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)

local Util = require(Framework.Util)
local isInputMainPress = Util.isInputMainPress
local prioritize = Util.prioritize

local withForwardRef = require(Framework.Wrappers.withForwardRef)
local joinTags = require(Framework.Styling.joinTags)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign
local join = Dash.join
local omit = Dash.omit

local DEFAULT_SIZE = UDim2.fromScale(0, 0)
local DEFAUlT_TRANSPARENCY = 0

local DEPRECATED_STYLES = {
	Box = "Main",
	BorderBox = "Main X-Border",
	SubtleBox = "Muted",
	SubtleBorderBox = "Muted X-Border",
	RoundBox = "Main X-Corner",
	InputBox = "X-Input",
	ErrorBorderBox = "X-Error",
	CornerBox = "X-Corner",
}

local Pane = Roact.PureComponent:extend("Pane")

local function getClassName(props, style)
	local className
	local hasClickFunctionality = props.OnClick or props.OnRightClick or props.OnPress
	local image = prioritize(props.Image, style.Image)
	if image then
		if hasClickFunctionality then
			className = "ImageButton"
		else
			className = "ImageLabel"
		end
	elseif hasClickFunctionality then
		className = "TextButton"
	else
		className = "Frame"
	end
	return className
end

Pane.defaultProps = {
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
	VerticalAlignment = Enum.VerticalAlignment.Center,
}

-- TODO RIDE-5172: Allow Typecheck to run and support additional props passed to underlying Frame
-- Typecheck.wrap(Pane, script)

function Pane:init()
	self.onPress = function(_, input)
		if isInputMainPress(input) then
			self.props.OnPress(input)
		end
	end

	self.onRightClick = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.props.OnRightClick(Vector2.new(input.Position.X, input.Position.Y))
		end
	end

	self.onInputBegan = function(element, input)
		if self.props[Roact.Event.InputBegan] then
			self.props[Roact.Event.InputBegan](element, input)
		end
		if self.props.OnPress then
			self.onPress(element, input)
		end
		if self.props.OnRightClick then
			self.onRightClick(element, input)
		end
	end
end

function Pane:render()
	local props = self.props
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	local tags = if supportsStyleSheets then props[React.Tag] else nil

	local children = props[Roact.Children] or {}

	local deprecatedStyle
	if supportsStyleSheets and typeof(style) == "string" then
		deprecatedStyle = DEPRECATED_STYLES[style]
		if game:GetFastFlag("DebugDeveloperFrameworkSdk") then
			local Root = Framework:FindFirstAncestorWhichIsA("Plugin"):FindFirstChildWhichIsA("Folder")
			print(
				`[DebugDeveloperFrameworkSdk] {Root.Name} StyleSheets DEPRECATED: Replace Pane Style = {style} with [React.Tag] = {deprecatedStyle}`
			)
		end
		style = {}
	end

	-- StyleSheets: Prefer X-Pad tag, will be deprecated in future
	local padding = props.Padding
	if padding then
		local isPaddingNumber = type(padding) == "number"
		children.Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, isPaddingNumber and padding or padding.Top or 0),
			PaddingBottom = UDim.new(0, isPaddingNumber and padding or padding.Bottom or 0),
			PaddingLeft = UDim.new(0, isPaddingNumber and padding or padding.Left or 0),
			PaddingRight = UDim.new(0, isPaddingNumber and padding or padding.Right or 0),
		})
	end

	-- StyleSheets: Prefer X-Row or X-Column tag, will be deprecated in future
	if props.Layout then
		local spacing
		if props.Spacing then
			if typeof(props.Spacing) == "number" then
				spacing = UDim.new(0, props.Spacing)
			else
				spacing = props.Spacing
			end
		end
		children.Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = props.Layout,
			HorizontalAlignment = props.HorizontalAlignment,
			VerticalAlignment = props.VerticalAlignment,
			Padding = spacing,
		})
	end

	-- StyleSheets: Prefer X-Fit, X-FitX or X-FitY tag, in future AutomaticSize prop will only update the underlying Frame.AutomaticSize and not the Size
	local automaticSize = props.AutomaticSize
	local scaleX = 1
	local scaleY = 1
	if automaticSize then
		if automaticSize == Enum.AutomaticSize.X or automaticSize == Enum.AutomaticSize.XY then
			scaleX = 0
		end
		if automaticSize == Enum.AutomaticSize.Y or automaticSize == Enum.AutomaticSize.XY then
			scaleY = 0
		end
	end

	local className = getClassName(props, style)

	local defaultProps = if supportsStyleSheets
		then {
			Size = prioritize(props.Size, style.Size, (if automaticSize then UDim2.fromScale(scaleX, scaleY) else nil)),
		}
		else {
			BackgroundTransparency = prioritize(props.Transparency, style.Transparency, 1),
			BorderSizePixel = 0,
			Size = prioritize(props.Size, style.Size, UDim2.fromScale(scaleX, scaleY)),
		}

	-- StyleSheets: Prefer BackgroundColor3 or a style tag, will be deprecated in future
	local color = props.BackgroundColor3 or props.BackgroundColor or style.Background
	if color then
		defaultProps.BackgroundTransparency = if supportsStyleSheets
			then props.Transparency or 0
			else prioritize(props.Transparency, style.Transparency, 0)
	end

	local onInputBegan
	if props.OnRightClick or props.OnPress then
		onInputBegan = self.onInputBegan
	end

	local hasClickFunctionality = props.OnClick or props.OnRightClick or props.OnPress
	if props.OnClick then
		defaultProps[Roact.Event.Activated] = props.OnClick
	end

	local image = prioritize(props.Image, style.Image)
	if hasClickFunctionality and not image then
		defaultProps.AutoButtonColor = false
		defaultProps.Text = ""
	end

	if image then
		assign(defaultProps, {
			Image = image,
			ImageColor3 = color,
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = style.SliceCenter,
		})
	elseif color then
		defaultProps.BackgroundColor3 = color
	end

	-- StyleSheets: Prefer X-Corner and X-Stroke tag, will be deprecated in future
	local border = if supportsStyleSheets then nil else prioritize(props.Border, style.Border, nil)

	if border then
		if not border.Image then
			assign(defaultProps, {
				BorderColor3 = border.Color,
				BorderSizePixel = border.Size or 1,
			})
		else
			children = {
				Contents = Roact.createElement("ImageLabel", {
					Size = UDim2.fromScale(scaleX, scaleY),
					AutomaticSize = automaticSize,
					Image = border.Image,
					ImageColor3 = (props.BorderColor or border.Background),
					BackgroundTransparency = 1,
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = border.SliceCenter,
				}, children),
			}
		end
	end

	-- Deprecated: Check for CornerRadius in deprecated Stylizer style
	if style.CornerRadius then
		children.UICorner = Roact.createElement("UICorner", {
			CornerRadius = style.CornerRadius,
		})
	end

	if props.ForwardRef then
		defaultProps[Roact.Ref] = props.ForwardRef
	end

	local componentProps = omit(join(defaultProps, props), {
		Roact.Children,
		"StyleModifier",
		"BackgroundColor",
		"BorderColor",
		"Padding",
		"Layout",
		"Spacing",
		"Style",
		"Stylizer",
		"Theme",
		"HorizontalAlignment",
		"VerticalAlignment",
		"OnClick",
		"OnRightClick",
		"OnPress",
		"ForwardRef",
	})
	if onInputBegan then
		-- If we have a custom OnInputBegan handler, override any handler passed
		-- in via props as we will call this in self.onInputBegan explicitly
		componentProps[Roact.Event.InputBegan] = onInputBegan
	end
	if supportsStyleSheets then
		componentProps[React.Tag] = joinTags(
			"Component-Pane",
			tags,
			deprecatedStyle,
			if componentProps.Size == DEFAULT_SIZE then "X-DefaultSize" else nil,
			if componentProps.BackgroundTransparency == DEFAUlT_TRANSPARENCY then "X-DefaultTransparency" else nil
		)
	end

	return Roact.createElement(className, componentProps, children)
end

Pane = withContext({
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(Pane)

return withForwardRef(Pane)
