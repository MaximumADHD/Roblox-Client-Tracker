local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")

local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider

type Props = {
	onLeaveGame: (source: string) -> (),
	onRespawn: (source: string) -> (),
	onResume: (source: string) -> (),
	setAddMenuKeyBindings: (addMenuKeyBindings: () -> ()) -> (),
	setRemoveMenuKeyBindings: (removeMenuKeyBindings: () -> ()) -> (),
	getVisibility: () -> boolean,
	getCanRespawn: Signals.getter<boolean>,
}

local MenuButtons = require(script.Parent.MenuButtons)

local function Container(props: Props)
	local localization = Localization.new(LocalizationService.RobloxLocaleId)

	return React.createElement(LocalizationProvider, {
		localization = localization,
	}, {
		FoundationProvider = React.createElement(FoundationProvider, {
			theme = Foundation.Enums.Theme.Dark,
		}, {
			MenuButtons = React.createElement(MenuButtons, props),
		}),
	})
end

return Container
