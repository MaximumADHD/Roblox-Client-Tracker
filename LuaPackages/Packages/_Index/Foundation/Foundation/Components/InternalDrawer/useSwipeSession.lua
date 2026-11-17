local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local gestureInput = require(script.Parent.gestureInput)

export type SwipeHandlers<S> = {
	onInputBegan: (session: S, input: InputObject) -> boolean,
	onInputChanged: (session: S, input: InputObject) -> (),
	onInputEnded: (session: S, input: InputObject) -> boolean,
	reset: (session: S) -> (),
}

-- Handlers read props through session.latest, so a parent render does not reconnect listeners or cancel a drag.
local function useSwipeSession<L, S>(
	latest: L,
	createSession: (latest: { current: L }) -> S,
	handlers: SwipeHandlers<S>,
	enabled: boolean
): ()
	local latestRef = React.useRef(latest)
	latestRef.current = latest
	local session = React.useState(function()
		return createSession(latestRef)
	end)

	-- lute-lint-ignore(exhaustiveDeps) session and handlers are stable for the lifetime of the component
	React.useEffect(function()
		if not enabled then
			return
		end

		local disconnect = gestureInput.connectPointer({
			onBegan = function(input: InputObject)
				return handlers.onInputBegan(session, input)
			end,
			onChanged = function(input: InputObject)
				handlers.onInputChanged(session, input)
			end,
			onEnded = function(input: InputObject)
				return handlers.onInputEnded(session, input)
			end,
		})

		return function()
			disconnect()
			handlers.reset(session)
		end
	end, { enabled })
end

return useSwipeSession
