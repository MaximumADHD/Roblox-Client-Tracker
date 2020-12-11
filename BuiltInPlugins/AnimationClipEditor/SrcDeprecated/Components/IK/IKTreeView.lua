--[[
	Displays hierarchy of joints in a model.

	Props:
		Instance RootInstance = instance currently being animated in the editor.
		string selectedTrack = name of the track/joint currently selected in the editor
		table Chain = represents possible and active IK Chains (used for hierarchy line highlighting)
			table is expected in the following format:
			{[partName] = true/false, ...}
			if the part is present in the table, this means it is possible for it to be in an IK
			chain currently. If the value is true, then this means the part is currently part of
			the IK chain being manipulated.
		table PinnedParts = tells whether each part in the instance is pinned or not
			{[part] = true/false, ...}

		function TogglePinnedPart = toggles if a joint is pinned for IK manipulation or not
		function SetSelectedTracks(string) = sets currently selected joint to given string
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local RigUtils = require(Plugin.SrcDeprecated.Util.RigUtils)

local Roact = require(Plugin.Roact)
local UILibrary = require(Plugin.UILibrary)
local TreeView = UILibrary.Component.TreeView
local Button = UILibrary.Component.Button

local Theme = require(Plugin.SrcDeprecated.Context.Theme)
local withTheme = Theme.withTheme

local HierarchyLines = require(Plugin.SrcDeprecated.Components.IK.HierarchyLines)
local LayoutOrderIterator = require(Plugin.SrcDeprecated.Util.LayoutOrderIterator)

local IKTreeView = Roact.PureComponent:extend("IKTreeView")

local PADDING = 14
local PIN_SIZE = 11
local PIN_OFFSET = -10
local LABEL_WIDTH = 160

function IKTreeView:init()
	local motors = RigUtils.getMotors(self.props.RootInstance)

	self.getChildren = function(partName)
		local children = {}
		for _, motor in ipairs(motors) do
			if motor.Part0.Name == partName then
				table.insert(children, motor.Part1.Name)
			end
		end
		return children
	end

	self.onInputBegan = function(input, element)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self.props.SetSelectedTracks({element})
		end
	end

	self.getVerticalLineHeight = function(elementProps, forIK)
		local startIndex = 1
		local orderedChildren = {}
		local children = self.getChildren(elementProps.element)
		for index, node in ipairs(self.props.TreeArray) do
			if node == elementProps.element then
				startIndex = index
			end
			for _, child in ipairs(children) do
				if child == node then
					if not forIK or self.props.Chain[child] then
						table.insert(orderedChildren, {index = index, element = child})
					end
				end
			end
		end
		table.sort(orderedChildren, function(a, b)
			return a.index < b.index
		end)
		local endIndex = startIndex
		if #orderedChildren > 0 then
			endIndex = orderedChildren[#orderedChildren].index
		end
		return (endIndex - startIndex) * Constants.TRACK_HEIGHT
	end
end

function IKTreeView:renderPinButton(theme, elementProps, selected)
	local props = self.props

	local rootInstance = props.RootInstance
	local pinnedParts = props.PinnedParts
	local togglePinnedPart = props.TogglePinnedPart

	local part = RigUtils.getPartByName(rootInstance, elementProps.element)
	local pinned = pinnedParts[part]

	return Roact.createElement(Button, {
		Position = UDim2.new(1, PIN_OFFSET, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		ZIndex = 1,
		IsRound = false,
		Size = UDim2.new(0, PIN_SIZE, 0, PIN_SIZE),
		BorderSizePixel = 0,
		RenderContents = function(_, hover)
			return Roact.createElement("ImageLabel", {
				BackgroundColor3 = selected and theme.ikTheme.selected or theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Image = theme.ikTheme.pinImage,
				ImageColor3 = (hover or pinned) and theme.ikTheme.pinHover or theme.ikTheme.iconColor,
			})
		end,
		OnClick = function()
			togglePinnedPart(part)
		end,
	})
end

function IKTreeView:renderHierarchyLines(elementProps, isSelected)
	local props = self.props

	local chain = props.Chain
	local joint = elementProps.element
	local indent = elementProps.indent - 1
	local expanded = elementProps.isExpanded
	local toggleExpanded = elementProps.toggleExpanded

	return Roact.createElement(HierarchyLines, {
		Highlight = chain[joint] ~= nil,
		IsSelected = isSelected,
		InActiveChain = chain[joint],
		IsLeafNode = #self.getChildren(joint) == 0,
		IsChildNode = indent > 0,
		IsExpanded = expanded,
		Indent = indent,
		Height = self.getVerticalLineHeight(elementProps, false),
		IKHeight = self.getVerticalLineHeight(elementProps, true),
		LayoutOrder = 1,
		ToggleExpanded = toggleExpanded,
	})
end

function IKTreeView:renderJointLabel(theme, elementProps, isSelected)
	local text = elementProps.element

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

function IKTreeView:renderPadding()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(0, PADDING, 0, 0),
		LayoutOrder = 2,
	})
end

function IKTreeView:render()
	return withTheme(function(theme)
		local props = self.props

		local position = props.Position
		local size = props.Size
		local rootInstance = props.RootInstance
		local ikMode = props.IKMode
		local selectedTrack = props.SelectedTrack
		local onTreeUpdated = props.onTreeUpdated
		local iterator = LayoutOrderIterator.new()
		local rootPart = RigUtils.findRootPart(rootInstance)

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
		}, {
			TreeView = Roact.createElement(TreeView, {
				dataTree = rootPart.Name,
				getChildren = self.getChildren,
				expandAll = true,
				onTreeUpdated = onTreeUpdated,
				renderElement = function(elementProps)
					-- exclude root
					if elementProps.element == rootPart.Name then
						return nil
					end

					local isSelected = selectedTrack == elementProps.element

					return Roact.createElement("ImageButton", {
						Size = UDim2.new(1, -8, 0, Constants.TRACK_HEIGHT),
						ImageTransparency = 1,
						AutoButtonColor = false,
						BackgroundColor3 = isSelected and theme.ikTheme.selected or theme.backgroundColor,
						BorderSizePixel = 0,
						ZIndex = 1,
						LayoutOrder = iterator:getNextOrder(),
						[Roact.Event.InputBegan] = function(rbx, input)
							self.onInputBegan(input, elementProps.element)
						end,
					}, {
						Pin = ikMode == Constants.IK_MODE.FullBody and self:renderPinButton(theme, elementProps, isSelected),

						Container = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 1, 0),
						}, {
							Layout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Left,
								SortOrder = Enum.SortOrder.LayoutOrder,
								VerticalAlignment = Enum.VerticalAlignment.Center,
							}),

							HierarchyLines = self:renderHierarchyLines(elementProps, isSelected),
							Padding = self:renderPadding(),
							TextLabel = self:renderJointLabel(theme, elementProps, isSelected),
						})
					})
				end,
			})
		})
	end)
end

return IKTreeView