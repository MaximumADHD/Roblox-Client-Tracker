--[[
	Adaptor that allows using DeveloperFramework components, custom plugin styles and Foundation styles/component

	Why do we need it?
	FoundationProvider has its own StyleLink at the root and the DF styles stop working and the styles added with registerPluginStyles as well.
	Adaptor fixes this by making the plugin design (basically it's a StyleSheet) inherit the foundation. So under the StyleLink with design both Foundation and DF components will work.
	The second goal is to set the theme because FoundationProvider just accept the Theme property.
]]
local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local Framework = require(Packages.Framework)
local Foundation = require(Packages.Foundation)

local View = Foundation.View
local FoundationProvider = Foundation.FoundationProvider
local FoundationDevice = Foundation.Enums.Device
local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()
local FFlagStudioFoundationPluginPropSupport = require(Main.SharedFlags.getFFlagStudioFoundationPluginPropSupport)()
local useThemeName = require(Main.Hooks.useThemeName)
local StudioThemeContextProvider = require(Main.Contexts.StudioThemeContextProvider)
local ThemeContext = require(Main.Contexts.ThemeContext)
type FoundationTheme = Foundation.Theme
type FoundationDevice = Foundation.Device

local Types = require(Main.Types)
type FIXME = Types.FIXME

export type FoundationProviderAdapterProps = {
	device: FoundationDevice?,
	theme: FoundationTheme?,
	overlayGui: GuiBase2d?,
	plugin: Plugin?,
	children: React.ReactNode,
	onStyleSheetChange: ((styleSheet: StyleSheet?) -> ())?,
}

local ContextServices = Framework.ContextServices

-- Inserts Foundation StyleSheet into derives chain for plugin StyleSheet
local function StyleSheetWrapper(
	props: {
		themeName: FoundationTheme,
		children: React.ReactNode,
		-- TODO: Make required once plugins are migrated
		onStyleSheetChange: ((styleSheet: StyleSheet?) -> ())?,
	}
): React.ReactNode
	local styleSheet = Foundation.Hooks.useStyleSheet()
	-- use is added dynamically if React is used, so the types are not ideal
	local design = (ContextServices.Design :: FIXME).use():get()

	if props.onStyleSheetChange then
		React.useEffect(function()
			props.onStyleSheetChange(styleSheet)
		end, { styleSheet :: unknown, props.onStyleSheetChange })
	else
		React.useEffect(function()
			if styleSheet ~= nil then
				local newDerives = table.clone(design:GetDerives())
				-- This way Foundation is the least prioritized stylesheet, it's both good and bad.
				-- We can overwrite Foundation rules in the singling stylsheets, such as StudioMixins and PluginTheme, at the same time we can do this unconsiously.
				table.insert(newDerives, 1, styleSheet)
				design:SetDerives(newDerives)
			end
			-- design and stylesheet object doesn't change, but DF nukes the derive chain on theme change,
			-- so the hack is to use themeName in the dependencies and update the derivement chain
			-- hence the derive chain is nuked, no cleanup needed
		end, { design, styleSheet, props.themeName })
	end
	if not styleSheet then
		return nil
	end

	-- Nesting is required; otherwise, we have two links at the same level: ours and the Foundation one.
	return React.createElement(View, { tag = "size-full", testId = "--studio-foundation--stylesheet-wrapper" }, {
		-- It's impossible to just join props.children and StyleLink because props.children can be a single react element.
		Children = React.createElement(React.Fragment, nil, props.children),
		StyleLink = React.createElement("StyleLink", {
			StyleSheet = design,
		}),
	})
end

local function FoundationProviderAdapter(props: FoundationProviderAdapterProps)
	local device: FoundationDevice = props.device or FoundationDevice.Desktop
	local overlayGui = props.overlayGui or (ContextServices.Focus :: FIXME).use():get()
	local design = (ContextServices.Design :: FIXME).use():get()
	-- Remove the cast once FFlagStudioFoundationThemeContext is removed
	local theme = useThemeName() :: any
	-- Foundation and Studio themes match so far, should we do a check?
	local themeName: FoundationTheme = (
		if FFlagStudioFoundationThemeContext then theme else props.theme or theme.Name
	) :: FoundationTheme

	if overlayGui == nil then
		warn("No overlayGui is provided. Foundation will create a ScreenGui to render Toolips/Menus", debug.traceback())
	end

	return React.createElement(React.Fragment, nil, {
		Wrapper = React.createElement(
			"Frame",
			{
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			},
			React.createElement(
				FoundationProvider,
				{
					device = device,
					theme = themeName,
					overlayGui = overlayGui,
					plugin = if FFlagStudioFoundationPluginPropSupport then props.plugin else nil,
				},
				React.createElement(
					StyleSheetWrapper,
					{ themeName = themeName, onStyleSheetChange = props.onStyleSheetChange },
					props.children
				)
			)
		),
		StyleLink = React.createElement("StyleLink", {
			StyleSheet = design,
		}),
	})
end

local function StudioThemeWrapper(props: FoundationProviderAdapterProps): React.ReactNode
	-- If the theme was overridden, do not listen for Studio updates.
	if props.theme then
		return React.createElement(
			ThemeContext.Provider,
			{ value = props.theme },
			React.createElement(FoundationProviderAdapter, props)
		)
	else
		return React.createElement(
			StudioThemeContextProvider,
			nil,
			React.createElement(FoundationProviderAdapter, props)
		)
	end
end

if FFlagStudioFoundationThemeContext then
	return StudioThemeWrapper
else
	return FoundationProviderAdapter
end
