--[[
	The top pane of the tag editor, containing controls to add and remove tags, and the list of all tags
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextInput2 = UI.TextInput2

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local TagListView = require(script.Parent.TagListView)

export type Props = {}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	SearchBarPaneSize: UDim2,
	SearchBarSize: UDim2,
	ButtonSize: UDim2,
}

local TagTopPane = Roact.PureComponent:extend("TagTopPane")

function TagTopPane:init()
	self.OnButtonClicked = function()
		print("Click!")
	end
end

function TagTopPane:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagTopPane

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		LayoutOrder = 1,
		Padding = 7,
	}, {
		SearchRowPane = Roact.createElement(Pane, {
			Size = style.SearchBarPaneSize,
			LayoutOrder = 1,
			Layout = Enum.FillDirection.Horizontal,
		}, {
			SearchBar = Roact.createElement(SearchBar, {
				Size = style.SearchBarSize,
				LayoutOrder = 1,
			}),
			FileButton = Roact.createElement(IconButton, {
				LeftIcon = "rbxasset://textures/StudioSharedUI/folder.png",
				OnClick = self.OnButtonClicked,
				LayoutOrder = 2,
			}),
			DeleteButton = Roact.createElement(IconButton, {
				LeftIcon = "rbxasset://textures/CollisionGroupsEditor/delete.png",
				OnClick = self.OnButtonClicked,
				LayoutOrder = 3,
			}),
		}),
		NewTagRowPane = Roact.createElement(Pane, {
			Size = style.SearchBarPaneSize,
			LayoutOrder = 2,
			Layout = Enum.FillDirection.Horizontal,
		}, {
			AddGroupTextInput = Roact.createElement(TextInput2, {
				Size = style.SearchBarPaneSize,
				Text = "Create new tag...",
				LayoutOrder = 3,
				LeadingComponent = IconButton,
				LeadingComponentProps = {
					LeftIcon = "rbxasset://textures/CollisionGroupsEditor/assign.png",
				}
			}),
		}),
		TagListView = Roact.createElement(TagListView, {
			LayoutOrder = 3,
		}),
	})
end

TagTopPane = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagTopPane)

return TagTopPane
