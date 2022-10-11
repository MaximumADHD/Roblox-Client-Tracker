--[[
	Displays the list of preset world physics settings

	Props:
		ApplyPreset (function) - Invoked with a single table argument when a preset is selected. The table
			contains keys for Gravity, JumpPower, Walkspeed, and MaxSlopeAngle. Not all keys are present
			in every preset
	Optional Props:
		LayoutOrder (number)
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local SharedFlags = Framework.SharedFlags
local FFlagRemoveUILibraryButton = SharedFlags.getFFlagRemoveUILibraryButton()

local RoactStudioWidgets = Plugin.Packages.RoactStudioWidgets
local ButtonBar = if FFlagRemoveUILibraryButton
	then require(RoactStudioWidgets.ButtonBar)
	else require(RoactStudioWidgets.ButtonBarWithToolTip)

local PresetsBar = Roact.PureComponent:extend(script.Name)

function PresetsBar:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local applyPreset = props.ApplyPreset

	local mouse = props.Mouse:get()
	local localization = props.Localization

	local buttons = {
		{
			Name = localization:getText("General", "WorldPresetsClassic"),
			Enabled = true,
			ShowPressed = true,
			Mouse = mouse,
			Value = {
				ToolTip = localization:getText("General", "WorldPresetsClassicToolTip"),
				Preset = {
					Gravity = 196.2,
					JumpPower = 50,
					Walkspeed = 16,
					MaxSlopeAngle = 89,
				},
			},
		},
		{
			Name = localization:getText("General", "WorldPresetsRealistic"),
			Enabled = true,
			ShowPressed = true,
			Mouse = mouse,
			Value = {
				ToolTip = localization:getText("General", "WorldPresetsRealisticToolTip"),
				Preset = {
					Gravity = 35,
					JumpPower = 13,
					Walkspeed = 16,
				},
			},
		},
		{
			Name = localization:getText("General", "WorldPresetsAction"),
			Enabled = true,
			ShowPressed = true,
			Mouse = mouse,
			Value = {
				ToolTip = localization:getText("General", "WorldPresetsActionToolTip"),
				Preset = {
					Gravity = 75,
					JumpPower = 31,
					Walkspeed = 18,
				},
			},
		},
	}

	return Roact.createElement(ButtonBar, {
		LayoutOrder = layoutOrder,
		Title = localization:getText("General", "TitlePresets"),

		ButtonClicked = function(value)
			applyPreset(value.Preset)
		end,

		Buttons = if FFlagRemoveUILibraryButton then buttons else nil,
		ButtonBarButtons = if FFlagRemoveUILibraryButton then nil else buttons,
	})
end

PresetsBar = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(PresetsBar)

return PresetsBar
