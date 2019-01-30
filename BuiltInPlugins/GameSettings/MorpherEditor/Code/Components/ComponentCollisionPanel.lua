local paths = require(script.Parent.Parent.Paths)
local fastFlags = require(script.Parent.Parent.FastFlags)

local CollisionPanel = paths.Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
	if fastFlags.isMorphingPanelWidgetsStandardizationOn() then
		local collisionTypeSetFunctions = {
			[paths.ConstantTemplate.OuterCollision] = paths.StateModelTemplate.setCollisionOuterBox,
			[paths.ConstantTemplate.InnerCollision] = paths.StateModelTemplate.setCollisionInnerBox
		}

		return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
			Title = "Collision",
			Buttons = {{
					Id = paths.ConstantTemplate.OuterCollision,
					Title = "Outer Box",
				}, {
					Id = paths.ConstantTemplate.InnerCollision,
					Title = "Inner Box",
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = paths.StateInterfaceTemplates.getStateModelTemplate(self.props).CollisionValue,
			Mouse = self.props.Mouse,
			SelectionChanged = function(button)
				local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				collisionTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	else
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
end

return CollisionPanel