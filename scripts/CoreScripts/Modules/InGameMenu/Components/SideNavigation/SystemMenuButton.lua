local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

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
	canCaptureFocus = t.optional(t.boolean),
})

SystemMenuButton.defaultProps = {
	on = false,
	canCaptureFocus = false,
}

function SystemMenuButton:tryCaptureFocus(prevProps)
	if (self.props.canCaptureFocus and not prevProps.canCaptureFocus)
		or (self.props.canCaptureFocus and self.props.on ~= prevProps.on and self.state.isIconFocused)
	then
		GuiService.SelectedCoreObject = self.iconRef:getValue()
	end
end

function SystemMenuButton:init()
	self.iconRef = Roact.createRef()

	self:setState({
		isIconFocused = false,
	})

	self.onIconSelectionGained = function()
		self:setState({
			isIconFocused = true,
		})
	end

	self.onIconSelectionLost = function()
		self:setState({
			isIconFocused = false,
		})
	end
end

function SystemMenuButton:didMount()
	local prevProps = { canCaptureFocus = false }
	self:tryCaptureFocus(prevProps)
end

function SystemMenuButton:didUpdate(prevProps)
	self:tryCaptureFocus(prevProps)
end

function SystemMenuButton:render()
	local systemMenuOn = self.props.on
	if systemMenuOn then
		return Roact.createElement(CloseMenuButton, {
			onActivated = self.props.onClose,
			layoutOrder = self.props.layoutOrder,
			AnchorPoint = self.props.anchorPoint,
			Position = self.props.position,

			onSelectionGained = self.onIconSelectionGained,
			onSelectionLost = self.onIconSelectionLost,
			[Roact.Ref] = self.iconRef,
		})
	else
		return Roact.createElement(GameIconButton, {
			onActivated = self.props.onActivated,
			layoutOrder = self.props.layoutOrder,
			anchorPoint = self.props.anchorPoint,
			position = self.props.position,

			onSelectionGained = self.onIconSelectionGained,
			onSelectionLost = self.onIconSelectionLost,
			[Roact.Ref] = self.iconRef,
		})
	end
end

return SystemMenuButton
