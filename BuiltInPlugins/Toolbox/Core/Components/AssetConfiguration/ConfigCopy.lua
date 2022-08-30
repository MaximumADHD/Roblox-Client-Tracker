--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]
local FFlagToolboxEnableAssetConfigPhoneVerification = game:GetFastFlag("ToolboxEnableAssetConfigPhoneVerification")
local FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigDisabledAudioSharingLearnMoreLink"
)
local FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigEnabledAudioSharingLearnMoreLink"
)

local FFlagUnifyModelPackagePublish2 = game:GetFastFlag("UnifyModelPackagePublish2")
local FFlagToolboxAllowDisablingCopyingAtQuota = game:GetFastFlag("ToolboxAllowDisablingCopyingAtQuota")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Cryo = require(Packages.Cryo)
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)

local AssetQuotaTypes = require(Plugin.Core.Types.AssetQuotaTypes)
local AssetSubTypes = require(Plugin.Core.Types.AssetSubTypes)

local formatLocalDateTime = Framework.Util.formatLocalDateTime
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork
local Urls = require(Util.Urls)
local sanitizeRichText = require(Util.sanitizeRichText)

local Dash = Framework.Dash
local TextLabel = Framework.UI.Decoration.TextLabel
local LinkText = Framework.UI.LinkText
local List = Framework.UI.List
local Pane = Framework.UI.Pane
local ToggleButton = Framework.UI.ToggleButton
local StyleModifier = Framework.Util.StyleModifier

local GuiService = game:GetService("GuiService")

local ConfigCopy = Roact.PureComponent:extend("ConfigCopy")

local TOGGLE_BUTTON_WIDTH = 40
local TOGGLE_BUTTON_HEIGHT = 24

local TITLE_HEIGHT = 40

local LINK_BUTTON_HEIGHT = 20

local BOTTOM_PADDING = 25
local ERROR_TEXT_SPACING = 10
local TIPS_SPACING = 10

local WARNING_TIME_IN_SECONDS = 5
local VERIFY_BULLET_INDENTATION = 10
local VERIFY_BULLET_SPACING = 10
local CURRENT_LIMIT_INDENTATION = 15

function ConfigCopy:init(props)
	self.warningCountdown = 0
	self.state = {
		copyWarning = Cryo.None,
	}

	self.onLearnMoreActivated = function(rbx, inputObject)
		if FFlagToolboxEnableAssetConfigPhoneVerification then
			if self.props.CopyEnabled then
				GuiService:OpenBrowserWindow(ToolboxUtilities.getSafetyLearnMoreUrl())
			else
				GuiService:OpenBrowserWindow(ToolboxUtilities.getAudioPrivacyLearnMoreUrl())
			end
		else
			if self.props.CopyEnabled then
				GuiService:OpenBrowserWindow(FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink)
			else
				GuiService:OpenBrowserWindow(FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink)
			end
		end
	end

	self.toggleCallback = function()
		local assetType = props.AssetType
		local props = self.props
		local copyOn = props.CopyOn
		local localization = props.Localization
		local isAssetPublic = props.IsAssetPublic

		if assetType == Enum.AssetType.Audio and not isAssetPublic then
			self.warningCountdown = WARNING_TIME_IN_SECONDS
			self:setState({
				copyWarning = localization:getText("AssetConfigCopy", "MustShare"),
			})
		else
			props.ToggleCallback(not copyOn)
		end

		if assetType == Enum.AssetType.Plugin then
			local canChangeSalesStatus = props.canChangeSalesStatus
			local currentAssetStatus = props.currentAssetStatus
			local onStatusChange = props.onStatusChange

			if canChangeSalesStatus then
				local newStatus = if AssetConfigUtil.isOnSale(currentAssetStatus)
					then AssetConfigConstants.ASSET_STATUS.OffSale
					else AssetConfigConstants.ASSET_STATUS.OnSale

				onStatusChange(newStatus)
			end
		end
	end

	self.distributionQuotaPolicy = ToolboxUtilities.getAssetConfigDistributionQuotas()

	self.onQuotaLinkActivated = function()
		local assetType = self.props.AssetType
		if not assetType then
			return
		end

		local quotaPolicyForAssetType = self.distributionQuotaPolicy[assetType.Name]
		if not quotaPolicyForAssetType or not quotaPolicyForAssetType.link then
			return
		end

		GuiService:OpenBrowserWindow(quotaPolicyForAssetType.link)
	end
	
	if FFlagToolboxEnableAssetConfigPhoneVerification then
		self.onClickVerifyLink = function()
			GuiService:OpenBrowserWindow(ToolboxUtilities.getVerificationDocumentationUrl())
		end

		-- TODO: Replace with DF List when it's available
		self.getListBullets = function(textList)
			local theme = self.props.Stylizer
			local publishAssetTheme = theme.publishAsset

			local list = {}
			for i,text in ipairs(textList) do
				list[text] = Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					Layout = Enum.FillDirection.Horizontal,
					LayoutOrder = i,
					Spacing = VERIFY_BULLET_SPACING,
				}, {
					Bullet = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = "•",
						TextColor = publishAssetTheme.verifyTextColor,
						TextSize = Constants.FONT_SIZE_LARGE,
					}),

					Text = Roact.createElement(TextLabel, {
						AutomaticSize = Enum.AutomaticSize.XY,
						Text = text,
						TextColor = publishAssetTheme.verifyTextColor,
						TextSize = Constants.FONT_SIZE_LARGE,
					}),
				})
			end

			return list
		end
	end
