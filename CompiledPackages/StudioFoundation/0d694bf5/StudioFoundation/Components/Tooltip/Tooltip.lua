local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local PopoverAlign = Foundation.Enums.PopoverAlign
local PopoverSide = Foundation.Enums.PopoverSide
type PopoverAlign = Foundation.PopoverAlign
type PopoverSide = Foundation.PopoverSide

local Types = require(Main.Types)
type PanelHandler = Types.PanelHandler

local TooltipSettingsContext = require(Main.Contexts.TooltipSettingsContext)
local PopoverContent = require(Main.Components.Popover.PopoverContent)
local useMouseOver = require(Main.Hooks.useMouseOver)
local getPosition = require(Main.Components.Popover.getPosition)
local PopoverDelayGroup = require(Main.Components.Popover.PopoverDelayGroup)
local useDelayGroup = PopoverDelayGroup.useDelayGroup
local useShowDelayed = require(script.Parent.useShowDelayed)
local TooltipContent = require(script.Parent.TooltipContent)
local PanelsContext = require(Main.Panels.PanelsContext)
local usePanel = require(Main.Panels.usePanel)
local useAsyncOnAbsoluteSizeChanged = require(Main.Components.Popover.useAsyncOnAbsoluteSizeChanged)

type Props = {
	isOpen: boolean,
	onClose: () -> (),
	title: string?,
	text: string?,
	shortcuts: { string }?,
	align: PopoverAlign?,
	side: PopoverSide?,
	anchorRef: React.RefObject<GuiBase2d?>,
	anchorUri: StudioUri,
}

local function Tooltip(props: Props)
	local tooltipSettings = TooltipSettingsContext.useTooltipSettings()
	local panelsContextValue = PanelsContext.useValue()

	local isVisible, callbacks = useShowDelayed(props.isOpen, { delay = tooltipSettings.delay })
	useDelayGroup({
		floatingId = props.anchorUri,
		isOpen = props.isOpen,
		flush = callbacks.flush,
	})
	useMouseOver({
		anchorRef = props.anchorRef,
		anchorUri = props.anchorUri,
		isOpen = isVisible,
		onClose = props.onClose,
	})

	local textExists = props.text and props.text ~= ""
	local titleExists = props.title and props.title ~= ""
	local shouldBeOpen = isVisible and not tooltipSettings.tooltipsDisabled and (textExists or titleExists) or false

	local position = React.useMemo(function()
		return getPosition(props.side or PopoverSide.Bottom, props.align or PopoverAlign.Start)
	end, { props.side :: unknown, props.align })

	local panel = usePanel({
		isOpen = shouldBeOpen,
		onClose = props.onClose,
		anchorUri = props.anchorUri,
		position = position,
		registerPanelAsync = panelsContextValue.registerTooltipAsync,
	})

	local onAbsoluteSizeChanged = useAsyncOnAbsoluteSizeChanged(panel)

	return React.createElement(
		PopoverContent,
		{
			isOpen = shouldBeOpen,
			panel = panel,
		},
		React.createElement(TooltipContent, {
			title = props.title,
			text = props.text,
			shortcuts = props.shortcuts,
			onAbsoluteSizeChanged = onAbsoluteSizeChanged,
		})
	)
end

return Tooltip
