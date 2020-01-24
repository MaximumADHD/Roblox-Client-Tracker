local Root = script.Parent.Parent
local UserInputService = game:GetService("UserInputService")

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

local SetGamepadEnabled = require(Root.Actions.SetGamepadEnabled)
local GetFFlagXboxGamepadIconFix = require(Root.Flags.GetFFlagXboxGamepadIconFix)

local gamepadDefault = false
if GetFFlagXboxGamepadIconFix() then
	gamepadDefault = UserInputService:GetPlatform() == Enum.Platform.XBoxOne
end

local GamepadEnabledReducer = Rodux.createReducer(gamepadDefault, {
	[SetGamepadEnabled.name] = function(state, action)
		return action.enabled
	end,
})

return GamepadEnabledReducer