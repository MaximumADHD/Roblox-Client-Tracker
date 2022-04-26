--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]

local FFlagAssetConfigDistributionQuotas = game:GetFastFlag("AssetConfigDistributionQuotas")
local FFlagToolboxPrivatePublicAudioAssetConfig3 = game:GetFastFlag("ToolboxPrivatePublicAudioAssetConfig3")
local FFlagToolboxAudioAssetConfigDisablePublicAudio = game:GetFastFlag("ToolboxAudioAssetConfigDisablePublicAudio")
local FFlagToolboxUseFStringAssetConfigAudioCopyUrl = game:GetFastFlag("ToolboxUseFStringAssetConfigAudioCopyUrl")
local FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigDisabledAudioSharingLearnMoreLink"
)
local FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigEnabledAudioSharingLearnMoreLink"
)
local FFlagToolboxEnablePublicAudioToggle = game:GetFastFlag("ToolboxEnablePublicAudioToggle")
local FFlagToolboxAssetConfigurationMatchPluginFlow = game:GetFastFlag("ToolboxAssetConfigurationMatchPluginFlow")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = FFlagToolboxAssetConfigurationMatchPluginFlow and require(Util.AssetConfigUtil) or nil
local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)

local AssetConfiguration = Plugin.Core.Components.AssetConfiguration
local LinkButton = require(AssetConfiguration.LinkButton)

local LinkText = Framework.UI.LinkText
local Pane = Framework.UI.Pane
local ToggleButton = Framework.UI.ToggleButton

local withLocalization = ContextHelper.withLocalization

local GuiService = game:GetService("GuiService")

local ConfigCopy = Roact.PureComponent:extend("ConfigCopy")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

local TITLE_HEIGHT = 40

local LINK_BUTTON_WIDTH = 100
local LINK_BUTTON_HEIGHT = 20

local DISCLOSURE_HEIGHT = 80
local UNVERIFIED_HEIGHT = 50

local BOTTOM_PADDING = 25
local ERROR_TEXT_SPACING = 10
local TIPS_SPACING = 10

local WARNING_TIME_IN_SECONDS = 5

function ConfigCopy:init(props)
	if FFlagToolboxPrivatePublicAudioAssetConfig3 then
		self.warningCountdown = 0
		self.state = {
			copyWarning = Cryo.None,
		}
	end

	self.onLearnMoreActivated = function(rbx, inputObject)
		if self.props.CopyEnabled then
			if FFlagToolboxUseFStringAssetConfigAudioCopyUrl then
				GuiService:OpenBrowserWindow(FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink)
			else
				GuiService:OpenBrowserWindow(AssetConfigConstants.TERM_OF_USE_URL)
			end
		else
			if FFlagToolboxUseFStringAssetConfigAudioCopyUrl then
				GuiService:OpenBrowserWindow(FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink)
			else
				GuiService:OpenBrowserWindow(AssetConfigConstants.ACCOUNT_SETTING_URL)
			end
		end
	end

	self.toggleCallback = function()
		local assetType = props.AssetType
		local props = self.props
		local copyOn = props.CopyOn
		local localization = props.Localization
		local isAssetPublic = props.IsAssetPublic

		if FFlagToolboxPrivatePublicAudioAssetConfig3 then
			if assetType == Enum.AssetType.Audio and not isAssetPublic then
				self.warningCountdown = WARNING_TIME_IN_SECONDS
				self:setState({
					copyWarning = localization:getText("AssetConfigCopy", "MustShare"),
				})
			else
				props.ToggleCallback(not copyOn)
			end
		else
			props.ToggleCallback(not copyOn)
		end

		if FFlagToolboxAssetConfigurationMatchPluginFlow and assetType == Enum.AssetType.Plugin then
			local canChangeSalesStatus = props.canChangeSalesStatus
			local currentAssetStatus = props.currentAssetStatus
			local onStatusChange = props.onStatusChange

			if canChangeSalesStatus then
				local newStatus = AssetConfigUtil.isOnSale(currentAssetStatus) and
					AssetConfigConstants.ASSET_STATUS.OffSale or
					AssetConfigConstants.ASSET_STATUS.OnSale
				onStatusChange(newStatus)
			end
		end
	end

	if FFlagAssetConfigDistributionQuotas then
		self.distributionQuotas = ToolboxUtilities.getAssetConfigDistributionQuotas()

		self.onQuotaLinkActivated = function()
			local assetType = self.props.AssetType
			if not assetType then
				return
			end

			local quotaPolicyForAssetType = self.distributionQuotas[assetType.Name]
			if not quotaPolicyForAssetType or not quotaPolicyForAssetType.link then
				return
			end

			GuiService:OpenBrowserWindow(quotaPolicyForAssetType.link)
		end
	end
end

