local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)

local ConstantTemplate = require(Plugin.Src.Util.ConstantTemplate)
local StateInterfaceTemplates = require(Plugin.Src.Util.StateInterfaceTemplates)
local StateModelTemplate = require(Plugin.Src.Util.StateModelTemplate)

local RadioButtonSetPanel = require(Plugin.Src.Components.RadioButtonSetPanel)

local CollisionPanel = Roact.Component:extend("ComponentCollisionPanel")

function CollisionPanel:render()
	local collisionTypeSetFunctions = {
		[ConstantTemplate.OuterCollision] = StateModelTemplate.setCollisionOuterBox,
		[ConstantTemplate.InnerCollision] = StateModelTemplate.setCollisionInnerBox
	}

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

return CollisionPanel