return {
	RegularFont = Enum.Font.SourceSans;

	WhiteTextColor = Color3.fromRGB(255, 255, 255);
	GrayTextColor = Color3.fromRGB(25, 25, 25);

	-- Font Sizes
	ButtonFontSize = 36;
	SubHeaderFontSize = 30;

	--CategoryMenu & Tablist
	CategoryMenuPosition = UDim2.new(0, 100, 0, 270);
	CategoryMenuFullviewPosition = UDim2.new(0, -360, 0, 270);
	TabListPosition = UDim2.new(0, 220, 0, 170);
	TabListFullviewPosition = UDim2.new(0, -360, 0, 170);

	CategoryButtonsPadding = 20;
	CategoryButtonRowsPerPage = 6;

	CategoryButtonDefaultSize = UDim2.new(0, 360, 0, 80);
	CategoryButtonSmallSize = UDim2.new(0, 80, 0, 80);

	CategoryButtonImageDefault = "rbxasset://textures/ui/Shell/AvatarEditor/button/btn-category.png";
	CategoryButtonImageSelected = "rbxasset://textures/ui/Shell/AvatarEditor/button/btn-category-selected.png";
	CategoryButtonSelectorImage = "rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-item selector-8px corner.png";

	CategoryIconSize = UDim2.new(0, 32, 0, 32);
	CategoryTextSize = UDim2.new(0, 200, 0, 50);

	--Indicator
	IndicatorHeight = 83;
	IndicatorBottomDistance = 60;
	IndicatorIconTextDistance = 16;
	IndicatorButtonsDistance = 60;
	IndicatorMaxLength = 580;

	--Warning
	WarningMaxLength = 580;
	WarningTextPadding = 24;
	TooltilsTipOffset = 25.5;

	--Tween
	DefaultTweenTime = 0.2;

	--Layers
	BackgroundLayer = 1;
	BasicLayer = 2;
	AssetImageLayer = 3;
	BorderMaskLayer = 4;
	ShadingOverlayLayer = 5;
	IndicatorLayer = 6;

	--Page & CardGrid
	ButtonsPerRow = 3;
	ButtonRowsPerPage = 3;
	SkinColorsPerRow = 5;
	SkinColorRowsPerPage = 6;
	ButtonSize = 150;
	GridPadding = 20;
	SkinColorGridPadding = 20;
	ExtraVerticalShift = 0;
	SkinColorExtraVerticalShift = 0;
	SkinColorButtonSize = 74;
	SelectorBottomMinDistance = 190;
	SelectorTopMinDistance = 270;

	ItemCardSelectorImage = "rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-item selector-16px corner.png";

	ItemAvailableBackgroundImage = "rbxasset://textures/ui/Shell/AvatarEditor/card/item card-available.png";
	ItemUnavailableBackgroundImage = "rbxasset://textures/ui/Shell/AvatarEditor/card/item card-unavailable.png";

	ItemMaskImage = "rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-item mask.png";
	ItemMaskNotOwnedImage = "rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-item mask-not owned.png";
	WearingIndicatorImage = "rbxasset://textures/ui/Shell/AvatarEditor/graphic/gr-wearing indicator.png";

	ColorPanelImage = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color panel.png";
	ColorEquippedImage = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot-selected.png";
	CheckMarkImage = "rbxasset://textures/ui/Shell/AvatarEditor/icon/ic-checkmark.png";
	ColorSelectorImage = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot-select.png";
	ColorDotImage = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot.png";
	ColorDotShadowImage = "rbxasset://textures/ui/Shell/AvatarEditor/color selector/color dot shadow.png";

	--Scales
	ScaleSliderSize = UDim2.new(1, 0, 0, 30);
	SliderPositionY = 56;
	SliderVeritcalOffset = 120;

	--Camera
	CameraCenterScreenPosition = UDim2.new(0, 0, 0, 0);

	--Menu level
	ConsoleMenuLevel = {
		None = 0,
		CategoryMenu = 1,
		TabList = 2,
		AssetsPage = 3
	};
}
