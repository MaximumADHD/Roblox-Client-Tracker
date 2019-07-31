local paths = require(script.Parent.Parent.Paths)

local AvatarTypePanel = paths.Roact.Component:extend("ComponentAvatarTypePanel")

function AvatarTypePanel:render()
	local rigTypeSetFunctions = {
		[paths.ConstantTemplate.R6] = paths.StateModelTemplate.setRigTypeR6,
		[paths.ConstantTemplate.R15] = paths.StateModelTemplate.setRigTypeR15,
		[paths.ConstantTemplate.PlayerChoice] = paths.StateModelTemplate.setRigTypePlayerChoice
	}

	return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
		Title = "Avatar Type",
		Buttons = {{
				Id = paths.ConstantTemplate.R6,
				Title = "R6"
			}, {
				Id = paths.ConstantTemplate.R15,
				Title = "R15",
			}, {
				Id = paths.ConstantTemplate.PlayerChoice,
				Title = "Player Choice",
			},
		},
		Enabled = self.props.IsEnabled,
		LayoutOrder = self.props.LayoutOrder,
		Selected = paths.StateInterfaceTemplates.getStateModelTemplate(self.props).RigTypeValue,
		SubDescription = self.props.IsGameShutdownRequired and "Change Avatar Type will shut down the running game when save settings" or nil,
		Mouse = self.props.Mouse,
		SelectionChanged = function(button)
			local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
			rigTypeSetFunctions[button.Id](newTemplateModel)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,
	})
end

return AvatarTypePanel