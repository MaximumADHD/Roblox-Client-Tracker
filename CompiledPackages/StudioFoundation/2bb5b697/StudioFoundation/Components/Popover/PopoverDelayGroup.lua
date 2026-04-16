local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local Types = require(Main.Types)

type Delay = Types.Delay
type Id = unknown

type GroupContext = {
	currentIdRef: React.RefObject<Id>,
	-- Ref to a callback that forces the element to open/close
	flushRef: React.RefObject<() -> ()>,
	-- Controls the time when a delay group stays activated, i.e., the next element is opened instantly
	timeout: number,
	setCurrentId: (id: Id) -> (),
}

local TooltipDelayGroupContext = React.createContext({
	timeout = 0,
	currentIdRef = React.createRef(),
	setCurrentId = Dash.noop,
})

local function PopoverDelayGroup(props: { timeout: number?, children: React.ReactNode })
	local currentIdRef = React.useRef(nil :: Id?)
	local flushRef = React.useRef(nil :: (() -> ())?)

	local setCurrentId = React.useCallback(function(currentId: Id, flush: (() -> ())?)
		if currentId and currentIdRef.current and currentIdRef.current ~= currentId then
			if flushRef.current then
				flushRef.current()
			end
			if flush then
				flush()
			end
		end
		currentIdRef.current = currentId
		flushRef.current = flush
	end, {})

	local contextValue = React.useMemo(function()
		return {
			timeout = props.timeout or 0,
			currentIdRef = currentIdRef,
			setCurrentId = setCurrentId,
		}
	end, { props.timeout :: unknown, currentIdRef, setCurrentId, flushRef })

	return React.createElement(TooltipDelayGroupContext.Provider, { value = contextValue }, props.children)
end

local function useDelayGroupContext()
	return React.useContext(TooltipDelayGroupContext)
end

local function useDelayGroup(props: {
	floatingId: Id,
	isOpen: boolean,
	enabled: boolean?,
	flush: () -> (),
})
	local enabled = if props.enabled == nil then true else props.enabled
	local isOpen = props.isOpen
	local id = props.floatingId
	local flush = props.flush

	local groupContext = React.useContext(TooltipDelayGroupContext)

	local currentIdRef = groupContext.currentIdRef
	local setCurrentId = groupContext.setCurrentId

	React.useLayoutEffect(function()
		if not enabled or setCurrentId == Dash.noop then
			return
		end

		if isOpen then
			setCurrentId(id, flush)
			return
		end

		local function unset()
			if currentIdRef.current ~= id then
				return
			end
			setCurrentId(nil)
		end

		if not currentIdRef.current then
			return
		end

		if groupContext.timeout > 0 then
			local coroutine = task.delay(groupContext.timeout, unset)
			-- Clean up the cancel function if we run this effect again, most likely because we open the same tooltip again.
			-- If the effect runs due to the other changes, the closing function would be scheduled again.
			return function()
				task.cancel(coroutine)
			end
		end

		unset()
	end, { enabled :: unknown, isOpen, setCurrentId, id, currentIdRef, groupContext.timeout, flush })

	return groupContext
end

return {
	PopoverDelayGroup = PopoverDelayGroup,
	useDelayGroup = useDelayGroup,
	useDelayGroupContext = useDelayGroupContext,
}
