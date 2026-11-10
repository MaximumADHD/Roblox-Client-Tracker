local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ScrollBarVisibility = require(Foundation.Enums.ScrollBarVisibility)
local withDefaults = require(Foundation.Utility.withDefaults)

local InternalDrawerOverlay = require(script.Parent.InternalDrawerOverlay)
local InternalDrawerTypes = require(script.Parent.Types)

export type InternalDrawerProps = InternalDrawerTypes.InternalDrawerProps

local defaultProps = {
	outerBleed = 0,
	scrolls = true,
	scrollBarVisibility = ScrollBarVisibility.None,
	testId = "--foundation-internal-drawer",
}

local function InternalDrawer(internalDrawerProps: InternalDrawerProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(internalDrawerProps, defaultProps)
	local isMounted, setIsMounted = React.useState(props.isOpen)
	if props.isOpen and not isMounted then
		setIsMounted(true)
	end

	local onCloseComplete = props.onCloseComplete
	local onExited = React.useCallback(function()
		setIsMounted(false)
		if onCloseComplete then
			onCloseComplete()
		end
	end, { onCloseComplete })

	if not isMounted then
		return nil
	end

	local overlayProps: any = props
	overlayProps.ref = ref
	overlayProps.onExited = onExited

	return React.createElement(InternalDrawerOverlay, overlayProps)
end

return React.memo(React.forwardRef(InternalDrawer))
