local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local AppStorageService = game:GetService("AppStorageService")

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Cryo)
local UIBlox = require(CorePackages.Packages.UIBlox)
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)
local Signal = SignalLib.Signal

local LuauPolyfill = require(CorePackages.Workspace.Packages.LuauPolyfill)
local clearTimeout = LuauPolyfill.clearTimeout
local setTimeout = LuauPolyfill.setTimeout

type FtuxTooltipDismissalReason =
	"timeout"
	| "chatIconClicked"
	| "menuOpened"

local defaultProps = {
    showDelay = 1000,
    dismissDelay = 7000,
    onDismissed = function(_: boolean, _: FtuxTooltipDismissalReason?) end,
}
type ChatIconFtuxTooltipProps = {
	iconClickedSignal: SignalLib.Signal,

	headerKey: string,
	bodyKey: string,
	localStorageKey: string?,

	showDelay: number?,
	dismissDelay: number?,

	onDismissed: ((boolean, FtuxTooltipDismissalReason?) -> nil)?,
}

return function(incomingProps: ChatIconFtuxTooltipProps)
    local props = Cryo.Dictionary.union(defaultProps, incomingProps)
	local tooltipDelayPassed, setTooltipDelayPassed = React.useState(false)
	local dismissed, setDismissed = React.useState(false)
	local showTimerRef = React.useRef(setTimeout(function() end, props.showDelay))
	local dismissTimerRef = React.useRef(setTimeout(function() end, props.dismissDelay))

	local hasSeenTooltipFromLocalStorage = React.useMemo(function()
		local hasSeenTooltipFromLocalStorage = false
		if props.localStorageKey then
			local success, value = pcall(function()
				return AppStorageService:GetItem(props.localStorageKey)
			end)
			hasSeenTooltipFromLocalStorage = if success then value == "true" else true
		end
		return hasSeenTooltipFromLocalStorage
	end, { props.localStorageKey })
	local canShowTooltip = not (hasSeenTooltipFromLocalStorage or dismissed)
	local shouldShowTooltip = tooltipDelayPassed and canShowTooltip

	local localized = useLocalization({
		headerText = props.headerKey,
		bodyText = props.bodyKey,
	})

	local onDismissed = React.useCallback(function(dismissalReason: FtuxTooltipDismissalReason?)
		if props.onDismissed then
			-- dismiss tooltip, signal to upstream if tooltip is currently shown and dismissal reason
			props.onDismissed(shouldShowTooltip, dismissalReason)
		end
		setDismissed(true)
	end, { setDismissed, shouldShowTooltip } :: { any })

    -- dismiss tooltip if the menu is opened or chat clicked
	React.useEffect(function()
		local connections = {
			GuiService.MenuOpened:Connect(function()
				if canShowTooltip then
					onDismissed("menuOpened")
				end
			end),
			props.iconClickedSignal:connect(function()
				if canShowTooltip then
					onDismissed("chatIconClicked")
				end
			end),
		} :: { any }

		return function()
			for _, connection in connections do
				if connection.disconnect then
					connection:disconnect()
				elseif connection.Disconnect then
					connection:Disconnect()
				end
			end
		end
	end, { GuiService.MenuOpened, props.iconClickedSignal, canShowTooltip, onDismissed } :: { any })

	-- show tooltip after props.showDelay sustained seconds of it being eligible to show
	React.useEffect(function()
		clearTimeout(showTimerRef.current)
		if canShowTooltip then
			showTimerRef.current = setTimeout(function()
				if canShowTooltip then
					setTooltipDelayPassed(true)
				end
			end, props.showDelay)
		end
	end, { canShowTooltip, showTimerRef } :: { any })

	-- dismiss tooltip after props.dismissDelay sustained seconds of it being shown
	React.useEffect(function()
		clearTimeout(dismissTimerRef.current)
		if tooltipDelayPassed then
			dismissTimerRef.current = setTimeout(function()
				onDismissed("timeout")
			end, props.dismissDelay)
		end
	end, { tooltipDelayPassed, dismissTimerRef } :: { any })

	React.useEffect(function()
		if shouldShowTooltip and props.localStorageKey then
			pcall(function()
				AppStorageService:SetItem(props.localStorageKey, "true")
			end)
		end
	end, { shouldShowTooltip, props.localStorageKey } :: { any })

	return withTooltip({
		headerText = localized.headerText,
		bodyText = localized.bodyText,
	}, {
		DisplayOrder = 10,
		active = shouldShowTooltip,
		guiTarget = CoreGui,

		preferredOrientation = TooltipOrientation.Bottom,
	}, function(triggerPointChanged)
		return React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[React.Change.AbsoluteSize] = triggerPointChanged,
			[React.Change.AbsolutePosition] = triggerPointChanged,
		})
	end)
end
