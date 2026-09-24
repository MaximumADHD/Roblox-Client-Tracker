--[[
	(USES STYLESHEETS, REQUIRES CHANGES)
	This component will be replaced by an RDL compliant tooltip that uses the Extensibility API to display in a separate window.
	An element which can be added to a component to give that component a tooltip.
	When the user hovers the mouse over the component, the tooltip will appear
	after a short delay.

	If the component is rendered using AutomaticSize, add it as a child of the tooltip instead
	and the tooltip will act as an automatically-sized container for the child.

	Required Props:
		Focus Focus: A Focus ContextItem, which is provided via withContext.

	Optional Props:
		UDim2 AnchorPoint: The anchor point of the tooltip. If not provided, the anchor point of the
			tooltip is its top left corner.
		Enum.AutomaticSize AutomaticSize: The AutomaticSize of the component.
		table Child: A Roact element which should be displayed. Must not be wrapped in a table
		NumberRange ContainerXBounds: The X bounds of the container in pixels to position the tooltip within. If not provided,
			will default to the entire width of the containing PluginGui.
		NumberRange ContainerYBounds: The Y bounds of the container in pixels to position the tooltip within. If not provided,
			will default to the entire height of the containing PluginGui.
		table Content: Custom content to display instead of text. If present the
			Text property is ignored. Tooltip will not be dismissed while mouse
			cursor is over the content area.
		Vector2 ContentExtents: Content size in pixels, not including tooltip padding.
		boolean Enabled: Whether the tooltip will display on hover.
		number LayoutOrder: The LayoutOrder of the component
		number MaxWidth: The maximum width of this tooltip
		callback OnTooltipShown: A callback for when the tooltip is shown.
		Vector2 Position: The position on the component to show the tooltip at. If not provided,
			the tooltip will be shown at the mouse position.
		integer Priority: The display order of this element, compared to other focused
			elements or elements that show on top.
		string Style: Override Style to use for this tooltip
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		string Text: The text to display in the tooltip.
		Enum.TextXAlignment TextXAlignment: The text X alignment of this tooltip.
		number ShowDelay: The time in seconds before the tooltip appears
			after the user stops moving the mouse over the element.
		number ZIndex: Override ZIndex

	Style Values:
		integer Padding: The padding of the box in pixels.
		number MaxWidth: The maximum width of this tooltip. The tooltip will never
			grow beyond the width of the containing PluginGui.
		number ShowDelay: The time in seconds before the tooltip appears
			after the user stops moving the mouse over the element.
]]
local RunService = game:GetService("RunService")
local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)
local styles = require(script.styles)
local textStyles = require(Framework.UI.Components.TextLabel.styles)

local ShowOnTop = require(Framework.UI.Components.ShowOnTop)
local DropShadow = require(Framework.UI.Components.DropShadow)
local Pane = require(Framework.UI.Components.Pane)
local TextLabel = require(Framework.UI.Components.TextLabel)

local prioritize = require(Framework.Util.prioritize)
local Typecheck = require(Framework.Util.Typecheck)

-- Stylizer has flaky errors when accessed from methods defined in init. There
-- currently is no better solution than to check for Style directly if Stylizer
-- was not set due to a flaky error.
local Style = if not supportsStyleSheets then require(script.style) else nil

local Dash = require(Framework.Parent.Dash)
local assign = Dash.assign

local getFFlagDevFrameworkPropertyCellLayoutOrderFix =
	require(Framework.SharedFlags.getFFlagDevFrameworkPropertyCellLayoutOrderFix)

local Tooltip = Roact.PureComponent:extend("Tooltip")
Typecheck.wrap(Tooltip, script)

Tooltip.defaultProps = {
	Enabled = true,
	Priority = 0,
}

