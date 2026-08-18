local TextService = game:GetService("TextService")

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local Util = Framework.Util
local deepCopy = require(Util.deepCopy)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local StyleModifier = require(Util.StyleModifier)

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME

local Image = require(Framework.UI.Components.Image)
local Pane = require(Framework.UI.Components.Pane)
local PropertyCell = require(Framework.UI.Components.PropertyCell)
local TextLabel = require(Framework.UI.Components.TextLabel)
local Tooltip = require(Framework.UI.Components.Tooltip)

local getFFlagDevFrameworkAdjustTextFontSize = require(Framework.SharedFlags.getFFlagDevFrameworkAdjustTextFontSize)
local getFFlagDevFrameworkFormAlignment = require(Framework.SharedFlags.getFFlagDevFrameworkFormAlignment)

local COMPONENT_NAME = "FormItem"

local function validateAll()
	return Enum.PropertyStatus.Ok, ""
end

local FormItem = Roact.PureComponent:extend("FormItem")

function FormItem:init()
	self.OnChanged = function(value)
		local props = self.props

		local validate = props.OnValidate or self.DefaultValidation[props.Schema.Type] or validateAll
		local status, tooltip = validate(value, props.Schema)

		if status == Enum.PropertyStatus.Error then
			self:setState({
				Status = status,
				Error = tooltip,
				Value = value,
			})
		else
			self:setState({
				Status = status,
				Error = tooltip,
				Value = Roact.None,
			})

			props.OnChanged(value)
		end
	end

	self.DefaultValidation = {
		Number = function(value)
			if value and value == value and value ~= math.huge and value ~= -math.huge then
				return Enum.PropertyStatus.Ok, ""
			end

			return Enum.PropertyStatus.Error,
				self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "NaN")
		end,
		Slider = function(value, schema)
			local number = tonumber(value)

			if not number then
				return Enum.PropertyStatus.Error,
					self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "NaN")
			end

			if number > schema.Max or number < schema.Min then
				return Enum.PropertyStatus.Error,
					self.props.Localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "OutOfRange")
			end

			return Enum.PropertyStatus.Ok
		end,
	}

	self.DefaultMinWidths = {
		SingleSelectButton = 170,
		Slider = 170,
	}

	self.state = {
		Compact = false,
		Expanded = false,
		Status = Enum.PropertyStatus.Ok,
		Tooltip = "",
	}
end

function FormItem:updateRequiredWidth()
	local props = self.props
	local onValidate = props.OnValidate
	local tooltip = props.Tooltip
	local label = props.Label
	local children = props.ItemChildren
	local style = props.Style

	local arrowWidth = if children ~= nil then style.FormItem.Arrow.Size.X.Offset + style.FormItem.Spacing else 0
	local depthWidth = style.FormItem.DepthPadding * (props.Depth or 0)
	local statusWidth = if onValidate or self.DefaultValidation[props.Schema.Type]
		then style.FormItem.StatusIconSize + style.FormItem.Spacing
		else 0
	local textWidth = if label
		then TextService:GetTextSize(
			label,
			style.FormItem.FontSize,
			style.FormItem.Font,
			Vector2.new(math.huge, math.huge)
		)
		else 0
	local tooltipWidth = if tooltip then style.FormItem.HelpIconSize + style.FormItem.Spacing else 0
	local totalWidth = arrowWidth
		+ depthWidth
		+ statusWidth
		+ textWidth.X
		+ tooltipWidth
		+ if children == nil then style.FormItem.Padding else style.FormItem.WithChildrenPadding

	props.OnLabelWidthChanged(self.width, totalWidth)
	self.width = totalWidth
end

function FormItem:checkCompact()
	local props = self.props

	local minWidth = props.MinWidth or self.DefaultMinWidths[props.Schema.Type]
	if minWidth then
		self:setState({
			Compact = (props.FormWidth or math.huge) - props.LabelWidth.Offset < minWidth,
		})
	end
end

function FormItem:didMount()
	self:updateRequiredWidth()
	self:checkCompact()
end

function FormItem:willUnmount()
	self.props.OnLabelWidthChanged(self.width)
end

