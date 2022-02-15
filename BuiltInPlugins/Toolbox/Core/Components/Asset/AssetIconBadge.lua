--[[
	2 line text label that shows the name of an asset

	Props:
		string assetName
		number LayoutOrder = 0

		callback onMouseEnter()
		callback onMouseLeave()
]]

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withLocalization = ContextHelper.withLocalization

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
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local assetId = props.assetId
			local floatLeft = props.floatLeft

			local onMouseEnter = self.onMouseEnter
			local onMouseLeave = self.onMouseLeave

			local isHovered = self.state.isHovered

			local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(
				assetId,
				Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE
			)

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

return AssetIconBadge
