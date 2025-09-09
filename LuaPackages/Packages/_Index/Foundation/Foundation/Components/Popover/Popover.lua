local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PopoverContext = require(script.Parent.PopoverContext)

local Types = require(Foundation.Components.Types)
type PopoverAnchor = Types.PopoverAnchor

export type PopoverProps = {
	-- Whether the popover is open
	isOpen: boolean,
	children: React.ReactNode,
}

local function Popover(props: PopoverProps)
	local anchor, setAnchor = React.useState(nil :: PopoverAnchor?)

	return React.createElement(PopoverContext.Provider, {
		value = {
			anchor = anchor,
			setAnchor = setAnchor,
			isOpen = props.isOpen,
		},
	}, props.children)
end

return Popover
