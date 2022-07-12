--[[
	This component is responsible for configging asset's allow copy field

	Props:
	ToggleCallback, function, will return current selected statue if toggled.
]]

local FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigDisabledAudioSharingLearnMoreLink"
)
local FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink = game:GetFastString(
	"ToolboxAssetConfigEnabledAudioSharingLearnMoreLink"
)
local FFlagToolboxAssetConfigurationMatchPluginFlow = game:GetFastFlag("ToolboxAssetConfigurationMatchPluginFlow")
local FFlagToolboxAssetConfigurationFixPriceToggle = game:getFastFlag("ToolboxAssetConfigurationFixPriceToggle")
local FFlagAssetConfigDynamicDistributionQuotas2 = game:GetFastFlag("AssetConfigDynamicDistributionQuotas2")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local AssetQuotaTypes = require(Plugin.Core.Types.AssetQuotaTypes)

local formatLocalDateTime = Framework.Util.formatLocalDateTime
local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local DebugFlags = require(Util.DebugFlags)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = FFlagToolboxAssetConfigurationMatchPluginFlow and require(Util.AssetConfigUtil) or nil
local ToolboxUtilities = require(Plugin.Core.Util.ToolboxUtilities)
local LayoutOrderIterator = require(Util.LayoutOrderIterator)
local ContextGetter = require(Util.ContextGetter)
local getNetwork = ContextGetter.getNetwork

local Dash = Framework.Dash
local TextLabel = Framework.UI.Decoration.TextLabel
local LinkText = Framework.UI.LinkText
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

function ConfigCopy:init(props)
	self.warningCountdown = 0
	self.state = {
		copyWarning = Cryo.None,
	}

	self.onLearnMoreActivated = function(rbx, inputObject)
		if self.props.CopyEnabled then
			GuiService:OpenBrowserWindow(FStringToolboxAssetConfigEnabledAudioSharingLearnMoreLink)
		else
			GuiService:OpenBrowserWindow(FStringToolboxAssetConfigDisabledAudioSharingLearnMoreLink)
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

		if FFlagToolboxAssetConfigurationMatchPluginFlow and assetType == Enum.AssetType.Plugin then
			local canChangeSalesStatus = props.canChangeSalesStatus
			local currentAssetStatus = props.currentAssetStatus
			local onStatusChange = props.onStatusChange

			if canChangeSalesStatus then
				local newStatus
				if FFlagToolboxAssetConfigurationFixPriceToggle then
					newStatus = if AssetConfigUtil.isOnSale(currentAssetStatus)
						then AssetConfigConstants.ASSET_STATUS.OffSale
						else AssetConfigConstants.ASSET_STATUS.OnSale
				else
					newStatus = AssetConfigUtil.isOnSale(currentAssetStatus)
							and AssetConfigConstants.ASSET_STATUS.OffSale
						or AssetConfigConstants.ASSET_STATUS.OnSale
				end

				onStatusChange(newStatus)
			end
		end
	end

	if FFlagAssetConfigDynamicDistributionQuotas2 then
		self.distributionQuotaPolicy = ToolboxUtilities.getAssetConfigDistributionQuotas()
	else
		self.distributionQuotas = ToolboxUtilities.getAssetConfigDistributionQuotas()
	end

	self.onQuotaLinkActivated = function()
		local assetType = self.props.AssetType
		if not assetType then
			return
		end

		local quotaPolicyForAssetType = if FFlagAssetConfigDynamicDistributionQuotas2
			then self.distributionQuotaPolicy[assetType.Name]
			else self.distributionQuotas[assetType.Name]
		if not quotaPolicyForAssetType or not quotaPolicyForAssetType.link then
			return
		end

		GuiService:OpenBrowserWindow(quotaPolicyForAssetType.link)
	end
end

function ConfigCopy:didMount(prevProps, prevState)
	local timeSignal = game:GetService("RunService").Heartbeat
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

	if FFlagAssetConfigDynamicDistributionQuotas2 then
		self:updateDistributionQuotas()
	end
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
	end

	if FFlagAssetConfigDynamicDistributionQuotas2 and assetType ~= prevProps.AssetType then
		self:updateDistributionQuotas()
	end
end

