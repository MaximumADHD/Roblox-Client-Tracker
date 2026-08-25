local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local PopoverContext = require(script.Parent.Parent.PopoverContext)
local StudioUri = require(Foundation.Utility.Plugin.StudioUri)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local React = require(Packages.React)
type PopoverAnchor = Types.PopoverAnchor
type StudioUri = StudioUri.StudioUri

export type PopoverAnchorProps = {
	-- What to anchor the popover to: a ref to the target element, or a Studio
	-- widget URI (Studio plugin contexts only). If provided, children will not be rendered.
	anchorRef: (React.Ref<PopoverAnchor> | StudioUri)?,
	children: React.ReactNode?,
} & Types.CommonProps

local function PopoverAnchor(props: PopoverAnchorProps, forwardedRef: React.Ref<PopoverAnchor>?): React.ReactNode
	local popoverContext = React.useContext(PopoverContext)

	local ref = React.useRef(nil)

	React.useImperativeHandle(forwardedRef, function()
		return ref.current
	end, {})

	React.useLayoutEffect(function()
		if StudioUri.isStudioUri(props.anchorRef) then
			popoverContext.setAnchorUri(props.anchorRef :: StudioUri)
		elseif typeof(props.anchorRef) == "table" and (props.anchorRef :: any).current then
			popoverContext.setAnchor((props.anchorRef :: any).current)
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
