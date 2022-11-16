local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox

local Images = require(script.Parent.Images)

local UIBloxImages = UIBlox.App.ImageSet.Images

return {
	Images = {
		RobloxLogo = Images["LuaApp/graphic/ic_logo"],
		CloseButton = "rbxasset://textures/ui/TopBar/close.png",
		RespawnIcon = UIBloxImages["icons/actions/respawn"],
		PreviewExpandIcon = UIBloxImages["icons/actions/previewExpand"],
		PreviewShrinkIcon = UIBloxImages["icons/actions/previewShrink"],
		ReportIcon = UIBloxImages["icons/actions/feedback"],
		RecordIcon = UIBloxImages["icons/controls/screenrecord"],
		ScreenshotIcon = UIBloxImages["icons/controls/screenshot"],
		SuccessXLarge = UIBloxImages["icons/graphic/success_xlarge"],

		CloseModal = Images["LuaApp/icons/navigation/close"],
		NavigateBack = Images["LuaApp/icons/navigation/pushBack"],
		NavigateForward = Images["LuaApp/icons/navigation/pushRight"],

		SendInvite = Images["LuaApp/icons/GameDetails/invite"],
		InviteSuccess = Images["LuaApp/icons/status_progress"],
		InviteMenu = Images["InGameMenu/Icons/MenuFriends"],
		InviteFail = Images["LuaApp/graphic/ic_alert"],

		ControlsMenu = Images["InGameMenu/Icons/MenuControls"],

		Gamepad = "rbxasset://textures/ui/InGameMenu/GenericController.png",
		GamepadXbox = "rbxasset://textures/ui/InGameMenu/XboxController.png",

		KeyBorder = Images["InGameMenu/Icons/KeyBorder"],

		Mouse1Press = Images["InGameMenu/Graphic/ClickLeft"],
		Mouse2Press = Images["InGameMenu/Graphic/ClickRight"],
		MouseWheelScroll = Images["InGameMenu/Graphic/WheelScroll"],

		UpArrow = Images["InGameMenu/Icons/ArrowUp"],
		DownArrow = Images["InGameMenu/Icons/ArrowDown"],
		LeftArrow = Images["InGameMenu/Icons/ArrowLeft"],
		RightArrow = Images["InGameMenu/Icons/ArrowRight"],

		ScrollTop = "rbxasset://textures/ui/InGameMenu/ScrollTop.png",
		ScrollMid = "rbxasset://textures/ui/InGameMenu/ScrollMiddle.png",
		ScrollBottom = "rbxasset://textures/ui/InGameMenu/ScrollBottom.png",

		RadialGlow = "rbxasset://textures/ui/InGameMenu/BackgroundGlow.png",
		RadialGlowStrong = UIBloxImages["component_assets/dropshadow_17_8"],

		PlayersMenu = Images["InGameMenu/Icons/MenuPlayers"],

		AddFriend = Images["LuaApp/graphic/actions_friends_addfriend"],
		CancelFriendRequest = Images["InGameMenu/Icons/CancelFriendRequest"],
		UnFriend = Images["InGameMenu/Icons/UnFriend"],
		Friends = Images["InGameMenu/Icons/Friends"],

		MoreActions = Images["LuaApp/icons/GameDetails/more"],
		ViewAvatar = Images["InGameMenu/Icons/ViewAvatar"],

		RoundedRect = {
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Image = UIBloxImages["component_assets/circle_17"],
		},
		RoundedRectBorder = {
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Image = UIBloxImages["component_assets/circle_17_stroke_1"]
		},

		WhiteSquare = {
			ScaleType = Enum.ScaleType.Stretch,
			SliceCenter = Rect.new(0, 0, 0, 0),
			Image = "rbxasset://textures/ui/InGameMenu/WhiteSquare.png",
		},
		Circle = UIBloxImages["component_assets/circle_29"],

		ExpandArrow = Images["InGameMenu/Icons/ExpandArrow"],
		SelectedCheck = Images["InGameMenu/Icons/SelectedCheck"],

		RetryIcon = Images["LuaApp/icons/common_refresh"],
		ClearIcon = Images["InGameMenu/Icons/Clear"],
		SearchIcon = Images["LuaApp/icons/ic-search-new"],

		GameSettings = Images["InGameMenu/Icons/GameSettings"],

		Shadow = {
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(12, 12, 40, 40),
			Size = 8,
			Image = Images["InGameMenu/9Slice/DropShadow"],
		},

		ToggleOutline = {
			Image = Images["InGameMenu/9Slice/ToggleOutline"],
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
		ToggleFill = {
			Image = Images["InGameMenu/9Slice/ToggleFill"],
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(18, 18, 18, 18),
		},
		ToggleKnob = Images["InGameMenu/Graphic/SliderButton"],

		SliderHover = Images["InGameMenu/Graphic/sliderHover"],
		SliderCircle = {
			Image = Images["InGameMenu/9Slice/sliderCircle"],
			SliceCenter = Rect.new(8, 8, 9, 9),
			ScaleType = Enum.ScaleType.Slice,
		},
		SliderButton = Images["InGameMenu/Graphic/SliderButton"],

		LeaveGameTilesBackground = "rbxasset://textures/ui/InGameMenu/game_tiles_background.png",
		LeaveGameTilesBackgroundDesktop = "rbxasset://textures/ui/InGameMenu/game_tiles_background_desktop.png",

		LeaveRobloxLogo = "rbxasset://textures/ui/InGameMenu/roblox_logo.png",
		ButtonStackGradient = "rbxasset://textures/ui/InGameMenu/gradient.png",
		DropShadowFavorite = "rbxasset://textures/ui/InGameMenu/drop_shadow_favorite.png",
	}
}
