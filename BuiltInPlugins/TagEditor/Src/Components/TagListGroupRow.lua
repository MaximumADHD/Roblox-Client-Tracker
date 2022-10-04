--[[
	A row in the taglist representing a group
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
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextLabel = UI.TextLabel

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local TagRenameTextInput = require(script.Parent.TagRenameTextInput)

export type Props = {
	Disabled: boolean?,
	LayoutOrder: number,
	GroupName: string,
	TagIcon: string,
	IsGroupCollapsed: boolean,
	IsVisibleToggled: boolean,
	ToggleGroup: ((string) -> ()),
	assigningGroup: string,
	groupMenu: string,
	renamingGroup: string,
	setAssigningGroup: ((string) -> ()),
	setRenamingGroup: ((string, boolean) -> ()),
	openGroupMenu: ((string) -> ()),
	openTagMenu: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	Spacing: number,
	SpacerSize: UDim2,
	TextSize: UDim2,
	IconColorActive: Color3,
	IconColorInactive: Color3,
	VisibleIcon: string,
	VisibleOffIcon: string,
	EditAssignmentsIcon: string,
	StopAssigningIcon: string,
	ArrowColor: Color3,
	ClosedArrowImage: string,
	OpenArrowImage: string,
}

local TagListGroupRow = Roact.PureComponent:extend("TagListGroupRow")

function TagListGroupRow:init()
	self.onPress = function()
		local props: _Props = self.props
		local enabled = not props.Disabled
		-- This logic needs to be within OnPress in order for clicking elsewhere on the pane to sucessfully dismiss
		-- the renaming textinput due to a race condition if the dismiss logic is in onclick
		if enabled and props.groupMenu ~= nil and props.groupMenu == props.GroupName then
			local renaming = props.renamingGroup ~= props.GroupName
			props.setRenamingGroup(props.GroupName, renaming)
		end
	end

	self.onClick = function()
		local props: _Props = self.props
		local enabled = not props.Disabled

		if enabled and props.groupMenu == nil or props.groupMenu ~= props.GroupName then
			props.openGroupMenu(props.GroupName)
		end
	end

	self.toggleGroup = function()
		local props: _Props = self.props
		props.ToggleGroup(props.GroupName)
	end


	self.editGroupMembership = function()
		local props: _Props = self.props
		local isAssigningThis = props.GroupName == props.assigningGroup

		if not isAssigningThis then
			props.openGroupMenu(props.GroupName)
		end
		props.setAssigningGroup(if isAssigningThis then "" else props.GroupName)
	end

	self.toggleVisible = function()
		TagManager.Get():ToggleGroupVisibility(self.props.GroupName)
	end
end

function TagListGroupRow:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagListGroupRow
	local orderIterator = LayoutOrderIterator.new()

	local enabled = not props.Disabled
	local isAssigning = props.assigningGroup ~= "" and props.assigningGroup ~= nil
	local isAssigningThis = props.GroupName == props.assigningGroup
	local isAssigningAnotherGroup = isAssigning and not isAssigningThis

	local showRenameTextInput = false
	if props.renamingGroup ~= nil and props.renamingGroup == props.GroupName then
		showRenameTextInput = true
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Size = style.Size,
		Layout = Enum.FillDirection.Horizontal,
		Spacing = style.Spacing,
		Style = if props.groupMenu == props.GroupName then "SelectedTag" else nil,
		OnPress = self.onPress,
		OnClick = self.onClick,
	}, {
		ArrowImage = Roact.createElement(IconButton, {
			BackgroundStyle = "None",
			LeftIcon = if props.IsGroupCollapsed then style.ClosedArrowImage else style.OpenArrowImage,
			OnClick = self.toggleGroup,
			LayoutOrder = orderIterator:getNextOrder(),
		}),
		NameText = not showRenameTextInput and Roact.createElement(TextLabel, {
			LayoutOrder = orderIterator:getNextOrder(),
			Text = props.GroupName,
			Size = style.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		RenameTextInput = showRenameTextInput and Roact.createElement(TagRenameTextInput, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.TextSize,
		}),
		EditGroupMembership = enabled and not isAssigningAnotherGroup and Roact.createElement(IconButton, {
			BackgroundStyle = "None",
			LeftIcon = if isAssigningThis then style.StopAssigningIcon else style.EditAssignmentsIcon,
		OnClick = self.editGroupMembership,
			LayoutOrder = orderIterator:getNextOrder(),
			TooltipText = if isAssigningThis then localization:getText("Tooltip", "EndGroupAssignment") else localization:getText("Tooltip", "StartGroupAssignment"),
		}),
		Spacer = isAssigningAnotherGroup and Roact.createElement(Pane, {
			Size = style.SpacerSize,
			LayoutOrder = orderIterator:getNextOrder(),
		}),
		VisibleToggleButton = enabled and not isAssigning and Roact.createElement(IconButton, {
			BackgroundStyle = "None",
			LeftIcon = if props.IsVisibleToggled then style.VisibleIcon else style.VisibleOffIcon,
			OnClick = self.toggleVisible,
			LayoutOrder = orderIterator:getNextOrder(),
			TooltipText = localization:getText("Tooltip", "ToggleVisibility"),
		}),
	})
end

TagListGroupRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListGroupRow)

local function mapStateToProps(state, _)
	return {
		assigningGroup = state.AssigningGroup,
		groupMenu = state.GroupMenu,
		renamingGroup = state.RenamingGroup,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setAssigningGroup = function(group: string)
			dispatch(Actions.SetAssigningGroup(group))
		end,
		setRenamingGroup = function(group: string, renaming: boolean)
			dispatch(Actions.SetRenamingGroup(group, renaming))
		end,
		openGroupMenu = function(group: string)
			dispatch(Actions.OpenGroupMenu(group))
		end,
		openTagMenu = function(tag: string)
			dispatch(Actions.OpenTagMenu(tag))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListGroupRow)
