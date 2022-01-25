local GuiService = game:GetService("GuiService")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)
local Analytics = require(Plugin.Core.Util.Analytics.Analytics)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal

local TooltipWrapper = require(Plugin.Core.Components.TooltipWrapper)

local VerifiedCreatorBadge = Roact.PureComponent:extend("VerifiedCreatorBadge")

function VerifiedCreatorBadge:init(props)
	self.state = {
		isHovered = false
	}

	self.onMouseEnter = function()
		self:setState({
			isHovered = true
		})

		getModal(self).onTooltipTriggered(props.assetId, Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)
	end

	self.onMouseLeave = function()
		self:setState({
			isHovered = false
		})
	end

	self.onActivated = function()
		Analytics.onIdVerificationIconClicked(self.props.assetId)
		GuiService:OpenBrowserWindow("https://en.help.roblox.com/hc/articles/4407282410644-Age-ID-Verification")
	end
end

function VerifiedCreatorBadge:render()
	return withModal(function(modalTarget, modalStatus)
		local props = self.props

		local assetId = props.assetId

		local onMouseEnter = self.onMouseEnter
		local onMouseLeave = self.onMouseLeave

		local isHovered = self.state.isHovered

		local canShowCurrentTooltip = modalStatus:canShowCurrentTooltip(assetId, Constants.TOOLTIP_TYPE.HIGH_QUALITY_BADGE)

		local image
		local size

		if props.small then
			image = Images.VERIFIED_CREATOR_BADGE_ICON_SMALL
			size = 13
		else
			image = Images.VERIFIED_CREATOR_BADGE_ICON
			size = 16
		end

		local tooltipText = props.Localization:getText("General", "VerifiedCreatorBadgeTooltipText")

		return Roact.createElement("ImageButton", {
			AnchorPoint = props.AnchorPoint,
			Position = props.Position,
			LayoutOrder = props.LayoutOrder,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(size, size),
			Image = image,
			ZIndex = 2,

			[Roact.Event.Activated] = self.onActivated,
			[Roact.Event.MouseEnter] = onMouseEnter,
			[Roact.Event.MouseLeave] = onMouseLeave,
		}, {
			TooltipWrapper = isHovered and Roact.createElement(TooltipWrapper, {
				Text = tooltipText,
				canShowCurrentTooltip = canShowCurrentTooltip,
				isHovered = isHovered,
			})
		})
	end)
end

VerifiedCreatorBadge = withContext({
	Localization = ContextServices.Localization,
	Stylizer = ContextServices.Stylizer,
})(VerifiedCreatorBadge)

return VerifiedCreatorBadge
