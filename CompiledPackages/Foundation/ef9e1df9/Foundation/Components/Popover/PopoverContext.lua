local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Logger = require(Foundation.Utility.Logger)
local React = require(Packages.React)
local Types = require(Foundation.Components.Types)
type PopoverAnchor = Types.PopoverAnchor

return React.createContext({
	anchor = nil :: PopoverAnchor?,
	setAnchor = function(_instance: PopoverAnchor?)
		Logger:warning("No PopoverProvider found for Popover")
	end,
	isOpen = false,
	testId = "",
})
