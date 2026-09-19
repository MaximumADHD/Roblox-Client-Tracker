--[[
	(USES STYLESHEETS)
	A simple tab component with optional image, label & tooltip.
	Can render hovered, selected or disabled.
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local TabsTypes = require(Framework.UI.Components.Tabs.types)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local DEPRECATED_withAbsoluteSize = require(Framework.Wrappers.withAbsoluteSize) -- Remove with FFlagSimpleTabNoAbsoluteSize
local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local withControl = require(Framework.Wrappers.withControl)
local withForwardRef = require(Framework.Wrappers.withForwardRef)

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign

local UI = Framework.UI
local Pane = require(UI.Components.Pane)
local Tooltip = require(UI.Components.Tooltip)
local Image = require(UI.Components.Image)
local TextLabel = require(UI.Components.TextLabel)

local SimpleTab = Roact.PureComponent:extend("SimpleTab")

local FFlagSimpleTabNoAbsoluteSize = game:DefineFastFlag("SimpleTabNoAbsoluteSize", false)
local getFFlagDevFrameworkAdjustTextFontSize = require(Framework.SharedFlags.getFFlagDevFrameworkAdjustTextFontSize)

function SimpleTab:init()
	self.onPress = function()
		local props = self.props
		if not props.Disabled then
			props.OnTabSelected(props.Tab)
		end
	end
end

function SimpleTab:render()
	local props: TabsTypes.ConnectedTabProps = self.props
	local style = if supportsStyleSheets then props.Style or {} else self.props.Stylizer
	local icon = props.Tab.Icon
	local label = props.Tab.Label
	local tooltip = props.Tab.Tooltip
	local selected = props.Selected
	local color = style.Color
	local bottomLineColor = style.BottomLineColor
	local lineX = 0
	local DEPRECATED_lineWidth = 0 -- Remove with FFlagSimpleTabNoAbsoluteSize
	if not supportsStyleSheets then
		DEPRECATED_lineWidth = if props.AbsoluteSize then props.AbsoluteSize.X else nil
		if selected then
			lineX = style.BorderSize
			if DEPRECATED_lineWidth and style.BorderSize then
				DEPRECATED_lineWidth -= style.BorderSize * 2
			end
		end
	end
	local pane = Roact.createElement(
		Pane,
		assign(
			{
				LayoutOrder = props.Index,
				OnPress = self.onPress,
			},
			props.WrapperProps,
			if supportsStyleSheets
				then {
					[React.Tag] = joinTags("Component-SimpleTab", (props :: any)[React.Tag] or "X-Fit"),
				}
				else {
					AutomaticSize = Enum.AutomaticSize.XY,
					Style = "Box",
				},
			{
				[Roact.Ref] = props.ForwardRef,
			}
		),
		{
			Row = Roact.createElement(
				Pane,
				if supportsStyleSheets
					then {
						[React.Tag] = joinTags(
							"Contents X-RowS X-Middle",
							if selected then "TabSelected Muted" else "Secondary"
						),
					}
					else {
						Spacing = style.Spacing,
						Padding = style.Padding,
						Layout = Enum.FillDirection.Horizontal,
						BackgroundColor = style.BackgroundColor,
						BorderColor3 = style.BorderColor,
						BorderMode = Enum.BorderMode.Inset,
						BorderSizePixel = style.BorderSize,
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.fromOffset(0, 32),
					},
				{
					Icon = icon and Roact.createElement(
						Image,
						if supportsStyleSheets
							then {
								Image = icon,
								LayoutOrder = 1,
								[React.Tag] = "Icon16",
							}
							else {
								Image = icon,
								ImageColor3 = color,
								Size = UDim2.fromOffset(16, 16),
								LayoutOrder = 1,
							}
					),
					Label = label and Roact.createElement(
						TextLabel,
						if supportsStyleSheets
							then {
								LayoutOrder = 2,
								Font = style.Font,
								Text = label,
								TextSize = if getFFlagDevFrameworkAdjustTextFontSize() then style.TextSize else nil,
								[React.Tag] = joinTags("X-Fit", if props.Disabled then "Disabled" else nil),
							}
							else {
								TextColor = color,
								Font = style.Font,
								AutomaticSize = Enum.AutomaticSize.XY,
								Text = label,
								TextSize = if getFFlagDevFrameworkAdjustTextFontSize() then style.TextSize else nil,
								LayoutOrder = 2,
							}
					),
				}
			),
			TopLine = selected and Roact.createElement(
				Pane,
				if supportsStyleSheets
					then {
						ZIndex = 2,
						[React.Tag] = "TopLine",
					}
					else {
						Position = UDim2.fromOffset(style.BorderSize, 0),
						Size = if FFlagSimpleTabNoAbsoluteSize
							then UDim2.new(1, 0, 0, style.TopLineHeight)
							else UDim2.new(0, DEPRECATED_lineWidth, 0, style.TopLineHeight),
						BackgroundColor = style.TopLineColor,
						ZIndex = 2,
					}
			),
			BottomLine = Roact.createElement(
				Pane,
				if supportsStyleSheets
					then {
						ZIndex = 1,
						[React.Tag] = joinTags("BottomLine", if selected then "TabSelected" else nil),
					}
					else {
						Size = UDim2.new(1, 0, 0, style.BorderSize),
						Position = UDim2.new(0, lineX, 0, 32),
						AnchorPoint = Vector2.new(0, 1),
						BackgroundColor = bottomLineColor,
						ZIndex = 1,
					}
			),
		}
	)
	if tooltip then
		return Roact.createElement(Tooltip, {
			Text = tooltip,
			Child = pane,
		})
	else
		return pane
	end
end

if not supportsStyleSheets then
	SimpleTab = withContext({
		Stylizer = ContextServices.Stylizer,
	})(SimpleTab)
end

SimpleTab = withForwardRef(SimpleTab)

if supportsStyleSheets then
	return SimpleTab
elseif FFlagSimpleTabNoAbsoluteSize then
	return withControl(SimpleTab)
else
	return DEPRECATED_withAbsoluteSize(withControl(SimpleTab))
end
