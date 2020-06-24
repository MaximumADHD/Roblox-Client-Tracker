local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantTemplate = require(Page.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Page.Components.RadioButtonSetPanel)

local AnimationPanel = Roact.Component:extend("ComponentAnimationPanel")

function AnimationPanel:render()
	local animationTypeSetFunctions = {
		[ConstantTemplate.AnimationStandard] = StateModelTemplate.setAnimationStandard,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setAnimationPlayerChoice
	}

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	return Roact.createElement(RadioButtonSetPanel, {
		Title = localization:getText("General", "TitleAnimation"),
		Buttons = {{
				Id = ConstantTemplate.AnimationStandard,
				Title = localization:getText("General", "AnimationStandard"),
			}, {
				Id = ConstantTemplate.PlayerChoice,
				Title = localization:getText("General", "AnimationPlayerChoice"),
			},
		},
		Enabled = self.props.IsEnabled,
		LayoutOrder = self.props.LayoutOrder,
		Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).AnimationValue,
		Mouse = mouse:get(),
		SelectionChanged = function(button)
			local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
			animationTypeSetFunctions[button.Id](newTemplateModel)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,
	})
end

ContextServices.mapToProps(AnimationPanel, {
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})

return AnimationPanel