local Modules = game:GetService("CoreGui").RobloxGui.Modules
local GuiService = game:GetService("GuiService")

local Common = Modules.Common
local LuaApp = Modules.LuaApp

local Constants = require(LuaApp.Constants)
local Roact = require(Common.Roact)
local Url = require(Modules.LuaApp.Http.Url)
local Device = require(Modules.LuaChat.Device)

local HomeHeaderUserAvatar = require(LuaApp.Components.Home.HomeHeaderUserAvatar)
local FitChildren = require(LuaApp.FitChildren)

local BUILDERCLUB_LOGO_WIDTH = 48
local BUILDERCLUB_LOGO_HEIGHT = 24
local BUILDERCLUB_LOGOS = {
	[Enum.MembershipType.BuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-bc.png",
	[Enum.MembershipType.TurboBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-tbc.png",
	[Enum.MembershipType.OutrageousBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-obc.png",
}

local BUILDERCLUB_LOGO_WIDTH_PHONE = 24
local BUILDERCLUB_LOGO_HEIGHT_PHONE = 24
local BUILDERCLUB_LOGOS_PHONE = {
	[Enum.MembershipType.BuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-bc-small.png",
	[Enum.MembershipType.TurboBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-tbc-small.png",
	[Enum.MembershipType.OutrageousBuildersClub] = "rbxasset://textures/ui/LuaApp/icons/ic-obc-small.png",
}

local USERNAME_BC_PADDING = 12
local USERNAME_TEXT_SIZE = 38
local TITLE_SECTION_HEIGHT =
	(USERNAME_TEXT_SIZE > BUILDERCLUB_LOGO_HEIGHT) and USERNAME_TEXT_SIZE
	or BUILDERCLUB_LOGO_HEIGHT

local USERNAME_BC_VERTICAL_PADDING = 20
local PROFILE_PICTURE_TO_BC_PADDING = 24
local PROFILE_PICTURE_THUMBNAIL_TYPE = Constants.AvatarThumbnailTypes.HeadShot

local uiListLayout = Roact.createElement("UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	FillDirection = Enum.FillDirection.Horizontal,
	VerticalAlignment = Enum.VerticalAlignment.Center,
})


local function createNormalHeaderInfo(props)
	local localUserModel = props.localUserModel
	local onUsernameActivated = props.onUsernameActivated
	local isLocalPlayerBC = localUserModel.membership ~= Enum.MembershipType.None

	return Roact.createElement(FitChildren.FitFrame, {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = { Size = FitChildren.FitAxis.Height, },
	}, {
		Layout = uiListLayout,
		UserAvatar = Roact.createElement(HomeHeaderUserAvatar, {
			localUserModel = localUserModel,
			thumbnailType = PROFILE_PICTURE_THUMBNAIL_TYPE,
			onActivated = onUsernameActivated,
			LayoutOrder = 1,
		}),
		UserAvatarToUserNameSpacer = Roact.createElement("Frame", {
			Size = UDim2.new(0, PROFILE_PICTURE_TO_BC_PADDING, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}),
		BuildersClubUsernameFrame = Roact.createElement("Frame", {
			Size = UDim2.new(
				1, -BUILDERCLUB_LOGO_WIDTH - USERNAME_BC_PADDING,
				0, USERNAME_TEXT_SIZE + BUILDERCLUB_LOGO_HEIGHT
			),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			VerticalLayout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, USERNAME_BC_VERTICAL_PADDING),
			}),
			TopFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, USERNAME_TEXT_SIZE),
				BackgroundTransparency = 1,
				LayoutOrder = 1,
			}, {
				Username = Roact.createElement("TextButton", {
					Size = isLocalPlayerBC and
						UDim2.new(1, -BUILDERCLUB_LOGO_WIDTH - USERNAME_BC_PADDING, 0, USERNAME_TEXT_SIZE)
						or UDim2.new(1, 0, 0, USERNAME_TEXT_SIZE),
					BackgroundTransparency = 1,
					TextSize = USERNAME_TEXT_SIZE,
					TextColor3 = Constants.Color.GRAY1,
					Font = Enum.Font.SourceSans,
					Text = localUserModel.name,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextScaled = true,
					LayoutOrder = 4,
					[Roact.Event.Activated] = onUsernameActivated,
				}),
			}),
			BottomFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, BUILDERCLUB_LOGO_HEIGHT),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				BuildersClub = isLocalPlayerBC and Roact.createElement("ImageLabel", {
					Size = UDim2.new(0, BUILDERCLUB_LOGO_WIDTH, 0, BUILDERCLUB_LOGO_HEIGHT),
					Image = BUILDERCLUB_LOGOS[localUserModel.membership],
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 2,
				}) or nil,
			}),
		})
	})