function Tooltip:init(props)
	assert(props.Text or props.Content, "Either Text prop or Content prop is required")
	assert(not props.Content or props.ContentExtents, "Content prop requires ContentExtents prop")

	self.state = {
		showTooltip = false,
	}
	self.hoverConnection = nil
	self.mousePosition = nil
	self.isTooltipHovered = false

	self.tooltipMouseEnter = function()
		self.isTooltipHovered = true
	end

	self.tooltipMouseLeave = function()
		self.isTooltipHovered = false
		self:maybeHideTooltip()
	end

	self.mouseEnter = function(_rbx, xpos, ypos)
		if not self.isTooltipHovered then
			self.targetTime = tick() + self:getShowDelay()
			self.mousePosition = Vector2.new(xpos, ypos)
			self:connectHover()
		end
	end

	self.mouseMoved = function(_rbx, xpos, ypos)
		self.mousePosition = Vector2.new(xpos, ypos)
		self.targetTime = tick() + self:getShowDelay()
	end

	self.mouseLeave = function()
		self.targetTime = 0
		self.mousePosition = nil
		self:maybeHideTooltip()
	end
end

function Tooltip:getShowDelay()
	if supportsStyleSheets then
		return prioritize(self.props.ShowDelay, styles:GetAttribute("ShowDelay"))
	else
		local style = self.props.Stylizer or Style

		return self.props.ShowDelay or style.ShowDelay
	end
end

function Tooltip:connectHover()
	self:disconnectHover()
	self.hoverConnection = RunService.Heartbeat:Connect(function()
		if tick() >= self.targetTime then
			self:disconnectHover()
			self:setState({
				showTooltip = true,
			})
			if self.props.OnTooltipShown and self.props.Enabled then
				self.props.OnTooltipShown()
			end
		end
	end)
end

function Tooltip:disconnectHover()
	if self.hoverConnection then
		self.hoverConnection:Disconnect()
		self.hoverConnection = nil
	end
end

function Tooltip:maybeHideTooltip()
	local hovered = self.mousePosition ~= nil or self.isTooltipHovered
	if not hovered then
		self:disconnectHover()
		self:setState({
			showTooltip = false,
		})
	end
end

function Tooltip:willUnmount()
	self:disconnectHover()
end