if FFlagToolboxPrivatePublicAudioAssetConfig3 then
	function ConfigCopy:didMount(prevProps, prevState)
		local timeSignal = game:GetService("RunService").Heartbeat
		local countdownTime = 0
		self.connection = timeSignal:connect(function(dt)
			self:setState(function(state)
				if self.copyWarning ~= Cryo.None then
					self.warningCountdown -= dt
					if self.warningCountdown <= 0 then
						return {
							copyWarning = Cryo.None,
						}
					end
				end
			end)
		end)
	end

	function ConfigCopy:willUnmount()
		if self.connection then
			self.connection:disconnect()
		end
	end

	function ConfigCopy:didUpdate(prevProps, prevState)
		local props = self.props
		local assetType = props.AssetType
		local localization = props.Localization

		local warningText = localization:getText("AssetConfigCopy", "MustShare")

		if assetType == Enum.AssetType.Audio then
			self:setState(function(state)
				local wasPublicThenPrivate = not props.IsAssetPublic and prevProps.IsAssetPublic
				if
					props.IsAudio
					and state.copyWarning ~= warningText
					and (wasPublicThenPrivate and prevProps.CopyOn)
				then
					self.warningCountdown = WARNING_TIME_IN_SECONDS
					return {
						copyWarning = warningText,
					}
				elseif prevState.copyWarning ~= Cryo.None and props.IsAssetPublic then
					return {
						copyWarning = Cryo.None,
					}
				else
					return nil
				end
			end)
		end
	end
end

function ConfigCopy:render()
	if FFlagToolboxPrivatePublicAudioAssetConfig3 then
		return self:renderContent()
	else
		return withLocalization(function(_, localizedContent)
			return self:renderContent(nil, localizedContent)
		end)
	end
end