end

function ConfigCopy:didMount(prevProps, prevState)
	if FFlagUnifyModelPackagePublish2 and self.props.AssetType == Enum.AssetType.Audio then
		local timeSignal = game:GetService("RunService").Heartbeat
		self.connection = timeSignal:connect(function(dt)
			self:setState(function(state)
				local copyWarning = if FFlagToolboxEnableAssetConfigPhoneVerification then state.copyWarning else self.copyWarning
				if copyWarning ~= Cryo.None then
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

	self:updateDistributionQuotas()
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
	local packageWarningText = localization:getText("AssetConfigCopy", "PackageCantShare")

	if assetType == Enum.AssetType.Audio then
		self:setState(function(state)
			local wasPublicThenPrivate = not props.IsAssetPublic and prevProps.IsAssetPublic
			if props.IsAudio and state.copyWarning ~= warningText and (wasPublicThenPrivate and prevProps.CopyOn) then
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
	elseif props.AssetType == Enum.AssetType.Model and FFlagUnifyModelPackagePublish2 and not props.isPackageAsset and not props.isPackageMarketplacePublishAllowed then
		-- We only need to show warning if we're trying to publish a new instance as a package to marketplace, but we don't have permission to do so
		self:setState(function(state)
			if state.copyWarning ~= packageWarningText and props.PackageOn and not prevProps.PackageOn then
				return {
					copyWarning = packageWarningText,
				}
			elseif state.copyWarning ~= Cryo.None and not props.PackageOn and prevProps.PackageOn then
				return {
					copyWarning = Cryo.None,
				}
			else
				return nil
			end
		end)
	end

	if assetType ~= prevProps.AssetType then
		self:updateDistributionQuotas()
	end
end

function ConfigCopy:updateDistributionQuotas()
	local networkInterface = getNetwork(self)

	local assetType = self.props.AssetType
	local quotaPolicyForAssetType = assetType and self.distributionQuotaPolicy[assetType.Name]

	if not quotaPolicyForAssetType then
		self:setState({
			distributionQuota = Roact.None,
		})
		return
	end

	networkInterface
		:getCreatorMarketplaceQuotas(assetType, "RateLimitCreatorMarketplaceDistribute")
		:andThen(function(result)
			local response: AssetQuotaTypes.AssetQuotasResponse = result.responseBody
			local monthlyQuota = if response
					and response.quotas
					and #response.quotas > 0
				then Dash.find(response.quotas, function(item)
					return item.duration == "Month"
				end)
				else nil
			if monthlyQuota then
				self:setState({
					distributionQuota = monthlyQuota,
				})
			else
				self:setState({
					distributionQuota = Roact.None,
				})
			end
		end, function(err)
			-- Treat failure to fetch quotas as distribution being temporarily disabled
			self:setState({
				distributionQuota = {
					capacity = 0,
					usage = 0,
				},
			})
			if DebugFlags.shouldDebugWarnings() then
				warn("Error fetching asset quotas " .. tostring(err))
			end
		end)
end

function ConfigCopy:getDistributionQuotaStatus(showVerifiedText)
	local props = self.props
	local state = self.state
	local publishingEnabled: boolean = true
	local quotaMessageText: string
	local quotaLinkText: string -- TODO Remove with FFlagToolboxEnableAssetConfigPhoneVerification
	local assetType = props.AssetType

	local quotaPolicyForAssetType = assetType and self.distributionQuotaPolicy[assetType.Name]
	local distributionQuota = state.distributionQuota
	if quotaPolicyForAssetType and distributionQuota then
		local usage = distributionQuota.usage
		local capacity = distributionQuota.capacity
		local expirationTime = distributionQuota.expirationTime or ""
		local localeId = self.props.Localization:getLocale()

		if capacity < 1 then
			publishingEnabled = false
			quotaMessageText = props.Localization:getText("AssetConfigSharing", "DistributeMarketplaceQuotaUnavailable")
			if FFlagToolboxEnableAssetConfigPhoneVerification then
				showVerifiedText = false
			end
		elseif usage == 0 then
			quotaMessageText = props.Localization:getText("AssetConfigSharing", "DistributeMarketplaceQuotaUnused2", {
				capacity = string.format("%d", capacity),
				days = string.format("%d", 30),
			})
		elseif usage >= capacity then
			publishingEnabled = false
			local formattedDateTime = formatLocalDateTime(expirationTime, "MMM D, h:mmA", localeId)
			quotaMessageText =
				props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaExhausted1",
					{
						dateTime = formattedDateTime,
					}
				)
		elseif usage > 0 then
			local formattedDate = formatLocalDateTime(expirationTime, "MMM D", localeId)
			quotaMessageText =
				props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaRemaining2",
					{
						remaining = string.format("%d", capacity - usage),
						date = formattedDate,
					}
				)
		end
		if not FFlagToolboxEnableAssetConfigPhoneVerification and quotaPolicyForAssetType.link then
			quotaLinkText = props.Localization:getText("AssetConfigSharing", "DistributeMarketplaceQuotaInfoShortLink")
		end
	end

	return publishingEnabled, quotaMessageText, quotaLinkText, showVerifiedText
end

function ConfigCopy:render()
	local theme = self.props.Stylizer

	local props = self.props
	local state = self.state

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local assetType = props.AssetType
	local CopyOn = props.CopyOn
	local CopyEnabled = props.CopyEnabled
	local isAssetPublic = props.IsAssetPublic
	local isVerified = props.isVerified
	local verificationSupportedTypes = props.verificationSupportedTypes

	local copyWarning = state.copyWarning

	local publishAssetTheme = theme.publishAsset

	local showVerifiedText
	if FFlagToolboxEnableAssetConfigPhoneVerification then
		showVerifiedText = not isVerified and #verificationSupportedTypes > 0
	end
	local quotaMessageText
	local quotaLinkText -- TODO Remove with FFlagToolboxEnableAssetConfigPhoneVerification

	if assetType and CopyEnabled then
		local publishingEnabled
		publishingEnabled, quotaMessageText, quotaLinkText, showVerifiedText = self:getDistributionQuotaStatus(showVerifiedText)

		if not publishingEnabled then
			-- Allow un-publishing, but not publishing
			CopyEnabled = if FFlagToolboxAllowDisablingCopyingAtQuota then CopyOn else false
		end
	end

	local showSharesLeftAlone = if FFlagToolboxEnableAssetConfigPhoneVerification then quotaMessageText and quotaMessageText ~= "" else nil
	local verifyHeaderText
	local verifyReasonList
	local currentLimitText
	if FFlagToolboxEnableAssetConfigPhoneVerification then
		if not isVerified then
			showSharesLeftAlone = false
		end
		verifyHeaderText = props.Localization:getText("AssetConfigSharing", "VerifyYourAccount")

		local verifyQuotaTextWithColor
		if quotaMessageText then
			verifyQuotaTextWithColor = '<font color="#'
				.. sanitizeRichText(publishAssetTheme.quotaTextColor:ToHex())
				.. '">'
				.. sanitizeRichText(quotaMessageText)
				.. "</font>"
			currentLimitText = props.Localization:getText("AssetConfigSharing", "VerifyCurrentLimit", {
				quotaText = verifyQuotaTextWithColor or "",
			})
		end

		local verifyReason1 = props.Localization:getText("AssetConfigSharing", "VerifyReason1")
		local verifyReason2 = props.Localization:getText("AssetConfigSharing", "VerifyReason2")
		verifyReasonList = self.getListBullets({ verifyReason1, verifyReason2 })
	end

	local localization = props.Localization
	local informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
	local learnMoreText = localization:getText("General", "LearnMore")
	local showWarningText = copyWarning ~= Cryo.None

	if assetType == Enum.AssetType.Audio then
		localization = props.Localization
		if isAssetPublic then
			informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
		else
			informationText = localization:getText("AssetConfigCopy", "TemporarilyDisabledMessage")
			showVerifiedText = if FFlagToolboxEnableAssetConfigPhoneVerification then false else nil
		end
	end

	local rightFrameLayoutOrder = LayoutOrderIterator.new()

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		BorderSizePixel = if FFlagToolboxEnableAssetConfigPhoneVerification then nil else 0,
		Size = UDim2.new(1, 0, 0, TOGGLE_BUTTON_HEIGHT + LINK_BUTTON_HEIGHT + 10),
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
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = if FFlagToolboxEnableAssetConfigPhoneVerification then nil else 0,
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TITLE_HEIGHT),
			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			TextWrapped = true,
			Font = Constants.FONT,

			LayoutOrder = 1,
		}),

		RightFrame = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = if FFlagToolboxEnableAssetConfigPhoneVerification then nil else 0,
			Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),
			LayoutOrder = 2,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				-- TODO: Remove this when we refactor the rest of the PublishAsset "Config" components to use AutomaticSize.
				PaddingBottom = UDim.new(0, BOTTOM_PADDING),
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

			ToggleButtonContainer = Roact.createElement(Pane, {
				BackgroundTransparency = 1,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Layout = Enum.FillDirection.Horizontal,
				LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
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
			}),

			VerifyNotice = if FFlagToolboxEnableAssetConfigPhoneVerification and showVerifiedText then
				Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
						Padding = {
							Top = 5,
							Bottom = 5,
						},
				}, {
					VerifyNoticeHeader = Roact.createElement(LinkText, {
						Text = verifyHeaderText,
						OnClick = self.onClickVerifyLink,
						LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
					}),

					-- TODO: Replace with DF List when it's available
					VerifyReasonList = Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						Layout = Enum.FillDirection.Vertical,
						LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
						Padding = {
							Left = VERIFY_BULLET_INDENTATION,
						},
					}, verifyReasonList),

					CurrentLimitText = if quotaMessageText then Roact.createElement(Pane, {
						AutomaticSize = Enum.AutomaticSize.XY,
						LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
						Padding = {
							Left = CURRENT_LIMIT_INDENTATION,
						},
					}, {
						Text = Roact.createElement(TextLabel, {
							AutomaticSize = Enum.AutomaticSize.XY,
							RichText = true,
							Text = currentLimitText,
							TextColor = publishAssetTheme.verifyTextColor,
							TextSize = Constants.FONT_SIZE_LARGE,
						}),
					}) else nil,
				})
			else nil,

				QuotaInfo = if quotaMessageText or quotaLinkText
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
					Padding = {
						Top = 5,
						Bottom = 5,
					},
				}, {
					QuotaMessage = if not FFlagToolboxEnableAssetConfigPhoneVerification or showSharesLeftAlone
						then Roact.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							Font = Constants.FONT,
							Text = quotaMessageText,
							TextWrapped = true,
							TextSize = Constants.FONT_SIZE_LARGE,
							TextColor3 = publishAssetTheme.distributionQuotaTextColor,
							LayoutOrder = 1,
						})
						else nil,
					QuotaLink = if not FFlagToolboxEnableAssetConfigPhoneVerification and quotaLinkText
						then Roact.createElement(LinkText, {
							Text = quotaLinkText,
							OnClick = self.onQuotaLinkActivated,
							LayoutOrder = 2,
						})
						else nil,
				})
				else nil,

			TipsLabel = Roact.createElement(TextLabel, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BorderSizePixel = 0,

				Text = informationText,
				StyleModifier = StyleModifier.Disabled,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextSize = Constants.FONT_SIZE_LARGE,

				LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
			}),

			LinkButton = Roact.createElement(LinkText, {
				LayoutOrder = rightFrameLayoutOrder:getNextOrder(),
				OnClick = self.onLearnMoreActivated,
				Text = learnMoreText,
			}),
		}),
	})
end

ConfigCopy = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(ConfigCopy)

local mapStateToProps
if FFlagToolboxEnableAssetConfigPhoneVerification then
	mapStateToProps = function(state, props)
		state = state or {}
		local publishingRequirements = state.publishingRequirements or {}
		local verification = publishingRequirements.verification or {}

		local publishing = publishingRequirements.publishing or {}
		local allowedSubTypesForPublish = if FFlagUnifyModelPackagePublish2 then publishing.allowedSubTypes or {} else {}
		local isPackageMarketplacePublishAllowed = AssetSubTypes.contains(allowedSubTypesForPublish, AssetSubTypes.Package)
		
		return {
			isVerified = if verification then verification.isVerified else false,
			verificationSupportedTypes = if verification then verification.supportedTypes or {} else {},
			isPackageMarketplacePublishAllowed = isPackageMarketplacePublishAllowed,
		}
	end
end

if FFlagToolboxEnableAssetConfigPhoneVerification then
	return RoactRodux.connect(mapStateToProps, nil)(ConfigCopy)
else
	return ConfigCopy
end
