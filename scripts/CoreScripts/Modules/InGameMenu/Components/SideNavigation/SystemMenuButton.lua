local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact

local CloseMenuButton = require(script.Parent.CloseMenuButton)
local GameIconButton = require(script.Parent.GameIconButton)

local SystemMenuButton = Roact.PureComponent:extend("SystemMenuButton")

SystemMenuButton.validateProps = t.strictInterface({
	on = t.optional(t.boolean),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	onActivated = t.callback,
	onClose = t.callback,
})

SystemMenuButton.defaultProps = {
	on = false,
}

function SystemMenuButton:render()
	local systemMenuOn = self.props.on
	if systemMenuOn then
		return Roact.createElement(CloseMenuButton, {
			onActivated = self.props.onClose,
			layoutOrder = self.props.layoutOrder,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,
		})
	else
		return Roact.createElement(GameIconButton, {
			onActivated = self.props.onActivated,
			layoutOrder = self.props.layoutOrder,
			anchorPoint = self.props.anchorPoint,
			position = self.props.position,
		})
	end
end

return SystemMenuButton
