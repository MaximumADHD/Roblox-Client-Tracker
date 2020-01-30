local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux

local InGameMenu = script.Parent.Parent

local Controls = require(InGameMenu.Resources.Controls)

local KeyboardControls = require(script.ControlLayouts.KeyboardControls)
local GamepadControls = require(script.ControlLayouts.GamepadControls)
-- local TouchControls = require(InGameMenu.Components.ControlLayouts.TouchControls)

local ControlsPage = Roact.PureComponent:extend("ControlsPage")

function ControlsPage:render()
	local controlLayout = self.props.controlLayout

	if controlLayout == Controls.ControlLayouts.KEYBOARD then
		return Roact.createElement(KeyboardControls)
	elseif controlLayout == Controls.ControlLayouts.GAMEPAD then
		return Roact.createElement(GamepadControls)
	-- elseif controlLayout == Controls.ControlLayouts.TOUCH then
	-- 	return Roact.createElement(TouchControls)
	else
		return nil
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local controlLayout = state.controlLayout

	return {
		controlLayout = controlLayout
	}
end)(ControlsPage)