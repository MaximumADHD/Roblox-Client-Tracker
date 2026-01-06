--[[
	Allows to simultaneously display hover effects for related elements (having the same id).
	All children of context with the same id will get the same isHover
	property value when you hover one of them

	Example:

	React.createElement(
		HoverContext.Provider,
		nil,
		React.createElement(View, {
			tag = "auto-xy col gap-small",
		}, {
			-- It's not mandatory to provide a separate id, you can use anything you have already inisde the components
			React.createElement(HoverableELement, { id = 1, ... }),
			React.createElement(HoverableELement, { id = 1, ... })
		})
	)

	function HoverableElement(props)
		local isHover, onHover = useHoverContext(props.id)

		React.createElement("Frame", {
			tag = if isHover then "ColorHovered" else nil,
			[React.Event.MouseEnter] = function() onHover(true) end,
			[React.Event.MouseLeave] = function() onHover(false) end,
		})
	end

	id provided to the useHoverContext can be any string/number

]]
local Root = script:FindFirstAncestor("Components").Parent
local Packages = Root.Parent
local React = require(Packages.React)

type ReactNode = React.ReactNode

local noop = function()
	warn("Wrap the component using HoverContext with a HoverContext.Provider element")
end

type RegisterOnHoverCallback = (id: string | number, callback: (isHovered: boolean) -> ()) -> ()
type OnHover = (isHovered: boolean) -> ()

local Context = React.createContext({
	registerOnHoverCallback = noop,
	onHover = noop,
} :: {
	registerOnHoverCallback: RegisterOnHoverCallback,
	onHover: OnHover,
})

function useHoverContext(id: string | number)
	local hoverContext = React.useContext(Context)
	local isHovered, setIsHovered = React.useState(false)

	React.useEffect(function()
		hoverContext.registerOnHoverCallback(id, setIsHovered)
	end, {})

	local onHover = React.useCallback(function(value: boolean)
		hoverContext.onHover(id, value)
	end, { id })

	return isHovered, onHover
end

function Provider(props: { children: ReactNode })
	local onHoversCallbacksRef = React.useRef({})
	local onHover: RegisterOnHoverCallback = React.useCallback(function(id, value)
		if not onHoversCallbacksRef.current[id] then
			return
		end
		for _, callback in onHoversCallbacksRef.current[id] do
			callback(value)
		end
	end, {})

	local registerOnHoverCallback: OnHover = React.useCallback(function(id, callback)
		local existingCallbacks = onHoversCallbacksRef.current[id]
		if existingCallbacks then
			table.insert(existingCallbacks, callback)
		else
			onHoversCallbacksRef.current[id] = { callback }
		end
	end, {})

	return React.createElement(
		Context.Provider,
		{ value = { onHover = onHover, registerOnHoverCallback = registerOnHoverCallback } },
		props.children
	)
end

return {
	useHoverContext = useHoverContext,
	Provider = Provider,
}
