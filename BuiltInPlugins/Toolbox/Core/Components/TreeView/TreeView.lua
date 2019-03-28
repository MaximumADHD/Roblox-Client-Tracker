--[[
	Tree view used to view the contents of a Model or instance set.
	Supports hiding and showing elements.

	Props:
		Instance RootInstance = The root instance to display in this tree view.
		Instance SelectedInstance = The instance that is currently selected.
		function InstanceClicked(Instance) = A callback when the user clicks
			an instance displayed in the tree view.
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local withTheme = ContextHelper.withTheme

local TreeViewItem = require(Plugin.Core.Components.TreeView.TreeViewItem)

local TreeView = Roact.PureComponent:extend("TreeView")

local ELEMENT_PADDING = 4
local BORDER_PADDING = 15

local function depthFirstTraverse(parent, depth, func)
	local children = parent:GetChildren()
	table.sort(children, function(first, next)
		return first.Name < next.Name
	end)

	for _, child in pairs(children) do
		local continue = func(child, depth + 1)
		if continue then
			depthFirstTraverse(child, depth + 1, func)
		end
	end
end

function TreeView:init(initialProps)
	local root = self.props.RootInstance
	local items = {
		[root] = true
	}

	self.state = items

	self.toggleExpanded = function(instance)
		self:setState({
			[instance] = not self.state[instance],
		})
	end

	self.instanceClicked = function(instance)
		if self.props.InstanceClicked then
			self.props.InstanceClicked(instance)
		end
	end
end

function TreeView:createItem(instance, selectedInstance, indentation, index)
	return Roact.createElement(TreeViewItem, {
		Instance = instance,
		Indentation = indentation,
		Expandable = #instance:GetChildren() > 0,
		Expanded = self.state[instance],
		Selected = instance == selectedInstance,
		LayoutOrder = index,
		ToggleExpanded = function()
			self.toggleExpanded(instance)
		end,
		OnClick = function()
			self.instanceClicked(instance)
		end,
	})
end

function TreeView:render()
	return withTheme(function(theme)
		local props =self.props
		local root = props.RootInstance
		local selectedInstance = props.SelectedInstance
		local expandedItems = self.state
		local height = Constants.TREE_ITEM_HEIGHT
		local position = props.position
		local size = props.size

		local layoutOrder = props.layoutOrder

		local treeNodes = {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, BORDER_PADDING),
				PaddingRight = UDim.new(0, BORDER_PADDING),
				PaddingTop = UDim.new(0, BORDER_PADDING),
				PaddingBottom = UDim.new(0, BORDER_PADDING),
			}),
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, ELEMENT_PADDING)
			}),
			Root = self:createItem(root, selectedInstance, 0, 0),
		}

		local nodesCount = 1
		local maxDepth = 1

		if expandedItems[root] then
			depthFirstTraverse(root, 0, function(child, depth)
				treeNodes[nodesCount] = self:createItem(child, selectedInstance, depth, nodesCount)
				nodesCount = nodesCount + 1
				maxDepth = math.max(depth, maxDepth)
				return expandedItems[child]
			end)
		end

		local maxHeight = nodesCount * (ELEMENT_PADDING + height)
			+ BORDER_PADDING * 2

		return Roact.createElement("Frame", {
			Position = position,
			Size = size or UDim2.new(1, 0, 1, 0),

			BackgroundTransparency = 0,
			BackgroundColor3 = theme.assetPreview.treeView.background,
			BorderSizePixel = 0,

			LayoutOrder = layoutOrder
		}, {
			Frame = Roact.createElement("ScrollingFrame", {
				CanvasSize = UDim2.new(0, Constants.TREE_VIEW_INDENT * maxDepth + 200, 0, maxHeight),
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, -Constants.SCROLLBAR_PADDING, 1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				ScrollBarThickness = Constants.SCROLLBAR_THICKNESS,
				ZIndex = 2,

				TopImage = Images.SCROLLBAR_TOP_IMAGE,
				MidImage = Images.SCROLLBAR_MIDDLE_IMAGE,
				BottomImage = Images.SCROLLBAR_BOTTOM_IMAGE,

				ScrollBarImageColor3 = theme.scrollingFrame.scrollbarImageColor,

				ElasticBehavior = Enum.ElasticBehavior.Always,
				ScrollingDirection = Enum.ScrollingDirection.XY,
			}, treeNodes),
		})
	end)
end

return TreeView