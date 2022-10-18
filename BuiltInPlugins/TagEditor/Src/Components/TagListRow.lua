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
local HoverArea = UI.HoverArea
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextLabel = UI.TextLabel
local Tooltip = UI.Tooltip

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local Icon = require(script.Parent.Icon)
local TagRenameTextInput = require(script.Parent.TagRenameTextInput)

export type Props = {
	Disabled: boolean?,
	LayoutOrder: number,
	TagName: string,
	TagIcon: string,
	TagGroup: string,
	IsTagAssignedToSome: boolean,
	IsTagAssignedToAll: boolean,
	IsVisibleToggled: boolean,
	GroupName: string,
	IsGroupCollapsed: boolean,
	ToggleGroup: ((string) -> ()),
	assigningGroup: string,
	tagMenu: string,
	renamingTag: string,
	groupMenu: string,
	renamingGroup: string,
	openTagMenu: ((string) -> ()),
	setRenaming: ((string, boolean) -> ()),
	setAssigningGroup: ((string) -> ()),
	setRenamingGroup: ((string, boolean) -> ()),
	openGroupMenu: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	CheckboxSize: UDim2,
	Size: UDim2,
	Spacing: number,
	TextSize: UDim2,
	GroupTextSize: UDim2,
	AssignIcon: string,
	AssignIconColor:Color3,
	UnassignIcon: string,
	UnassignIconColor: Color3,
	PaddingIndented: _Types.Table<string, number>,
	PaddingUnindented: number,
	EditAssignmentsIcon: string,
	StopAssigningIcon: string,
	ArrowColor: Color3,
	ClosedArrowImage: string,
	OpenArrowImage: string,
}

local TagListRow = Roact.PureComponent:extend("TagListRow")

function TagListRow:init()
	self.onPress = function()
		local props: _Props = self.props
		local isGroup = props.GroupName and props.GroupName ~= ""
		local enabled = not props.Disabled
		-- This logic needs to be within OnPress in order for clicking elsewhere on the pane to sucessfully dismiss
		-- the renaming textinput due to a race condition if the dismiss logic is in onclick
		if isGroup then
			if enabled and props.groupMenu ~= nil and props.groupMenu == props.GroupName then
				local renaming = props.renamingGroup ~= props.GroupName
				props.setRenamingGroup(props.GroupName, renaming)
			end
		elseif props.tagMenu ~= nil and props.tagMenu == props.TagName then
			local renaming = props.renamingTag ~= props.TagName
			props.setRenaming(props.TagName, renaming)
		end
	end

	self.onClick = function()
		local props: _Props = self.props
		local isGroup = props.GroupName and props.GroupName ~= ""
		local enabled = not props.Disabled
		if isGroup then
			if enabled then
				if props.groupMenu == nil or props.groupMenu ~= props.GroupName then
					props.openGroupMenu(props.GroupName)
				end
			end
		elseif props.tagMenu == nil or props.tagMenu ~= props.TagName then
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

		if props.GroupName and props.GroupName ~= "" then
			TagManager.Get():ToggleGroupVisibility(self.props.GroupName)
		else
			TagManager.Get():SetVisible(props.TagName, not props.IsVisibleToggled)
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
end