end

--Mobile phone is a special case.
local function createPhoneHeaderInfo(props)
	local localUserModel = props.localUserModel
	local onUsernameActivated = props.onUsernameActivated
	local isLocalPlayerBC = localUserModel.membership ~= Enum.MembershipType.None

	return Roact.createElement(FitChildren.FitFrame, {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, 0),
		fitFields = { Size = FitChildren.FitAxis.Height, },
	}, {
		Layout = uiListLayout,
		BuildersClubUsernameFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TITLE_SECTION_HEIGHT),
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			BuildersClub = isLocalPlayerBC and Roact.createElement("ImageLabel", {
				Size = UDim2.new(0, BUILDERCLUB_LOGO_WIDTH_PHONE, 0, BUILDERCLUB_LOGO_HEIGHT_PHONE),
				Image = BUILDERCLUB_LOGOS_PHONE[localUserModel.membership],
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}) or nil,
			Padding2 = isLocalPlayerBC and Roact.createElement("Frame", {
				Size = UDim2.new(0, USERNAME_BC_PADDING, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}) or nil,
			Username = Roact.createElement("TextButton", {
				Size = isLocalPlayerBC and
					UDim2.new(1, -BUILDERCLUB_LOGO_WIDTH-USERNAME_BC_PADDING, 0, USERNAME_TEXT_SIZE)
					or UDim2.new(1, 0, 0, USERNAME_TEXT_SIZE),
				BackgroundTransparency = 1,
				TextSize = USERNAME_TEXT_SIZE,
				TextColor3 = Constants.Color.GRAY1,
				Font = Enum.Font.SourceSans,
				Text = localUserModel.name,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextScaled = true,
				LayoutOrder = 4,
				[Roact.Event.Activated] = onUsernameActivated,
			}),
		}),
	})
end

local HomeHeaderUserInfo = Roact.PureComponent:extend("HomeHeaderUserInfo")

function HomeHeaderUserInfo:init()
	self.onUsernameActivated = function()
		local localUserId = self.props.localUserModel.id
		local url = Url:getUserProfileUrl(localUserId)
		GuiService:BroadcastNotification(url, GuiService:GetNotificationTypeList().VIEW_PROFILE)
	end
end

function HomeHeaderUserInfo:render()
	local localUserModel = self.props.localUserModel
	local formFactor = self.props.formFactor
	local sidePadding = self.props.sidePadding
	local sectionPadding = self.props.sectionPadding

	local isPhone = formFactor == Device.FormFactor.PHONE

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, -sidePadding * 2, 0, TITLE_SECTION_HEIGHT),
		Position = UDim2.new(0, sidePadding, 0, sectionPadding),
		BackgroundTransparency = 1,
		fitFields = { Size = FitChildren.FitAxis.Height, },
	}, {
		padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, sectionPadding),
			PaddingLeft = UDim.new(0, sidePadding),
		}),
		userInfo = (isPhone and createPhoneHeaderInfo or createNormalHeaderInfo)({
			localUserModel = localUserModel,
			onUsernameActivated = self.onUsernameActivated,
		})
	})
end

return HomeHeaderUserInfo