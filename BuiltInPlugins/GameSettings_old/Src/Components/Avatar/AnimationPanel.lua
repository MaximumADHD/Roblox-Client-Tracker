local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local AnimationPanel = Roact.Component:extend("ComponentAnimationPanel")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function AnimationPanel:render()
	local animationTypeSetFunctions = {
		[ConstantTemplate.AnimationStandard] = StateModelTemplate.setAnimationStandard,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setAnimationPlayerChoice
	}

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	if FFlagStudioConvertGameSettingsToDevFramework then
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
	else
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
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(AnimationPanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end

return AnimationPanel