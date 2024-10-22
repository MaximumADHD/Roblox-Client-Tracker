local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local PopoverContext = require(script.Parent.PopoverContext)

type PopoverProps = {
	-- Whether the popover is open
	isOpen: boolean,
	children: React.ReactNode,
}

local function Popover(props: PopoverProps, ref: React.Ref<GuiObject>?)
	local anchor, setAnchor = React.useState(nil :: GuiObject?)

	return React.createElement(PopoverContext.Provider, {
		value = {
			anchor = anchor,
			setAnchor = setAnchor,
			isOpen = props.isOpen,
		},
	}, props.children)
end

return React.forwardRef(Popover)
