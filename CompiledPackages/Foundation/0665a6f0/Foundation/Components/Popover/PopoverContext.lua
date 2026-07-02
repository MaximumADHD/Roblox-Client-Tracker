local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Logger = require(Foundation.Utility.Logger)
local React = require(Packages.React)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local Types = require(Foundation.Components.Types)
type PopoverAnchor = Types.PopoverAnchor
type StudioUri = StudioUri.StudioUri

return React.createContext({
	anchor = nil :: PopoverAnchor?,
	setAnchor = function(_instance: PopoverAnchor?)
		Logger:warning("No PopoverProvider found for Popover")
	end,
	anchorUri = nil :: StudioUri?,
	setAnchorUri = function(_uri: StudioUri?)
		Logger:warning("No PopoverProvider found for Popover")
	end,
	isOpen = false,
	testId = "",
})
