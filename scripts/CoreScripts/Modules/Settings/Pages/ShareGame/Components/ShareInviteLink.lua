local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local ShareButton = require(ShareGame.Components.ShareButton)
local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()
local mapDispatchToProps = require(ShareGame.Components.ShareInviteLinkMapDispatchToProps)
local mapStateToProps = require(ShareGame.Components.ShareInviteLinkMapStateToProps)

local ShareInviteLink = Roact.PureComponent:extend("ShareInviteLink")

local CONTENTS_LEFT_RIGHT_PADDING = 12
local CONTENTS_TOP_BOTTOM_PADDING = 8
local SHARE_BUTTON_WIDTH = 69
local SHARE_INVITE_LINK_BACKGROUND = Color3.fromRGB(79, 84, 95)

function ShareInviteLink:didUpdate(oldProps)
	-- TODO COEXP-310: Show sharesheet if self.props.shareInviteLink is present
	if oldProps.shareInviteLink == nil and self.props.shareInviteLink ~= nil then
		-- TODO (timothyhsu): Fire analytics with linkType enum when enum is available
		self.props.analytics:onLinkGenerated("linkType", self.props.shareInviteLink.linkId)
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
			-- TODO COEXP-310: Show sharesheet
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
		}),
	})
end

ShareInviteLink = RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ShareInviteLink)

return ShareInviteLink
