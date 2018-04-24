local Constants = {
	Color = {
		GRAY1 = Color3.fromRGB(25, 25, 25),
		GRAY2 = Color3.fromRGB(117, 117, 117),
		GRAY3 = Color3.fromRGB(184, 184, 184),
		GRAY4 = Color3.fromRGB(227, 227, 227),
		GRAY5 = Color3.fromRGB(242, 242, 242),
		GRAY6 = Color3.fromRGB(245, 245, 245),
		GRAY_SEPARATOR = Color3.fromRGB(172, 170, 161),
		WHITE = Color3.fromRGB(255, 255, 255),
		BLUE_PRIMARY = Color3.fromRGB(0, 162, 255),
		BLUE_HOVER = Color3.fromRGB(50, 181, 255),
		BLUE_PRESSED = Color3.fromRGB(0, 116, 189),
		BLUE_DISABLED = Color3.fromRGB(153, 218, 255),
		GREEN_PRIMARY = Color3.fromRGB(2, 183, 87),
		GREEN_HOVER = Color3.fromRGB(63, 198, 121),
		GREEN_PRESSED = Color3.fromRGB(17, 130, 55),
		GREEN_DISABLED = Color3.fromRGB(163, 226, 189),
		RED_PRIMARY = Color3.fromRGB(226, 35, 26),
		RED_NEGATIVE = Color3.fromRGB(216, 104, 104),
		RED_HOVER = Color3.fromRGB(226, 118, 118),
		RED_PRESSED = Color3.fromRGB(172, 30, 45),
		ORANGE_FAVORITE = Color3.fromRGB(246, 183, 2),
		ALPHA_SHADOW_PRIMARY = 0.3, -- Used with Gray1
		ALPHA_SHADOW_HOVER = 0.75, -- Used with Gray1
	},
	TAB_BAR_SIZE = 49,
	GAME_CAROUSEL_PADDING = 15,
	GAME_CAROUSEL_CHILD_PADDING = 12,
	GameSortGroups = {
		Games = "Games",
		HomeGames = "HomeGames",
	},
	ApiUsedForSorts = {
		Games = "GamesAllSort",
		HomeGames = "HomeSorts",
	},
	AvatarThumbnailTypes = {
		AvatarThumbnail = "AvatarThumbnail",
		HeadShot = "HeadShot",
	},
	AvatarThumbnailSizes = {
		Size150x150 = "Size150x150",
	},
}

return Constants