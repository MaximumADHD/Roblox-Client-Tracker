local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")
local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext

local ConstantTemplate = require(Page.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Page.Components.RadioButtonSetPanel)

local AvatarTypePanel = Roact.Component:extend("ComponentAvatarTypePanel")

function AvatarTypePanel:render()
	local rigTypeSetFunctions = {
		[ConstantTemplate.R6] = StateModelTemplate.setRigTypeR6,
		[ConstantTemplate.R15] = StateModelTemplate.setRigTypeR15,
		[ConstantTemplate.PlayerChoice] = StateModelTemplate.setRigTypePlayerChoice
	}

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
end

if FFlagGameSettingsWithContext then
	AvatarTypePanel = withContext({
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})(AvatarTypePanel)
else
	ContextServices.mapToProps(AvatarTypePanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end


return AvatarTypePanel