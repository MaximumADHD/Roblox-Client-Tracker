local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local CorePackages = game:GetService("CorePackages")

local React = require(VerifiedBadges.Parent.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local useNavigation = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useNavigation
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local useLocalization = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.useLocalization
-- local AppPage = require(LuaApp.AppPage)
local constants = require(VerifiedBadges.constants)

local CONTENT_PADDING = UDim.new(0, 24)
local INNER_PADDING = UDim.new(0, 12)

local VERIFIED_BADGE_FAQ_URL = "https://en.help.roblox.com/hc/en-us/articles/7997207259156"

local getFFlagDecoupleNavigationFromVerifiedBadgeModal =
	require(CorePackages.Workspace.Packages.SharedFlags).getFFlagDecoupleNavigationFromVerifiedBadgeModal

type Props = {
	onClose: (() -> ())?,
	onConfirm: (() -> ())?,
}

local function selectScreenSize(state)
	return state.ScreenSize
end

local function AboutVerifiedBadgeModal(props: Props)
	local style = UIBlox.Core.Style.useStyle()
	local screenSize = useSelector(selectScreenSize)
	local navigation = useNavigation()

	local localized = useLocalization({
		titleText = "Feature.ProfileBadges.VerifiedBadgeInfoTitle",
		bodyText = "Feature.ProfileBadges.VerifiedBadgeInfo",
		learnMoreText = "Feature.ProfileBadges.VerifiedBadgeInfoLink",
	})

	local onClose = React.useCallback(function()
		if not getFFlagDecoupleNavigationFromVerifiedBadgeModal() then
			navigation.goBack()
		end

		if props.onClose then
			props.onClose()
		end
	end, { props, navigation })

	local onConfirm = React.useCallback(function()
		if not getFFlagDecoupleNavigationFromVerifiedBadgeModal() then
			navigation.replace({
				routeName = "GenericWebPage", --AppPage.GenericWebPage,
				params = {
					titleKey = "Feature.ProfileBadges.VerifiedBadgeInfoTitle",
					detail = VERIFIED_BADGE_FAQ_URL,
					extraProps = {
						onClose = onClose,
					},
				},
			})
		end

		if props.onConfirm then
			props.onConfirm()
		end
	end, { props, onClose, navigation } :: { any })

	return React.createElement(UIBlox.App.Dialog.Modal.PartialPageModal, {
		title = localized.titleText,
		screenSize = screenSize,
		buttonStackProps = {
			buttons = {
				{
					buttonType = UIBlox.App.Button.Enum.ButtonType.PrimarySystem,
					props = {
						onActivated = onConfirm,
						text = localized.learnMoreText,
					},
				},
			},
		},
		contentPadding = CONTENT_PADDING,
		onCloseClicked = onClose,
	}, {
		Wrapper = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = INNER_PADDING,
			}),

			Padding = React.createElement("UIPadding", {
				PaddingTop = INNER_PADDING,
				PaddingBottom = INNER_PADDING,
			}),

			Icon = React.createElement(UIBlox.App.Text.StyledTextLabel, {
				layoutOrder = 1,
				text = constants.VERIFIED_EMOJI,
				fontStyle = style.Font.Title,
				colorStyle = style.Theme.TextEmphasis,
				automaticSize = Enum.AutomaticSize.XY,
				fluidSizing = false,
			}),

			Body = React.createElement(UIBlox.App.Text.StyledTextLabel, {
				layoutOrder = 2,
				text = localized.bodyText,
				fontStyle = style.Font.Body,
				colorStyle = style.Theme.TextMuted,
				size = UDim2.fromScale(1, 0),
				automaticSize = Enum.AutomaticSize.Y,
				fluidSizing = false,
			}),
		}),
	})
end

return AboutVerifiedBadgeModal
