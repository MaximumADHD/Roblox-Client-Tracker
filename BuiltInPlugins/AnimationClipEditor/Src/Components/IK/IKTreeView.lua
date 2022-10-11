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
		function OnTreeUpdated = callback for when the nodes of the tree are updated
]]
local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Util.Constants)
local RigUtils = require(Plugin.Src.Util.RigUtils)

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkList = SharedFlags.getFFlagDevFrameworkList()

local UI = Framework.UI
local Button = UI.Button
local TreeView = UI.TreeView

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local HierarchyLines = require(Plugin.Src.Components.IK.HierarchyLines)
local LayoutOrderIterator = require(Plugin.Src.Util.LayoutOrderIterator)

local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)

local IKTreeRow = if FFlagDevFrameworkList then require(Plugin.Src.Components.IK.IKTreeRow) else nil

local IKTreeView = Roact.PureComponent:extend("IKTreeView")

local PADDING = 14
local PIN_SIZE = 11
local PIN_OFFSET = -10
local LABEL_WIDTH = 160

function IKTreeView:init()
	local initExpandedItems = {}

	local motors = RigUtils.getMotors(self.props.RootInstance)
	for _, motor in ipairs(motors) do
		initExpandedItems[motor.Part1.Name] = true
	end
	local rootPart = RigUtils.findRootPart(self.props.RootInstance)
	initExpandedItems[rootPart.Name] = true
	self.state = {
		expandedItems = initExpandedItems,
		treeArray = {},
	}

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
			self.props.SetSelectedTracks({ { element } })
		end
	end

	self.getVerticalLineHeight = function(elementPropsOrItem, forIK: boolean)
		local item = if FFlagDevFrameworkList then elementPropsOrItem else elementPropsOrItem.item
		local startIndex = 1
		local orderedChildren = {}
		local children = self.getChildren(item)
		for index, node in ipairs(self.state.treeArray) do
			if node == item then
				startIndex = index
			end
			for _, child in ipairs(children) do
				if child == node then
					if not forIK or self.props.Chain[child] then
						table.insert(orderedChildren, { index = index, element = child })
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

	self.toggleExpanded = function(elementName)
		self:setState(function(oldState)
			return {
				expandedItems = Cryo.Dictionary.join(oldState.expandedItems, {
					[elementName] = not oldState.expandedItems[elementName],
				}),
			}
		end)
	end

	self.contributeItem = function(item, depth, list)
		table.insert(list, item)
		if self.state.expandedItems[item] then
			local children = self.getChildren(item)
			for _, child in ipairs(children) do
				self.contributeItem(child, depth + 1, list)
			end
		end
		return list
	end

	self.calculateRows = function(prevState)
		if prevState and self.state.expandedItems == prevState.expandedItems then
			return
		end
		local rows = {}
		self.contributeItem(RigUtils.findRootPart(self.props.RootInstance).Name, 0, rows)
		self:setState({
			treeArray = rows,
		})
		self.props.OnTreeUpdated(rows)
	end

	if FFlagDevFrameworkList then
		self.getRowProps = function(row, index, position: UDim2, size: UDim2)
			local props = self.props
			local selectedTrack = props.SelectedTrack
			local item = row.item
			return {
				Chain = props.Chain,
				Depth = row.depth,
				GetVerticalLineHeight = self.getVerticalLineHeight,
				IsExpanded = self.state.expandedItems[item],
				IsLeafNode = #self.getChildren(item) == 0,
				Item = item,
				Key = index,
				OnInputBegan = self.onInputBegan,
				OnToggleExpanded = self.toggleExpanded,
				PinnedParts = props.PinnedParts,
				Position = position,
				RootInstance = props.RootInstance,
				IKMode = props.IKMode,
				IsSelected = selectedTrack and selectedTrack[1] == item,
				Size = size,
				TogglePinnedPart = props.TogglePinnedPart,
			}
		end
	end
end

function IKTreeView:didMount()
	self.calculateRows()
end

function IKTreeView:didUpdate(prevProps, prevState)
	self.calculateRows(prevState)
end

if not FFlagDevFrameworkList then
	function IKTreeView:renderPinButton(theme, elementProps, selected)
		local props = self.props

		local rootInstance = props.RootInstance
		local pinnedParts = props.PinnedParts
		local togglePinnedPart = props.TogglePinnedPart

		local part = RigUtils.getPartByName(rootInstance, elementProps.item)
		local pinned = pinnedParts[part]

		return Roact.createElement(Button, {
			Position = UDim2.new(1, PIN_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(1, 0.5),
			ZIndex = 1,
			IsRound = false,
			Size = UDim2.new(0, PIN_SIZE, 0, PIN_SIZE),
			BorderSizePixel = 0,
			OnClick = function()
				togglePinnedPart(part)
			end,
		}, {
			Image = Roact.createElement("ImageLabel", {
				BackgroundColor3 = selected and theme.ikTheme.selected or theme.backgroundColor,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				Image = theme.ikTheme.pinImage,
				ImageColor3 = pinned and theme.ikTheme.pinHover or theme.ikTheme.iconColor,
			}),
		})
	end

	function IKTreeView:renderHierarchyLines(elementProps, isSelected)
		local props = self.props

		local chain = props.Chain
		local joint = elementProps.item
		local indent = elementProps.depth - 1
		local expanded = true
		local toggleExpanded = self.toggleExpanded

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
			Element = elementProps.item,
		})
	end

	function IKTreeView:renderJointLabel(theme, elementProps, isSelected)
		local text = elementProps.item

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
end

function IKTreeView:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local position = props.Position
	local size = props.Size
	local rootInstance = props.RootInstance
	local ikMode = props.IKMode
	local selectedTrack = props.SelectedTrack
	local onTreeUpdated = props.onTreeUpdated
	local iterator = LayoutOrderIterator.new()
	local rootPart = RigUtils.findRootPart(rootInstance)
	local rootItems = {}
	table.insert(rootItems, rootPart.Name)

	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
	}, {
		TreeView = Roact.createElement(TreeView, {
			RootItems = rootItems,
			GetChildren = self.getChildren,
			Expansion = self.state.expandedItems,
			RowComponent = if FFlagDevFrameworkList then IKTreeRow else nil,
			RowHeight = if FFlagDevFrameworkList then Constants.TRACK_HEIGHT else nil,
			GetRowProps = if FFlagDevFrameworkList then self.getRowProps else nil,
			RenderRow = if FFlagDevFrameworkList
				then nil
				else function(elementProps)
					-- exclude root
					if elementProps.item == rootPart.Name then
						return nil
					end

					local isSelected = (selectedTrack and selectedTrack[1] == elementProps.item)

					return Roact.createElement("ImageButton", {
						Size = UDim2.new(1, -8, 0, Constants.TRACK_HEIGHT),
						ImageTransparency = 1,
						AutoButtonColor = false,
						BackgroundColor3 = isSelected and theme.ikTheme.selected or theme.backgroundColor,
						BorderSizePixel = 0,
						ZIndex = 1,
						LayoutOrder = iterator:getNextOrder(),
						[Roact.Event.InputBegan] = function(rbx, input)
							self.onInputBegan(input, elementProps.item)
						end,
					}, {
						Pin = ikMode == Constants.IK_MODE.FullBody
							and self:renderPinButton(theme, elementProps, isSelected),

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
						}),
					})
				end,
			Style = "BorderBox",
		}),
	})
end

IKTreeView = withContext({
	Stylizer = ContextServices.Stylizer,
})(IKTreeView)

return IKTreeView
