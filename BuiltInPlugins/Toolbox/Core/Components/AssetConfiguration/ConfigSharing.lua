--[[
	Asset config's allow sharing field.
]]
local FFlagToolboxAudioAssetConfigIdVerification = game:GetFastFlag("ToolboxAudioAssetConfigIdVerification")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)

local Button = Framework.UI.Button
local LinkText = Framework.UI.LinkText
local Pane = Framework.UI.Pane
local RadioButtonList = Framework.UI.RadioButtonList
local TextLabel = Framework.UI.Decoration.TextLabel

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local ToolboxUtilities = require(Util.ToolboxUtilities)
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")

local ConfigSharing = Roact.PureComponent:extend("ConfigSharing")

local BOTTOM_PADDING = 25
local BUTTON_SIZE = UDim2.fromOffset(160, 32)
local SPACING = 10
local TIPS_SPACING = 2
local TIPS_LEFT_PADDING = 25
local VERFICATION_BUTTON_SPACING = 10
local VERFICATION_NOTICE_PADDING = 10
local VERFICATION_NOTICE_SPACING = 10

function ConfigSharing:init()
	self.onLearnMoreActivated = function()
		local url = ToolboxUtilities.getAssetConfigMessaging()["audioPublicationDisabledLink"]
		if url then
			GuiService:OpenBrowserWindow(url)
		end
	end

	self.onClickVerify = function()
		GuiService:OpenBrowserWindow(AssetConfigConstants.ACCOUNT_SETTING_URL)
	end

	self.onClickRefreshVerficationStatus = function()
		local props = self.props
		local onClickRefreshVerficationStatus = props.OnClickRefreshVerficationStatus
		if onClickRefreshVerficationStatus then
			onClickRefreshVerficationStatus()
		end
	end
end

