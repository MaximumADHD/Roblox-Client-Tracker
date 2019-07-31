local paths = require(script.Parent.Parent.Paths)

local CollisionPanel = paths.Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
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
end

return CollisionPanel