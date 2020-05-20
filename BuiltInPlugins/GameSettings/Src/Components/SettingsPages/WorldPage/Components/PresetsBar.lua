--[[
	Displays the list of preset world physics settings

	Props:
		ApplyPreset (function) - Invoked with a single table argument when a preset is selected. The table
			contains keys for Gravity, JumpPower, Walkspeed, and MaxSlopeAngle. Not all keys are present
			in every preset
	Optional Props:
		LayoutOrder (number)
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local StudioWidgetButtonBarWithToolTip = require(RoactStudioWidgets.ButtonBarWithToolTip)


local PresetsBar = Roact.PureComponent:extend(script.Name)

function PresetsBar:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local applyPreset = props.ApplyPreset

	local mouse = props.Mouse:get()
	local localization = props.Localization

	return Roact.createElement(StudioWidgetButtonBarWithToolTip, {
		LayoutOrder = layoutOrder,
		Title = localization:getText("General", "TitlePresets"),

		ButtonClicked = function(value)
			applyPreset(value.Preset)
		end,

		ButtonBarButtons = {
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
				}
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
				}
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
				}
			}
		},
	})
end

ContextServices.mapToProps(PresetsBar, {
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})

return PresetsBar