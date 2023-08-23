--!strict
-- Hook that shares tooltip dismissal logic between window and icon.

local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local Packages = CorePackages.Packages
local React = require(Packages.React)
local LuauPolyfill = require(Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout
local clearTimeout = LuauPolyfill.clearTimeout

local function isClickOrTap(inputObj: InputObject): boolean
	return inputObj.UserInputType == Enum.UserInputType.MouseButton1
		or inputObj.UserInputType == Enum.UserInputType.Touch
end

local useTooltipDismissal = function(delay_ms: number): (string, string, boolean, (header: string, body: string) -> ())
	local tooltipHeaderText: string, setTooltipHeaderText: (string) -> () = React.useState("")
	local tooltipBodyText: string, setTooltipBodyText: (string) -> () = React.useState("")
	local showTooltip: boolean, setShowTooltip: (boolean) -> () = React.useState(false)
	local tooltipDismissalListener: { current: RBXScriptConnection? } = React.useRef(nil)
	local hideTooltipTimeout: { current: number? } = React.useRef(nil)
	local removeHideTooltipListeners = React.useCallback(function()
		if hideTooltipTimeout.current then
			clearTimeout(hideTooltipTimeout.current)
		end
		if tooltipDismissalListener.current then
			tooltipDismissalListener.current:Disconnect()
			tooltipDismissalListener.current = nil
		end
	end, { hideTooltipTimeout, tooltipDismissalListener } :: { { current: any } })
	local setupHideTooltipConditions = React.useCallback(function()
		removeHideTooltipListeners()
		setShowTooltip(true)

		-- The tooltip disappears after delay_ms has passed
		-- or if the user clicks/taps anywhere.
		hideTooltipTimeout.current = (
			setTimeout(function()
				removeHideTooltipListeners()
				setShowTooltip(false)
			end, delay_ms) :: any
		) :: number
		tooltipDismissalListener.current = UserInputService.InputBegan:Connect(function(inputChangedObj: InputObject, _)
			if not isClickOrTap(inputChangedObj) then
				return
			end
			removeHideTooltipListeners()
			setShowTooltip(false)
		end)
	end, { hideTooltipTimeout, tooltipDismissalListener } :: { { current: any } })

	-- Cleans up listeners
	React.useEffect(function()
		return removeHideTooltipListeners
	end, {})

	local showError: (header: string, body: string) -> () = React.useCallback(function(header: string, body: string)
		setTooltipHeaderText(header)
		setTooltipBodyText(body)
		setupHideTooltipConditions()
	end, {})

	return tooltipHeaderText, tooltipBodyText, showTooltip, showError
end

return useTooltipDismissal
