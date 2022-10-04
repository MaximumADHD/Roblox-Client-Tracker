--[[
	The list of all tags in the top pane of the tag editor
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
local ScrollingFrame = UI.ScrollingFrame

local TagListRow = require(script.Parent.TagListRow)
local TagListGroupRow = require(script.Parent.TagListGroupRow)

export type Props = {
	LayoutOrder: number,
	tags: _Types.Array<_Types.Tag>,
	searchTerm: string,
	unknownTags: _Types.Array<string>,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	CanvasYPadding: number,
}

local TagListView = Roact.PureComponent:extend("TagListView")

function TagListView:init()
	self.toggleGroup = function(group: string)
		self:setState({
			["Hide" .. group] = not self.state["Hide" .. group],
		})
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
			rows[numRows] = Roact.createElement(TagListGroupRow, {
				LayoutOrder = numRows,
				GroupName = groupName,
				IsGroupCollapsed = self.state["Hide" .. groupName],
				IsVisibleToggled = true,
				ToggleGroup = self.toggleGroup,
			})
		end
		if not self.state["Hide" .. groupName] then
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
		rows[numRows] = Roact.createElement(TagListGroupRow, {
			LayoutOrder = numRows,
			GroupName = localization:getText("Groups", "UnknownTags"),
			Disabled = true,
			IsGroupCollapsed = self.state["UnknownTagsHide"],
			 -- state pattern intentionally differs to avoid issues if user names a group "Unknown Tags"
		})
	end
	while i < #unknownTags do
		i += 1
		local unknownTagName = unknownTags[i]
		if not self.state["UnknownTagsHide"] then
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
		unknownTags = unknownTags,
	}
end

local function mapDispatchToProps(dispatch)
	return {
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(TagListView)
