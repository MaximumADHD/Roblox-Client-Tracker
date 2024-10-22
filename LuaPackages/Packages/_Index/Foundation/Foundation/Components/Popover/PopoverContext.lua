local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Logger = require(Foundation.Utility.Logger)

return React.createContext({
	anchor = nil :: GuiObject?,
	setAnchor = function(instance: GuiObject?)
		Logger:warning("No PopoverProvider found for Popover")
	end,
	isOpen = false,
})
