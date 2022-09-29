--[[
	A single row of the tag list, representing a tag and the controls for that tag
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

local Actions = require(Plugin.Src.Actions)
local TagManager = require(Plugin.Src.TagManager)

local UI = Framework.UI
local Checkbox = UI.Checkbox
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextLabel = UI.TextLabel
local Tooltip = UI.Tooltip

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local Icon = require(script.Parent.Icon)
local TagRenameTextInput = require(script.Parent.TagRenameTextInput)

export type Props = {
	LayoutOrder: number,
	TagName: string,
	TagIcon: string,
	TagGroup: string,
	IsTagAssignedToSome: boolean,
	IsTagAssignedToAll: boolean,
	IsVisibleToggled: boolean,
	assigningGroup: string,
	tagMenu: string,
	renamingTag: string,
	openTagMenu: ((string) -> ()),
	setRenaming: ((string, boolean) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	CheckboxSize: UDim2,
	Size: UDim2,
	TextSize: UDim2,
	VisibleIcon: string,
	VisibleOffIcon: string,
	AssignIcon: string,
	AssignIconColor:Color3,
	UnassignIcon: string,
	UnassignIconColor: Color3,
	PaddingIndented: _Types.Table<string, number>,
	PaddingUnindented: number,
}

local TagListRow = Roact.PureComponent:extend("TagListRow")

function TagListRow:init()
	self.onPress = function()
		local props: _Props = self.props
		-- This logic needs to be within OnPress in order for clicking elsewhere on the pane to sucessfully dismiss
		-- the renaming textinput due to a race condition if the dismiss logic is in onclick
		if props.tagMenu ~= nil and props.tagMenu == props.TagName then
			local renaming = props.renamingTag ~= props.TagName
			props.setRenaming(props.TagName, renaming)
		end
	end

	self.onClick = function()
		local props: _Props = self.props
		if props.tagMenu == nil or props.tagMenu ~= props.TagName then
			props.openTagMenu(props.TagName)
		end
	end

	self.toggleGroupMembership = function()
		local props: _Props = self.props
		local isInAssigningGroup = props.TagGroup == props.assigningGroup
		TagManager.Get():SetGroup(props.TagName, if isInAssigningGroup then "" else props.assigningGroup)
	end

	self.toggleAssignment = function()
		local props: _Props = self.props
		TagManager.Get():SetTag(props.TagName, not props.IsTagAssignedToAll)
	end

	self.toggleVisible = function()
		local props: _Props = self.props
		TagManager.Get():SetVisible(props.TagName, not props.IsVisibleToggled)
	end
end

function TagListRow:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagListRow
	local orderIterator = LayoutOrderIterator.new()

	local isAssigning = props.assigningGroup ~= nil and props.assigningGroup ~= ""
	local isInAssigningGroup = props.TagGroup == props.assigningGroup

	local showRenameTextInput = false
	if props.renamingTag ~= nil and props.renamingTag == props.TagName then
		showRenameTextInput = true
	end

	local groupMembershipTooltipText = if isInAssigningGroup then localization:getText("Tooltip", "UnassignFromGroup") else localization:getText("Tooltip", "AssignToGroup")
	local assignTooltipText = if props.IsTagAssignedToAll then localization:getText("Tooltip", "RemoveTag") else localization:getText("Tooltip", "ApplyTag")

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = 9,
		Padding = if props.TagGroup == "" then style.PaddingUnindented else style.PaddingIndented,
		Style = if props.tagMenu == props.TagName then "SelectedTag" else nil,
		OnPress = self.onPress,
		OnClick = self.onClick,
	}, {

		CheckboxPane = Roact.createElement(Pane, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.CheckboxSize,
			Layout = Enum.FillDirection.Horizontal,
		}, {
			ToggleGroupMembershipButton = isAssigning and Roact.createElement(IconButton, {
				BackgroundStyle = "None",
				LeftIcon = if isInAssigningGroup then style.UnassignIcon else style.AssignIcon,
				OnClick = self.toggleGroupMembership,
				IconColor = if isInAssigningGroup then style.UnassignIconColor else style.AssignIconColor,
				TooltipText = groupMembershipTooltipText,
			}),
			 Checkbox = not isAssigning and Roact.createElement(Checkbox, {
				Checked = if props.IsTagAssignedToSome then Checkbox.Indeterminate else props.IsTagAssignedToAll,
				OnClick = self.toggleAssignment,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = assignTooltipText,
				})
			}),
		}),
		TagImage = Roact.createElement(Icon, {
			Name = props.TagIcon,
			OnClick = self.OnButtonClicked,
			LayoutOrder = orderIterator:getNextOrder(),
		}),
		NameText = not showRenameTextInput and Roact.createElement(TextLabel, {
			LayoutOrder = orderIterator:getNextOrder(),
			Text = props.TagName,
			Size = style.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		RenameTextInput = showRenameTextInput and Roact.createElement(TagRenameTextInput, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.TextSize,
		}),
		VisibleToggleButton = not isAssigning and Roact.createElement(IconButton, {
			BackgroundStyle = "None",
			LeftIcon = if props.IsVisibleToggled then style.VisibleIcon else style.VisibleOffIcon,
			OnClick = self.toggleVisible,
			LayoutOrder = orderIterator:getNextOrder(),
			TooltipText = localization:getText("Tooltip", "ToggleVisibility")
		}),
	})
end

TagListRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListRow)

local function mapStateToProps(state, _)
	return {
		assigningGroup = state.AssigningGroup,
		tagMenu = state.TagMenu,
		renamingTag = state.RenamingTag,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		openTagMenu = function(tag: string)
			dispatch(Actions.OpenTagMenu(tag))
		end,
		setRenaming = function(tag: string, renaming: boolean)
			dispatch(Actions.SetRenaming(tag, renaming))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListRow)
