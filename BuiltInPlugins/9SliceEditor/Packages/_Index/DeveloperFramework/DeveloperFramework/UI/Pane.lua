--[[
	A basic pane with minimal configuration.
	All standard props are passed through to the underlying instance, which may be a Frame or ImageLabel.

	Optional Props:
		AutomaticSize: Automatic sizing for the component.
		BackgroundColor: Override the color of the background.
		BorderColor: Override the color of the border image color.
		Padding: An optional number or table adding a UIPadding instance.
		Layout: An optional Enum.FillDirection adding a UIListLayout instance.
		Spacing: An optional number or UDim to space elements out by.
		HorizontalAlignment: Property on UIListLayout
		VerticalAlignment: Property on UIListLayout
		callback OnClick: Triggered when the user clicks on this component.
		callback OnRightClick: Triggered when the user right-clicks on this component.
		callback OnPress: Triggered when the user clicks or taps on this component.
		number ZIndex: The ZIndex of the component.
	Styles:
		Default: The pane has no background
		Box: The pane has the current theme's main background.
		RoundBox: The pane has the current theme's main background with the standard rounded border.
		BorderBox: The pane has the current theme's main background with square border.
		CornerBox: Uses UICorner for adjustable rounded border.
]]
local FFlagDeveloperFrameworkWithContext = game:GetFastFlag("DeveloperFrameworkWithContext")
local FFlagDevFrameworkRefactorExpandablePaneHeader = game:GetFastFlag("DevFrameworkRefactorExpandablePaneHeader")
local FFlagDevFrameworkPaneAddCornerBoxStyle = game:GetFastFlag("DevFrameworkPaneAddCornerBoxStyle")

local Framework = script.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Roact = require(Framework.Parent.Roact)
local isInputMainPress = require(Framework.Util.isInputMainPress)

local THEME_REFACTOR = require(Framework.Util).RefactorFlags.THEME_REFACTOR

local Dash = require(Framework.packages.Dash)
local assign = Dash.assign
local join = Dash.join
local omit = Dash.omit

local Pane = Roact.PureComponent:extend("Pane")

local function getClassName(props, style)
	local className
	local hasClickFunctionality = props.OnClick or props.OnRightClick
	if style.Image then
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
end

function Pane:render()
	local props = self.props
	local style

	local theme = props.Theme

	if THEME_REFACTOR then
		style = props.Stylizer
	else
		style = theme:getStyle("Framework", self)
	end

	local children = props[Roact.Children] or {}

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

	if props.OnPress then
		props[Roact.Event.InputBegan] = self.onPress
	end

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

	local defaultProps = {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = props.Size or UDim2.fromScale(scaleX, scaleY),
	}
	local color = props.BackgroundColor3 or props.BackgroundColor or style.Background
	if color then
		defaultProps.BackgroundTransparency = 0
	end

	local hasClickFunctionality = props.OnClick or props.OnRightClick
	if props.OnClick then
		props[Roact.Event.Activated] = props.OnClick
	end
	if props.OnRightClick then
		props[Roact.Event.MouseButton2Click] = props.OnRightClick
	end
	if hasClickFunctionality and not style.Image then
		if FFlagDevFrameworkRefactorExpandablePaneHeader then
			props.AutoButtonColor = false
		end
		props.Text = ""
	end

	if style.Image then
		assign(defaultProps, {
			Image = style.Image,
			ImageColor3 = color,
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = style.SliceCenter,
		})
	elseif color then
		defaultProps.BackgroundColor3 = color
	end
	if style.Border then
		children = {
			Contents = Roact.createElement("ImageLabel", {
				Size = UDim2.fromScale(scaleX, scaleY),
				AutomaticSize = automaticSize,
				Image = style.Border.Image,
				ImageColor3 = props.BorderColor or style.Border.Background,
				BackgroundTransparency = 1,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = style.Border.SliceCenter,
			}, children)
		}
	end

	if FFlagDevFrameworkPaneAddCornerBoxStyle and style.CornerRadius then
		children.UICorner = Roact.createElement("UICorner", {
			CornerRadius = style.CornerRadius,
		})
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
	})

	return Roact.createElement(className, componentProps, children)
end

if FFlagDeveloperFrameworkWithContext then
	Pane = withContext({
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})(Pane)
else
	ContextServices.mapToProps(Pane, {
		Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
		Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	})
end

return Pane
