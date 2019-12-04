--[[
	Wrapper for checkbox object
]]
local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local UILibrary = Plugin.Packages.UILibrary
local CheckBox = require(UILibrary.Components.CheckBox)

local FFlagTerrainToolsRefactorTerrainGeneration = game:GetFastFlag("TerrainToolsRefactorTerrainGeneration")

local TTCheckBox = Roact.PureComponent:extend(script.Name)

if FFlagTerrainToolsRefactorTerrainGeneration then
	function TTCheckBox:init()
		self.onActivated = function()
			if self.props.setButtonBool then
				self.props.setButtonBool(self.props.Tag)
			end
		end
	end
end

function TTCheckBox:render()
	local title = self.props.Title
	local selected = self.props.Selected
	local setButtonBool = self.props.setButtonBool
	local layoutOrder = self.props.LayoutOrder

	return Roact.createElement(CheckBox, {
		Title = title,
		Selected = selected,
		Enabled = true,
		Height = 16,
		TextSize = 12,
		OnActivated = FFlagTerrainToolsRefactorTerrainGeneration and self.onActivated or function ()
			setButtonBool(title)
		end,
		TitlePadding = 16,
		LayoutOrder = layoutOrder,
	})
end

return TTCheckBox
