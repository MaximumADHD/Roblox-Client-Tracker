--[[
	Wrapper for checkbox object
]]
local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local CheckBox = require(UILibrary.Components.CheckBox)

local TTCheckBox = Roact.PureComponent:extend(script.Name)

function TTCheckBox:render()
	local title = self.props.Title
	local selected = self.props.Selected
	local setButtonBool = self.props.setButtonBool
	local layoutOrder = self.LayoutOrder

	return Roact.createElement(CheckBox, {
		Title = title,
		Selected = selected,
		Enabled = true,
		Height = 16,
		TextSize = 12,
		OnActivated = function ()
			setButtonBool(title)
		end,
		TitlePadding = 16,
		LayoutOrder = layoutOrder,
	})
end

return TTCheckBox
