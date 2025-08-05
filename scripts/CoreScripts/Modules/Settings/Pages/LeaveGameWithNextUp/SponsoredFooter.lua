--!strict
local CorePackages = game:GetService("CorePackages")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local Localization = require(CorePackages.Workspace.Packages.Localization)
local Responsive = require(CorePackages.Workspace.Packages.Responsive)

local useLocalization = Localization.Hooks.useLocalization
local usePreferredInput = Responsive.usePreferredInput
local Text = Foundation.Text
local View = Foundation.View
local Icon = Foundation.Icon
local InputSize = Foundation.Enums.InputSize
local Popover = Foundation.Popover
local ControlState = Foundation.Enums.ControlState
local useScaledValue = Foundation.Hooks.useScaledValue

type SponsoredFooterProps = {
	LayoutOrder: number,
}

local function SponsoredFooter(props: SponsoredFooterProps)
	local localized = useLocalization({
		SponsoredText = "Feature.GamePage.Label.Sponsored",
		SponsoredDisclosure = "CoreScripts.Ads.Label.SponsoredAdsDisclosureStatic",
	})
	local maxXSize = useScaledValue(320)
	local isTooltipActive, setIsTooltipActive = React.useState(false)
	local hoverSupported = usePreferredInput() == Responsive.Input.Pointer

	local onStateChangedForHover = React.useCallback(function(newState)
		if newState == ControlState.Hover or newState == ControlState.Selected then
			setIsTooltipActive(true)
		elseif newState == ControlState.Default then
			setIsTooltipActive(false)
		end
	end, {})
	local toggleTooltipActive = React.useCallback(function()
		setIsTooltipActive(function(currentState)
			return not currentState
		end)
	end, {})

	return React.createElement(View, {
		tag = "row align-y-bottom align-x-center gap-xsmall flex-between auto-y",
		LayoutOrder = props.LayoutOrder,
	}, {
		SponsoredText = React.createElement(Text, {
			tag = "size-full-0 text-no-wrap text-body-medium content-default text-align-x-left auto-xy",
			LayoutOrder = 1,
			Text = localized.SponsoredText,
		}),
		SponsoredTooltip = React.createElement(Popover.Root, {
			isOpen = isTooltipActive,
		}, {
			Anchor = React.createElement(Popover.Anchor, { LayoutOrder = 2 }, {
				IconView = React.createElement(View, {
					tag = "size-400-400 radius-circle",
					onStateChanged = if hoverSupported then onStateChangedForHover else nil,
					onActivated = if hoverSupported then nil else toggleTooltipActive,
				}, {
					Icon = React.createElement(Icon, {
						size = InputSize.Small,
						name = "icons/actions/info",
					}),
				}),
			}),
			Content = React.createElement(Popover.Content, nil, {
				DescriptionView = React.createElement(View, {
					tag = "col gap-xsmall padding-small auto-xy size-full-2400",
					sizeConstraint = {
						MaxSize = Vector2.new(maxXSize, math.huge),
					},
				}, {
					Description = React.createElement(Text, {
						Text = localized.SponsoredDisclosure,
						tag = "auto-xy text-body-small text-wrap",
					}),
				}),
			}),
		}),
	})
end

return React.memo(SponsoredFooter)
