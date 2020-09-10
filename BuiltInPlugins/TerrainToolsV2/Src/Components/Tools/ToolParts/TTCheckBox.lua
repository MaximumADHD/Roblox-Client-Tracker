--[[
	Wrapper for checkbox object
]]

local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local UILibraryCompat = Plugin.Src.UILibraryCompat
local CheckBox = FFlagTerrainToolsUseDevFramework
	and require(UILibraryCompat.CheckBox)
	or UILibrary.Component.CheckBox

local TTCheckBox = Roact.PureComponent:extend(script.Name)

function TTCheckBox:init()
	self.onActivated = function()
		if self.props.setButtonBool then
			self.props.setButtonBool(self.props.Tag)
		end
	end
end

function TTCheckBox:render()
	local title = self.props.Title
	local selected = self.props.Selected
	local layoutOrder = self.props.LayoutOrder

	return Roact.createElement(CheckBox, {
		Title = title,
		Selected = selected,
		Enabled = true,
		Height = 16,
		TextSize = FFlagTerrainToolsUseDevFramework and 8 or 12,
		OnActivated = self.onActivated,
		TitlePadding = 16,
		LayoutOrder = layoutOrder,
	})
end

return TTCheckBox
