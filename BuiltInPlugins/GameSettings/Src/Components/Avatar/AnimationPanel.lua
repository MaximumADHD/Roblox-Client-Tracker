local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local AnimationPanel = Roact.Component:extend("ComponentAnimationPanel")

function AnimationPanel:render()
	local animationTypeSetFunctions = {
		[ConstantTemplate.AnimationStandard] = StateModelTemplate.setAnimationStandard,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setAnimationPlayerChoice
	}

	return withLocalization(function(localized)
		return Roact.createElement(RadioButtonSetPanel, {
			Title = localized.Morpher.Title.Animation,
			Buttons = {{
					Id = ConstantTemplate.AnimationStandard,
					Title = localized.Morpher.Animation.Standard,
				}, {
					Id = ConstantTemplate.PlayerChoice,
					Title = localized.Morpher.Animation.PlayerChoice,
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).AnimationValue,
			Mouse = self.props.Mouse,
			SelectionChanged = function(button)
				local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				animationTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	end)
end

return AnimationPanel