if FFlagAssetConfigDynamicDistributionQuotas2 then
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

	function ConfigCopy:getDistributionQuotaStatus()
		local props = self.props
		local state = self.state
		local publishingEnabled: boolean = true
		local quotaMessageText: string
		local quotaLinkText: string
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
				quotaMessageText = props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaUnavailable"
				)
			elseif usage == 0 then
				quotaMessageText =
					props.Localization:getText(
						"AssetConfigSharing",
						"DistributeMarketplaceQuotaUnused2",
						{
							capacity = string.format("%d", capacity),
							days = string.format("%d", 30),
						}
					)
			elseif usage >= capacity then
				publishingEnabled = false
				local formattedDateTime = formatLocalDateTime(expirationTime, "MMM D, h:mmA", localeId)
				quotaMessageText = props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaExhausted1",
					{
						dateTime = formattedDateTime,
					}
				)
			elseif usage > 0 then
				local formattedDate = formatLocalDateTime(expirationTime, "MMM D", localeId)
				quotaMessageText = props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaRemaining2",
					{
						remaining = string.format("%d", capacity - usage),
						date = formattedDate,
					}
				)
			end

			if quotaPolicyForAssetType.link then
				quotaLinkText = props.Localization:getText(
					"AssetConfigSharing",
					"DistributeMarketplaceQuotaInfoShortLink"
				)
			end
		end

		return publishingEnabled, quotaMessageText, quotaLinkText
	end
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

	local copyWarning = state.copyWarning

	local publishAssetTheme = theme.publishAsset

	local quotaMessageText
	local quotaLinkText
	if assetType and CopyEnabled then
		if FFlagAssetConfigDynamicDistributionQuotas2 then
			local publishingEnabled
			publishingEnabled, quotaMessageText, quotaLinkText = self:getDistributionQuotaStatus()

			if not publishingEnabled then
				CopyEnabled = false
			end
		else
			local quotaPolicyForAssetType = self.distributionQuotas[assetType.Name]
			if quotaPolicyForAssetType then
				if
					quotaPolicyForAssetType.capacity ~= nil
					and quotaPolicyForAssetType.capacity > 0
					and quotaPolicyForAssetType.days ~= nil
					and quotaPolicyForAssetType.days > 0
				then
					quotaMessageText = props.Localization:getText(
						"AssetConfigSharing",
						"DistributeMarketplaceQuotaUnused2",
						{
							capacity = string.format("%d", quotaPolicyForAssetType.capacity),
							days = string.format("%d", quotaPolicyForAssetType.days),
						}
					)
				elseif quotaPolicyForAssetType.link then
					quotaLinkText = props.Localization:getText(
						"AssetConfigSharing",
						"DistributeMarketplaceQuotaInfoLink"
					)
				end
			end
		end
	end

	local localization = props.Localization
	local informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
	local learnMoreText = localization:getText("General", "LearnMore")
	local showWarningText = copyWarning ~= Cryo.None

	local assetType = props.AssetType
	if assetType == Enum.AssetType.Audio then
		localization = props.Localization
		if isAssetPublic then
			informationText = localization:getText("AssetConfigCopy", "DistributeAgreement")
		else
			informationText = localization:getText("AssetConfigCopy", "TemporarilyDisabledMessage")
		end
	end

	local rightFrameLayoutOrder = LayoutOrderIterator.new()

	return Roact.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, TOGGLE_BUTTON_HEIGHT + LINK_BUTTON_HEIGHT + 10),

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
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(0, AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, TITLE_HEIGHT),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

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
			Size = UDim2.new(1, -AssetConfigConstants.TITLE_GUTTER_WIDTH, 0, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

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

			QuotaInfo = if quotaMessageText or quotaLinkText
				then Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Layout = if FFlagAssetConfigDynamicDistributionQuotas2 then Enum.FillDirection.Vertical else nil,
					HorizontalAlignment = if FFlagAssetConfigDynamicDistributionQuotas2
						then Enum.HorizontalAlignment.Left
						else nil,
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
							LayoutOrder = if FFlagAssetConfigDynamicDistributionQuotas2 then 1 else nil,
						})
						else nil,
					QuotaLink = if quotaLinkText
						then Roact.createElement(LinkText, {
							Text = quotaLinkText,
							OnClick = self.onQuotaLinkActivated,
							LayoutOrder = if FFlagAssetConfigDynamicDistributionQuotas2 then 2 else nil,
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

return ConfigCopy
