local Players = game:GetService("Players")

local DiscoverabilityModal = script.Parent.Parent.Parent
local TextKeys = require(DiscoverabilityModal.Common.TextKeys)
local dependencies = require(DiscoverabilityModal.dependencies)
local Analytics = DiscoverabilityModal.Analytics
local EventNames = require(Analytics.Enums.EventNames)

local React = dependencies.React
local UIBlox = dependencies.UIBlox
local useLocalization = dependencies.Hooks.useLocalization
local DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist =
	require(DiscoverabilityModal.Flags.DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist)
local DiscoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled =
	require(DiscoverabilityModal.Flags.DiscoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled)

local useStyle = UIBlox.Core.Style.useStyle
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Checkbox = UIBlox.App.InputButton.Checkbox
local SmallRadioButtonGroup = UIBlox.App.InputButton.RadioButtonList
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local UIBloxIconSize = UIBlox.App.Constant.IconSize

export type Props = {
	screenSize: Vector2,
	onCloseClicked: (string) -> (),
	onLearnMoreClick: () -> (),
	onActivated: (setting: string) -> (),
	prefillDiscoverabilitySetting: boolean,
	analytics: any,
}

local PREFILL_DISCOVERABLE_PADDING_TOP: number = 12
local CHECKBOX_CONTENT_PADDING_RIGHT: number = 24
local CHECKBOX_CONTENT_SPACING: number = 8
local MIDDLE_CONTENT_PADDING_TOP: number = 24
local MIDDLE_CONTENT_PADDING_BOTTOM: number = 36
local MIDDLE_CONTENT_SPACING: number = 12
local BUTTON_HEIGHT: number = 48
local BUTTON_MARGINS: number = 6
local RADIO_BUTTON_SIZE: number = 50
local YES_ID: number = 1
local NO_ID: number = 2

local DISCOVERABILITY_SETTING = {
	["1"] = "Discoverable",
	["2"] = "NotDiscoverable",
	["nil"] = "Unset",
}

