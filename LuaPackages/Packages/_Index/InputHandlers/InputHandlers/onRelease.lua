--!strict
local Packages = script.Parent.Parent
local FocusNavigation = require(Packages.FocusNavigation)

local handleInput = require(script.Parent.handleInput)

local function onRelease(callback: FocusNavigation.EventHandler): FocusNavigation.EventHandler
	return handleInput({
		onRelease = callback,
	})
end

return onRelease
