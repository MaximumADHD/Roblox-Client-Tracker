return function(isTenFoot, isSmallTouchScreen)
	local LayoutValues = {}

	LayoutValues.IsTenFoot = isTenFoot

	if isTenFoot then
		local playerEntrySizeY = 100
		local entryPadding = 5

		LayoutValues.ContainerPosition = UDim2.new(0.5, 0, 0.5, 0)
		LayoutValues.ContainerSize = UDim2.new(0, 1000, 0, 720)
		LayoutValues.AnchorPoint = Vector2.new(0.5, 0.5)

		LayoutValues.PlayerScrollListPosition = UDim2.new(0, 0, 0, playerEntrySizeY + entryPadding)
		LayoutValues.PlayerScrollListSize = UDim2.new(1, 19, 1, 0)

		LayoutValues.EntrySizeX = 350
		LayoutValues.PlayerEntrySizeY = playerEntrySizeY
		LayoutValues.EntryPadding = entryPadding
		LayoutValues.TeamEntrySizeY = 32
		LayoutValues.StatEntrySizeX = 250
		LayoutValues.EntryXOffset = -20

		LayoutValues.BackgroundTransparency = 0.25
		LayoutValues.BackgroundColor = Color3.fromRGB(60, 60, 60)
		LayoutValues.TitleBackgroundColor = Color3.fromRGB(25, 25, 25)
		LayoutValues.TitleBackgroundTransparency = 0

		LayoutValues.PlayerIconSize = UDim2.new(0, 64, 0, 64)
		LayoutValues.InitalPlayerEntryPadding = 14
		LayoutValues.PlayerEntryPadding = 4

		LayoutValues.PlayerNameSize = UDim2.new(1, -88, 1, 0)
		LayoutValues.PlayerNameTextSize = 32
		LayoutValues.StatTextSize = 32
	else
		LayoutValues.ContainerPosition = UDim2.new(1, 0, 0, 2)
		LayoutValues.ContainerSize = UDim2.new(0, 170, 0.5, 0)
		LayoutValues.AnchorPoint = Vector2.new(1, 0)

		LayoutValues.PlayerScrollListPosition = UDim2.new(0, 0, 0, 0)
		LayoutValues.PlayerScrollListSize = UDim2.new(1, -1, 1, 0)

		LayoutValues.EntrySizeX = 170
		LayoutValues.PlayerEntrySizeY = 24
		LayoutValues.EntryPadding = 2
		LayoutValues.TeamEntrySizeY = 18
		LayoutValues.StatEntrySizeX = 75
		LayoutValues.EntryXOffset = 0

		LayoutValues.BackgroundTransparency = 0.5
		LayoutValues.BackgroundColor = Color3.fromRGB(31, 31, 31)
		LayoutValues.TitleBackgroundColor = Color3.fromRGB(106, 106, 106)
		LayoutValues.TitleBackgroundTransparency = 0

		LayoutValues.PlayerIconSize = UDim2.new(0, 16, 0, 16)
		LayoutValues.InitalPlayerEntryPadding = 0
		LayoutValues.PlayerEntryPadding = 2

		LayoutValues.PlayerNameSize = UDim2.new(1, -36, 1, 0)
		LayoutValues.PlayerNameTextSize = 14
		LayoutValues.StatTextSize = 14
	end

	if isSmallTouchScreen then
		LayoutValues.MaxLeaderstats = 1
	else
		LayoutValues.MaxLeaderstats = 4
	end

	LayoutValues.TextColor = Color3.fromRGB(255, 255, 243)
	LayoutValues.TextStrokeTransparency = 0.75
	LayoutValues.TextStrokeColor = Color3.fromRGB(34, 34, 34)

	LayoutValues.ScrollImageColor = Color3.fromRGB(31, 31, 31)
	LayoutValues.ScrollImageTransparency = 0.5

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
	LayoutValues.ButtonSelectedColor = Color3.fromRGB(50, 181, 255)
	LayoutValues.TextSelectedColor = Color3.fromRGB(19, 19, 19)
	LayoutValues.IconUnSelectedColor = Color3.fromRGB(255, 255, 255)

	LayoutValues.ShadowImage = "rbxasset://textures/ui/PlayerList/TileShadowMissingTop.png"
	LayoutValues.ShadowSize = 5
	LayoutValues.ShadowSliceRect = Rect.new(6, 6, 9, 9)

	LayoutValues.DefaultThumbnail = "rbxasset://textures/ui/Shell/Icons/DefaultProfileIcon.png"

	LayoutValues.BlockedIcon = "rbxasset://textures/ui/PlayerList/BlockedIcon.png"

	LayoutValues.FriendIcons = {
		[Enum.FriendStatus.Friend] = "rbxasset://textures/ui/icon_friends_16.png",
		[Enum.FriendStatus.FriendRequestSent] ="rbxasset://textures/ui/icon_friendrequestsent_16.png",
		[Enum.FriendStatus.FriendRequestReceived] = "rbxasset://textures/ui/icon_friendrequestrecieved-16.png",
	}

	LayoutValues.FollowerIcon = "rbxasset://textures/ui/icon_follower-16.png"
	LayoutValues.FollowingIcon = "rbxasset://textures/ui/icon_following-16.png"
	LayoutValues.MutualFollowingIcon = "rbxasset://textures/ui/icon_mutualfollowing-16.png"

	LayoutValues.PlaceOwnerIcon = "rbxasset://textures/ui/icon_placeowner.png"

	LayoutValues.MembershipIcons = {
		[Enum.MembershipType.BuildersClub] = "rbxasset://textures/ui/icon_BC-16.png",
		[Enum.MembershipType.TurboBuildersClub] = "rbxasset://textures/ui/icon_TBC-16.png",
		[Enum.MembershipType.OutrageousBuildersClub] = "rbxasset://textures/ui/icon_OBC-16.png",
	}

	LayoutValues.CustomPlayerIcons = {	-- Admins with special icons
		[7210880] = "rbxassetid://134032333", -- Jeditkacheff
		[13268404] = "rbxassetid://113059239", -- Sorcus
		[261] = "rbxassetid://105897927", -- shedlestky
		[20396599] = "rbxassetid://161078086", -- Robloxsai
	}

	LayoutValues.NeutralTeamColor = BrickColor.new("White")
	LayoutValues.NeutralTeamName = "Neutral"

	setmetatable(LayoutValues, {
		__index = function(self, key)
			error(string.format("%q is not a valid member of LayoutValues",
				tostring(key)), 2)
		end,
	})

	return LayoutValues
end