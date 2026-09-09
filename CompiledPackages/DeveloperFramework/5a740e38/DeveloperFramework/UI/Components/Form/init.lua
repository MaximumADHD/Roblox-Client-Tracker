--[[
	The Form component displays properties sorted into collapsible sections.

	Required Props:
		array[any] Items: The sections and properties with their appropriate values
		table Expansion: The keys of rows that should be expanded - Set<Item>
		callback OnExpansionChange: Called when an item is expanded or collapsed - (changedExpansion: Set<Item>) -> ()
		callback OnChange: Called when a property is changed and items need to be updated - (items: array[any]) -> ()

	Optional Props:
		Vector2 AnchorPoint: The AnchorPoint of the form
		boolean ExpandByDefault: An optional boolean which specifies sections should be expanded by default
		number LabelHeight: The height the Label in each item
		UDim LabelWidth: The width of the Label of the form
		number LayoutOrder: The LayoutOrder of the form
		callback OnPropertyAction: Called when a cell action is chosen (action: string, category: string, property: string) -> ()
		callback OnPropertyEdited: Called when a property is edited
		callback OnFocusLost: An optional callback called when a cell that has input enabled loses focus. Enable text change by column with TextInputCols prop
		UDim2 Position: The Position of the form
		table Renderers: A list of custom renderers to use when displaying a cell
		UDim2 Size: The size of the form
		boolean UseScrollingFrame: Whether to wrap the form in a ScrollingFrame.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext

local LayoutOrderIterator = require(Framework.Util.LayoutOrderIterator)

local FFlagDevFrameworkFixMissingKeyErrors = require(Framework.SharedFlags.getFFlagDevFrameworkFixMissingKeyErrors)()
local getFFlagDevFrameworkAdjustTextFontSize = require(Framework.SharedFlags.getFFlagDevFrameworkAdjustTextFontSize)

local Util = Framework.Util
local deepCopy = require(Util.deepCopy)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ExpandablePane = require(Framework.UI.Components.ExpandablePane)
local Pane = require(Framework.UI.Components.Pane)
local ScrollingFrame = require(Framework.UI.Components.ScrollingFrame)
local Separator = require(Framework.UI.Components.Separator)

local FormItem = require(script.FormItem)

local Form = Roact.PureComponent:extend("Form")

Form.defaultProps = {
	UseScrollingFrame = true,
}

function Form:init()
	self.LabelWidths = {}

	self.MaxLabelWidth = 0
end

function Form:render()
	local props = self.props
	local style = props.Stylizer

	local sections = {}
	for sectionOrder, section in props.Items do
		local properties = {}

		for layoutOrder, property in section.Children do
			local disabled = property.Disabled
			local height = property.Height
			local hidden = property.Hidden
			local minWidth = property.MinWidth
			local value = property.Value
			local validate = property.Validate

			properties[property.Id] = if value ~= nil and not hidden
				then Roact.createElement(FormItem, {
					ItemChildren = property.Children,
					Disabled = disabled,
					FormWidth = self.state.FormWidth,
					Height = height,
					Layout = property.Layout,
					LayoutOrder = layoutOrder,
					Label = property.Label,
					LabelHeight = props.LabelHeight,
					LabelWidth = if not props.LabelWidth then UDim.new(0, self.MaxLabelWidth) else props.LabelWidth,
					Localization = props.Localization,
					MinWidth = minWidth,
					OnLabelWidthChanged = function(previousLabelWidth: number?, labelWidth: number?)
						if previousLabelWidth then
							table.remove(self.LabelWidths, table.find(self.LabelWidths, previousLabelWidth))
						end

						if labelWidth then
							table.insert(self.LabelWidths, labelWidth)
						end

						local MaxWidth = self.MaxLabelWidth
						if labelWidth and labelWidth > MaxWidth then
							self.MaxLabelWidth = labelWidth

							-- This is just here to force an update
							self:setState({
								MaxLabelWidth = self.MaxLabelWidth,
							})
						elseif previousLabelWidth == MaxWidth and #self.LabelWidths > 0 then
							self.MaxLabelWidth = math.max(unpack(self.LabelWidths))

							-- This is just here to force an update
							self:setState({
								MaxLabelWidth = self.MaxLabelWidth,
							})
						end
					end,
					OnChanged = function(propertyValue)
						if propertyValue == props.Items[sectionOrder].Children[layoutOrder].Value then
							return
						end

						local items = deepCopy(props.Items)
						items[sectionOrder].Children[layoutOrder].Value = propertyValue

						props.OnChange(items)
					end,
					OnChildrenChanged = function(childValue)
						local items = deepCopy(props.Items)
						items[sectionOrder].Children[layoutOrder].Children = childValue

						props.OnChange(items)
					end,
					OnValidate = validate,
					Renderers = props.Renderers,
					Schema = property.Schema,
					Style = props.Stylizer,
					Tooltip = property.Tooltip,
					Value = value,
				})
				else nil
		end

		local expandable = if section.Expandable ~= nil then section.Expandable else true
		local separator = if section.Separator ~= nil then section.Separator else false

		local layoutOrderIterator = LayoutOrderIterator.new()

		local headerSize = if not section.Label then UDim2.new(1, 0, 0, 0) else nil

		local expanded = props.Expansion[section.Id]
		expanded = if props.ExpandByDefault then expanded or expanded == nil else expanded
		sections[section.Id] = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = sectionOrder,
			Spacing = style.FormItem.Spacing,
			Size = UDim2.fromScale(1, 0),
			VerticalAlignment = Enum.VerticalAlignment.Top,
		}, {
			ExpandablePane = Roact.createElement(ExpandablePane, {
				AlwaysExpanded = not expandable,
				ContentPadding = 0,
				Expanded = expanded,
				LayoutOrder = 1,
				OnExpandedChanged = function()
					props.OnExpansionChange(join(props.Expansion, {
						[section.Id] = not props.Expansion[section.Id],
					}))
				end,
				Size = headerSize,
				Style = (getFFlagDevFrameworkAdjustTextFontSize() and style.ExpandablePaneHeader) or "Section",
				Text = section.Label,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}, properties),
			Separator = if separator
				then Roact.createElement(
					Pane,
					{
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(1, -style.FormItem.Spacing * 2, 0, 1),
					},
					if FFlagDevFrameworkFixMissingKeyErrors
						then Roact.createElement(Separator, {
							DominantAxis = Enum.DominantAxis.Width,
						})
						else {
							Roact.createElement(Separator, {
								DominantAxis = Enum.DominantAxis.Width,
							}),
						}
				)
				else nil,
		})
	end

	local componentProps = {
		Anchorpoint = props.AnchorPoint,
		LayoutOrder = props.LayoutOrder,
		Padding = {
			Bottom = style.FormItem.Spacing,
		},
		Position = props.Position,
		Size = props.Size,
	}
	if props.UseScrollingFrame then
		return Roact.createElement(ScrollingFrame, componentProps, {
			Pane = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
				Size = UDim2.fromScale(1, 0),
				Spacing = if getFFlagDevFrameworkAdjustTextFontSize() then style.Spacing else nil,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				[Roact.Change.AbsoluteSize] = function(ref)
					self:setState({
						FormWidth = ref.AbsoluteSize.X,
					})
				end,
			}, sections),
		})
	else
		return Roact.createElement(
			Pane,
			join(componentProps, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Spacing = if getFFlagDevFrameworkAdjustTextFontSize() then style.Spacing else nil,
				[Roact.Change.AbsoluteSize] = function(ref)
					self:setState({
						FormWidth = ref.AbsoluteSize.X,
					})
				end,
			}),
			sections
		)
	end
end

Form = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(Form)

return Form
