local paths = require(script.Parent.Parent.Paths)

local FFlagWorldAvatarLocalization = game:GetFastFlag("WorldAvatarLocalization")

local AvatarTypePanel = paths.Roact.Component:extend("ComponentAvatarTypePanel")

function AvatarTypePanel:render()
	local rigTypeSetFunctions = {
		[paths.ConstantTemplate.R6] = paths.StateModelTemplate.setRigTypeR6,
		[paths.ConstantTemplate.R15] = paths.StateModelTemplate.setRigTypeR15,
		[paths.ConstantTemplate.PlayerChoice] = paths.StateModelTemplate.setRigTypePlayerChoice
	}

	return paths.Roact.createElement(paths.ComponentRadioButtonSetPanel, {
		Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.Title.AvatarType or "Avatar Type",
		Buttons = {{
				Id = paths.ConstantTemplate.R6,
				Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.AvatarType.R6 or "R6"
			}, {
				Id = paths.ConstantTemplate.R15,
				Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.AvatarType.R15 or "R15",
			}, {
				Id = paths.ConstantTemplate.PlayerChoice,
				Title = FFlagWorldAvatarLocalization and self.props.LocalizedContent.AvatarType.PlayerChoice or "Player Choice",
			},
		},
		Enabled = self.props.IsEnabled,
		LayoutOrder = self.props.LayoutOrder,
		Selected = paths.StateInterfaceTemplates.getStateModelTemplate(self.props).RigTypeValue,
		SubDescription = (function()
			if FFlagWorldAvatarLocalization then
				return self.props.IsGameShutdownRequired and self.props.LocalizedContent.AvatarType.Warning or nil
			end
			return self.props.IsGameShutdownRequired and "Change Avatar Type will shut down the running game when save settings" or nil
		end)(),

		Mouse = self.props.Mouse,
		SelectionChanged = function(button)
			local newTemplateModel = paths.StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
			rigTypeSetFunctions[button.Id](newTemplateModel)
			self.props.clobberTemplate(self.props.template, newTemplateModel)
		end,
	})
end

return AvatarTypePanel