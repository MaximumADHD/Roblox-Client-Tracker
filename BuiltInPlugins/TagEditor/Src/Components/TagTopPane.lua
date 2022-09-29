--[[
	The top pane of the tag editor, containing controls to add and remove tags, and the list of all tags
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local Actions = require(Plugin.Src.Actions)
local TagManager = require(Plugin.Src.TagManager)

local NewTagTextInput = require(script.Parent.NewTagTextInput)
local TagListView = require(script.Parent.TagListView)

export type Props = {
	tagMenu: string,
	groupMenu: string,
	setSearch: ((string) -> ()),
	openTagMenu: ((string) -> ()),
	openGroupMenu: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	SearchBarPaneSize: UDim2,
	SearchBarSize: UDim2,
	ButtonSize: UDim2,
	Padding: _Types.Table<string, number>,
	RowSpacing: number,
	NewGroupIcon: string,
	DeleteIcon: string,
}

local TagTopPane = Roact.PureComponent:extend("TagTopPane")

function TagTopPane:init()
	self.onSearchRequested = function(searchTerm: string)
		self.props.setSearch(searchTerm)
	end

	self.onDeleteClicked = function()
		local props: _Props = self.props
		if props.tagMenu then
			TagManager.Get():DelTag(props.tagMenu)
			props.openTagMenu("")
		elseif props.groupMenu then
			TagManager.Get():DeleteGroup(props.groupMenu)
			props.openGroupMenu("")
		end
	end

	self.onNewGroupClicked = function()
		local props: _Props = self.props
		if props.tagMenu ~= nil then
			TagManager.Get():SetGroup(props.tagMenu, props.tagMenu .. " Group")
		end
	end
end

function TagTopPane:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagTopPane
	local orderIterator = LayoutOrderIterator.new()
	local searchRowOrderIterator = LayoutOrderIterator.new()

	local newGroupTooltipText = if props.tagMenu then localization:getText("Tooltip", "NewGroupEnabled") else localization:getText("Tooltip", "NewGroupDisabled")

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Vertical,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		LayoutOrder = 1,
		Padding = style.Padding,
	}, {
		SearchRowPane = Roact.createElement(Pane, {
			Size = style.SearchBarPaneSize,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			Spacing = style.RowSpacing,
		}, {
			SearchBar = Roact.createElement(SearchBar, {
				Size = style.SearchBarSize,
				ShowSearchButton = false,
				ShowSearchIcon = true,
				LayoutOrder = searchRowOrderIterator:getNextOrder(),
				OnSearchRequested = self.onSearchRequested,
			}),
			NewGroupButton = Roact.createElement(IconButton, {
				BackgroundStyle = "None",
				LeftIcon = style.NewGroupIcon,
				OnClick = self.onNewGroupClicked,
				LayoutOrder = searchRowOrderIterator:getNextOrder(),
				Disabled = props.groupMenu or not props.tagMenu,
				TooltipText = newGroupTooltipText,
			}),
			DeleteButton = Roact.createElement(IconButton, {
				BackgroundStyle = "None",
				LeftIcon = style.DeleteIcon,
				OnClick = self.onDeleteClicked,
				LayoutOrder = searchRowOrderIterator:getNextOrder(),
			}),
		}),
		NewTagRowPane = Roact.createElement(Pane, {
			Size = style.SearchBarPaneSize,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Spacing = style.RowSpacing,
		}, {

			NewTagTextInput =  Roact.createElement(NewTagTextInput, {
				Size = style.SearchBarPaneSize,
				LayoutOrder = 1,
			}),
		}),
		TagListView = Roact.createElement(TagListView, {
			LayoutOrder = orderIterator:getNextOrder(),
		}),
	})
end

TagTopPane = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagTopPane)

local function mapStateToProps(state, _)
	return {
		tagMenu = state.TagMenu,
		groupMenu = state.GroupMenu,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setSearch = function(term: string)
			dispatch(Actions.SetSearch(term))
		end,
		openTagMenu = function(tag: string)
			dispatch(Actions.OpenTagMenu(tag))
		end,
		openGroupMenu = function(group: string)
			dispatch(Actions.OpenGroupMenu(group))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagTopPane)
