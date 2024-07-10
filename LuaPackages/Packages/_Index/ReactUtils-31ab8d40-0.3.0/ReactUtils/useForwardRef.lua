--[[
	Allows safely using the value from a forwarded ref
	the update function will be called every time the ref instance changes, including on mount
	update can return a cleanup callback that will be called before the next update
	providing a different update function will force a cleanup/update on render (React.useCallback to avoid this)

	usage example:
	local MyComponent = React.forwardRef(function(props, ref)
		local instance, setInstance = React.useState(nil)
		local forwardRef = useForwardRef(ref, setInstance)
		if instance then
			-- use instance here
		end
		return React.createElement(InnerComponent, {
			ref = forwardRef,
			-- other props
		})
	end)
]]

local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

type CleanupFunc = () -> ()
type UpdateFunc<T> = (T) -> CleanupFunc?

local function useForwardRef<T>(forwardRef: React.Ref<T>, update: UpdateFunc<T>): React.Ref<T>
	local value = React.useRef(nil :: T?)
	local cleanup = React.useRef(nil :: CleanupFunc?)

	local ref = React.useCallback(function(instance: T?)
		if cleanup.current then
			cleanup.current()
			cleanup.current = nil
		end
		if instance then
			value.current = instance
			cleanup.current = update(instance)
		end
	end, { update })

	React.useImperativeHandle(forwardRef, function()
		return value.current
	end)

	return ref
end

return useForwardRef
