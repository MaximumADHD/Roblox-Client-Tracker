--[[
	The list of all tags in the top pane of the tag editor
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
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
local ScrollingFrame = UI.ScrollingFrame

local Actions = require(Plugin.Src.Actions)
local TagListRow = require(script.Parent.TagListRow)

export type Props = {
	LayoutOrder: number,
	tags: _Types.Array<_Types.Tag>,
	searchTerm: string,
	uiGroupCollapseState: _Types.Table<string, boolean>,
	unknownTags: _Types.Array<string>,
	setUIGroupCollapseState: ((_Types.Table<string, boolean>) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	Spacing: UDim,
	CanvasYPadding: number,
}

local UNKNOWN_TAGS_HIDE = "UnknownTagsHide"

local TagListView = Roact.PureComponent:extend("TagListView")

function TagListView:init()
	self.toggleGroup = function(group: string)
		local groupIdentifier = "Hide" .. group
		self.setCollapseState(groupIdentifier, not self.props.uiGroupCollapseState[groupIdentifier])
	end
	self.toggleUnknownGroup = function()
		self.setCollapseState(UNKNOWN_TAGS_HIDE, not self.props.uiGroupCollapseState[UNKNOWN_TAGS_HIDE])
	end

	self.setCollapseState = function(identifier: string, enabled: boolean)
		local props: _Props = self.props
		props.setUIGroupCollapseState(Dash.join(props.uiGroupCollapseState, {
			[identifier] = enabled,
		}))
	end
end

function TagListView:render()
	local props: _Props = self.props
	local localization = props.Localization
	local style: _Style = props.Stylizer.TagListView
	local tags = props.tags
	local unknownTags = props.unknownTags

	local rows = {}
	local lastGroup = ""

	local i = 0
	local numRows = 0
	while i < #tags do
		i += 1
		local tag = tags[i]
		local groupName = tag.Group or ""
		local tagName = tag.Name or ""
		if groupName ~= lastGroup then
			numRows += 1
			lastGroup = groupName
			rows[numRows] = Roact.createElement(TagListRow, {
				LayoutOrder = numRows,
				GroupName = groupName,
				IsGroupCollapsed = props.uiGroupCollapseState["Hide" .. groupName],
				IsVisibleToggled = true,
				ToggleGroup = self.toggleGroup,
			})
		end
		if not props.uiGroupCollapseState["Hide" .. groupName] then
			numRows += 1
			rows[numRows] = Roact.createElement(TagListRow, {
				LayoutOrder = numRows,
				TagName = tagName,
				TagGroup = groupName,
				TagIcon = tag.Icon,
				IsTagAssignedToSome = tag.HasSome,
				IsTagAssignedToAll = tag.HasAll,
				IsVisibleToggled = tag.Visible,
			})
		end
	end

	i = 0
	if #unknownTags > 0 then
		numRows += 1
		rows[numRows] = Roact.createElement(TagListRow, {
			LayoutOrder = numRows,
			GroupName = localization:getText("Groups", "UnknownTags"),
			Disabled = true,
			IsGroupCollapsed = props.uiGroupCollapseState[UNKNOWN_TAGS_HIDE],
			ToggleGroup = self.toggleUnknownGroup,
		})
	end
	while i < #unknownTags do
		i += 1
		local unknownTagName = unknownTags[i]
		if not props.uiGroupCollapseState[UNKNOWN_TAGS_HIDE] then
			numRows += 1
			rows[numRows] = Roact.createElement(TagListRow, {
				LayoutOrder = numRows,
				TagName = unknownTagName,
			})
		end
	end

	local canvasHeight = numRows * props.Stylizer.TagListRow.Size.Y.Offset
	return Roact.createElement(ScrollingFrame, {
		LayoutOrder = props.LayoutOrder,
		AutomaticCanvasSize = Enum.AutomaticSize.None,
		Size = style.Size,
		CanvasSize = UDim2.new(1, 0, 0, canvasHeight),
		Layout = Enum.FillDirection.Vertical,
		Spacing = style.Spacing,
	}, rows)
end

TagListView = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListView)

local function mapStateToProps(state, _)
	local tags = {}

	for _, tag in pairs(state.TagData) do
		local passSearch = not state.Search or tag.Name:lower():find(state.Search:lower(), 1, true)
		if passSearch then
			tags[#tags + 1] = tag
		end
	end

	local unknownTags = {}
	for _, tag in pairs(state.UnknownTags) do
		local passSearch = not state.Search or tag:lower():find(state.Search:lower(), 1, true)
		if passSearch then
			unknownTags[#unknownTags + 1] = tag
		end
	end

	return {
		tags = tags,
		searchTerm = state.Search,
		uiGroupCollapseState = state.UIGroupCollapseState,
		unknownTags = unknownTags,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setUIGroupCollapseState = function(data: _Types.Table<string, boolean>)
			dispatch(Actions.SetUIGroupCollapseState(data))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListView)
