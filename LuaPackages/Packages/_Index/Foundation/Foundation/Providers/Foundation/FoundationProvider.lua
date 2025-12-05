local Providers = script.Parent.Parent
local Foundation = Providers.Parent
local Packages = Foundation.Parent

local React = require(Packages.React)
local ContextStack = require(Packages.ReactUtils).ContextStack

local Types = require(Foundation.Components.Types)
local PreferencesProvider = require(Providers.Preferences.PreferencesProvider)
local StyleProvider = require(Providers.Style.StyleProvider)
local CursorProvider = require(Providers.Cursor)
local OverlayProvider = require(Providers.Overlay)
local ResponsiveContext = require(Providers.Responsive.ResponsiveContext)
local ResponsiveProvider = require(Providers.Responsive.ResponsiveProvider)
local ElevationProvider = require(Providers.Elevation.ElevationProvider).ElevationProvider
local Flags = require(Foundation.Utility.Flags)

type OverlayConfig = Types.OverlayConfig
type StyleProps = StyleProvider.StyleProviderProps
type Preferences = PreferencesProvider.PreferencesProps
type ResponsiveConfig = ResponsiveContext.ResponsiveConfig

export type FoundationProviderProps = {
	-- Plugins must provide overlay since they can't use the default PlayerGui
	overlayGui: (OverlayConfig | GuiBase2d)?,
	preferences: Preferences?,
	responsiveConfig: ResponsiveConfig?,
} & StyleProps

local function FoundationProvider(props: FoundationProviderProps)
	-- TODO: not any, children types acting weird
	local preferences: any = if props.preferences then props.preferences else {}
	local responsiveConfig = if props.responsiveConfig then props.responsiveConfig else {} :: ResponsiveConfig

	return React.createElement(ContextStack, {
		providers = {
			React.createElement(ElevationProvider, nil),
			React.createElement(PreferencesProvider, preferences),
			React.createElement(StyleProvider, {
				theme = props.theme,
				device = props.device,
				derives = props.derives,
				scale = preferences.scale,
			}),
			React.createElement(ResponsiveProvider, { config = responsiveConfig }),
			React.createElement(
				OverlayProvider,
				if Flags.FoundationOverlayDisplayOrder and typeof(props.overlayGui) == "table"
					then { DisplayOrder = props.overlayGui.DisplayOrder }
					else { gui = props.overlayGui }
			),
			React.createElement(CursorProvider),
		},
	}, props.children)
end

return FoundationProvider
