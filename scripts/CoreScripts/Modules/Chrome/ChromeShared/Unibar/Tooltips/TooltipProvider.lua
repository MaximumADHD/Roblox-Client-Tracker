local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local TooltipContext = require(script.Parent.TooltipContext)

type FtuxTooltipDismissalReason =
	"timeout"
	| "unibarHovered"
	| "unibarActivated"
	| "menuOpened"
	| "menuIconHovered"
	| "outsideInput"

type Tooltip = {
	id: string,
	priority: number,
	-- delay between the first Unibar render or previous tooltip and this tooltip
	showDelay: number,
	dismissDelay: number,
}

export type ContextType = {
	registerTooltip: (id: string, priority: number, showDelay: number, dismissDelay: number) -> (),
	unregisterTooltip: (id: string) -> (),
	dismissTooltip: (id: string, _reason: FtuxTooltipDismissalReason?) -> (),
	isCurrentTooltip: (id: string) -> boolean,
}

function TooltipProvider(props: any)
	local currentTooltip, setCurrentTooltip = React.useState(nil :: Tooltip?)
	-- Need ref due to dismiss closure
	local currentTooltipRef = React.useRef(nil :: Tooltip?)
	local nextTooltipRef = React.useRef(nil :: Tooltip?)
	-- For recursive calls
	local processQueueRef = React.useRef(nil :: any)

	-- Could use heap queue but this is simpler
	local queueRef = React.useRef({}) :: { current: { Tooltip } }

	local setTooltip = React.useCallback(function(tooltip: Tooltip?)
		setCurrentTooltip(tooltip)
		currentTooltipRef.current = tooltip
		if
			currentTooltipRef.current
			and nextTooltipRef.current
			and currentTooltipRef.current.id == nextTooltipRef.current.id
		then
			nextTooltipRef.current = nil
		end
	end, {})

	local removeTooltipById = React.useCallback(function(id: string)
		if currentTooltipRef and currentTooltipRef.current and currentTooltipRef.current.id == id then
			setTooltip(nil)
		end
		if nextTooltipRef and nextTooltipRef.current and nextTooltipRef.current.id == id then
			nextTooltipRef.current = nil
		end

		local tooltip: Tooltip? = nil
		for _, entry in pairs(queueRef.current) do
			if entry.id == id then
				tooltip = entry
				break
			end
		end

		if tooltip and tooltip.priority and queueRef.current[tooltip.priority] then
			queueRef.current[tooltip.priority] = nil
		end
	end, { currentTooltip })

	processQueueRef.current = React.useCallback(function()
		if currentTooltipRef.current or nextTooltipRef.current then
			return
		end

		local queue = queueRef.current
		local sorted = {}

		for _, entry in pairs(queue) do
			table.insert(sorted, entry)
		end

		table.sort(sorted, function(a: Tooltip, b: Tooltip)
			return a.priority > b.priority
		end)

		local nextTooltip = sorted[1]
		if not nextTooltip then
			return
		end

		nextTooltipRef.current = nextTooltip

		task.delay(nextTooltip.showDelay / 1000, function()
			setTooltip(nextTooltip)

			task.delay(nextTooltip.dismissDelay / 1000, function()
				removeTooltipById(nextTooltip.id)
				if processQueueRef.current then
					processQueueRef.current()
				end
			end)
		end)
	end, { currentTooltip })

	local processQueue = function()
		if processQueueRef.current then
			processQueueRef.current()
		end
	end

	local contextValue: ContextType = React.useMemo(function()
		return {
			registerTooltip = function(id: string, priority: number, showDelay: number, dismissDelay: number)
				if not queueRef.current[priority] then
					table.insert(queueRef.current, priority, {
						id = id,
						priority = priority,
						showDelay = showDelay,
						dismissDelay = dismissDelay,
					})
					processQueue()
				end
			end,
			unregisterTooltip = function(id: string)
				removeTooltipById(id)
				processQueue()
			end,
			dismissTooltip = function(id: string, _reason: FtuxTooltipDismissalReason?)
				removeTooltipById(id)
				processQueue()
			end,
			isCurrentTooltip = function(id: string)
				return currentTooltip and currentTooltip.id == id
			end,
		}
	end, { currentTooltip })

	return React.createElement(TooltipContext.Provider, {
		value = contextValue,
	}, props.children)
end

return TooltipProvider
