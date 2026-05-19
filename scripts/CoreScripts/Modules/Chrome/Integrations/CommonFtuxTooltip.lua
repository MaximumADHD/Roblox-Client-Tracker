local Chrome = script:FindFirstAncestor("Chrome")

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")

local UserInputService = game:GetService("UserInputService")

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local ChromeService = require(Chrome.Service)
local LocalStore = require(Chrome.ChromeShared.Service.LocalStore)
local TooltipContext = require(Chrome.ChromeShared.Unibar.Tooltips.TooltipContext)
local TooltipProvider = require(Chrome.ChromeShared.Unibar.Tooltips.TooltipProvider)
local useIsTooltipShown = require(Chrome.ChromeShared.Unibar.Tooltips.useIsTooltipTurn)

local menuIconHoveredSignal = require(Chrome.Parent.TopBar.Components.Presentation.menuIconHoveredSignal)

local FtuxTooltipAnchor = require(Chrome.Integrations.FtuxTooltipAnchor)

type TooltipContextType = TooltipProvider.ContextType

type FtuxTooltipDismissalReason =
	"timeout"
	| "unibarHovered"
	| "unibarActivated"
	| "menuOpened"
	| "menuIconHovered"
	| "outsideInput"

local defaultProps = {
	id = nil,
	priority = 1,
	showDelay = 3000,
	dismissDelay = 5000,
	onDismissed = function(_: boolean, _: FtuxTooltipDismissalReason?) end,
}

local FtuxTooltip = function(props)
	local tooltipRef = React.useRef(nil)
	local tooltipDelayPassed, _ = React.useState(false)
	local dismissed, setDismissed = React.useState(false)

	local tooltipQueue = React.useContext(TooltipContext)
	local isTooltipShown = useIsTooltipShown(props.id) or false

	local hasSeenTooltipFromLocalStorage = React.useMemo(function()
		local hasSeenTooltipFromLocalStorage = false
		if props.localStorageKey then
			hasSeenTooltipFromLocalStorage = LocalStore.getValue(props.localStorageKey) or false
		end

		return hasSeenTooltipFromLocalStorage
	end, { props.localStorageKey })

	local canShowTooltip = props.isIconVisible and not hasSeenTooltipFromLocalStorage and not dismissed
	local shouldShowTooltip = canShowTooltip and isTooltipShown

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
		if tooltipQueue and props.id then
			tooltipQueue.dismissTooltip(props.id, dismissalReason)
		end
	end, { setDismissed, shouldShowTooltip } :: { any })

	-- dismiss tooltip if interacting outside of tooltip, if props allow for it
	React.useEffect(function()
		local dismissalConnection: RBXScriptConnection? = nil
		if props.dismissOnOutsideInput and tooltipDelayPassed and not dismissed then
			dismissalConnection = UserInputService.InputBegan:Connect(function(input)
				if
					(
						input.UserInputType == Enum.UserInputType.Touch
						or input.UserInputType == Enum.UserInputType.MouseButton1
					) and tooltipRef.current ~= nil
				then
					local inputPosition = input.Position
					local guiPosition = tooltipRef.current.AbsolutePosition
					local guiSize = tooltipRef.current.AbsoluteSize

					-- If the input is outside the tooltip box
					if
						canShowTooltip
						and not (
							inputPosition.X >= guiPosition.X
							and inputPosition.X <= guiPosition.X + guiSize.X
							and inputPosition.Y >= guiPosition.Y
							and inputPosition.Y <= guiPosition.Y + guiSize.Y
						)
					then
						onDismissed("outsideInput")
					end
				end
			end)
		end

		return function()
			if dismissalConnection then
				dismissalConnection:Disconnect()
				dismissalConnection = nil
			end
		end
	end, { dismissed, tooltipDelayPassed, canShowTooltip } :: { any })

	React.useEffect(function()
		if tooltipQueue and props.id and canShowTooltip then
			tooltipQueue.registerTooltip(
				props.id,
				props.priority,
				props.showDelay or defaultProps.showDelay,
				props.dismissDelay or defaultProps.dismissDelay
			)
		end
		return function()
			if tooltipQueue and props.id and canShowTooltip then
				tooltipQueue.unregisterTooltip(props.id)
			end
		end
	end, { canShowTooltip :: any, props.id })

	React.useEffect(function()
		-- Currently, interacting with any Chrome element or the menu should dismiss the tooltip
		-- Unless the tooltip is ineleigible to show (ex: icon not visible)
		local connections = {
			ChromeService:onIntegrationActivated():connect(function()
				if canShowTooltip then
					onDismissed("unibarActivated")
				end
			end),
			ChromeService:onIntegrationHovered():connect(function()
				if canShowTooltip then
					onDismissed("unibarHovered")
				end
			end),
			GuiService.MenuOpened:Connect(function()
				if canShowTooltip then
					onDismissed("menuOpened")
				end
			end),
			menuIconHoveredSignal:connect(function(menuIconTooltipEnabled)
				if canShowTooltip and menuIconTooltipEnabled then
					onDismissed("menuIconHovered")
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
	end, { ChromeService, GuiService, menuIconHoveredSignal, canShowTooltip, onDismissed } :: { any })

	React.useEffect(function()
		if shouldShowTooltip and props.localStorageKey then
			LocalStore.storeForLocalPlayer(props.localStorageKey, true)
		end
	end, { shouldShowTooltip, props.localStorageKey } :: { any })

	return React.createElement(FtuxTooltipAnchor, {
		ref = tooltipRef,
		bodyText = localized.bodyText,
		headerText = localized.headerText,
		shouldShowTooltip = shouldShowTooltip,
	})
end

type CommonFtuxTooltipProps = {
	isIconVisible: boolean,

	headerKey: string,
	bodyKey: string,
	localStorageKey: string?,

	showDelay: number?,
	dismissDelay: number?,
	dismissOnOutsideInput: boolean?,

	onDismissed: ((boolean, FtuxTooltipDismissalReason?) -> nil)?,
}

return function(incomingProps: CommonFtuxTooltipProps)
	local props = Cryo.Dictionary.union(defaultProps, incomingProps)
	return React.createElement(FtuxTooltip, props :: any)
end
