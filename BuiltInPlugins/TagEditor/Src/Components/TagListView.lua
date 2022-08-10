--[[
	The list of all tags in the top pane of the tag editor
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
local ScrollingFrame = UI.ScrollingFrame

local TagListRow = require(script.Parent.TagListRow)

export type Props = {
	LayoutOrder: number,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
}

local TagListView = Roact.PureComponent:extend("TagListView")

function TagListView:init()
end

function TagListView:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagListView
	local rows = {}

	-- TODO replace with real data when integrating
	local numRows = 20
	local i = 0
	while i < numRows do
		i += 1

		rows[i] = Roact.createElement(TagListRow, {
				LayoutOrder = i,
			})
	end

	return Roact.createElement(ScrollingFrame, {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		CanvasSize = UDim2.new(1, 0, 0, numRows * props.Stylizer.TagListRow.Size.Y.Offset),
		Layout = Enum.FillDirection.Vertical,
	}, rows)
end

TagListView = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListView)

return TagListView