function ConfigCopy:renderContent(theme, localizedContent)
	theme = self.props.Stylizer

	local props = self.props
	local state = self.state

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local assetType = props.AssetType
	local CopyOn = props.CopyOn
	local CopyEnabled = props.CopyEnabled
	local isAssetPublic = props.IsAssetPublic

	local copyWarning = state.copyWarning

	local publishAssetTheme = theme.publishAsset

	local quotaMessageText
	local quotaLinkText
	if FFlagAssetConfigDistributionQuotas and assetType and CopyEnabled then
		local quotaPolicyForAssetType = self.distributionQuotas[assetType.Name]
		if quotaPolicyForAssetType then
			if
				quotaPolicyForAssetType.capacity ~= nil
				and quotaPolicyForAssetType.capacity > 0
				and quotaPolicyForAssetType.days ~= nil
				and quotaPolicyForAssetType.days > 0
			then
				quotaMessageText =
					props.Localization:getText(
						"AssetConfigSharing",
						"DistributeMarketplaceQuotaUnused2",
						{
							capacity = string.format("%d", quotaPolicyForAssetType.capacity),
							days = string.format("%d", quotaPolicyForAssetType.days),
						}
					)
			elseif quotaPolicyForAssetType.link then
				quotaLinkText = props.Localization:getText("AssetConfigSharing", "DistributeMarketplaceQuotaInfoLink")
			end
		end
	end

	local informationHeight
	local informationText
	local learnMoreText
	local showWarningText
	local localization
	if FFlagToolboxPrivatePublicAudioAssetConfig3 then
		localization = props.Localization
		informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
		learnMoreText = localization:getText("General", "LearnMore")
		showWarningText = copyWarning ~= Cryo.None
	else
		informationHeight = CopyEnabled and DISCLOSURE_HEIGHT or UNVERIFIED_HEIGHT
		local publishAssetLocalized = localizedContent.AssetConfig.PublishAsset
		learnMoreText = publishAssetLocalized.LearnMore
		informationText = CopyEnabled and localizedContent.AssetConfig.Terms or localizedContent.AssetConfig.Accounts
	end

	if FFlagToolboxAudioAssetConfigDisablePublicAudio then
		local assetType = props.AssetType
		if assetType == Enum.AssetType.Audio then
			localization = props.Localization
			if FFlagToolboxEnablePublicAudioToggle and isAssetPublic then
				informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
			else
				informationText = localization:getText("AssetConfigCopy", "TemporarilyDisabledMessage")
			end
		end
	end

	local rightFrameLayoutOrder = LayoutOrderIterator.new()

	return Roact.createElement("Frame", {
		AutomaticSize = if FFlagToolboxPrivatePublicAudioAssetConfig3 then Enum.AutomaticSize.Y else nil,
		Size = if FFlagToolboxPrivatePublicAudioAssetConfig3
			then UDim2.new(1, 0, 0, TOGGLE_BUTTON_HEIGHT + LINK_BUTTON_HEIGHT + 10)
			else UDim2.new(1, 0, 0, informationHeight + TOGGLE_BUTTON_HEIGHT + LINK_BUTTON_HEIGHT + 10),

		BackgroundTransparency = 1,
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement("TextLabel", {
			AutomaticSize = if FFlagToolboxPrivatePublicAudioAssetConfig3 then Enum.AutomaticSize.Y else nil,
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TITLE_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			TextWrapped = if FFlagToolboxPrivatePublicAudioAssetConfig3 then true else nil,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		RightFrame = Roact.createElement("Frame", {
			AutomaticSize = if FFlagToolboxEnablePublicAudioToggle then Enum.AutomaticSize.Y else nil,
			Size = if FFlagToolboxEnablePublicAudioToggle
				then UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0)
				else UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TotalHeight),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			LayoutOrder = 2,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				-- TODO: Remove this when we refactor the rest of the PublishAsset "Config" components to use AutomaticSize.
				PaddingBottom = UDim.new(0, if FFlagToolboxPrivatePublicAudioAssetConfig3 then BOTTOM_PADDING else 0),
				PaddingLeft = UDim.new(0, 0),
				PaddingRight = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
			}),

			UIListLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				Padding = UDim.new(0, 0),
			}),

			ToggleButtonContainer = if FFlagToolboxPrivatePublicAudioAssetConfig3
				then Roact.createElement(Pane, {
					BackgroundTransparency = 1,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = if FFlagAssetConfigDistributionQuotas
						then rightFrameLayoutOrder:getNextOrder()
						else 1,
					Padding = {
						Bottom = TIPS_SPACING,
					},
					Size = UDim2.new(1, 0, 0, TOGGLE_BUTTON_HEIGHT + TIPS_SPACING),
					Spacing = ERROR_TEXT_SPACING,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}, {
					ToggleButton = Roact.createElement(ToggleButton, {
						Disabled = not CopyEnabled,
						LayoutOrder = 1,
						OnClick = self.toggleCallback,
						Selected = CopyOn,
						Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
					}),

					ErrorText = if showWarningText
						then Roact.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.XY,
							LayoutOrder = 2,
							BackgroundTransparency = 1,
							Font = Constants.FONT,
							Size = UDim2.new(1, 0, 0, 0),
							Text = copyWarning,
							TextWrapped = true,
							TextColor3 = theme.assetConfig.errorColor,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Center,
							TextSize = Constants.FONT_SIZE_LARGE,
						})
						else nil,
				})
				else nil,

			ToggleButton = if not FFlagToolboxPrivatePublicAudioAssetConfig3
				then Roact.createElement(ToggleButton, {
					Disabled = not CopyEnabled,
					LayoutOrder = if FFlagAssetConfigDistributionQuotas
						then rightFrameLayoutOrder:getNextOrder()
						else 1,
					OnClick = self.toggleCallback,
					Selected = CopyOn,
					Size = UDim2.new(0, TOGGLE_BUTTON_WIDTH, 0, TOGGLE_BUTTON_HEIGHT),
				})
				else nil,

			QuotaInfo = if quotaMessageText or quotaLinkText
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
					Padding = {
						Top = 5,
						Bottom = 5,
					},
				}, {
					QuotaMessage = if quotaMessageText
						then Roact.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							Font = Constants.FONT,
							Text = quotaMessageText,
							TextWrapped = true,
							TextSize = Constants.FONT_SIZE_LARGE,
							TextColor3 = publishAssetTheme.distributionQuotaTextColor,
						})
						else nil,
					QuotaLink = if quotaLinkText
						then Roact.createElement(LinkText, {
							Text = quotaLinkText,
							OnClick = self.onQuotaLinkActivated,
						})
						else nil,
				})
				else nil,

			TipsLabel = Roact.createElement("TextLabel", {
				AutomaticSize = if FFlagToolboxPrivatePublicAudioAssetConfig3 then Enum.AutomaticSize.Y else nil,
				Size = if FFlagToolboxPrivatePublicAudioAssetConfig3
					then UDim2.new(1, 0, 0, 0)
					else UDim2.new(1, 0, 0, informationHeight),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = informationText,
				TextWrapped = true,
				TextColor3 = if FFlagAssetConfigDistributionQuotas
					then publishAssetTheme.titleTextColor
					else publishAssetTheme.tipsTextColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = Constants.FONT_SIZE_LARGE,
				Font = Constants.FONT,

				LayoutOrder = if FFlagAssetConfigDistributionQuotas then rightFrameLayoutOrder:getNextOrder() else 2,
			}),

			LinkButton = if FFlagToolboxPrivatePublicAudioAssetConfig3
				then Roact.createElement(LinkText, {
					LayoutOrder = if FFlagAssetConfigDistributionQuotas
						then rightFrameLayoutOrder:getNextOrder()
						else 3,
					OnClick = self.onLearnMoreActivated,
					Text = learnMoreText,
				})
				else Roact.createElement(LinkButton, {
					Size = UDim2.new(0, LINK_BUTTON_WIDTH, 0, LINK_BUTTON_HEIGHT),
					Text = learnMoreText,
					TextSize = Constants.FONT_SIZE_MEDIUM,
					Font = Constants.FONT,
					onActivated = self.onLearnMoreActivated,

					LayoutOrder = if FFlagAssetConfigDistributionQuotas
						then rightFrameLayoutOrder:getNextOrder()
						else 3,
				}),
		}),
	})
end

ConfigCopy = withContext({
	Localization = if FFlagToolboxPrivatePublicAudioAssetConfig3
			or FFlagToolboxAudioAssetConfigDisablePublicAudio
			or FFlagAssetConfigDistributionQuotas
		then ContextServices.Localization
		else nil,
	Stylizer = ContextServices.Stylizer,
})(ConfigCopy)

return ConfigCopy
