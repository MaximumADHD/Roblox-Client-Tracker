local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)
local ExternalEventConnection = require(InGameMenu.Utility.ExternalEventConnection)

local InputType = Constants.InputType

local MouseOverrideManager = Roact.PureComponent:extend("MouseOverrideManager")

MouseOverrideManager.validateProps = t.strictInterface({
	menuOpen = t.boolean,
	inputType = t.string,
})

function MouseOverrideManager:render()
	return Roact.createElement(ExternalEventConnection, {
		event = UserInputService:GetPropertyChangedSignal("OverrideMouseIconBehavior"),
		callback = function()
			-- Another menu that overrides the mouse icon behaviour has closed.
			-- But we are still open so we need to keep re-override the icon behaviour.
			if self.props.menuOpen and UserInputService.OverrideMouseIconBehavior == Enum.OverrideMouseIconBehavior.None then
				self:updateMouseIconOverride()
			end
		end,
	})
end

function MouseOverrideManager:updateMouseIconOverride()
	if self.props.menuOpen then
		if self.props.inputType == InputType.Gamepad or VRService.VREnabled then
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
		else
			UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceShow
		end
	else
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
	end
end

function MouseOverrideManager:didMount()
	self:updateMouseIconOverride()
end

function MouseOverrideManager:didUpdate()
	self:updateMouseIconOverride()
end

return RoactRodux.UNSTABLE_connect2(function(state)
	return {
		menuOpen = state.isMenuOpen,
		inputType = state.displayOptions.inputType,
	}
end, nil)(MouseOverrideManager)