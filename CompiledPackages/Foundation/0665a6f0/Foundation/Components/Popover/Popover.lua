local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local withDefaults = require(Foundation.Utility.withDefaults)

local PopoverContext = require(script.Parent.PopoverContext)

local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local Types = require(Foundation.Components.Types)
type PopoverAnchor = Types.PopoverAnchor
type StudioUri = StudioUri.StudioUri

export type PopoverProps = {
	-- Whether the popover is open
	isOpen: boolean,
	children: React.ReactNode,
}

local defaultProps = {
	testId = "--foundation-popover",
}

local function Popover(popoverProps: PopoverProps)
	local props = withDefaults(popoverProps, defaultProps)
	local anchor, setAnchor = React.useState(nil :: PopoverAnchor?)
	local anchorUri, setAnchorUri = React.useState(nil :: StudioUri?)

	return React.createElement(PopoverContext.Provider, {
		value = {
			anchor = anchor,
			setAnchor = setAnchor,
			anchorUri = anchorUri,
			setAnchorUri = setAnchorUri,
			isOpen = props.isOpen,
			testId = props.testId,
		},
	}, props.children)
end

return Popover