function TagListRow:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagListRow
	local orderIterator = LayoutOrderIterator.new()

	local visibleIcon = props.Stylizer.VisibleIcon
	local visibleOffIcon = props.Stylizer.VisibleOffIcon

	local isGroup = props.GroupName and props.GroupName ~= ""

	local enabled = not props.Disabled
	local isAssigning = props.assigningGroup ~= nil and props.assigningGroup ~= ""
	local isInAssigningGroup = props.TagGroup == props.assigningGroup
	local isAssigningThis = props.GroupName == props.assigningGroup
	local isAssigningAnotherGroup = isAssigning and not isAssigningThis

	local showArrow = isGroup
	local showCheckbox = not isGroup
	local showImage = not isGroup
	local showEditGroupButton = isGroup and not isAssigningAnotherGroup
	local showVisibleButton = not isAssigning

	local showRenameTextInput = false
	if props.renamingGroup ~= nil and props.renamingGroup == props.GroupName then
		showRenameTextInput = true
	elseif props.renamingTag ~= nil and props.renamingTag == props.TagName then
		showRenameTextInput = true
	end

	local groupMembershipTooltipText = if isInAssigningGroup then localization:getText("Tooltip", "UnassignFromGroup") else localization:getText("Tooltip", "AssignToGroup")
	local assignTooltipText = if props.IsTagAssignedToAll then localization:getText("Tooltip", "RemoveTag") else localization:getText("Tooltip", "ApplyTag")

	local paneStyle = nil

	local isSelected = false
	if isGroup then
		isSelected = props.groupMenu == props.GroupName
	else
		isSelected = props.tagMenu == props.TagName
	end

	if isSelected then
		paneStyle = "SelectedTag"
	elseif self.state.hovered then
		paneStyle = "PaneHover"
	end
	local iconStyle = paneStyle or "None"

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
	}, {
		HoverArea = Roact.createElement(HoverArea, {
			Cursor = "PointingHand",
			MouseEnter = function()
				self:setState({
					hovered = true,
				})
			end,
			MouseLeave = function()
				self:setState({
					hovered = false,
				})
			end,
		}),

		RootPane = Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Spacing = style.Spacing,
			Padding = if isGroup or props.TagGroup == "" then style.PaddingUnindented else style.PaddingIndented,
			Style = paneStyle,
			OnPress = self.onPress,
			OnClick = self.onClick,
		}, {
			ArrowImage = showArrow and Roact.createElement(IconButton, {
				BackgroundStyle = iconStyle,
				LeftIcon = if props.IsGroupCollapsed then style.ClosedArrowImage else style.OpenArrowImage,
				OnClick = self.toggleGroup,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
			CheckboxPane = showCheckbox and Roact.createElement(Pane, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = style.CheckboxSize,
				Layout = Enum.FillDirection.Horizontal,
			}, {
				ToggleGroupMembershipButton = isAssigning and Roact.createElement(IconButton, {
					BackgroundStyle = iconStyle,
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
			TagImage = showImage and Roact.createElement(Icon, {
				Name = props.TagIcon,
				OnClick = self.OnButtonClicked,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
			NameText = not showRenameTextInput and Roact.createElement(TextLabel, {
				LayoutOrder = orderIterator:getNextOrder(),
				Text = if isGroup then props.GroupName else props.TagName,
				Size = if isGroup then style.GroupTextSize else style.TextSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			}),
			RenameTextInput = showRenameTextInput and Roact.createElement(TagRenameTextInput, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = if isGroup then style.GroupTextSize else style.TextSize,
			}),
			EditGroupMembership = showEditGroupButton and Roact.createElement(IconButton, {
				BackgroundStyle = iconStyle,
				LeftIcon = if enabled and not isAssigningAnotherGroup then
					if isAssigningThis then style.StopAssigningIcon else style.EditAssignmentsIcon
					else nil,
				OnClick = self.editGroupMembership,
				LayoutOrder = orderIterator:getNextOrder(),
				TooltipText = if isAssigningThis then localization:getText("Tooltip", "EndGroupAssignment") else localization:getText("Tooltip", "StartGroupAssignment"),
			}),
			VisibleToggleButton = showVisibleButton and Roact.createElement(IconButton, {
				BackgroundStyle = iconStyle,
				LeftIcon = if props.IsVisibleToggled then visibleIcon else visibleOffIcon,
				OnClick = self.toggleVisible,
				LayoutOrder = orderIterator:getNextOrder(),
				TooltipText = localization:getText("Tooltip", "ToggleVisibility")
			}),
		})
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
		groupMenu = state.GroupMenu,
		renamingGroup = state.RenamingGroup,
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
		setAssigningGroup = function(group: string)
			dispatch(Actions.SetAssigningGroup(group))
		end,
		setRenamingGroup = function(group: string, renaming: boolean)
			dispatch(Actions.SetRenamingGroup(group, renaming))
		end,
		openGroupMenu = function(group: string)
			dispatch(Actions.OpenGroupMenu(group))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListRow)
