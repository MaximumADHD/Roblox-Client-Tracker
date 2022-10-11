--[[
	2 line text label that shows the name of an asset

	Props:
		number assetId
		boolean floatLeft, positioning of the badge - true if on the left side of the thumbnail
		boolean isPackage, displays whether the asset is a package or not
		number LayoutOrder = 0

		callback onMouseEnter()
		callback onMouseLeave()
]]
local FFlagToolboxPackagesInAssetTile = game:GetFastFlag("ToolboxPackagesInAssetTile")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local Framework = if FFlagToolboxPackagesInAssetTile then require(Packages.Framework) else nil
local ContextServices = if FFlagToolboxPackagesInAssetTile then Framework.ContextServices else nil
local withContext = if FFlagToolboxPackagesInAssetTile then ContextServices.withContext else nil

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withLocalization = if FFlagToolboxPackagesInAssetTile then nil else ContextHelper.withLocalization

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local AssetIconBadge = Roact.PureComponent:extend("AssetIconBadge")

function AssetIconBadge:init(props)
	self.state = {
		isHovered = false,
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true,
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end
end

function AssetIconBadge:render()
	return withModal(function(modalTarget, modalStatus)
		if FFlagToolboxPackagesInAssetTile then
			return self:renderContent(nil, modalTarget, modalStatus)
		end

		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local assetId = props.assetId
			local floatLeft = props.floatLeft

			local onMouseEnter = self.onMouseEnter
			local onMouseLeave = self.onMouseLeave

			local isHovered = self.state.isHovered

			local canShowCurrentTooltip =
				modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)

			local edgeOffset = 0.06

			return Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(floatLeft and 0 or 1, 1),
				BackgroundTransparency = 1,
				Position = UDim2.new(floatLeft and edgeOffset or (1 - edgeOffset), 0, 1.06, 0),
				Size = UDim2.new(
					0,
					Constants.ASSET_ENDORSED_BADGE_ICON_SIZE,
					0,
					Constants.ASSET_ENDORSED_BADGE_ICON_SIZE
				),
				Image = Images.ENDORSED_BADGE_ICON,
				ZIndex = 2,

				[Roact.Event.MouseEnter] = onMouseEnter,
				[Roact.Event.MouseLeave] = onMouseLeave,
			}, {
				TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
					Text = localization:getLocalizedContent().EndorseBadgeTooltipText,
					canShowCurrentTooltip = canShowCurrentTooltip,
					isHovered = isHovered,
				}),
			})
		end)
	end)
end

if FFlagToolboxPackagesInAssetTile then
	function AssetIconBadge:renderContent(theme, modalTarget, modalStatus)
		local props = self.props
		theme = props.Stylizer
		local localization = props.Localization

		local assetId = props.assetId
		local isPackage = props.isPackage
		local floatLeft = props.floatLeft

		local onMouseEnter = self.onMouseEnter
		local onMouseLeave = self.onMouseLeave

		local isHovered = self.state.isHovered

		local canShowCurrentTooltip =
			modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)

		local edgeOffset = 0.06

		local packagesTheme = theme.asset.packages

		if isPackage then
			return Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(if floatLeft then 0 else 1, 1),
				Position = UDim2.new(if floatLeft then 0 + edgeOffset else (1 - edgeOffset), 0, (1 - edgeOffset), 0),
				Size = Constants.PACKAGE_BACKGROUND_SIZE,

				BackgroundColor3 = packagesTheme.backgroundColor,
				BackgroundTransparency = packagesTheme.backgroundTransparency,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, Constants.PACKAGE_BACKGROUND_CORNER_RADIUS),
				}),
				Image = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = Constants.PACKAGE_DETAIL_SIZE,
					Image = packagesTheme.packageImage,
					ZIndex = 2,

					BackgroundTransparency = 1,

					[Roact.Event.MouseEnter] = onMouseEnter,
					[Roact.Event.MouseLeave] = onMouseLeave,
				}),
			})
		else
			return Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(if floatLeft then 0 else 1, 1),
				BackgroundTransparency = 1,
				Position = UDim2.new(if floatLeft then edgeOffset else (1 - edgeOffset), 0, (1 + edgeOffset), 0),
				Size = UDim2.new(
					0,
					Constants.ASSET_ENDORSED_BADGE_ICON_SIZE,
					0,
					Constants.ASSET_ENDORSED_BADGE_ICON_SIZE
				),
				Image = Images.ENDORSED_BADGE_ICON,
				ZIndex = 2,

				[Roact.Event.MouseEnter] = onMouseEnter,
				[Roact.Event.MouseLeave] = onMouseLeave,
			}, {
				TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
					Text = localization:getText("General", "EndorseBadgeTooltipText"),
					canShowCurrentTooltip = canShowCurrentTooltip,
					isHovered = isHovered,
				}),
			})
		end
	end

	AssetIconBadge = withContext({
		Stylizer = ContextServices.Stylizer,
		Localization = ContextServices.Localization,
	})(AssetIconBadge)
end

return AssetIconBadge
