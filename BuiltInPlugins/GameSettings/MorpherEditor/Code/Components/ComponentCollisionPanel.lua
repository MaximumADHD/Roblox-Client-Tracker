local paths = require(script.Parent.Parent.Paths)

local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")

local CollisionPanel = paths.Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
	local collisionTypeSetFunctions = {
		[paths.ConstantTemplate.OuterCollision] = paths.StateModelTemplate.setCollisionOuterBox,
		[paths.ConstantTemplate.InnerCollision] = paths.StateModelTemplate.setCollisionInnerBox
	}

	return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
		Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.Title.Collision or "Collision",
		Buttons = {{
				Id = paths.ConstantTemplate.OuterCollision,
				Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.Collision.OuterBox or "Outer Box",
			}, {
				Id = paths.ConstantTemplate.InnerCollision,
				Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.Collision.InnerBox or "Inner Box",
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