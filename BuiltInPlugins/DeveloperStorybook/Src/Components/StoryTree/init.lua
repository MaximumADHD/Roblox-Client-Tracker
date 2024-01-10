--[[
	Display a list of available targets
]]
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SelectComponent = ReplicatedStorage:FindFirstChild("SelectComponent")

local main = script.Parent.Parent.Parent
local Roact = require(main.Packages.Roact)
local RoactRodux = require(main.Packages.RoactRodux)

local Framework = require(main.Packages.Framework)

local UI = Framework.UI
local Container = UI.Container
local TreeView = UI.TreeView

local Actions = main.Src.Actions
local SelectStory = require(Actions.SelectStory)
local ToggleStory = require(Actions.ToggleStory)

local Thunks = main.Src.Thunks
local GetStories = require(Thunks.GetStories)

local Util = main.Src.Util
local ExternalEventConnection = require(Util.ExternalEventConnection)

local StoryTree = Roact.PureComponent:extend("StoryTree")

local function getChildren(item)
	return item:GetChildren()
end

local function getItemKey(item, index: number)
	return item.Name .. "#" .. tostring(index)
end

local function findComponent(root, componentName)
	for _, child in root.Children do
		if child.Name == componentName then
			return child
		end
		local result = findComponent(child, componentName)
		if result then
			return result
		end
	end
	return nil
end

function StoryTree:init()
	self.onSelectionChange = function(selection)
		for story, _ in pairs(selection) do
			self.props.selectStory(story)
			-- Only select first story
			return
		end
	end

	self.onExpansionChange = function(expansion)
		self.props.toggleStory(expansion)
	end

	self.selectComponent = function(storybookName, componentName)
		for _, story in ipairs(self.props.Stories) do
			if story.Name == storybookName then
				local component = findComponent(story, componentName)
				if component ~= nil then
					self.props.selectStory(component)
				end
			end
		end
	end
end

function StoryTree:didMount()
	self.props.getStories()
end

function StoryTree:render()
	local props = self.props
	return Roact.createElement(Container, {}, {
		ExternalEventConnection = if SelectComponent
			then Roact.createElement(ExternalEventConnection, {
				callback = self.selectComponent,
				event = SelectComponent.OnClientEvent,
			})
			else nil,

		Tree = Roact.createElement(TreeView, {
			RowProps = {
				GetContents = function(item)
					return item.Name,
						{
							Size = UDim2.fromOffset(16, 16),
							Image = ("rbxasset://textures/DeveloperStorybook/%s.png"):format(item.Icon),
						}
				end,
			},
			LayoutOrder = props.LayoutOrder,
			RootItems = props.Stories,
			GetChildren = getChildren,
			GetItemKey = getItemKey,
			OnSelectionChange = self.onSelectionChange,
			OnExpansionChange = self.onExpansionChange,
			Selection = props.Selection,
			Size = UDim2.fromScale(1, 1),
			Expansion = props.Expansion,
			Style = "BorderBox",
		}),
	})
end

return RoactRodux.connect(function(state, props)
	return {
		Stories = #state.Stories.searchFilter > 0 and state.Stories.searchStories or state.Stories.stories,
		Selection = state.Stories.selectedStory and { [state.Stories.selectedStory] = true } or {},
		Expansion = #state.Stories.searchFilter > 0 and state.Stories.expandedSearchStories
			or state.Stories.expandedStories,
	}
end, function(dispatch)
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
end)(StoryTree)
