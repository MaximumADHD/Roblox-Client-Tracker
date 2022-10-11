--[[
	The list of all tags in the top pane of the tag editor
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types) -- uncomment to use types
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local Dash = require(Plugin.Packages.Dash)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Checkbox = UI.Checkbox
local DropdownMenu = UI.DropdownMenu
local IconButton = UI.IconButton
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local Action = require(Plugin.Src.Actions)
local GetUniqueGroupName = require(Plugin.Src.Util.GetUniqueGroupName)
local Icon = require(script.Parent.Icon)
local TagManager = require(Plugin.Src.TagManager)
local TagSettingRow = require(script.Parent.TagSettingRow)

export type Props = {
	LayoutOrder: number,
	tag: _Types.Tag,
	groups: _Types.Array<string>,
	openColorPicker: ((string) -> ()),
	openIconPicker: ((string) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	CanvasSize: UDim2,
	Padding: number,
	Spacing: UDim,
	GroupRow: {
		Size: UDim2,
		Icon: string,
		UnassignIcon: string,
		NewGroupIcon: string,
		DropDownWidth: number,
		ItemHeight: number,
		MaxHeight: number,
	},
	VisualizeAsRow: {
		Size: UDim2,
		Icon: string,
		DropDownWidth: number,
		ItemHeight: number,
		MaxHeight: number,
	},
	TaggedInstancesRow: {
		Icon: string,
		Size: UDim2,
	},
	AlwaysOnTopRow: {
		Size: UDim2,
	},
	IconRow: {
		Size: UDim2,
	},
	ColorRow: {
		Size: UDim2,
		Icon: string,
	},
}

local TagSettingsListView = Roact.PureComponent:extend("TagSettingsListView")

function TagSettingsListView:init()
	self.onAlwaysOntopRowClicked = function()
		local tag = self.props.tag
		TagManager.Get():SetAlwaysOnTop(tag.Name, not tag.AlwaysOnTop)
	end

	self.onColorRowClicked = function()
		local props: _Props = self.props
		props.openColorPicker(props.tag.Name)
	end

	self.onIconRowClicked = function()
		local props: _Props = self.props
		props.openIconPicker(props.tag.Name)
	end

	self.onTaggedInstancesRowClicked = function()
		TagManager.Get():SelectAll(self.props.tag.Name)
	end

	self.onVisualizeRowClicked = function()
		self:setState({
			VisualizeAsDropdownHidden = false
		})
	end

	self.onGroupRowClicked = function()
		self:setState({
			GroupDropdownHidden = false
		})
	end

	self.onVisualizeDropdownItemCloseMenu = function()
		self:setState(function(state)
			return {
				VisualizeAsDropdownHidden = true
			}
		end)
	end

	self.onGroupDropdownItemCloseMenu = function()
		self:setState(function(state)
			return {
				GroupDropdownHidden = true
			}
		end)
	end

	self:setState({
		VisualizeAsDropdownHidden = true,
		GroupDropdownHidden = true,
	})
end

function TagSettingsListView:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagSettingsListView
	local orderIterator = LayoutOrderIterator.new()

	local tag = props.tag

	local hasData = tag ~= nil

	local noneString = localization:getText("Groups", "None")
	local newGroupString = localization:getText("Groups", "NewGroup")

	local taggedInstancesControl = function()
		return Roact.createElement(IconButton, {
			RightIcon = style.TaggedInstancesRow.Icon,
			OnClick = self.onTaggedInstancesRowClicked,
		})
	end

	local iconControl = function()
		return Roact.createElement(Icon, {
			Name = tag.Icon,
			OnClick = self.onIconRowClicked,
		})
	end

	local groupRowControl = function()
		return Roact.createElement(Pane, {
			Size = style.GroupRow.Size,
		}, {
			Button = Roact.createElement(IconButton, {
				RightIcon = style.GroupRow.Icon,
				OnClick = self.onGroupRowClicked,
			}),
			DropdownMenu = Roact.createElement(DropdownMenu, {
				Hide = self.state.GroupDropdownHidden,
				OnItemActivated = function(item: string, index: number)
					if item == noneString then
						TagManager.Get():SetGroup(tag.Name, "")
					elseif item == newGroupString then
						local newGroupName = GetUniqueGroupName(localization:getText("Info", "NewGroup"))
						TagManager.Get():SetGroup(tag.Name, newGroupName)
					else
						TagManager.Get():SetGroup(tag.Name, item)
					end
					self.onGroupDropdownItemCloseMenu()
				end,
				OnFocusLost = self.onGroupDropdownItemCloseMenu,
				PlaceholderText = tag.Group,
				Width = style.GroupRow.DropDownWidth,
				ItemHeight = style.GroupRow.ItemHeight,
				MaxHeight = style.GroupRow.MaxHeight,
				Icons = {if tag.Group then style.GroupRow.UnassignIcon else style.GroupRow.NewGroupIcon},
				Items = Dash.append({if tag.Group then noneString else newGroupString}, props.groups),
				Priority = 2,
			}),
		})
	end

	local colorControl = function()
		return Roact.createElement(IconButton, {
			RightIcon = style.ColorRow.Icon,
			IconColor = tag.Color,
			OnClick = self.onColorRowClicked,
		})
	end

	local alwaysOnTopControl = function()
		return Roact.createElement(Checkbox, {
			Checked = tag.AlwaysOnTop,
			OnClick = self.onAlwaysOntopRowClicked,
		})
	end

	local visualizeAsControl = function()
		local visualizeAsOptions = {
			"Box",
			"Sphere",
			"Outline",
			"Text",
			"Icon",
		}
		local visualizeAsLocalizedOptions = {
			localization:getText("VisualizeOptions", "Box"),
			localization:getText("VisualizeOptions", "Sphere"),
			localization:getText("VisualizeOptions", "Outline"),
			localization:getText("VisualizeOptions", "Text"),
			localization:getText("VisualizeOptions", "Icon"),
		}

		local visualizeTypeComparator = function(visualType: string)
			return  visualType == tag.DrawType
		end
		local index = Dash.findIndex(visualizeAsOptions, visualizeTypeComparator)
		local visualizeDrawTypeLocalized = if index then visualizeAsLocalizedOptions[index] else ""

		return Roact.createElement(Pane, {
			Size = style.VisualizeAsRow.Size,
			Style = "BorderBox",
		}, {
			Button = Roact.createElement(IconButton, {
				Text = visualizeDrawTypeLocalized,
				RightIcon = style.VisualizeAsRow.Icon,
				OnClick = self.onVisualizeRowClicked,
				Size = style.VisualizeAsRow.Size,
			}),
			DropdownMenu = Roact.createElement(DropdownMenu, {
				Hide = self.state.VisualizeAsDropdownHidden,
				OnItemActivated = function(item, index)
					TagManager.Get():SetDrawType(tag.Name, visualizeAsOptions[index])
					self.onVisualizeDropdownItemCloseMenu()
				end,
				OnFocusLost = self.onVisualizeDropdownItemCloseMenu,
				PlaceholderText = visualizeDrawTypeLocalized,
				Width = style.VisualizeAsRow.DropDownWidth,
				ItemHeight = style.VisualizeAsRow.ItemHeight,
				MaxHeight = style.VisualizeAsRow.MaxHeight,
				Priority = 2,
				Items = visualizeAsLocalizedOptions,
			}),
		})
	end

	return if hasData then Roact.createElement(ScrollingFrame, {
		CanvasSize = style.CanvasSize,
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Vertical,
		AutomaticCanvasSize = Enum.AutomaticSize.None,
		Padding = style.Padding,
		Spacing = style.Spacing,
	}, {
		TaggedInstancesRow = Roact.createElement(TagSettingRow, {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.TaggedInstancesRow.Size,
			Text = localization:getText("Info", "SelectInExplorer"),
			TooltipText = localization:getText("Tooltip", "SelectInExplorer"),
			OnClick = self.onTaggedInstancesRowClicked,
			Control = taggedInstancesControl,
		}),
		IconRow = Roact.createElement(TagSettingRow, {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.IconRow.Size,
			Text = localization:getText("Info", "Icon"),
			TooltipText = localization:getText("Tooltip", "IconPicker"),
			OnClick = self.onIconRowClicked,
			Control = iconControl,
		}),
		GroupRow = Roact.createElement(TagSettingRow, {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.GroupRow.Size,
			Text = localization:getText("Info", "Group") .. ": " .. if tag.Group then tag.Group else noneString,
			TooltipText = localization:getText("Tooltip", "GroupPicker"),
			OnClick = self.onGroupRowClicked,
			Control = groupRowControl,
		}),
		ColorRow = Roact.createElement(TagSettingRow , {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.ColorRow.Size,
			Text = localization:getText("Info", "Color"),
			TooltipText = localization:getText("Tooltip", "ColorPicker"),
			OnClick = self.onColorRowClicked,
			Control = colorControl,
		}),
		AlwaysOnTopRow= Roact.createElement(TagSettingRow, {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.AlwaysOnTopRow.Size,
			Text = localization:getText("Info", "AlwaysOnTop"),
			TooltipText = localization:getText("Tooltip", "AlwaysOnTop"),
			OnClick = self.onAlwaysOntopRowClicked,
			Control = alwaysOnTopControl,
		}),
		VisualizeAsRow= Roact.createElement(TagSettingRow, {
			LayoutOrder = orderIterator:getNextOrder(),
			ControlSize = style.VisualizeAsRow.Size,
			Text = localization:getText("Info", "VisualizeAs"),
			TooltipText = localization:getText("Tooltip", "VisualizeAs"),
			OnClick = self.onVisualizeRowClicked,
			Control = visualizeAsControl,
		}),
	}) else nil
end

TagSettingsListView = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingsListView)

local function mapStateToProps(state, _)
	local settingsTag = nil

	for _, tag in pairs(state.TagData) do
		if tag.Name == state.TagMenu then
			settingsTag = tag
			break
		end
	end

	for _, tag in pairs(state.UnknownTags) do
		if tag.Name == state.TagMenu then
			settingsTag = tag
			break
		end
	end

	return {
		groups = state.GroupData,
		tag = settingsTag,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		openColorPicker = function(tag: string)
			dispatch(Action.ToggleColorPicker(tag))
		end,
		openIconPicker = function(tag: string)
			dispatch(Action.ToggleIconPicker(tag))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagSettingsListView)

