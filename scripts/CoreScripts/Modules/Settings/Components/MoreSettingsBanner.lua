local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local Settings = script.Parent.Parent
local shouldShowMoreSettingsBanner = require(Settings.shouldShowMoreSettingsBanner)

local useLocalization = Localization.Hooks.useLocalization
local useTokens = Foundation.Hooks.useTokens
local Icon = Foundation.Icon
local IconName = Foundation.Enums.IconName
local IconSize = Foundation.Enums.IconSize
local Text = Foundation.Text
local View = Foundation.View

export type MoreSettingsBannerProps = {
	isPioneerLaunch: (() -> boolean)?,
	getAvailability: (() -> shouldShowMoreSettingsBanner.Availability)?,
}

local function MoreSettingsBanner(props: MoreSettingsBannerProps): React.ReactNode
	local isPioneerLaunch, getAvailability = props.isPioneerLaunch, props.getAvailability
	local isVisible, setIsVisible = React.useState(false)
	local localized = useLocalization({
		text = "CoreScripts.InGameMenu.GameSettings.MoreSettingsAvailable",
	})
	local tokens = useTokens()

	React.useEffect(function()
		local isCancelled = false

		task.spawn(function()
			local shouldShow = shouldShowMoreSettingsBanner(isPioneerLaunch, getAvailability)
			if not isCancelled and shouldShow then
				setIsVisible(true)
			end
		end)

		return function()
			isCancelled = true
		end
	end, { isPioneerLaunch, getAvailability } :: { any })

	if not isVisible or localized.text == "" then
		return nil
	end

	return React.createElement(View, {
		tag = "size-full-0 auto-y",
		padding = {
			left = UDim.new(0, 10), -- same padding as setting row labels
			right = UDim.new(0, 10),
			bottom = UDim.new(0, tokens.Padding.Large),
		},
	}, {
		Banner = React.createElement(View, {
			tag = "row align-y-center gap-small size-full-0 auto-y padding-medium stroke-standard stroke-default radius-medium",
			testId = "MoreSettingsBanner",
		}, {
			Icon = React.createElement(Icon, {
				LayoutOrder = 1,
				name = IconName.CircleI,
				size = IconSize.Small,
			}),
			Label = React.createElement(Text, {
				LayoutOrder = 2,
				Text = localized.text,
				tag = "fill auto-y text-body-medium text-wrap text-align-x-left content-default",
				testId = "MoreSettingsAvailableText",
			}),
		}),
	})
end

return MoreSettingsBanner
