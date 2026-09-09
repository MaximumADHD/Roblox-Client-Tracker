--[[
	A simple cell of a table which can be hovered, disabled & selected.

	Incomplete list of Props:
	Optional Props:
		boolean AlwaysShowActions: If true, always show the actions buttons, if any. If false, only show with selection or hover. (default = false)
		string Variant: An optional parameter to determine the look of the row. 'compact'
]]
local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local styles = require(script.Parent.styles)
local ARROW_SIZE = styles:GetAttribute("ArrowSize")
local CELL_PADDING = styles:GetAttribute("CellPadding")
local INDENT = styles:GetAttribute("Indent")
local COMPACT_CELL_PADDING = styles:GetAttribute("CompactCellPadding")
local COMPACT_INDENT = styles:GetAttribute("CompactIndent")

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local UI = Framework.UI
local IconButton = require(UI.Components.IconButton)
local Image = require(UI.Components.Image)
local Pane = require(UI.Components.Pane)
local PropertyCell = require(UI.Components.PropertyCell)
local Shimmer = require(UI.Components.Shimmer)
local Tooltip = require(UI.Components.Tooltip)
local TextLabel = require(UI.Components.TextLabel)
local TextInput = require(UI.Components.DEPRECATED_TextInput)

local StyleModifier = require(Framework.Util.StyleModifier)

local TweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear)

local TreeTableCell = Roact.PureComponent:extend("TreeTableCell")

