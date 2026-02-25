local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

export type DelayValue = number | { open: number?, close: number? }

export type Options = {
	delay: DelayValue,
	enabled: boolean?,
}

local function resolveDelay(value: DelayValue?, prop: "open" | "close"): number
	if value == nil then
		return 0
	end
	if type(value) == "number" then
		return value
	end
	return value[prop] or 0
end

local function useShowDelayed(wantedOpen: boolean, options: Options): (boolean, { cancel: () -> (), flush: () -> () })
	local enabled = if options.enabled == nil then true else options.enabled

	local visible, setVisible = React.useState(false)
	local openJobRef = React.useRef(nil :: thread?)
	local closeJobRef = React.useRef(nil :: thread?)
	local wantedOpenRef = React.useRef(wantedOpen)
	wantedOpenRef.current = wantedOpen

	local cancelAll = React.useCallback(function()
		if openJobRef.current then
			task.cancel(openJobRef.current)
			openJobRef.current = nil
		end
		if closeJobRef.current then
			task.cancel(closeJobRef.current)
			closeJobRef.current = nil
		end
	end, {})

	React.useEffect(function()
		if not enabled then
			cancelAll()
			setVisible(wantedOpen)
			return
		end

		if wantedOpen then
			if closeJobRef.current then
				task.cancel(closeJobRef.current)
				closeJobRef.current = nil
			end
			local delay = resolveDelay(options.delay, "open")
			if delay <= 0 then
				setVisible(true)
			else
				if visible then
					return
				end
				if openJobRef.current then
					task.cancel(openJobRef.current :: thread)
					openJobRef.current = nil
				end
				openJobRef.current = task.delay(delay, function()
					openJobRef.current = nil
					setVisible(true)
				end)
			end
		else
			if openJobRef.current then
				task.cancel(openJobRef.current :: thread)
				openJobRef.current = nil
			end
			local delay = resolveDelay(options.delay, "close")
			if delay <= 0 then
				setVisible(false)
			else
				if not visible then
					return
				end
				if closeJobRef.current then
					task.cancel(closeJobRef.current :: thread)
					closeJobRef.current = nil
				end
				closeJobRef.current = task.delay(delay, function()
					closeJobRef.current = nil
					setVisible(false)
				end)
			end
		end
	end, { wantedOpen :: unknown, enabled, options.delay, visible })

	React.useEffect(function()
		return function()
			cancelAll()
		end
	end, {})

	local flush = React.useCallback(function()
		cancelAll()
		setVisible(wantedOpenRef.current)
	end, { cancelAll :: unknown, setVisible })

	return visible, {
		cancel = cancelAll,
		flush = flush,
	}
end

return useShowDelayed
