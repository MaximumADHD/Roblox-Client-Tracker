local paths = require(script.Parent.Parent.Paths)

local AnimationPanel = paths.Roact.Component:extend("ComponentAnimationPanel")

function AnimationPanel:render()
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

return AnimationPanel