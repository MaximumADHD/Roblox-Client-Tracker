local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local AvatarTypePanel = Roact.Component:extend("ComponentAvatarTypePanel")
local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function AvatarTypePanel:render()
	local rigTypeSetFunctions = {
		[ConstantTemplate.R6] = StateModelTemplate.setRigTypeR6,
		[ConstantTemplate.R15] = StateModelTemplate.setRigTypeR15,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setRigTypePlayerChoice
	}

	if FFlagStudioConvertGameSettingsToDevFramework then
		local props = self.props
		local localization = props.Localization
		local mouse = props.Mouse:get()

		return Roact.createElement(RadioButtonSetPanel, {
			Title = localization:getText("General", "TitleAvatarType"),
			Buttons = {{
					Id = ConstantTemplate.R6,
					Title = localization:getText("General", "AvatarTypeR6"),
				}, {
					Id = ConstantTemplate.R15,
					Title = localization:getText("General", "AvatarTypeR15"),
				}, {
					Id = ConstantTemplate.PlayerChoice,
					Title = localization:getText("General", "AvatarTypePlayerChoice"),
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).RigTypeValue,
			SubDescription = (function()
				return self.props.IsGameShutdownRequired and localization:getText("General", "AvatarTypeWarning") or nil
			end)(),

			Mouse = mouse,
			SelectionChanged = function(button)
				local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				rigTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	else
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
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(AvatarTypePanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end

return AvatarTypePanel