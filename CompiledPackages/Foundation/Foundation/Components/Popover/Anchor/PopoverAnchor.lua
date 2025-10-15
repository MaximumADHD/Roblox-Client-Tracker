local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Types = require(Foundation.Components.Types)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local View = require(Foundation.Components.View)
local PopoverContext = require(script.Parent.Parent.PopoverContext)

local React = require(Packages.React)
type PopoverAnchor = Types.PopoverAnchor

export type PopoverAnchorProps = {
	-- The target ref to anchor the popover to. If provided, children will not be rendered.
	anchorRef: React.Ref<PopoverAnchor>?,
	children: React.ReactNode?,
} & Types.CommonProps

local function PopoverAnchor(props: PopoverAnchorProps, forwardedRef: React.Ref<PopoverAnchor>?): React.ReactNode
	local popoverContext = React.useContext(PopoverContext)

	local ref = React.useRef(nil)

	React.useImperativeHandle(forwardedRef, function()
		return ref.current
	end, {})

	React.useLayoutEffect(function()
		if typeof(props.anchorRef) == "table" and props.anchorRef.current then
			popoverContext.setAnchor(props.anchorRef.current)
		else
			popoverContext.setAnchor(ref.current)
		end
	end)

	if props.anchorRef then
		return nil
	end

	props.testId = `{popoverContext.testId}--anchor`

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "auto-xy",
			ref = ref,
		}),
		props.children
	)
end

return React.forwardRef(PopoverAnchor)
