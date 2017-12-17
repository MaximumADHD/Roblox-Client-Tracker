-- Written by Kip Turner, Copyright Roblox 2015

local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Utility = require(ShellModules:FindFirstChild('Utility'))

local Settings =
{
	WhiteTextColor = Color3.new(1,1,1);
	GreyTextColor = Color3.new(0.5,0.5,0.5);
	LightGreyTextColor = Color3.new(184/255, 184/255, 184/255);
	BlueTextColor = Color3.new(0,116/255,189/255);
	BlackTextColor = Color3.new(0,0,0);
	GreenTextColor = Color3.new(2/255, 183/255, 87/255);
	RedTextColor = Color3.new(216/255, 104/255, 104/255);
	TextSelectedColor = Color3.new(19/255, 19/255, 19/255);

	LineBreakColor = Color3.new(78/255, 78/255, 78/255);
	PageDivideColor = Color3.new(151/255, 151/255, 151/255);
	BadgeOwnedColor = Color3.new(45/255, 96/255, 128/255);
	BadgeOverlayColor = Color3.new(13/255, 28/255, 38/255);

	OverlayColor = Color3.new(26/255, 57/255, 76/255);
	BadgeFrameColor = Color3.new(106/255, 120/255, 129/255);
	RobuxOverlayImageColor = Color3.new(42/255, 51/255, 57/255);

	BlueButtonColor = Color3.new(50/255, 181/255, 1);
	GreySelectionColor = Color3.new(84/255, 99/255, 109/255);
	GreenButtonColor = Color3.new(2/255, 163/255, 77/255);
	GreenSelectedButtonColor = Color3.new(63/255, 198/255, 121/255);
	GreyButtonColor = Color3.new(78/255, 84/255, 96/255);
	GreySelectedButtonColor = Color3.new(50/255, 181/255, 1);

	CharacterBackgroundColor = Color3.new(39/255, 69/255, 82/255);
	ForegroundGreyColor = Color3.new(58/255, 60/255, 64/255);
	BackgroundGreyColor = Color3.new(78/255, 84/255, 96/255);
	ModalBackgroundColor = Color3.new(0,0,0);
	AvatarBoxBackgroundColor = Color3.new(255/255,255/255,255/255);
	TabUnderlineColor = Color3.new(50/255,181/255,255/255);
	PriceLabelColor = Color3.new(241/255, 116/255, 10/255);
	PromoLabelColor = Color3.new(1, 0, 0);

	TextBoxColor = Color3.new(1, 1, 1);
	TextBoxSelectedTransparency = 0.5;
	TextBoxDefaultTransparency = 0.75;

	AvatarBoxBackgroundSelectedTransparency = 0.75;
	AvatarBoxBackgroundDeselectedTransparency = 0.875;
	AvatarBoxTextSelectedTransparency = 0;
	AvatarBoxTextDeselectedTransparency = 0.5;
	ModalBackgroundTransparency = 0.3;
	FriendStatusTextTransparency = 0.5;

	LargeHeadingSize = Enum.FontSize.Size48;
	MediumLargeHeadingSize = Enum.FontSize.Size36;
	MediumHeadingSize = Enum.FontSize.Size24;
	SmallHeadingSize = Enum.FontSize.Size18;
	ParagraphSize = Enum.FontSize.Size14;

-- Font Sizes
	-- RobloxSize -> Mockup Sizes
	LargeFontSize = Enum.FontSize.Size96;	-- 72pt
	HeaderSize = Enum.FontSize.Size60;		-- 48pt
	MediumFontSize = Enum.FontSize.Size48;	-- 36pt
	TitleSize = Enum.FontSize.Size42;		-- 34pt
	ButtonSize = Enum.FontSize.Size36;		-- 30pt
	DescriptionSize = Enum.FontSize.Size32;	-- 26pt
	SubHeaderSize = Enum.FontSize.Size28;	-- 24pt
	SmallTitleSize = Enum.FontSize.Size24;	-- 20pt

	HeadingFont = Enum.Font.SourceSans;

-- Font Types
	RegularFont = Enum.Font.SourceSans;
	LightFont = Enum.Font.SourceSansLight;
	BoldFont = Enum.Font.SourceSansBold;
	ItalicFont = Enum.Font.SourceSansItalic;

	TabItemSpacing = 30;

	-- Screen priority
	DefaultPriority = 1;
	OverlayPriority = 2;
	ElevatedPriority = 3;
	ImmediatePriority = 4;

	TabDockTweenDuration = 0.35;

--Games Pane RefreshInterval (in seconds)
	GamesPaneRefreshInterval = 30 * 60;
	AvatarPaneRefreshInterval = Utility.GetFastVariable("XboxAvatarPaneRefreshInterval") and tonumber(Utility.GetFastVariable("XboxAvatarPaneRefreshInterval")) or 1800;

	GameDetailsRefreshInterval = Utility.GetFastVariable("XboxGameDetailsRefreshInterval") and tonumber(Utility.GetFastVariable("XboxGameDetailsRefreshInterval")) or 1800;
	GameSortsUpdateInterval = Utility.GetFastVariable("XboxGameSortsUpdateInterval") and tonumber(Utility.GetFastVariable("XboxGameSortsUpdateInterval")) or 1800;

--Images
	RoundCornerButtonImage = 'rbxasset://textures/ui/Shell/Buttons/Generic9ScaleButton@720.png';

--Offset For Text
	TextVerticalPadding = 10;
	TextHorizontalPadding = 13;
}

return Settings
