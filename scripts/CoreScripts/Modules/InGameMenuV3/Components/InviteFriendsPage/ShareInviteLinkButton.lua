local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = CoreGui.RobloxGui.Modules
local InGameMenu = Modules.InGameMenuV3

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local IconButton = UIBlox.App.Button.IconButton
local getIconSize = UIBlox.App.ImageSet.getIconSize
local withTooltip = UIBlox.App.Dialog.TooltipV2.withTooltip
local TooltipOrientation = UIBlox.App.Dialog.Enum.TooltipOrientation

local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
local SocialDependencies = require(InGameMenu.SocialDependencies)
local RoduxNetworking = SocialDependencies.RoduxNetworking
local NetworkingShareLinks = SocialDependencies.NetworkingShareLinks
local RoduxShareLinks = SocialDependencies.RoduxShareLinks
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus

local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local ShareInviteLinkButton = Roact.PureComponent:extend("ShareInviteLinkButton")

ShareInviteLinkButton.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number),
	shareInviteLink = t.optional(t.table),
	fetchShareInviteLinkAndOpenShareSheet = t.optional(t.callback),
	enableCopiedFeedback = t.optional(t.boolean),
	fetchShareInviteLinkNetworkStatus = t.optional(t.string),
})

function ShareInviteLinkButton:init()
	self.state = {
		showTooltip = false
	}
end

function ShareInviteLinkButton:didUpdate(prevProps, prevState)
	if prevProps.shareInviteLink == nil
		and self.props.shareInviteLink ~= nil
		and self.props.enableCopiedFeedback
		and not self.state.showTooltip
	then
		self:setState({ showTooltip = true })

		delay(2, function()
			self:setState({ showTooltip = false })
		end)
	end
end

function ShareInviteLinkButton:onActivated()
	self.props.fetchShareInviteLinkAndOpenShareSheet()

	if self.props.shareInviteLink
		and self.props.enableCopiedFeedback
		and not self.state.showTooltip
	then
		self:setState({ showTooltip = true })

		delay(2, function()
			self:setState({ showTooltip = false })
		end)
	end
end

function ShareInviteLinkButton:render()
	local tooltipProps = {
		headerText = RobloxTranslator:FormatByKey("Feature.SocialShare.Label.Copied"),
		useLargeDropShadow = true,
	}
	local tooltipOptions = {
		guiTarget = CoreGui,
		preferredOrientation = TooltipOrientation.Bottom,
		active = self.state.showTooltip,
		DisplayOrder = 10,
	}

	return withTooltip(tooltipProps, tooltipOptions, function(triggerPointChanged)
		return Roact.createElement("Frame", {
			[Roact.Change.AbsoluteSize] = triggerPointChanged,
			[Roact.Change.AbsolutePosition] = triggerPointChanged,

			LayoutOrder = self.props.layoutOrder,
			Size = UDim2.new(0, getIconSize(IconSize.Medium), 0, getIconSize(IconSize.Medium)),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			IconButton = Roact.createElement(IconButton, {
				size = UDim2.fromOffset(0, 0),
				iconSize = IconSize.Medium,
				icon = Images["icons/actions/share"],
				onActivated = function()
					self:onActivated()
				end,
				isDisabled = self.props.fetchShareInviteLinkNetworkStatus == NetworkStatus.Fetching
			})
		})
	end)
end

ShareInviteLinkButton = InGameMenuPolicy.connect(function(appPolicy, props)
	return {
		enableCopiedFeedback = appPolicy.enableCopiedFeedback(),
	}
end)(ShareInviteLinkButton)

return RoactRodux.connect(function(state, props)
	return {
		fetchShareInviteLinkNetworkStatus = NetworkingShareLinks.GenerateLink.getStatus(state, RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()),
		shareInviteLink = state.shareLinks.Invites.ShareInviteLink,
	}
end, nil)(ShareInviteLinkButton)
