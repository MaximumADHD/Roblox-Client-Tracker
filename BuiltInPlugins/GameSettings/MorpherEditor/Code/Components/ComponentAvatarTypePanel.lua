local paths = require(script.Parent.Parent.Paths)

local AvatarTypePanel = paths.Roact.Component:extend("ComponentAvatarTypePanel")

function AvatarTypePanel:render()
    return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
        ThemeData = self.props.ThemeData,
        LayoutOrder = self.props.LayoutOrder,
        IsEnabled = self.props.IsEnabled,
        TitleText = "Avatar Type",
        RadioButtonOptions = {
            {Text="R6", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6(), Id=paths.StateModelTemplate.setRigTypeR6},
            {Text="R15", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR15(), Id=paths.StateModelTemplate.setRigTypeR15},
            {Text="Player Choice", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypePlayerChoice(), Id=paths.StateModelTemplate.setRigTypePlayerChoice}
        },

        setValue = function(setFunc)
            local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
            setFunc(newTemplateModel)
            self.props.clobberTemplate(self.props.template, newTemplateModel)
        end                    
    })
end

return AvatarTypePanel