function ConfigSharing:render()
	local props = self.props
	local theme = props.Stylizer

	local assetConfigTheme = theme.assetConfig
	local publishAssetTheme = theme.publishAsset

	local assetId = props.AssetId
	local assetType = props.AssetType
	local allowSelectPrivate = props.AllowSelectPrivate
	local layoutOrder = props.LayoutOrder
	local isAssetPublic = props.IsAssetPublic
	local onSelected = props.OnSelected

	local localization = props.Localization
	local subTitleText = localization:getText("AssetConfigSharing", "SubTitle")
	local termsOfUseText = localization:getText("General", "TermsOfUse")

	local isIdVerificationRequired
	local isVerified
	local privateInformationText
	local showVerificationNotice
	local verificationActionButtonText
	local verificationNoticeText
	local verificationRefreshText
	if FFlagToolboxAudioAssetConfigIdVerification then
		isIdVerificationRequired = props.IsIdVerificationRequired
		isVerified = props.IsVerified

		verificationActionButtonText = localization:getText("AssetConfigSharing", "VerificationAction")
		verificationNoticeText = localization:getText("AssetConfigSharing", "VerificationNotice")
		verificationRefreshText = localization:getText("AssetConfigSharing", "CheckStatus")

		showVerificationNotice = isIdVerificationRequired and not isVerified
	end

	local privateText = localization:getText("AssetConfigSharing", "PrivateSpecificExperiences")
	local publicText = localization:getText("AssetConfigSharing", "PublicAllExperiences")
	local title = localization:getText("AssetConfigSharing", "ExperiencesWithAccess")
	if allowSelectPrivate then
		privateInformationText = localization:getText("AssetConfigSharing", "PrivateInformation")
	else
		privateInformationText = localization:getText("AssetConfigSharing", "PrivateDisabledInformation")
	end

	local informationText
	local publicInformationLinkProps
	local privateInformationLinkProps
	local allowSelectPublic = true
	if assetType == Enum.AssetType.Audio then
		if isAssetPublic then
			informationText = localization:getText("AssetConfigSharing", "PublicInformation")
		else
			informationText = localization:getText("AssetConfigSharing", "PublicDisabledInformation")
			allowSelectPublic = false
			publicInformationLinkProps = {
				Text = localization:getText("AssetConfigSharing", "PublicDisabledLinkText"),
				OnClick = self.onLearnMoreActivated,
			}

			privateInformationText = localization:getText("AssetConfigSharing", "PrivateInformationVersionTwo")
			if ToolboxUtilities.getAssetConfigMessaging()["showManageUniversePermissionsLink"] and assetId then
				privateInformationLinkProps = {
					Text = localization:getText("AssetConfigSharing", "PrivateInformationLinkText"),
					OnClick = function()
						local url = string.format(
							"%slibrary/configure?id=%s#!/general",
							ContentProvider.BaseUrl,
							HttpService:urlEncode(assetId)
						)
						return GuiService:OpenBrowserWindow(url)
					end,
				}
			end
		end
	else
		-- NOTE We /MIGHT/ want to keep this else code for audio too and instead enable FFlagToolboxAudioAssetConfigIdVerification in the future? TODO: Product decision needed.
		informationText = localization:getText("AssetConfigSharing", "PublicInformation")
		if FFlagToolboxAudioAssetConfigIdVerification and isIdVerificationRequired then
			allowSelectPublic = isVerified
		end
	end

	local orderIterator = LayoutOrderIterator.new()

	local selectedKey = if isAssetPublic
		then AssetConfigConstants.SHARING_KEYS.Public
		else AssetConfigConstants.SHARING_KEYS.Private

	return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		Padding = {
			-- TODO: Remove this when we refactor the rest of the PublishAsset "Config" components to use AutomaticSize.
			Bottom = BOTTOM_PADDING,
		},
		Size = UDim2.new(1, 0, 0, 0),
		VerticalAlignment = Enum.VerticalAlignment.Top,
	}, {

		Title = Roact.createElement(TextLabel, {
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = 1,
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),
			Text = title,
			TextColor = publishAssetTheme.titleTextColor,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),

		RightFrame = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 2,
			Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),
			Spacing = if showVerificationNotice then SPACING else TIPS_SPACING,
		}, {
			ContentContainer = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Vertical,
				LayoutOrder = orderIterator:getNextOrder(),
				Size = UDim2.new(1, 0, 0, 0),
				Spacing = SPACING,
			}, {
				SubtitleLabel = Roact.createElement(TextLabel, {
					AutomaticSize = Enum.AutomaticSize.Y,
					LayoutOrder = 1,
					Size = UDim2.new(1, 0, 0, 0),
					Text = subTitleText,
					TextColor = assetConfigTheme.brightText,
					TextSize = Constants.FONT_SIZE_ASSET_CONFIG_INPUT,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				RadioButtonList = Roact.createElement(RadioButtonList, {
					AutomaticSize = Enum.AutomaticSize.Y,
					Buttons = {
						{
							Key = AssetConfigConstants.SHARING_KEYS.Private,
							Text = privateText,
							Description = privateInformationText,
							LinkProps = privateInformationLinkProps,
							Disabled = not allowSelectPrivate,
						},
						{
							Key = AssetConfigConstants.SHARING_KEYS.Public,
							Text = publicText,
							Description = if (
										not FFlagToolboxAudioAssetConfigIdVerification or not showVerificationNotice
									)
								then informationText
								else nil,
							LinkProps = if (
										not FFlagToolboxAudioAssetConfigIdVerification or not showVerificationNotice
									)
								then publicInformationLinkProps
								else nil,
							Disabled = not allowSelectPublic,
						},
					},
					FillDirection = Enum.FillDirection.Vertical,
					LayoutOrder = 2,
					OnClick = onSelected,
					CurrentSelectedKey = selectedKey,
					SelectedKey = selectedKey,
					Style = "AssetConfigRadioButtonList",
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
			}),

			VerificationNotice = if FFlagToolboxAudioAssetConfigIdVerification and showVerificationNotice
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor = assetConfigTheme.verificationNotice.backgroundColor,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Vertical,
					LayoutOrder = orderIterator:getNextOrder(),
					Padding = VERFICATION_NOTICE_PADDING,
					Spacing = VERFICATION_NOTICE_SPACING,
					Size = UDim2.new(1, 0, 0, 0),
				}, {
					TipsLabel = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.Y,
						Size = UDim2.new(1, 0, 0, 0),
						Text = verificationNoticeText,
						TextColor = publishAssetTheme.tipsTextColor,
						TextSize = Constants.FONT_SIZE_LARGE,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),

					ButtonContainer = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.Y,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Horizontal,
						LayoutOrder = orderIterator:getNextOrder(),
						Spacing = VERFICATION_BUTTON_SPACING,
						Size = UDim2.new(1, 0, 0, 0),
					}, {
						VerifyButton = Roact.createElement(Button, {
							LayoutOrder = orderIterator:getNextOrder(),
							OnClick = self.onClickVerify,
							Style = "AssetConfigRoundPrimary",
							Size = BUTTON_SIZE,
							Text = verificationActionButtonText,
						}),

						RefreshButton = Roact.createElement(Button, {
							LayoutOrder = orderIterator:getNextOrder(),
							OnClick = self.onClickRefreshVerficationStatus,
							Style = "Round",
							Size = BUTTON_SIZE,
							Text = verificationRefreshText,
						}),
					}),
				})
				else nil,
		}),
	})
end

ConfigSharing = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(ConfigSharing)

return ConfigSharing
