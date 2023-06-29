--!strict
local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local handleInput = require(script.Parent.handleInput)

local function onPress(callback: FocusNavigation.EventHandler): FocusNavigation.EventHandler
	return handleInput({
		onPress = callback,
	})
end

return onPress