function TreeTableCell:init()
	self.state = {
		textOverflows = false,
	}

	self.onToggle = function()
		local cellProps = self.props.CellProps
		cellProps.OnToggle(self.props.Row)
	end
	self.textRef = Roact.createRef()
	self.toggleRef = Roact.createRef()

	self.getIndent = function(): number
		local props = self.props
		local style = if supportsStyleSheets then nil else join(props.Style, props.CellProps.CellStyle)
		if supportsStyleSheets then
			if props.Variant == "compact" then
				if props.ColumnIndex > 1 then
					return 0
				else
					return COMPACT_INDENT
				end
			else
				return INDENT
			end
		else
			return style.Indent
		end
	end

	self.getCellPadding = function(): number
		local props = self.props
		local style = if supportsStyleSheets then nil else join(props.Style, props.CellProps.CellStyle)
		if supportsStyleSheets then
			if props.Variant == "compact" then
				return COMPACT_CELL_PADDING
			else
				return CELL_PADDING
			end
		else
			return style.CellSpacing
		end
	end

	self.fetchCellContentsWidthIfOverflow = function()
		if self.state.textOverflows then
			local padding = self.getCellPadding() + self.getIndent()
			return (self.textRef.current.AbsoluteSize.X + padding)
		else
			return 0
		end
	end
	self.onAbsoluteSizeChanged = function()
		if self.textRef:getValue() then
			self:setState({
				textOverflows = not self.textRef:getValue().TextFits,
			})
		end
		local props = self.props
		if self.textRef.current and props.SetCellContentsWidth then
			props.SetCellContentsWidth(props.ColumnIndex, props.RowIndex, self.fetchCellContentsWidthIfOverflow())
		end
	end
	self.onTextInputFocusLost = function(enterPressed, rbx)
		local props = self.props
		local onFocusLost = props.CellProps.OnFocusLost
		if onFocusLost then
			onFocusLost(enterPressed, rbx, props.Row, props.ColumnIndex)
		end
	end
	self.onPressed = function(...)
		local props = self.props
		if props.CellProps.OnCellPressed then
			props.CellProps.OnCellPressed(props.Row.item.Path, props.ColumnIndex, ...)
		end
	end
	self.onDoubleClick = function(...)
		local props = self.props
		if props.CellProps.OnCellDoubleClick then
			props.CellProps.OnCellDoubleClick(props.Row.item.Path, props.ColumnIndex, ...)
		end
	end
	self.onCellRightClick = function(position: Vector2?)
		local props = self.props
		if props.CellProps.OnCellRightClick then
			props.CellProps.OnCellRightClick(props.Row, position)
		end
	end
	self.onCellInputBegan = function(_, input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			self.onCellRightClick(Vector2.new(input.Position.X, input.Position.Y))
		end
	end

	self.getTextElement = function(props, text: string, textSize: UDim2)
		local cellProps = props.CellProps
		local textInputCols = cellProps.TextInputCols
		local row = props.Row

		-- We've only set only depth=0 as editable because that's the only known use case
		local colIsInput = textInputCols and textInputCols[props.ColumnIndex] and row.depth == 0
		if colIsInput then
			return Roact.createElement(TextInput, {
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 3,
				OnFocusLost = self.onTextInputFocusLost,
				Size = textSize,
				Text = text,
				[Roact.Ref] = self.textRef,
			})
		else
			return text
					and Roact.createElement(
						TextLabel,
						join({
							LayoutOrder = 3,
							Size = textSize,
							Text = text,
							TextXAlignment = Enum.TextXAlignment.Left,
							[Roact.Ref] = self.textRef,
						}, if supportsStyleSheets then { [React.Tag] = "Component-TreeTableCellText" } else nil)
					)
				or nil
		end
	end

	self.getTextFromProps = function(props)
		local column = props.Columns[props.ColumnIndex]
		local key = column.Key or column.Name
		local row = props.Row
		return row.item[key]
	end
	self.getPropertyCell = function(props)
		local cellProps = self.props.CellProps
		local renderers = join(cellProps.Renderers, props.Renderers)
		return Roact.createElement(PropertyCell, {
			ErrorMessage = props.ErrorMessage,
			GetAutocompleteItems = cellProps.GetAutocompleteItems,
			Item = props.Item,
			LayoutOrder = 3,
			OnChanged = self.onChanged,
			OnClick = props.OnClick,
			OnDoubleClick = props.OnDoubleClick,
			OnPressed = props.OnPressed,
			OnRightClick = props.OnRightClick,
			Renderers = renderers,
			Schema = props.Schema,
			Selected = props.Selected,
			Size = props.Size,
			StyleModifier = props.StyleModifier,
			Value = props.Value,
		})
	end

	self.onChanged = function(value: any)
		if self.props.CellProps.OnCellEdited then
			self.props.CellProps.OnCellEdited(value, self.props.Row.item.Path, self.props.ColumnIndex)
		end
	end

	self.defaultGetItemId = function(item)
		return item
	end
	self.getItemId = self.props.CellProps and self.props.CellProps.GetItemId or self.defaultGetItemId
end
function TreeTableCell:didMount()
	local props = self.props
	local itemId = self.getItemId(props.Row.item)
	local isExpanded = props.CellProps.Expansion[itemId]
	if self.toggleRef.current and isExpanded then
		self.toggleRef.current.Rotation = 90
	end
end

function TreeTableCell:willUpdate(nextProps)
	if
		nextProps.CellProps ~= self.props.CellProps
		or (
			nextProps.CellProps
			and self.props.CellProps
			and nextProps.CellProps.GetItemId ~= self.props.CellProps.GetItemId
		)
	then
		self.getItemId = nextProps and nextProps.CellProps and nextProps.CellProps.GetItemId or self.defaultGetItemId
	end
end

function TreeTableCell:didUpdate(prevProps)
	local props = self.props
	-- Update the stored overflow size if either the row number change, or the cell contents change
	if
		(prevProps.RowIndex ~= props.RowIndex or self.getTextFromProps(prevProps) ~= self.getTextFromProps(props))
		and props.SetCellContentsWidth
	then
		props.SetCellContentsWidth(props.ColumnIndex, props.RowIndex, self.fetchCellContentsWidthIfOverflow())
	end
	local itemId = self.getItemId(props.Row.item)
	local isExpanded = props.CellProps.Expansion[itemId]
	if self.toggleTween then
		self.toggleTween:Pause()
	end
	if self.toggleRef.current then
		local rotation = if isExpanded then 90 else 0
		if prevProps.Row.item == props.Row.item then
			self.toggleTween = TweenService:Create(self.toggleRef.current, tweenInfo, {
				Rotation = rotation,
			})
			self.toggleTween:Play()
		else
			self.toggleRef.current.Rotation = rotation
		end
	end
end

function TreeTableCell:render()
	local props = self.props
	local column = props.Columns[props.ColumnIndex]
	local key = column.Key or column.Name
	local width = props.Width or UDim.new(1 / #props.Columns, 0)
	local row = props.Row
	local cellProps = props.CellProps
	local value = row.item[key]

	local text, icon, shimmer
	local hasSchema = false
	if typeof(value) == "table" then
		text = tostring(value.Value)
		icon = value.LeftIcon
		shimmer = value.Shimmer
		if value.Schema then
			hasSchema = true
		end
	else
		text = tostring(value)
	end

	local tooltipText, hasTooltip
	local hasErrorMessage
	if typeof(value) == "table" then
		tooltipText = props.Tooltip or value.ErrorMessage or text
		hasErrorMessage = tooltipText == value.ErrorMessage
	else
		tooltipText = props.Tooltip or text
	end
	hasTooltip = tooltipText ~= nil
		and tooltipText ~= ""
		and (self.state.textOverflows or hasErrorMessage)
		and not cellProps.DisableTooltip

	local style = if supportsStyleSheets then nil else join(props.Style, cellProps.CellStyle)
	local backgroundColor = if supportsStyleSheets
		then nil
		else (if props.Emphasis then style.BackgroundOdd else style.BackgroundEven)
	if not supportsStyleSheets and props.HighlightCell then
		if style[StyleModifier.Hover] then
			backgroundColor = ((props.RowIndex % 2) == 1) and style[StyleModifier.Hover].BackgroundOdd
				or style[StyleModifier.Hover].BackgroundEven
		end
	end

	local arrowSize = if supportsStyleSheets then ARROW_SIZE else style.Arrow.Size
	local indent = row.depth * self.getIndent()
	local cellPadding = self.getCellPadding()
	local isCompact = props.Variant == "compact"

	local isFirstColumn = props.ColumnIndex == 1
	local basePadding = if supportsStyleSheets
		then nil
		else (if hasSchema then style.SchemaCellPadding else style.CellPadding)
	local padding = if supportsStyleSheets
		then nil
		else (isFirstColumn and {
			Top = basePadding.Top,
			Left = style.CellPadding.Left + indent,
			Right = basePadding.Right,
			Bottom = basePadding.Bottom,
		} or basePadding)
	local hasChildren = row.hasChildren
	local leftDeficit = 0
	local rightChildren
	local alwaysShowActions = false
	if typeof(value) == "table" and value.Actions then
		leftDeficit += cellPadding
		rightChildren = {}
		for index, action in ipairs(value.Actions) do
			rightChildren["Action " .. index] = Roact.createElement(
				IconButton,
				if supportsStyleSheets
					then {
						Cursor = "PointingHand",
						LayoutOrder = index,
						LeftIcon = action.Icon.Image,
						OnClick = function()
							if cellProps.OnCellAction then
								cellProps.OnCellAction(action.Id, row.item.Path, props.ColumnIndex)
							end
						end,
						Size = action.Icon.Size,
						TooltipText = action.Tooltip,
						IconTag = "Icon16 Primary",
						[React.Tag] = joinTags("Compact", action[React.Tag]),
					}
					else {
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = index,
						LeftIcon = action.Icon.Image,
						OnClick = function()
							if cellProps.OnCellAction then
								cellProps.OnCellAction(action.Id, row.item.Path, props.ColumnIndex)
							end
						end,
						Size = action.Icon.Size,
						Style = "Compact",
						TooltipText = action.Tooltip,
					}
			)
			leftDeficit += 32
		end

		alwaysShowActions = value.AlwaysShowActions
	end
	local textDeficit = 0
	if icon then
		textDeficit += cellPadding + icon.Size.X.Offset
	end
	local showToggle = isFirstColumn
	if showToggle then
		textDeficit += cellPadding + arrowSize
	end
	local textSize = UDim2.new(1, -textDeficit, 1, 0)

	local tag = if supportsStyleSheets
		then joinTags(
			"Component-TreeTableCell",
			if props.StyleModifier == StyleModifier.Selected
				then "Selected"
				else (if props.Emphasis then "Secondary" else "Row"),
			props[React.Tag]
		)
		else nil

	local showActions = rightChildren
		and (
			props.StyleModifier == StyleModifier.Hover
			or props.StyleModifier == StyleModifier.Selected
			or alwaysShowActions
		)

	return Roact.createElement(
		Pane,
		if supportsStyleSheets
			then {
				ClipsDescendants = true,
				Size = UDim2.new(width.Scale, width.Offset, 1, 0),
				[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
				[React.Tag] = tag,
			}
			else {
				Style = "Box",
				BackgroundColor3 = backgroundColor,
				BorderSizePixel = 1,
				BorderColor3 = style.Border,
				Size = UDim2.new(width.Scale, width.Offset, 1, 0),
				[Roact.Change.AbsoluteSize] = self.onAbsoluteSizeChanged,
				ClipsDescendants = true,
			},
		{
			Tooltip = hasTooltip and Roact.createElement(Tooltip, {
				MaxWidth = if style then style.Tooltip.MaxWidth else nil,
				Text = tooltipText,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			Left = Roact.createElement(
				Pane,
				if supportsStyleSheets
					then {
						LayoutOrder = props.ColumnIndex,
						Size = UDim2.new(1, -leftDeficit - indent, 1, 0),
						Position = UDim2.new(0, indent, 0, 0),
						[React.Tag] = joinTags("Left X-Middle", if isCompact then "X-RowS" else "X-RowM"),
					}
					else {
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = props.ColumnIndex,
						Padding = padding,
						Spacing = style.CellSpacing,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Size = UDim2.new(1, -leftDeficit, 1, 0),
					},
				{
					Toggle = if showToggle
						then Roact.createElement(Pane, {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = 1,
						}, {
							Icon = Roact.createElement(
								"ImageButton",
								if supportsStyleSheets
									then {
										[React.Tag] = joinTags("Arrow", if not hasChildren then "Invisible" else nil),
										[Roact.Ref] = self.toggleRef,
										[Roact.Event.Activated] = self.onToggle,
										[Roact.Event.InputBegan] = self.onCellInputBegan,
									}
									else {
										Size = UDim2.fromOffset(arrowSize, arrowSize),
										BackgroundTransparency = 1,
										ImageTransparency = if not hasChildren then 1 else nil,
										Image = style.Arrow.Image,
										ImageColor3 = style.Arrow.Color,
										ImageRectSize = Vector2.new(arrowSize, arrowSize),
										ImageRectOffset = style.Arrow.CollapsedOffset,
										[Roact.Ref] = self.toggleRef,
										[Roact.Event.Activated] = self.onToggle,
										[Roact.Event.InputBegan] = self.onCellInputBegan,
									}
							),
						})
						else nil,
					LeftIcon = if icon
						then Roact.createElement(
							Image,
							join({
								LayoutOrder = 2,
							}, icon)
						)
						else nil,
					Shimmer = if shimmer then Roact.createElement(Shimmer, shimmer) else nil,
					Text = if hasSchema
						then self.getPropertyCell({
							ErrorMessage = value.ErrorMessage,
							OnClick = value.OnClick,
							OnDoubleClick = self.onDoubleClick,
							OnPressed = self.onPressed,
							OnRightClick = self.onCellRightClick,
							Renderers = value.Renderers,
							Schema = value.Schema,
							Selected = value.Selected,
							Size = textSize,
							Value = value.Value,
						})
						else self.getTextElement(props, text, textSize),
				}
			),
			Right = if showActions
				then Roact.createElement(
					Pane,
					if supportsStyleSheets
						then {
							AnchorPoint = Vector2.new(1, 0.5),
							Position = UDim2.new(1, -cellPadding, 0.5, 0),
							[React.Tag] = joinTags("X-Fit X-Middle", if isCompact then "X-RowS" else "X-RowM"),
						}
						else {
							AnchorPoint = Vector2.new(1, 0.5),
							AutomaticSize = Enum.AutomaticSize.XY,
							Layout = Enum.FillDirection.Horizontal,
							Position = UDim2.new(1, -cellPadding, 0.5, 0),
							Spacing = cellPadding,
						},
					rightChildren
				)
				else nil,
		}
	)
end

return TreeTableCell
