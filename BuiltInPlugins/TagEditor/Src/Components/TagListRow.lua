--[[
	A single row of the tag list, representing a tag and the controls for that tag
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
local Checkbox = UI.Checkbox
local IconButton = UI.IconButton
local Pane = UI.Pane
local TextLabel = UI.TextLabel

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
	TextSize: UDim2,
}

local TagListRow = Roact.PureComponent:extend("TagListRow")

function TagListRow:init()
	self.OnButtonClicked = function()
		print("Click!")
	end
end

function TagListRow:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagListRow

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		Layout = Enum.FillDirection.Horizontal,
	}, {
		Checkbox = Roact.createElement(Checkbox, {
			LayoutOrder = 1,
			OnClick = self.OnButtonClicked,
		}),
		TagImage = Roact.createElement(IconButton, {
			LeftIcon = "rbxasset://textures/TerrainTools/button_arrow_down.png",
			OnClick = self.OnButtonClicked,
			LayoutOrder = 2,
		}),
		NameText = Roact.createElement(TextLabel, {
			LayoutOrder = 3,
			Text = "This is a tag",
			Size = style.TextSize,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		VisibleToggleButton = Roact.createElement(IconButton, {
			LeftIcon = "rbxasset://textures/TerrainTools/button_arrow_down.png",
			OnClick = self.OnButtonClicked,
			LayoutOrder = 4,
		}),
	})
end

TagListRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagListRow)

return TagListRow