function Tooltip:render()
	local props = self.props
	local state = self.state
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer

	local padding = if supportsStyleSheets then styles:GetAttribute("Padding") else style.Padding
	local dropShadowPadding = if supportsStyleSheets
		then styles:GetAttribute("DropShadowPadding")
		else (style.DropShadow and style.DropShadow.Radius or 0)
	local offset = if supportsStyleSheets then styles:GetAttribute("Offset") else style.Offset
	local maxWidth = if supportsStyleSheets
		then prioritize(props.MaxWidth, styles:GetAttribute("MaxWidth"))
		else (props.MaxWidth or style.MaxWidth)

	local text = props.Text
	local enabled = props.Enabled
	local priority = props.Priority
	local tooltipPosition = props.Position

	local mousePosition = self.mousePosition

	local content = {
		TooltipChild = props.Child or nil,
	}

	local pluginGui = props.Focus:get()

	if state.showTooltip and mousePosition and enabled and pluginGui then
		local targetX = mousePosition.X + offset.X
		local targetY = mousePosition.Y + offset.Y

		if tooltipPosition then
			targetX = tooltipPosition.X
			targetY = tooltipPosition.Y
		end

		local containerXBounds = prioritize(props.ContainerXBounds, NumberRange.new(0, pluginGui.AbsoluteSize.X))
		local containerYBounds = prioritize(props.ContainerYBounds, NumberRange.new(0, pluginGui.AbsoluteSize.Y))

		local paddingSize = (dropShadowPadding + padding) * 2

		local maxRequestedWidth = math.min(containerXBounds.Max, maxWidth)

		local maxAvailableWidth = math.max(0, maxRequestedWidth - paddingSize)

		local tooltipTargetWidth
		local tooltipTargetHeight
		if props.Content then
			tooltipTargetWidth = props.ContentExtents.X + paddingSize
			tooltipTargetHeight = props.ContentExtents.Y + paddingSize
		else
			local font = if supportsStyleSheets then textStyles:GetAttribute("TextLabelFont") else style.Font
			local textSize = if supportsStyleSheets
				then textStyles:GetAttribute("TextLabelTextSize")
				else style.TextSize
			local textBound = TextService:GetTextSize(text, textSize, font, Vector2.new(maxAvailableWidth, math.huge))

			-- GetTextSize calculates a float value and then rounds it down before returning
			tooltipTargetWidth = textBound.X + paddingSize + 1
			tooltipTargetHeight = textBound.Y + paddingSize + 1
		end

		local anchorPoint = prioritize(props.AnchorPoint, UDim2.new(0, 0, 0, 0))

		local anchorPointScaleX = anchorPoint.X.Scale
		local anchorPointOffsetX = anchorPoint.X.Offset

		local anchorPointScaleY = anchorPoint.Y.Scale
		local anchorPointOffsetY = anchorPoint.Y.Offset

		-- Check whether any part of the tooltip will be outside of the container bounds
		-- and adjust the position of the tooltip accordingly.
		local tooltipLeftSpace = tooltipTargetWidth * anchorPointScaleX + anchorPointOffsetX
		local tooltipRightSpace = tooltipTargetWidth - tooltipLeftSpace

		local tooltipUpSpace = tooltipTargetHeight * anchorPointScaleY + anchorPointOffsetY
		local tooltipDownSpace = tooltipTargetHeight - tooltipUpSpace

		if targetX + tooltipRightSpace >= containerXBounds.Max then
			targetX = containerXBounds.Max - tooltipRightSpace
		elseif targetX - tooltipLeftSpace <= containerXBounds.Min then
			targetX = containerXBounds.Min + tooltipLeftSpace
		end

		if targetY + tooltipDownSpace >= containerYBounds.Max then
			targetY = containerYBounds.Max - tooltipDownSpace
		elseif targetY - tooltipUpSpace <= containerYBounds.Min then
			targetY = containerYBounds.Min + tooltipUpSpace
		end

		-- The point (targetX, targetY) is anchored as the top left corner when it is used to position the tooltip.
		-- Thus, to account for a user specified anchor point, adjust (targetX, targetY) so the tooltip is positioned
		-- relative to that anchor point.
		targetX = targetX - tooltipLeftSpace
		targetY = targetY - tooltipUpSpace

		local tooltipProps = {
			BackgroundTransparency = 1,
			Position = UDim2.fromOffset(targetX, targetY),
			Size = UDim2.fromOffset(tooltipTargetWidth, tooltipTargetHeight),
		}
		local children = {}

		if props.Content then
			children.Content = Roact.createFragment(props.Content)

			assign(tooltipProps, {
				[Roact.Event.MouseEnter] = self.tooltipMouseEnter,
				[Roact.Event.MouseMoved] = self.tooltipMouseMoved,
				[Roact.Event.MouseLeave] = self.tooltipMouseLeave,
			})
		else
			children.Label = Roact.createElement(
				TextLabel,
				if supportsStyleSheets
					then {
						Text = text,
						TextXAlignment = props.TextXAlignment,
						[React.Tag] = "X-Fill X-Top X-Left Wrap",
						ZIndex = props.ZIndex,
					}
					else {
						Size = UDim2.new(1, 0, 1, 0),
						Text = text,
						TextWrapped = true,
						TextXAlignment = props.TextXAlignment,
						ZIndex = props.ZIndex,
					}
			)
		end

		if supportsStyleSheets then
			tooltipProps[React.Tag] = joinTags("Component-Tooltip", props[React.Tag])
		end

		content.TooltipContainer = Roact.createElement(ShowOnTop, {
			Priority = priority,
		}, {
			Tooltip = Roact.createElement("Frame", tooltipProps, {
				DropShadow = Roact.createElement(DropShadow, {
					Style = if supportsStyleSheets then nil else style.DropShadow,
				}, {
					ContentPane = Roact.createElement(
						Pane,
						if supportsStyleSheets
							then {
								[React.Tag] = "X-PadS X-Stroke X-Corner Main",
								ZIndex = props.ZIndex,
							}
							else {
								Padding = padding,
								Style = "Box",
								ZIndex = props.ZIndex,
							},
						children
					),
				}),
			}),
		})
	end

	return Roact.createElement("Frame", {
		Size = props.Child and UDim2.fromScale(0, 0) or UDim2.fromScale(1, 1),
		AutomaticSize = props.Child and Enum.AutomaticSize.XY or nil,
		BackgroundTransparency = 1,
		LayoutOrder = if getFFlagDevFrameworkPropertyCellLayoutOrderFix() then props.LayoutOrder else nil,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseMoved] = self.mouseMoved,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	}, content)
end

Tooltip = withContext({
	Focus = ContextServices.Focus,
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(Tooltip)

return Tooltip
