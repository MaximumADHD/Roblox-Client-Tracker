local Packages = script:FindFirstAncestor("Packages")
local GuiService = game:GetService("GuiService")

if not Packages then
	-- The embedded storybook should only load in Studio if it has been included as a library
	return nil
end

local React = require(Packages.React)
local Rodux = require(Packages.Rodux)
local ReactRoblox = require(Packages.ReactRoblox)
local Framework = require(Packages.Framework)
local RoactRodux = require(Packages.RoactRodux)
local Dash = require(Packages.Dash)
local ThemeSwitcher = Framework.Style.ThemeSwitcher

local registerPluginStyles = Framework.Styling.registerPluginStyles

local ContextServices = Framework.ContextServices
local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Analytics = ContextServices.Analytics
local Focus = ContextServices.Focus
local Mouse = ContextServices.Mouse
local Design = ContextServices.Design
local Localization = ContextServices.Localization
local Plugin = ContextServices.Plugin
local Store = ContextServices.Store

local Src = Packages.DeveloperStorybook.Src
local MainReducer = require(Src.Reducers.MainReducer)
local Window = require(Src.Components.Window)
local MakeTheme = require(Src.Resources.MakeTheme)
local SourceStrings = Src.Resources.SourceStrings
local LocalizedStrings = Src.Resources.LocalizedStrings
local ExternalEventConnection = require(Src.Util.ExternalEventConnection)
local GetStories = require(Src.Thunks.GetStories)

-- This code is intentionally copied here. Don't use StudioFoundation's FoundationProviderAdapter.lua
-- It doesn't work in player to some trickstery with react versions we do for ContextItem api.
local Foundation = require(Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider

function FoundationProviderAdaptor(props)
	return React.createElement(
		FoundationProvider,
		Dash.join(props, {
			theme = props.theme,
		})
	)
end

-- Hack to react to the theme change, we update value in the rodux store, but initially it's empty.
-- When the ThemeSwitcher has the correct value and doesn't have Default which may map to a different theme in Foundation.
FoundationProviderAdaptor = RoactRodux.connect(function()
	return { theme = ThemeSwitcher.getThemeName() }
end)(FoundationProviderAdaptor)
-- End of copy

function WindowWrapper(props: { design: any })
	local sideBarPadding, setSideBarPadding = React.useState(0)

	local onInsetChange = React.useCallback(function()
		setSideBarPadding(GuiService.TopbarInset.Height)
	end, {})

	return React.createElement(FoundationProviderAdaptor, { derives = { props.design } }, {
		React.createElement(Window, { sideBarPadding = sideBarPadding }),
		React.createElement(ExternalEventConnection, {
			event = GuiService:GetPropertyChangedSignal("TopbarInset"),
			callback = onInsetChange,
		}),
	})
end

local EmbeddedStorybook = {}

function EmbeddedStorybook.start(storybookGui: ScreenGui, player: Player)
	local store = Rodux.Store.new(MainReducer, {}, {
		Rodux.thunkMiddleware,
	})
	store:dispatch(GetStories())
	local localization = Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "StorybookClient",
		libraries = {
			[Framework.Resources.LOCALIZATION_PROJECT_NAME] = {
				stringResourceTable = Framework.Resources.SourceStrings,
				translationResourceTable = Framework.Resources.LocalizedStrings,
			},
		},
	})

	local plugin = MockPlugin.new()
	local design = registerPluginStyles(plugin, Packages.DeveloperStorybook, game.Workspace)

	local contextItems = {
		Store.new(store),
		MakeTheme(),
		localization,
		Focus.new(storybookGui),
		Plugin.new(plugin),
		Mouse.new(player:GetMouse()),
		Design.new(design),
		Analytics.mock(),
	}
	local Screen = function()
		return ContextServices.provide(contextItems, {
			Window = React.createElement(WindowWrapper, { design = design }),
		})
	end

	local element = React.createElement(Screen)
	EmbeddedStorybook.handle = ReactRoblox.createRoot(storybookGui)
	EmbeddedStorybook.handle:render(element)
end

function EmbeddedStorybook.stop()
	EmbeddedStorybook.handle:unmount()
end

return EmbeddedStorybook