function FormItem:didUpdate(prevProps)
	local props = self.props
	local value = props.Value
	local onValidate = props.OnValidate

	if prevProps.Value ~= value or prevProps.OnValidate ~= onValidate then
		local validate = onValidate or self.DefaultValidation[props.Schema.Type] or validateAll
		local status, tooltip = validate(value, props.Schema)

		if status == Enum.PropertyStatus.Error and not self.state.Value then
			self:setState({
				Status = status,
				Error = tooltip,
				Value = value,
			})

			props.OnChanged(prevProps.Value)
		elseif status ~= self.state.status or tooltip ~= self.state.Error or self.state.Value then
			self:setState({
				Status = status,
				Error = tooltip,
				Value = Roact.None,
			})
		end
	end

	if
		prevProps.OnValidate ~= onValidate
		or prevProps.Tooltip ~= props.Tooltip
		or prevProps.Label ~= props.Label
		or prevProps.ItemChildren ~= props.ItemChildren
		or prevProps.FormWidth ~= props.FormWidth
	then
		self:updateRequiredWidth()
		self:checkCompact()
	end
end

function FormItem:render()
	local props = self.props
	local children = props.ItemChildren
	local layout = if props.Layout
		then props.Layout
		elseif self.state.Compact then Enum.FillDirection.Vertical
		else Enum.FillDirection.Horizontal
	local style = props.Style

	local layoutOrderIterator = LayoutOrderIterator.new()

	local status = self.state.Status
	local padding = style.FormItem.DepthPadding * (props.Depth or 0)
		+ if children == nil then style.FormItem.Padding else style.FormItem.WithChildrenPadding
	local size = if layout == Enum.FillDirection.Vertical
		then UDim2.new(1, -padding, 0, props.Height or 0)
		else UDim2.new(
			UDim.new(1 - props.LabelWidth.Scale, -props.LabelWidth.Offset - style.FormItem.Spacing),
			UDim.new(0, props.Height or props.LabelHeight or 0)
		)

	local statusImage
	if status == Enum.PropertyStatus.Error then
		statusImage = style.FormItem.StatusIconError
	elseif status == Enum.PropertyStatus.Warning then
		statusImage = style.FormItem.StatusIconWarning
	end
	local helpImage
	if props.Tooltip and props.Tooltip ~= "" then
		helpImage = style.FormItem.HelpIcon
	end
	local labelSize
	if statusImage and helpImage then
		local offset = style.FormItem.StatusIconSize + style.FormItem.HelpIconSize + 3 * style.FormItem.Spacing
		labelSize = UDim2.new(1, -offset, 1, 0)
	elseif statusImage then
		labelSize = UDim2.new(1, -style.FormItem.HelpIconSize - 2 * style.FormItem.Spacing, 1, 0)
	elseif helpImage then
		labelSize = UDim2.new(1, -style.FormItem.HelpIconSize - 2 * style.FormItem.Spacing, 1, 0)
	else
		labelSize = UDim2.fromScale(1, 1)
	end
	local label = props.Label

	local item = if props.Hidden
		then nil
		else Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = layout or Enum.FillDirection.Horizontal,
			LayoutOrder = if children and self.state.Expanded
				then layoutOrderIterator:getNextOrder()
				else props.LayoutOrder,
			Size = UDim2.fromScale(1, 0),
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			Spacing = style.FormItem.Spacing,
		}, {
			Container = if label and label ~= ""
				then Roact.createElement(Pane, {
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = 1,
					Size = if layout == Enum.FillDirection.Vertical
						then UDim2.new(1, 0, 0, props.LabelHeight)
						else UDim2.new(props.LabelWidth, UDim.new(0, props.LabelHeight)),
					Padding = {
						Left = padding,
					},
					Spacing = style.FormItem.Spacing,
				}, {
					Arrow = if children ~= nil
						then Roact.createElement(Pane, {
							HorizontalAlignment = Enum.HorizontalAlignment.Left,
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							OnClick = function()
								self:setState(function(state)
									return {
										Expanded = not state.Expanded,
									}
								end)
							end,
							Size = style.FormItem.Arrow.Size,
							VerticalAlignment = Enum.VerticalAlignment.Top,
						}, {
							Image = Roact.createElement(Image, {
								Style = style.FormItem.Arrow,
								StyleModifier = self.state.Expanded and StyleModifier.Selected or nil,
							}),
						})
						else nil,
					StatusIcon = if statusImage
						then Roact.createElement(Pane, {
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Size = UDim2.fromOffset(style.FormItem.StatusIconSize, style.FormItem.StatusIconSize),
						}, {
							Image = Roact.createElement(Image, {
								Style = {
									Image = statusImage,
								},
							}),
							Tooltip = if self.state.Error and self.state.Error ~= ""
								then Roact.createElement(Tooltip, {
									Text = self.state.Error,
									TextXAlignment = Enum.TextXAlignment.Left,
								})
								else nil,
						})
						else nil,
					Label = Roact.createElement(Pane, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = labelSize,
					}, {
						LabelText = Roact.createElement(TextLabel, {
							Text = label,
							TextXAlignment = Enum.TextXAlignment.Left,
							Font = if getFFlagDevFrameworkAdjustTextFontSize() then style.FormItem.Font else nil,
							TextSize = if getFFlagDevFrameworkAdjustTextFontSize()
								then style.FormItem.TextSize
								else nil,
						}),
					}),
					HelpIcon = if helpImage
						then Roact.createElement(Pane, {
							LayoutOrder = layoutOrderIterator:getNextOrder(),
							Size = UDim2.fromOffset(style.FormItem.HelpIconSize, style.FormItem.HelpIconSize),
						}, {
							Image = Roact.createElement(Image, {
								Style = {
									Image = helpImage,
									Color = style.FormItem.IconColor,
								},
							}),
							Tooltip = Roact.createElement(Tooltip, {
								Text = props.Tooltip,
								TextXAlignment = Enum.TextXAlignment.Left,
							}),
						})
						else nil,
				})
				else nil,
			Property = Roact.createElement(Pane, {
				AnchorPoint = Vector2.new(0, 0.5),
				AutomaticSize = if props.Height then nil else Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				LayoutOrder = 3,
				Padding = if layout == Enum.FillDirection.Vertical
					then {
						Left = padding,
					}
					else nil,
				Position = UDim2.fromScale(0, 0.5),
				Size = if layout == Enum.FillDirection.Vertical
					then UDim2.new(1, 0, 0, props.Height or props.LabelHeight or 0)
					else size,
				VerticalAlignment = if getFFlagDevFrameworkFormAlignment()
					then Enum.VerticalAlignment.Center
					else Enum.VerticalAlignment.Top,
			}, {
				PropertyCell = Roact.createElement(PropertyCell, {
					AutomaticSize = if props.Height then nil else Enum.AutomaticSize.Y,
					CustomValidation = true,
					Disabled = props.Disabled,
					HasError = status == Enum.PropertyStatus.Error,
					OnChanged = self.OnChanged,
					Renderers = props.Renderers,
					Size = UDim2.new(1, 0, 0, props.Height or props.LabelHeight or 0),
					Schema = props.Schema,
					Value = self.state.Value or props.Value,
				}),
			}),
		})

	if children then
		local items = if item == nil then {} else { item }
		for index, child in children do
			items[child.Label] = Roact.createElement(FormItem, {
				Children = child.Children,
				ItemChildren = child.Children,
				Depth = if not props.Depth then 1 else props.Depth + 1,
				Disabled = child.Disabled,
				FormWidth = props.FormWidt,
				Height = child.Height,
				Hidden = props.Hidden or not self.state.Expanded,
				Layout = child.Layout,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Label = child.Label,
				LabelHeight = props.LabelHeight,
				LabelWidth = props.LabelWidth,
				Localization = props.Localization,
				MinWidth = child.MinWidth,
				OnLabelWidthChanged = props.OnLabelWidthChanged,
				OnChanged = function(propertyValue)
					if propertyValue == children[index].Value then
						return
					end

					local updatedChildren = deepCopy(children)
					updatedChildren[index].Value = propertyValue
					props.OnChildrenChanged(updatedChildren)
				end,
				OnChildrenChanged = function(childValue)
					local updatedChildren = deepCopy(children)
					updatedChildren[index].Children = childValue

					if props.OnChildrenChanged then
						props.OnChildrenChanged(updatedChildren)
					end
				end,
				OnValidate = child.Validate,
				Renderers = props.Renderers,
				Schema = child.Schema,
				Style = props.Style,
				Tooltip = child.Tooltip,
				Value = child.Value,
			})
		end

		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = props.LayoutOrder,
			Padding = if props.Hidden or not self.state.Expanded then 0 else nil,
			Size = UDim2.fromScale(1, 0),
			Spacing = if props.Hidden or not self.state.Expanded then 0 else style.FormItem.Spacing,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, items)
	else
		return item
	end
end

return FormItem
