--!strict
local Packages = script.Parent.Parent
local React = require(Packages.React)

type Callback = (Instance) -> ()
type CallbackRef = (Instance?) -> ()

local function useEventLifecycleRef(bind: Callback, unbind: Callback?): CallbackRef
	local previousValue = React.useRef(nil :: Instance?)
	local ref = React.useCallback(function(value: Instance?)
		if previousValue.current and unbind then
			unbind(previousValue.current)
		end
		if value then
			bind(value)
		end
		previousValue.current = value
	end, { bind, unbind } :: { any })

	return ref
end

return useEventLifecycleRef
