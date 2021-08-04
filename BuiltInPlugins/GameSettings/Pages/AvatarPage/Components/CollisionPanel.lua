local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

local ContextServices = require(Plugin.Framework.ContextServices)
local withContext = ContextServices.withContext

local ConstantTemplate = require(Page.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Page.Components.RadioButtonSetPanel)

local CollisionPanel = Roact.Component:extend("ComponentCollisionPanel")

local FFlagFixCollisionBoxLabels = game:DefineFastFlag("FixCollisionBoxLabels", false)
local FFlagGameSettingsWithContext = game:GetFastFlag("GameSettingsWithContext")

function CollisionPanel:render()
	local collisionTypeSetFunctions = {
		[ConstantTemplate.OuterCollision] = StateModelTemplate.setCollisionOuterBox,
		[ConstantTemplate.InnerCollision] = StateModelTemplate.setCollisionInnerBox
	}

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	return Roact.createElement(RadioButtonSetPanel, {
		Title = localization:getText("General", "TitleCollision"),
		Buttons = {{
				Id = ConstantTemplate.OuterCollision,
				Title = FFlagFixCollisionBoxLabels and localization:getText("General", "CollisionOuterBox") or localization:getText("General", "CollisionInnerBox"),
			}, {
				Id = ConstantTemplate.InnerCollision,
				Title = FFlagFixCollisionBoxLabels and localization:getText("General", "CollisionInnerBox") or localization:getText("General", "CollisionOuterBox"),
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
end

if FFlagGameSettingsWithContext then
	CollisionPanel = withContext({
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})(CollisionPanel)
else
	ContextServices.mapToProps(CollisionPanel, {
		Localization = ContextServices.Localization,
		Mouse = ContextServices.Mouse,
	})
end


return CollisionPanel