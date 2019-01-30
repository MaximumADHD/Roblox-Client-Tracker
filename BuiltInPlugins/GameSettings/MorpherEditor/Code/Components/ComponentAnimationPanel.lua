local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local AnimationPanel = paths.Roact.Component:extend("ComponentAnimationPanel")

function AnimationPanel:render()
	if fastFlags.isMorphingPanelWidgetsStandardizationOn() then 
		local animationTypeSetFunctions = {
			[paths.ConstantTemplate.AnimationStandard] = paths.StateModelTemplate.setAnimationStandard,
			[paths.ConstantTemplate.PlayerChoice] = paths.StateModelTemplate.setAnimationPlayerChoice
		}

		return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
			Title = "Animation",
			Buttons = {{
					Id = paths.ConstantTemplate.AnimationStandard,
					Title = "Standard",
				}, {
					Id = paths.ConstantTemplate.PlayerChoice,
					Title = "Player Choice",
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = paths.StateInterfaceTemplates.getStateModelTemplate(self.props).AnimationValue,
			Mouse = self.props.Mouse,
			SelectionChanged = function(button)
				local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				animationTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	else
		return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
			ThemeData = self.props.ThemeData,
			IsVisible = not paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6(),
			LayoutOrder = self.props.LayoutOrder,
			IsEnabled = self.props.IsEnabled,
			TitleText = "Animation",
			RadioButtonOptions = {
				{Text="Standard", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isAnimationStandard(), Id=paths.StateModelTemplate.setAnimationStandard},
				{Text="Player Choice", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isAnimationPlayerChoice(), Id=paths.StateModelTemplate.setAnimationPlayerChoice}
			},

			setValue = function(setFunc)
				local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				setFunc(newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end
		})
	end
end

return AnimationPanel