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
local GetUniqueGroupName = require(Plugin.Src.Util.GetUniqueGroupName)
local TagManager = require(Plugin.Src.TagManager)

local NewTagTextInput = require(script.Parent.NewTagTextInput)
local TagListView = require(script.Parent.TagListView)

export type Props = {
	tagMenu: string,
	groupMenu: string,
	worldView: boolean,
	groupData: _Types.Array<string>,
	setSearch: ((string) -> ()),
	openTagMenu: ((string) -> ()),
	openGroupMenu: ((string) -> ()),
	setWorldView: ((boolean) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	SearchBarPaneSize: UDim2,
	SearchBarSize: UDim2,
	NewTagRowSize: UDim2,
	WorldViewButtonSize: UDim2,
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

	self.onNewGroupClicked = function(localization: any)
		local props: _Props = self.props
		if props.tagMenu ~= nil then
			local newGroupName = GetUniqueGroupName(localization:getText("Info", "NewGroup"))
			TagManager.Get():SetGroup(props.tagMenu, newGroupName)
		end
	end

	self.onWorldViewButtonClicked = function()
		local props: _Props = self.props
		props.setWorldView(not props.worldView)
	end
end

function TagTopPane:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagTopPane
	local orderIterator = LayoutOrderIterator.new()
	local searchRowOrderIterator = LayoutOrderIterator.new()
	local newTagRowOrderIterator = LayoutOrderIterator.new()

	local visibleIcon = props.Stylizer.VisibleIcon
	local visibleOffIcon = props.Stylizer.VisibleOffIcon

	local newGroupButtonDisabled = props.groupMenu or not props.tagMenu
	local deleteButtonDisabled = not props.tagMenu and not props.groupMenu

	local newGroupTooltipText = if newGroupButtonDisabled then localization:getText("Tooltip", "NewGroupDisabled") else localization:getText("Tooltip", "NewGroupEnabled")
	local deleteTooltipText = if deleteButtonDisabled then localization:getText("Tooltip", "DeleteDisabled") else localization:getText("Tooltip", "DeleteDisabled")

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
				Style = "Compact",
			}),
			NewGroupButton = Roact.createElement(IconButton, {
				BackgroundStyle = "RoundBox",
				LeftIcon = style.NewGroupIcon,
				OnClick = function()
					self.onNewGroupClicked(localization)
				end,
				LayoutOrder = searchRowOrderIterator:getNextOrder(),
				Style = newGroupButtonDisabled and "Disabled",
				Disabled = newGroupButtonDisabled,
				TooltipText = newGroupTooltipText,
			}),
			DeleteButton = Roact.createElement(IconButton, {
				BackgroundStyle = "RoundBox",
				LeftIcon = style.DeleteIcon,
				OnClick = self.onDeleteClicked,
				LayoutOrder = searchRowOrderIterator:getNextOrder(),
				Style = deleteButtonDisabled and "Disabled",
				Disabled = deleteButtonDisabled,
				TooltipText = deleteTooltipText,
			}),
		}),
		NewTagRowPane = Roact.createElement(Pane, {
			Size = style.NewTagRowSize,
			LayoutOrder = orderIterator:getNextOrder(),
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}, {
			NewTagTextInput =  Roact.createElement(NewTagTextInput, {
				LayoutOrder = newTagRowOrderIterator:getNextOrder(),
			}),
			ToggleWorldViewButton = Roact.createElement(IconButton, {
				BackgroundStyle = "RoundBox",
				LeftIcon = if props.worldView then visibleIcon else visibleOffIcon,
				Padding = 0,
				Spacing = 4,
				Text = localization:getText("Info", "WorldView"),
				OnClick = self.onWorldViewButtonClicked,
				LayoutOrder = newTagRowOrderIterator:getNextOrder(),
				Size = style.WorldViewButtonSize,
				TooltipText = localization:getText("Tooltip", "WorldView"),
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
		worldView = state.WorldView,
		groupData = state.GroupData,
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
		setWorldView = function(enabled: boolean)
			dispatch(Actions.ToggleWorldView(enabled))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagTopPane)
