local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local AvatarTypePanel = Roact.Component:extend("ComponentAvatarTypePanel")

function AvatarTypePanel:render()
	local rigTypeSetFunctions = {
		[ConstantTemplate.R6] = StateModelTemplate.setRigTypeR6,
		[ConstantTemplate.R15] = StateModelTemplate.setRigTypeR15,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setRigTypePlayerChoice
	}

	return withLocalization(function(localized)
		return Roact.createElement(RadioButtonSetPanel, {
			Title = localized.Morpher.Title.AvatarType,
			Buttons = {{
					Id = ConstantTemplate.R6,
					Title = localized.Morpher.AvatarType.R6,
				}, {
					Id = ConstantTemplate.R15,
					Title = localized.Morpher.AvatarType.R15,
				}, {
					Id = ConstantTemplate.PlayerChoice,
					Title = localized.Morpher.AvatarType.PlayerChoice,
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).RigTypeValue,
			SubDescription = (function()
				return self.props.IsGameShutdownRequired and localized.Morpher.AvatarType.Warning or nil
			end)(),

			Mouse = self.props.Mouse,
			SelectionChanged = function(button)
				local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				rigTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	end)
end

return AvatarTypePanel