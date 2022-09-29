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

local TagManager = require(Plugin.Src.TagManager)

local UI = Framework.UI
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextLabel = UI.TextLabel

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

export type Props = {
	LayoutOrder: number,
	TagName: string,
	assigningGroup: string,
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
	AssignIcon: string,
	AssignIconColor: Color3,
	Spacing: number,
	PaddingIndented: _Types.Table<string, number>,
}

local TagListUnknownRow = Roact.PureComponent:extend("TagListUnknownRow")

function TagListUnknownRow:init()
	self.onRegister = function()
		local props: _Props = self.props
		local isAssigning = props.assigningGroup ~= nil and props.assigningGroup ~= ""
		TagManager.Get():AddTag(props.TagName)
		if isAssigning then
			TagManager.Get():SetGroup(props.TagName, props.assigningGroup)
		end
	end
end

function TagListUnknownRow:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagListUnknownRow
	local orderIterator = LayoutOrderIterator.new()

	local isAssigning = props.assigningGroup ~= nil and props.assigningGroup ~= ""

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Spacing = style.Spacing,
		Padding = style.PaddingIndented,
	}, {

		CheckboxPane = Roact.createElement(Pane, {
			LayoutOrder = orderIterator:getNextOrder(),
			Size = style.CheckboxSize,
			Layout = Enum.FillDirection.Horizontal,
		}, {
			RegisterGroupButton = isAssigning and Roact.createElement(IconButton, {
				BackgroundStyle = "None",
				LeftIcon = style.AssignIcon,
				OnClick = self.onRegister,
				IconColor = style.AssignIconColor,
				TooltipText = localization:getText("Tooltip", "RegisterTag"),
			}),
		}),
		NameText = Roact.createElement(TextLabel, {
			LayoutOrder = orderIterator:getNextOrder(),
			Text = props.TagName,
			Size = style.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
	})
end

TagListUnknownRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListUnknownRow)

local function mapStateToProps(state, _)
	return {
		assigningGroup = state.AssigningGroup,
	}
end

local function mapDispatchToProps(dispatch)
	return {
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListUnknownRow)
