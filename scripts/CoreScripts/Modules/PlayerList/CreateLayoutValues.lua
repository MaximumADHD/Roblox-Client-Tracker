local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images

local FFlagPlayerListDesignUpdate = settings():GetFFlag("PlayerListDesignUpdate")
local FFlagPlayerListUseUIBloxIcons = require(CoreGui.RobloxGui.Modules.Flags.FFlagPlayerListUseUIBloxIcons)

local SCREEN_SIDE_PADDING = 4

return function(isTenFoot, isSmallTouchScreen)
	local LayoutValues = {}

	LayoutValues.IsTenFoot = isTenFoot

	if isTenFoot then
		local playerEntrySizeY = 100
		local entryPadding = 5

		LayoutValues.ContainerPosition = UDim2.new(0.5, 0, 0.5, 0)
		LayoutValues.ContainerSize = UDim2.new(0, 350, 0, 720)
		LayoutValues.AnchorPoint = Vector2.new(0.5, 0.5)

		--No PlayerDropDown on tenfoot
		LayoutValues.PlayerDropDownSizeX = 0

		LayoutValues.PlayerScrollListPosition = UDim2.new(0, 0, 0, playerEntrySizeY + entryPadding)
		LayoutValues.PlayerScrollListSize = UDim2.new(1, 19, 1, 0)
		LayoutValues.PlayerScrollListInnerFramePosition = UDim2.new(0, 0, 0, 0)
		LayoutValues.PlayerScrollListInnerFrameSize = UDim2.new(1, 0, 1, 0)

		LayoutValues.EntrySizeX = 350
		LayoutValues.PlayerEntrySizeY = playerEntrySizeY
		LayoutValues.EntryPadding = entryPadding
		LayoutValues.TeamEntrySizeY = 32
		LayoutValues.StatEntrySizeX = 250
		LayoutValues.EntryXOffset = -20

		--Styles that don't apply in TenFootInterface are set as nil here, we fallback to default.
		--Hovered is used for the gamepad selected state aswell.
		LayoutValues.BackgroundStyle = {
			Default = {
				Color = Color3.fromRGB(60, 60, 60),
				Transparency = 0.25,
			},
			Hovered = {
				Color = Color3.fromRGB(50, 181, 255),
				Transparency = 0.25,
			},
			HoveredTitle = {
				Color = Color3.fromRGB(50, 181, 255),
				Transparency = 0,
			},
			Title = {
				Color = Color3.fromRGB(25, 25, 25),
				Transparency = 0,
			},
			Selected = nil,
		}

		if FFlagPlayerListDesignUpdate then
			LayoutValues.TeamEntryBackgroundTransparency = 0.25
		end

		if FFlagPlayerListDesignUpdate then
			LayoutValues.DefaultTextStyle = {
				Color = Color3.fromRGB(255, 255, 243),
				Transparency = 0,
				StrokeTransparency = 0.75,
				StrokeColor = Color3.fromRGB(34, 34, 34),
			}
			LayoutValues.HoveredTextStyle = {
				Color = Color3.fromRGB(19, 19, 19),
				Transparency = 0,
				StrokeTransparency = 0.75,
				StrokeColor = Color3.fromRGB(34, 34, 34),
			}
		else
			LayoutValues.TextStyle = {
				Default = {
					Color = Color3.fromRGB(255, 255, 243),
					StrokeTransparency = 0.75,
					StrokeColor = Color3.fromRGB(34, 34, 34),
				},
				Selected = nil,
				Hovered = {
					Color = Color3.fromRGB(19, 19, 19),
					StrokeTransparency = 0.75,
					StrokeColor = Color3.fromRGB(34, 34, 34),
				},
				LocalPlayer = nil,
				LocalPlayerSelected = nil
			}
		end

		LayoutValues.PlayerIconSize = UDim2.new(0, 64, 0, 64)
		LayoutValues.InitalPlayerEntryPadding = 18
		LayoutValues.PlayerEntryPadding = 8
		if FFlagPlayerListDesignUpdate then
			LayoutValues.TeamEntryTextPadding = 5
			LayoutValues.StatTextPadding =0
		end

		LayoutValues.PlayerNameSize = UDim2.new(1, -88, 1, 0)
		LayoutValues.PlayerNameTextSize = 32
		LayoutValues.StatTextSize = 32

		if FFlagPlayerListDesignUpdate then
			LayoutValues.ScrollImageColor = Color3.fromRGB(31, 31, 31)
			LayoutValues.ScrollImageTransparency = 0.5
		end
	else
		if FFlagPlayerListDesignUpdate then
			LayoutValues.ContainerPadding = SCREEN_SIDE_PADDING
			LayoutValues.ContainerPosition = UDim2.new(1, -SCREEN_SIDE_PADDING, 0, SCREEN_SIDE_PADDING)
			LayoutValues.ContainerSize = UDim2.new(0, 0, 0.5, 0)
			LayoutValues.ExtraContainerPadding = 16
		else
			LayoutValues.ContainerPosition = UDim2.new(1, 0, 0, 2)
			LayoutValues.ContainerSize = UDim2.new(0, 170, 0.5, 0)
		end
		LayoutValues.AnchorPoint = Vector2.new(1, 0)

		if FFlagPlayerListDesignUpdate then
			LayoutValues.PlayerDropDownSizeX = 300
		else
			LayoutValues.PlayerDropDownSizeX = 150
		end
		LayoutValues.PlayerDropDownOffset = 4

		LayoutValues.PlayerScrollListPosition = UDim2.new(0, 0, 0, 0)
		LayoutValues.PlayerScrollListSize = UDim2.new(1, -1, 1, 0)

		if FFlagPlayerListDesignUpdate then
			LayoutValues.EntryBaseSizeX = 150
			LayoutValues.EntrySizeIncreasePerStat = 11
			LayoutValues.PlayerEntrySizeY = 40
			LayoutValues.EntryPadding = 0
			LayoutValues.TeamEntrySizeY = 24
			LayoutValues.StatEntrySizeX = 66
			LayoutValues.TitleBarSizeY = 20
		else
			LayoutValues.EntrySizeX = 170
			LayoutValues.PlayerEntrySizeY = 24
			LayoutValues.EntryPadding = 2
			LayoutValues.TeamEntrySizeY = 18
			LayoutValues.StatEntrySizeX = 75
		end
		LayoutValues.EntryXOffset = 0

		if FFlagPlayerListDesignUpdate then
			LayoutValues.TeamEntryBackgroundTransparency = 0.5
			LayoutValues.IconButtonBackgroundTransparency = 0.3
			LayoutValues.DropDownHeaderBackgroundTransparency = 0.1
			LayoutValues.OverrideBackgroundTransparency = 0.3
		else
			LayoutValues.BackgroundStyle = {
				Default = {
					Color = Color3.fromRGB(31, 31, 31),
					Transparency = 0.5,
				},
				Hovered = {
					Color = Color3.fromRGB(49, 49, 49),
					Transparency = 0.25,
				},
				HoveredTitle = nil,
				Title = {
					Color = Color3.fromRGB(106, 106, 106),
					Transparency = 0,
				},
				Selected = {
					Color = Color3.fromRGB(255, 255, 255),
					Transparency = 0.25,
				},
			}
		end

		if not FFlagPlayerListDesignUpdate then
			LayoutValues.TextStyle = {
				Default = {
					Color = Color3.fromRGB(255, 255, 243),
					StrokeTransparency = 0.75,
					StrokeColor = Color3.fromRGB(34, 34, 34),
				},
				Selected = {
					Color = Color3.fromRGB(0, 0, 0),
					StrokeTransparency = 1,
					StrokeColor = Color3.fromRGB(255, 255, 243),
				},
				Hovered = nil,
				LocalPlayer = {
					Color = Color3.fromRGB(255, 213, 0),
					StrokeTransparency = 1,
					StrokeColor = Color3.fromRGB(0, 0, 0),
				},
				LocalPlayerSelected = {
					Color = Color3.fromRGB(164, 137, 0),
					StrokeTransparency = 1,
					StrokeColor = Color3.fromRGB(0, 0, 0),
				}
			}
		end

		LayoutValues.PlayerIconSize = UDim2.new(0, 16, 0, 16)
		if FFlagPlayerListDesignUpdate then
			LayoutValues.InitalPlayerEntryPadding = 12
			LayoutValues.PlayerEntryPadding = 12
			LayoutValues.TeamEntryTextPadding = 15
			LayoutValues.StatTextPadding = 4
		else
			LayoutValues.InitalPlayerEntryPadding = 4
			LayoutValues.PlayerEntryPadding = 4
		end

		if FFlagPlayerListDesignUpdate then
			LayoutValues.PlayerNameSize = UDim2.new(1, -34, 1, 0)
		else
			LayoutValues.PlayerNameSize = UDim2.new(1, -36, 1, 0)
		end
		LayoutValues.PlayerNameTextSize = 14
		LayoutValues.StatTextSize = 14

		if FFlagPlayerListDesignUpdate then
			LayoutValues.ScrollImageColor = Color3.fromRGB(216, 216, 216)
			LayoutValues.ScrollImageTransparency = 0.5
			LayoutValues.ScrollBarOffset = 4
			LayoutValues.ScrollBarSize = 8
		end
	end

	if isSmallTouchScreen then
		LayoutValues.MaxLeaderstats = 1
	else
		LayoutValues.MaxLeaderstats = 4
	end

	if not FFlagPlayerListDesignUpdate then
		LayoutValues.ScrollImageColor = Color3.fromRGB(31, 31, 31)
		LayoutValues.ScrollImageTransparency = 0.5
	end

	LayoutValues.PlayerEntryFont = Enum.Font.SourceSans
	LayoutValues.TitlePlayerEntryFont = Enum.Font.SourceSansBold
	LayoutValues.TeamEntryFont = Enum.Font.SourceSans

	LayoutValues.StatFont = Enum.Font.SourceSans
	LayoutValues.TitleStatFont = Enum.Font.SourceSansBold
	LayoutValues.TeamStatFont = Enum.Font.SourceSansBold
	LayoutValues.StatNameFont = Enum.Font.SourceSans

	LayoutValues.PlayerIconBackgroundSize = UDim2.new(0, 66, 0, 66)
	LayoutValues.PlayerBackgroundImage = "rbxasset://textures/ui/PlayerList/CharacterImageBackground.png"

	LayoutValues.RobloxIconImage = "rbxasset://textures/ui/Shell/Icons/RobloxIcon24.png"
	LayoutValues.IconSelectedColor = Color3.fromRGB(19, 19, 19)
	LayoutValues.IconUnSelectedColor = Color3.fromRGB(255, 255, 255)

	LayoutValues.SelectedEntryColor = Color3.fromRGB(0, 255, 255)

	LayoutValues.ShadowImage = "rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png"
	LayoutValues.ShadowSize = 5
	LayoutValues.ShadowSliceRect = Rect.new(6, 6, 9, 9)

	LayoutValues.DefaultThumbnail = "rbxasset://textures/ui/Shell/Icons/DefaultProfileIcon.png"

	if FFlagPlayerListUseUIBloxIcons then
		LayoutValues.BlockedIcon = Images["icons/status/unavailable_small"]
	else
		LayoutValues.BlockedIcon = "rbxasset://textures/ui/PlayerList/BlockedIcon.png"
	end

	if FFlagPlayerListUseUIBloxIcons then
		LayoutValues.FriendIcons = {
			[Enum.FriendStatus.Friend] = Images["icons/status/player/friend"],
			[Enum.FriendStatus.FriendRequestReceived] = Images["icons/status/player/pending"],
		}
	else
		LayoutValues.FriendIcons = {
			[Enum.FriendStatus.Friend] = "rbxasset://textures/ui/icon_friends_16.png",
			[Enum.FriendStatus.FriendRequestReceived] = "rbxasset://textures/ui/icon_friendrequestrecieved-16.png",
		}
	end

	if FFlagPlayerListDesignUpdate then
		if FFlagPlayerListUseUIBloxIcons then
			LayoutValues.FollowingIcon = Images["icons/status/player/following"]
		else
			LayoutValues.FollowingIcon = "rbxasset://textures/ui/PlayerList/NewFollowing.png"
		end
	else
		LayoutValues.FollowingIcon = "rbxasset://textures/ui/icon_following-16.png"
	end
	if FFlagPlayerListDesignUpdate then
		if FFlagPlayerListUseUIBloxIcons then
			LayoutValues.PlaceOwnerIcon = Images["icons/status/player/developer"]
		else
			LayoutValues.PlaceOwnerIcon = "rbxasset://textures/ui/PlayerList/developer.png"
		end
	else
		LayoutValues.PlaceOwnerIcon = "rbxasset://textures/ui/icon_placeowner.png"
	end

	local premiumIcon
	if FFlagPlayerListUseUIBloxIcons then
		premiumIcon = Images["icons/status/premium_small"]
	else
		premiumIcon = "rbxasset://textures/ui/PlayerList/PremiumIcon.png"
	end
	LayoutValues.MembershipIcons = {
		[Enum.MembershipType.BuildersClub] = "rbxasset://textures/ui/icon_BC-16.png",
		[Enum.MembershipType.TurboBuildersClub] = "rbxasset://textures/ui/icon_TBC-16.png",
		[Enum.MembershipType.OutrageousBuildersClub] = "rbxasset://textures/ui/icon_OBC-16.png",
		[Enum.MembershipType.Premium] = premiumIcon,
	}

	LayoutValues.CustomPlayerIcons = {	-- Admins with special icons
		[7210880] = "rbxassetid://134032333", -- Jeditkacheff
		[13268404] = "rbxassetid://113059239", -- Sorcus
		[261] = "rbxassetid://105897927", -- shedlestky
	}

	LayoutValues.NeutralTeamColor = BrickColor.new("White")
	LayoutValues.NeutralTeamName = "Neutral"

	if FFlagPlayerListDesignUpdate then
		LayoutValues.DropDownButtonSizeY = 56
		LayoutValues.DropDownButtonPadding = 0
		LayoutValues.DropDownPadding = 10
		LayoutValues.DropDownRightOptionSize = 55
		LayoutValues.DropDownIconSize = 36
		LayoutValues.DropDownHeaderSizeY = 80
		LayoutValues.DropDownHeaderBackgroundSize = 65
		LayoutValues.DropDownScreenSidePadding = SCREEN_SIDE_PADDING
	else
		LayoutValues.DropDownButtonSizeY = 24
		LayoutValues.DropDownButtonPadding = 2
		LayoutValues.DropDownTextPadding = 12
	end

	LayoutValues.VoiceChatShieldColor = Color3.fromRGB(41, 41, 41)
	LayoutValues.VoiceChatShieldTransparency = 0.2

	setmetatable(LayoutValues, {
		__index = function(self, key)
			error(string.format("%q is not a valid member of LayoutValues",
				tostring(key)), 2)
		end,
	})

	return LayoutValues
end