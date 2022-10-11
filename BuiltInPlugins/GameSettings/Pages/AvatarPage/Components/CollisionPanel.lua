local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local ConstantTemplate = require(Page.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Page.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Page.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Page.Components.RadioButtonSetPanel)

local CollisionPanel = Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
	local collisionTypeSetFunctions = {
		[ConstantTemplate.OuterCollision] = StateModelTemplate.setCollisionOuterBox,
		[ConstantTemplate.InnerCollision] = StateModelTemplate.setCollisionInnerBox,
	}

	local props = self.props
	local localization = props.Localization
	local mouse = props.Mouse

	return Roact.createElement(RadioButtonSetPanel, {
		Title = localization:getText("General", "TitleCollision"),
		Buttons = {
			{
				Id = ConstantTemplate.OuterCollision,
				Title = localization:getText("General", "CollisionOuterBox"),
			},
			{
				Id = ConstantTemplate.InnerCollision,
				Title = localization:getText("General", "CollisionInnerBox"),
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

CollisionPanel = withContext({
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(CollisionPanel)

return CollisionPanel
