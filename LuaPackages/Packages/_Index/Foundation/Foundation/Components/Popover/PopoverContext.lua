local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Logger = require(Foundation.Utility.Logger)
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
