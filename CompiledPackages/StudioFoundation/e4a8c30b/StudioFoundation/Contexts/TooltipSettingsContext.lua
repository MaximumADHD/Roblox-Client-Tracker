local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)

local PopoverDelayGroup = require(Main.Components.Popover.PopoverDelayGroup).PopoverDelayGroup
local FIntTooltipShowDelay = game:DefineFastInt("TooltipShowDelay", 300)
local FIntTooltipHideDelay = game:DefineFastInt("TooltipHideDelay", 300)

local Types = require(Main.Types)

type Delay = Types.Delay

export type TooltipSettings = {
	delay: Delay,
	tooltipsDisabled: boolean,
	setTooltipsDisabled: (isDisabled: boolean) -> (),
}

local TooltipSettingsContext = React.createContext(nil :: TooltipSettings?)

export type TooltipSettingsProviderProps = {
	children: React.ReactNode,
	delay: Delay?,
	initialDisableAllTooltips: boolean?,
}

local function TooltipSettingsProvider(props: TooltipSettingsProviderProps)
	local delay = props.delay or {
		open = FIntTooltipShowDelay / 1000,
		close = FIntTooltipHideDelay / 1000,
	}

	local tooltipsDisabled, setTooltipsDisabled = React.useState(props.initialDisableAllTooltips or false)

	local contextValue: TooltipSettings = React.useMemo(function()
		return {
			tooltipsDisabled = tooltipsDisabled,
			setTooltipsDisabled = setTooltipsDisabled,
			delay = delay,
		}
	end, {
		tooltipsDisabled :: unknown,
		delay,
		setTooltipsDisabled,
	})

	return React.createElement(TooltipSettingsContext.Provider, {
		value = contextValue,
	}, React.createElement(PopoverDelayGroup, { timeout = 0.5 }, props.children))
end

local function useTooltipSettings(): TooltipSettings
	local context = React.useContext(TooltipSettingsContext)
	assert(context, "useTooltipSettings must be used within a TooltipSettingsProvider")
	return context
end

return {
	Provider = TooltipSettingsProvider,
	useTooltipSettings = useTooltipSettings,
}
