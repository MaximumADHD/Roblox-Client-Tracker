--[[
	Display a list of available targets
]]
local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)

local Framework = require(main.Packages.Framework)
local ContextServices = Framework.ContextServices

local UI = Framework.UI
local Container = UI.Container
local TreeView = UI.TreeView

local Actions = main.Src.Actions
local SelectStory = require(Actions.SelectStory)
local ToggleStory = require(Actions.ToggleStory)

local StoryTreeRow = require(main.Src.Components.StoryTree.StoryTreeRow)

local Thunks = main.Src.Thunks
local GetStories = require(Thunks.GetStories)

local StoryTree = Roact.PureComponent:extend("StoryTree")

local function getChildren(item)
	return item:GetChildren()
end

local function getItemKey(item, index)
	return item.Name .. "#" .. tostring(index)
end

function StoryTree:init()
	self.toggleRow = function(row)
		local newExpansion = {
			[row.item] = not self.props.Expansion[row.item]
		}
		self.props.toggleStory(newExpansion)
	end
	self.selectRow = function(row)
		self.props.selectStory(row.item)
	end
	self.renderRow = function(row)
		local props = self.props
		local style = props.Stylizer
		local isSelected = props.Selection[row.item]
		local isExpanded = props.Expansion[row.item]
		return Roact.createElement(StoryTreeRow, {
			row = row,
			style = style,
			isSelected = isSelected,
			isExpanded = isExpanded,
			onToggled = self.toggleRow,
			onSelected = self.selectRow
		})
	end
end

function StoryTree:didMount()
	self.props.getStories()
end

function StoryTree:render()
	local props = self.props
	local style = props.Stylizer
	local sizes = style.Sizes

	return Roact.createElement(Container, {
		Position = UDim2.new(0, 0, 0, sizes.TopBar),
		Size = UDim2.new(0, sizes.Gutter, 1, -sizes.TopBar),
	},
	{
		Tree = Roact.createElement(TreeView, {
			LayoutOrder = props.LayoutOrder,
			RootItems = props.Stories,
			GetChildren = getChildren,
			GetItemKey = getItemKey,
			RenderRow = self.renderRow,
			Size = UDim2.fromScale(1, 1),
			Expansion = props.Expansion,
		})
	})
end

ContextServices.mapToProps(StoryTree, {
	Stylizer = ContextServices.Stylizer,
})

return RoactRodux.connect(
	function(state, props)
		return {
			Stories = #state.Stories.searchFilter > 0 and state.Stories.searchStories or state.Stories.stories,
			Selection = state.Stories.selectedStory and {[state.Stories.selectedStory] = true} or {},
			Expansion = #state.Stories.searchFilter > 0 and state.Stories.expandedSearchStories or state.Stories.expandedStories
		}
	end,
	function(dispatch)
		return {
			selectStory = function(story)
				dispatch(SelectStory(story))
			end,
			toggleStory = function(change)
				dispatch(ToggleStory(change))
			end,
			getStories = function()
				dispatch(GetStories())
			end,
		}
	end
)(StoryTree)
