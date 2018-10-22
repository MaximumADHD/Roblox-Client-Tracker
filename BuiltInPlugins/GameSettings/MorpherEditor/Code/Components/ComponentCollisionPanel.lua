local paths = require(script.Parent.Parent.Paths)

local CollisionPanel = paths.Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
    return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
        ThemeData = self.props.ThemeData,
        IsVisible = not paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isRigTypeR6(),
        LayoutOrder = self.props.LayoutOrder,
        IsEnabled = self.props.IsEnabled,
        TitleText = "Collision",
        RadioButtonOptions = {
            {Text="Outer Box", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isCollisionOuterBox(), Id=paths.StateModelTemplate.setCollisionOuterBox},
            {Text="Inner Box", IsSelected=paths.StateInterfaceTemplates.getStateModelTemplate(self.props):isCollisionInnerBox(), Id=paths.StateModelTemplate.setCollisionInnerBox}
        },

        setValue = function(setFunc)
            local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
            setFunc(newTemplateModel)
            self.props.clobberTemplate(self.props.template, newTemplateModel)
        end                    
    })
end

return CollisionPanel