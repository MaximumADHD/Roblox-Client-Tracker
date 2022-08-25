local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local UserInputService = game:GetService("UserInputService")

local ExternalContentSharingProtocol
	= require(CorePackages.UniversalApp.ExternalContentSharing.ExternalContentSharingProtocol).default

local UrlBuilderPackage = require(CorePackages.Packages.UrlBuilder)
local UrlBuilder = UrlBuilderPackage.UrlBuilder

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local dependencies = require(ShareGame.dependencies)
local Constants = require(ShareGame.Constants)
local ShareButton = require(ShareGame.Components.ShareButton)
local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()
local mapDispatchToProps = require(ShareGame.Components.ShareInviteLinkMapDispatchToProps)
local mapStateToProps = require(ShareGame.Components.ShareInviteLinkMapStateToProps)
local RoduxShareLinks = dependencies.RoduxShareLinks
local RoduxNetworking = dependencies.RoduxNetworking
local NetworkStatus = RoduxNetworking.Enum.NetworkStatus

local ShareInviteLink = Roact.PureComponent:extend("ShareInviteLink")

local CONTENTS_LEFT_RIGHT_PADDING = 12
local CONTENTS_TOP_BOTTOM_PADDING = 8
local SHARE_BUTTON_WIDTH = 69
local SHARE_INVITE_LINK_BACKGROUND = Color3.fromRGB(79, 84, 95)
local SHARE_INVITE_LINK_TEXT = RobloxTranslator:FormatByKey("Feature.SocialShare.Action.Share")
local COPIED_INVITE_LINK_TEXT = RobloxTranslator:FormatByKey("Feature.SocialShare.Label.Copied")

local platform = UserInputService:GetPlatform()
local isDesktopClient = (platform == Enum.Platform.Windows) or (platform == Enum.Platform.OSX) or (platform == Enum.Platform.UWP)

function ShareInviteLink:init()
	self.state = {
		show_copied_text = false,
	}

	self.showSharesheet = function(linkId, linkType)
		local url = UrlBuilder.sharelinks.appsflyer(linkId, linkType)
		if ExternalContentSharingProtocol then
			ExternalContentSharingProtocol:shareText({
				text = url,
				context = "V1Menu"
			})

			if isDesktopClient then
				self:setState({ show_copied_text = true })

				delay(1, function ()
					self:setState({ show_copied_text = false })
				end)
			end
		end
	end
end

function ShareInviteLink:didUpdate(oldProps)
	if oldProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil then
		local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
		local linkId = self.props.shareInviteLink.linkId
		self.props.analytics:onLinkGenerated(linkType, linkId)
		self.showSharesheet(linkId, linkType)
	end
end

function ShareInviteLink:render()
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local deviceLayout = self.props.deviceLayout
	local zIndex = self.props.zIndex
	local layoutSpecific = Constants.LayoutSpecific[deviceLayout]

	local onShare = function()
		self.props.analytics:onShareButtonClick()
		if self.props.shareInviteLink == nil then
			self.props.fetchShareInviteLink()
		else
			local linkType = RoduxShareLinks.Enums.LinkType.ExperienceInvite.rawValue()
			local linkId = self.props.shareInviteLink.linkId
			self.showSharesheet(linkId, linkType)
		end
	end

	return Roact.createElement("Frame", {
		Size = size,
		LayoutOrder = layoutOrder,
		BackgroundColor3 = SHARE_INVITE_LINK_BACKGROUND,
		ZIndex = zIndex,
		BorderSizePixel = 0,
	}, {
		Corner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, CONTENTS_LEFT_RIGHT_PADDING),
			PaddingRight = UDim.new(0, CONTENTS_LEFT_RIGHT_PADDING),
			PaddingTop = UDim.new(0, CONTENTS_TOP_BOTTOM_PADDING),
			PaddingBottom = UDim.new(0, CONTENTS_TOP_BOTTOM_PADDING),
		}),
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 0,
			Text = RobloxTranslator:FormatByKey("Feature.SocialShare.Label.ShareServerLink"),
			Size = UDim2.new(1, -SHARE_BUTTON_WIDTH, 1, 0),
			TextSize = layoutSpecific.PAGE_TITLE_TEXT_SIZE,
			TextColor3 = Constants.Color.WHITE,
			Font = Enum.Font.SourceSansSemibold,
		}),
		ShareButton = Roact.createElement(ShareButton, {
			size = UDim2.new(0, SHARE_BUTTON_WIDTH, 1, 0),
			layoutOrder = 1,
			onShare = onShare,
			text = if self.state.show_copied_text then COPIED_INVITE_LINK_TEXT else SHARE_INVITE_LINK_TEXT,
			isEnabled = self.props.fetchShareInviteLinkNetworkStatus ~= NetworkStatus.Fetching and not self.state.show_copied_text
		}),
	})
end

ShareInviteLink = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ShareInviteLink)

return ShareInviteLink
