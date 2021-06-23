--[[
	A list of items organized in two columns.

	Each item consists of a label and some content. The label column width is
	equal to the widest label text, or the value of MaximumLabelWidth.

	If Collapsible is true, the list changes to a single-column layout when the
	available width is too narrow to fit all item contents.

	Required Props:
		table Items: A list of items to display. Example: { Text = "", Content = Roact.createElement(...) }.

	Optional Props:
		boolean Collapsible: Whether the widget should collapse at narrow widths.
		number LayoutOrder: The layout order of the component.
		number MaximumLabelWidth: The maximum label width showing the two-column layout.
]]--

local TextService = game:GetService("TextService")

local Plugin = script.Parent.Parent.Parent

local FitFrame = require(Plugin.Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis
local FitFrameVertical = FitFrame.FitFrameVertical
local Roact = require(Plugin.Packages.Roact)

local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local UI = Framework.UI
local TextLabel = UI.Decoration.TextLabel

-- LabeledElementListItem is a helper compoment internal to this module.
local LabeledElementListItem = Roact.PureComponent:extend("LabeledElementListItem")

LabeledElementListItem.defaultProps = {
	ContentFillDirection = Enum.FillDirection.Vertical,
	ContentPadding = UDim.new(0, 0),
	LabelColumnWidth = UDim.new(0, 100),
	LayoutOrder = 1,
	Padding = UDim.new(0, 0),
	Text = "Label",
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	OnSizeChanged = function() end,
}

function LabeledElementListItem:init()
	self.contentFrameRef = Roact.createRef()

	self.onContentSizeChanged = function()
		local props = self.props
		if not props.IsCollapsed and props.OnSizeChanged then
			local id = props.Id or props.Text or ""
			local frame = self.contentFrameRef.current
			props.OnSizeChanged(id, frame.Size)
		end
	end
end

function LabeledElementListItem:render()
	local props = self.props

	local fillDirection
	local labelColumnWidth
	if props.IsCollapsed then
		fillDirection = Enum.FillDirection.Vertical
		labelColumnWidth = UDim.new(1, 0)
	else
		fillDirection = Enum.FillDirection.Horizontal
		labelColumnWidth = props.LabelColumnWidth
	end

	local labelSize = UDim2.new(labelColumnWidth, UDim.new(0, 22))

	return Roact.createElement(FitFrameOnAxis, {
		axis = FitFrameOnAxis.Axis.Vertical,
		contentPadding = props.Padding,
		minimumSize = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		FillDirection = fillDirection,
		LayoutOrder = props.LayoutOrder,
	}, {
		Label = Roact.createElement(TextLabel, {
			LayoutOrder = 1,
			Size = labelSize,
			Text = props.Text,
			TextXAlignment = props.TextXAlignment,
			TextYAlignment = props.TextYAlignment,
		}),

		Content = Roact.createElement(FitFrameOnAxis, {
			axis = FitFrameOnAxis.Axis.Both,
			contentPadding = props.ContentPadding,
			BackgroundTransparency = 1,
			FillDirection = props.ContentFillDirection,
			LayoutOrder = 2,

			[Roact.Change.Size] = self.onContentSizeChanged,
			[Roact.Ref] = self.contentFrameRef,
		}, self.props[Roact.Children]),
	})
end

local LabeledElementList = Roact.PureComponent:extend("LabeledElementList")

LabeledElementList.defaultProps = {
	Collapsible = false,
	Items = {},
	MaximumLabelWidth = math.huge,
	LayoutOrder = 1,
}

function LabeledElementList:init()
	self._frameRef = Roact.createRef()
	self._contentSizeMap = {}
	self._contentColumnWidth = 0
	self._maximumContentWidth = 0
	self._labelColumnWidth = 0

	local function updateCollapsedState()
		local isCollapsed = self._contentColumnWidth < self._maximumContentWidth
		self:setState(function()
			if isCollapsed ~= self.state.isCollapsed then
				return {
					isCollapsed = isCollapsed,
				}
			end
			return nil
		end)
	end

	self.onSizeChanged = function()
		local theme = self.props.Stylizer
		local style = theme.LabeledElementList

		local frame = self._frameRef.current
		local padding = style.ItemPaddingHorizontal.Offset

		self._contentColumnWidth = frame.AbsoluteSize.X - self._labelColumnWidth - padding

		updateCollapsedState()
	end

	self.onSectionSizeChanged = function(id, size)
		self._contentSizeMap[id] = size

		self._maximumContentWidth = 0
		for _, contentSize in pairs(self._contentSizeMap) do
			local width = contentSize.X.Offset
			self._maximumContentWidth = math.max(self._maximumContentWidth, width)
		end

		updateCollapsedState()
	end

	self:setState({
		isCollapsed = false,
	})
end

function LabeledElementList:render()
	local props = self.props
	local state = self.state

	local items = props.Items
	local theme = props.Stylizer
	local style = theme.LabeledElementList

	self._labelColumnWidth = 0

	for _, item in ipairs(items) do
		local textSize = TextService:GetTextSize(item.Text, style.TextSize, style.Font, Vector2.new(props.MaximumLabelWidth, 10000))
		self._labelColumnWidth = math.max(textSize.X, self._labelColumnWidth)
	end

	local itemPadding = state.isCollapsed and style.ItemPaddingVertical or style.ItemPaddingHorizontal

	local children = {}
	for index, item in ipairs(items) do
		children["Item" .. tostring(index)] = Roact.createElement(LabeledElementListItem, {
			IsCollapsed = state.isCollapsed,
			ContentFillDirection = item.ContentFillDirection,
			ContentPadding = style.ItemContentPadding,
			LabelColumnWidth = UDim.new(0, self._labelColumnWidth),
			LayoutOrder = index,
			Padding = itemPadding,
			Text = item.Text,
			TextXAlignment = item.TextXAlignment,
			TextYAlignment = item.TextYAlignment,
			OnSizeChanged = self.onSectionSizeChanged,
		}, {
			Content = item.Content,
		})
	end

	return Roact.createElement(FitFrameVertical, {
		contentPadding = style.SectionPadding,
		width = UDim.new(1, 0),
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,

		[Roact.Change.AbsoluteSize] = self.onSizeChanged,
		[Roact.Ref] = self._frameRef,
	}, children)
end

ContextServices.mapToProps(LabeledElementList, {
	Stylizer = ContextServices.Stylizer,
})

return LabeledElementList
