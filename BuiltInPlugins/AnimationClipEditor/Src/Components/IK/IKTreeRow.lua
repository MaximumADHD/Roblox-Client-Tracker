local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane

local HierarchyLines = require(Plugin.Src.Components.IK.HierarchyLines)

local IKTreeRow = Roact.PureComponent:extend("IKTreeRow")

local PADDING = 14
local PIN_SIZE = 11
local PIN_OFFSET = -10
local LABEL_WIDTH = 160

function IKTreeRow:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local item = props.Item
	local ikMode = props.IKMode
	local isSelected = props.IsSelected
	
	return Roact.createElement("ImageButton", {
		Position = props.Position,
		Size = UDim2.new(1, -8, 0, Constants.TRACK_HEIGHT),
		ImageTransparency = 1,
		AutoButtonColor = false,
		BackgroundColor3 = if isSelected then theme.ikTheme.selected else theme.backgroundColor,
		BorderSizePixel = 0,
		ZIndex = 1,
		[Roact.Event.InputBegan] = function(rbx, input)
			self.props.OnInputBegan(input, item)
		end,
	}, {
		Pin = ikMode == Constants.IK_MODE.FullBody and self:renderPinButton(),
		Container = Roact.createElement(Pane, {
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Horizontal,
			Spacing = PADDING,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}, {
			HierarchyLines = self:renderHierarchyLines(),
			TextLabel = self:renderJointLabel(),
		})
	})
end

function IKTreeRow:renderPinButton()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local item = props.Item
	local isSelected = props.IsSelected

	local rootInstance = props.RootInstance
	local pinnedParts = props.PinnedParts
	local togglePinnedPart = props.TogglePinnedPart

	local part = RigUtils.getPartByName(rootInstance, item)
	local pinned = pinnedParts[part]

	return Roact.createElement(Button, {
		Position = UDim2.new(1, PIN_OFFSET, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		ZIndex = 1,
		IsRound = false,
		Size = UDim2.fromOffset(PIN_SIZE, PIN_SIZE),
		BorderSizePixel = 0,
		OnClick = function()
			togglePinnedPart(part)
		end
		}, {
			Image = Roact.createElement("ImageLabel", {
				BackgroundColor3 = isSelected and theme.ikTheme.selected or theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				Image = theme.ikTheme.pinImage,
				ImageColor3 = pinned and theme.ikTheme.pinHover or theme.ikTheme.iconColor,
			}),
	})
end

function IKTreeRow:renderHierarchyLines()
	local props = self.props
	local item = props.Item
	local isLeafNode = props.IsLeafNode
	local depth = props.Depth
	local getVerticalLineHeight = props.GetVerticalLineHeight

	local chain = props.Chain
	local indent = depth - 1
	local expanded = props.IsExpanded
	local toggleExpanded = props.OnToggleExpanded

	return Roact.createElement(HierarchyLines, {
		Highlight = chain[item] ~= nil,
		IsSelected = props.IsSelected,
		InActiveChain = chain[item],
		IsLeafNode = isLeafNode,
		IsChildNode = indent > 0,
		IsExpanded = expanded,
		Indent = indent,
		Height = getVerticalLineHeight(item, false),
		IKHeight = getVerticalLineHeight(item, true),
		LayoutOrder = 1,
		ToggleExpanded = toggleExpanded,
		Element = item,
	})
end

function IKTreeRow:renderJointLabel()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local text = props.Item
	local isSelected = props.IsSelected

	return Roact.createElement("TextLabel", {
		Text = text,
		TextSize = theme.ikTheme.textSize,
		Font = theme.font,
		TextColor3 = isSelected and theme.ikTheme.primaryTextColor or theme.ikTheme.textColor,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		Size = UDim2.new(0, LABEL_WIDTH, 1, 0),
		TextTruncate = Enum.TextTruncate.AtEnd,
		BackgroundTransparency = 1,
		LayoutOrder = 3,
	})
end


IKTreeRow = withContext({
	Stylizer = ContextServices.Stylizer,
})(IKTreeRow)

return IKTreeRow