local DiscoverabilityOverlay = function(props: Props)
	local prefillDiscoverabilitySetting = props.prefillDiscoverabilitySetting
	if
		Players.LocalPlayer
		and DiscoverabilityUpsellNonPrefillDiscoverableUserIdsWhitelist.isWhitelistedUserId(Players.LocalPlayer.UserId)
	then
		prefillDiscoverabilitySetting = false
	end

	local selectedValue, setSelectedValue = React.useState(if prefillDiscoverabilitySetting then YES_ID else nil)

	local stylePalette = useStyle()
	local font = stylePalette.Font
	local theme = stylePalette.Theme

	local localized = useLocalization({
		optInText = TextKeys.DISCOVERABILITY_OPT_IN,
		infoText = TextKeys.DISCOVERABILITY_INFO,
		learnMoreText = TextKeys.LEARN_MORE,
		continueText = TextKeys.CONTINUE,
		yesText = TextKeys.YES_OPT_IN,
		noText = TextKeys.NO_OPT_OUT,
		titleText = TextKeys.DISCOVERABILITY_TITLE,
		titleTextPrefillDiscoverable = TextKeys.DISCOVERABILITY_TITLE_PREFILL_DISCOVERABLE,
		optInTextPrefillDiscoverable = TextKeys.DISCOVERABILITY_OPT_IN_PREFILL_DISCOVERABLE,
		infoTextPrefillDiscoverable = TextKeys.DISCOVERABILITY_INFO_PREFILL_DISCOVERABLE,
	})

	local updateSelectedValue = function(value)
		props.analytics.fireAnalyticsEvent(EventNames.DiscoverabilityModalRadioButtonClick, {
			selected = DISCOVERABILITY_SETTING[tostring(value)],
		})
		setSelectedValue(value)
	end

	local setDiscoverabilitySettings = function()
		props.onActivated(DISCOVERABILITY_SETTING[tostring(selectedValue)])
	end

	local title, paddingTop, header, selector, infoText, learnMoreTextColor
	if DiscoverabilityUpsellPrefillDiscoverableRedesignRolloutEnabled() and prefillDiscoverabilitySetting then
		local toggleSelectedValue = function()
			updateSelectedValue(if selectedValue == YES_ID then NO_ID else YES_ID)
		end

		title = localized.titleTextPrefillDiscoverable
		paddingTop = PREFILL_DISCOVERABLE_PADDING_TOP
		header = React.createElement(ImageSetLabel, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
			Image = Images["icons/graphic/findfriends_xlarge"],
			ImageTransparency = theme.IconEmphasis.Transparency,
			Size = UDim2.fromOffset(UIBloxIconSize.XLarge, UIBloxIconSize.XLarge),
			Position = UDim2.fromScale(0.5, 0.5),
			LayoutOrder = 1,
		})
		selector = React.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, CHECKBOX_CONTENT_SPACING),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			UIPadding = React.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, MIDDLE_CONTENT_SPACING),
				PaddingRight = UDim.new(0, CHECKBOX_CONTENT_PADDING_RIGHT),
			}),
			Checkbox = React.createElement(Checkbox, {
				text = "",
				onActivated = toggleSelectedValue,
				isSelected = selectedValue == YES_ID,
				layoutOrder = 1,
			}),
			CheckboxLabel = React.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = font.Body.Font,
				Size = UDim2.fromScale(1, 0),
				Text = localized.optInTextPrefillDiscoverable,
				TextColor3 = theme.TextDefault.Color,
				TextSize = font.Body.RelativeSize * font.BaseSize,
				TextTransparency = theme.TextDefault.Transparency,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 2,
				[React.Event.Activated] = toggleSelectedValue,
			}),
		})
		infoText = localized.infoTextPrefillDiscoverable
		learnMoreTextColor = theme.TextLink.Color
	else
		title = localized.titleText
		paddingTop = MIDDLE_CONTENT_PADDING_TOP
		header = React.createElement(StyledTextLabel, {
			text = localized.optInText,
			fontStyle = font.Body,
			colorStyle = theme.TextDefault,
			size = UDim2.fromScale(1, 0),
			automaticSize = Enum.AutomaticSize.Y,
			textTruncate = Enum.TextTruncate.AtEnd,
			textXAlignment = Enum.TextXAlignment.Left,
			textYAlignment = Enum.TextYAlignment.Top,
			layoutOrder = 1,
		})
		selector = React.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			SmallRadioButtonGroup = React.createElement(SmallRadioButtonGroup, {
				radioButtons = {
					{ label = localized.yesText },
					{ label = localized.noText },
				},
				elementSize = UDim2.new(1, 0, 0, RADIO_BUTTON_SIZE),
				onActivated = updateSelectedValue,
				selectedValue = selectedValue,
				padding = UDim.new(0, 0),
				layoutOrder = 1,
			}),
		})
		infoText = localized.infoText
		learnMoreTextColor = theme.TextEmphasis.Color
	end

	return React.createElement(PartialPageModal, {
		title = title,
		screenSize = props.screenSize,
		onCloseClicked = function()
			props.onCloseClicked(DISCOVERABILITY_SETTING[tostring(selectedValue)])
		end,
		buttonStackProps = {
			buttons = {
				{
					buttonType = ButtonType.PrimarySystem,
					props = {
						onActivated = setDiscoverabilitySettings,
						text = localized.continueText,
					},
				},
			},
			buttonHeight = BUTTON_HEIGHT,
			marginBetween = BUTTON_MARGINS,
			forcedFillDirection = Enum.FillDirection.Vertical,
		},
	}, {
		ViewContainer = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 0),
			BackgroundTransparency = 1,
		}, {
			UIListLayout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, MIDDLE_CONTENT_SPACING),
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
			}),
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, paddingTop),
				PaddingBottom = UDim.new(0, MIDDLE_CONTENT_PADDING_BOTTOM),
			}),
			Header = header,
			Selector = selector,
			Description = React.createElement(StyledTextLabel, {
				text = infoText,
				fontStyle = font.CaptionBody,
				colorStyle = theme.TextDefault,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				textTruncate = Enum.TextTruncate.AtEnd,
				textXAlignment = Enum.TextXAlignment.Left,
				textYAlignment = Enum.TextYAlignment.Top,
				layoutOrder = 3,
			}),
			LearnMore = React.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Font = font.CaptionBody.Font,
				Size = UDim2.fromScale(1, 0),
				Text = localized.learnMoreText,
				TextColor3 = learnMoreTextColor,
				TextSize = font.CaptionBody.RelativeSize * font.BaseSize,
				TextTransparency = theme.TextEmphasis.Transparency,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				LayoutOrder = 4,
				[React.Event.Activated] = props.onLearnMoreClick,
			}),
		}),
	})
end

return DiscoverabilityOverlay
