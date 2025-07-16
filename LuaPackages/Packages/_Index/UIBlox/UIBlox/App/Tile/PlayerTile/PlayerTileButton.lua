local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Core = UIBlox.Core
local Packages = UIBlox.Parent

local t = require(Packages.t)
local Roact = require(Packages.Roact)

local Button = require(App.Button.Button)
local ButtonType = require(App.Button.Enum.ButtonType)
local ControlState = require(Core.Control.Enum.ControlState)

local PlayerTileButton = Roact.PureComponent:extend("PlayerTileButton")

PlayerTileButton.validateProps = t.strictInterface({
	buttonHeight = t.optional(t.number),
	buttonWidth = t.optional(t.number),
	outerButtonPadding = t.optional(t.number),
	-- The icon of the button. A Image is either a ImageSetData or URL string
	icon = t.union(t.string, t.table),
	-- Callback for the activated event
	onActivated = t.optional(t.callback),
	isSecondary = t.optional(t.boolean),
	-- Is the button disabled
	isDisabled = t.optional(t.boolean),
	tileSize = t.optional(t.UDim2),
	mouseEnter = t.optional(t.callback),
	mouseLeave = t.optional(t.callback),
	-- Whether to enable RoactGamepad functionality
	isRoactGamepadEnabled = t.optional(t.boolean),
})

PlayerTileButton.defaultProps = {
	isSecondary = false,
	isDisabled = false,
	buttonHeight = 36,
	outerButtonPadding = 10,
	tileSize = UDim2.new(0, 150, 0, 150),
	isRoactGamepadEnabled = true,
}

function PlayerTileButton:render()
	local isSecondary = self.props.isSecondary
	local onActivated = self.props.onActivated
	local isDisabled = self.props.isDisabled
	local icon = self.props.icon
	local buttonHeight = self.props.buttonHeight
	local outerButtonPadding = self.props.outerButtonPadding
	local tileSize = self.props.tileSize

	local maxButtonSize = tileSize.X.Offset / 2 - (outerButtonPadding * 1.5)
	local buttonSize = UDim2.new(0, maxButtonSize, 0, buttonHeight)

	local buttonType = isSecondary and ButtonType.Secondary or ButtonType.PrimarySystem

	return Roact.createElement(Button, {
		buttonType = buttonType,
		automaticSize = Enum.AutomaticSize.XY,
		position = UDim2.new(1, 0, 1, 0),
		size = buttonSize,
		anchorPoint = Vector2.new(1, 1),
		onActivated = onActivated or function() end,
		isDisabled = isDisabled,
		icon = icon,
		isRoactGamepadEnabled = self.props.isRoactGamepadEnabled,
		onStateChanged = function(newState, oldState)
			if newState == ControlState.Hover then
				self.props.mouseEnter()
			elseif oldState == ControlState.Hover then
				self.props.mouseLeave()
			end
		end,
	})
end

return PlayerTileButton
