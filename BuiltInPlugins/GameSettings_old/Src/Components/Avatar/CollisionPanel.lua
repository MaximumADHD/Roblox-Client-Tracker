local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ContextServices = require(Plugin.Framework.ContextServices)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local CollisionPanel = Roact.Component:extend("ComponentCollisionPanel")

local FFlagStudioConvertGameSettingsToDevFramework = game:GetFastFlag("StudioConvertGameSettingsToDevFramework")

function CollisionPanel:render()
	local collisionTypeSetFunctions = {
		[ConstantTemplate.OuterCollision] = StateModelTemplate.setCollisionOuterBox,
		[ConstantTemplate.InnerCollision] = StateModelTemplate.setCollisionInnerBox
	}

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	if FFlagStudioConvertGameSettingsToDevFramework then
		return Roact.createElement(RadioButtonSetPanel, {
			Title = localization:getText("General", "TitleCollision"),
			Buttons = {{
					Id = ConstantTemplate.OuterCollision,
					Title = localization:getText("General", "CollisionInnerBox"),
				}, {
					Id = ConstantTemplate.InnerCollision,
					Title = localization:getText("General", "CollisionOuterBox"),
				},
			},
			Enabled = self.props.IsEnabled,
			LayoutOrder = self.props.LayoutOrder,
			Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).CollisionValue,
			Mouse = mouse:get(),
			SelectionChanged = function(button)
				local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
				collisionTypeSetFunctions[button.Id](newTemplateModel)
				self.props.clobberTemplate(self.props.template, newTemplateModel)
			end,
		})
	else
		return withLocalization(function(localized)
			return Roact.createElement(RadioButtonSetPanel, {
				Title = localized.Morpher.Title.Collision,
				Buttons = {{
						Id = ConstantTemplate.OuterCollision,
						Title = localized.Morpher.Collision.OuterBox,
					}, {
						Id = ConstantTemplate.InnerCollision,
						Title = localized.Morpher.Collision.InnerBox,
					},
				},
				Enabled = self.props.IsEnabled,
				LayoutOrder = self.props.LayoutOrder,
				Selected = StateInterfaceTemplates.getStateModelTemplate(self.props).CollisionValue,
				Mouse = self.props.Mouse,
				SelectionChanged = function(button)
					local newTemplateModel = StateInterfaceTemplates.getStateModelTemplateCopy(self.props)
					collisionTypeSetFunctions[button.Id](newTemplateModel)
					self.props.clobberTemplate(self.props.template, newTemplateModel)
				end,
			})
		end)
	end
end

if FFlagStudioConvertGameSettingsToDevFramework then
	ContextServices.mapToProps(CollisionPanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end

return CollisionPanel