local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService('CoreGui')
local GuiService = game:GetService("GuiService")
local RobloxGui = CoreGui:WaitForChild('RobloxGui')

local DarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local UIBlox = require(CorePackages.UIBlox)
local UIBloxImages = UIBlox.App.ImageSet.Images
local getIconSize = UIBlox.App.ImageSet.getIconSize
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

local EnableInGameMenuControls = require(RobloxGui.Modules.Flags.GetFFlagEnableInGameMenuControls)
local EnableInGameMenuModernization = require(RobloxGui.Modules.Flags.GetFFlagEnableInGameMenuModernization)
local EnableInGameMenuModernizationBigText = require(RobloxGui.Modules.Flags.GetFFlagEnableInGameMenuModernizationBigText)
local EnableInGameMenuModernizationStickyBar = require(RobloxGui.Modules.Flags.GetFFlagEnableInGameMenuModernizationStickyBar)
local ExperienceMenuABTestManager = require(RobloxGui.Modules.ExperienceMenuABTestManager)
local ChromeEnabled = require(script.Parent.Parent.Chrome.Enabled)

local AppFontBaseSize = AppFont.BaseSize

local ThemeEnabled = EnableInGameMenuControls() or EnableInGameMenuModernization() or ChromeEnabled()

local UseBiggerText = EnableInGameMenuModernizationBigText()
local UseStickyBarEnabled = EnableInGameMenuModernizationStickyBar()
local UseIconButtons = false
local UseBottomButtonBarOnMobile = false

local nominalSizeFactor = 0.833
local topCornerInset, _ = GuiService:GetGuiInset()

-- roughly maps SourceSans font size to Gotham using nominalSizeFactor, rounding down
local fontSizeMap = {
	[ Enum.FontSize.Size14 ] = Enum.FontSize.Size11,
	[ Enum.FontSize.Size18 ]  = Enum.FontSize.Size14,
	[ Enum.FontSize.Size24 ]  = Enum.FontSize.Size18,
	[ Enum.FontSize.Size36 ]  = Enum.FontSize.Size28,
	[ Enum.FontSize.Size48 ]  = Enum.FontSize.Size36,
}

local nullColor = Color3.fromRGB(0, 0, 0);
local nullFont: any? = Enum.Font.Gotham
local nullFontSize: any? = fontSizeMap[Enum.FontSize.Size24]
local nullTextSize: any? = 20

local AppTheme = {
	MenuContainer = {
		Color = Color3.new(0, 0, 0),
		Transparency = 0.2,
	},
	IGM_TabSelection = {
		Color = Color3.new(1, 1, 1),
		Transparency = 0,
	},
	White = {
		Color = Color3.new(1, 1, 1),
		Transparency = 0,
	},
	IGM_Background = {
		Color = Color3.fromRGB(0,0,0),
		Transparency = 1,
	},
	IGM_Button = {
		Color = Color3.fromRGB(0,0,0),
		Transparency = 1.0,
	},
	IGM_ButtonHover = {
		Color = Color3.fromRGB(56, 57, 59),
		Transparency = 0.0,
	},
	IGM_Stroke = {
		Color = Color3.new(0.776, 0.776, 0.776),
		Transparency = 0.0,
	},
	IGM_Selected = {
		Color = Color3.fromRGB(217, 217, 217),
		Transparency = 0.0,
	},
}

local AppFont = {
	-- TODO Gotham is a temporary font, should be switched to new one when available
	Confirmation_Font = {
		Font = Enum.Font.GothamBold,
		RelativeSize = fontSizeMap[Enum.FontSize.Size36],
		TextSize = 36 * nominalSizeFactor,
	},
	Button_Font = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = fontSizeMap[Enum.FontSize.Size24],
		TextSize = 18,
	},
	Username = {
		RelativeSize = if UseBiggerText then fontSizeMap[Enum.FontSize.Size24] else fontSizeMap[Enum.FontSize.Size18],
	},
	DisplayName = {
		RelativeSize = Enum.FontSize.Size18,
		Font = Enum.Font.GothamMedium,
	},
	Settings_Font = {
		Font = Enum.Font.Gotham,
	},
	Help_Title_Font = {
		Font = Enum.Font.GothamMedium,
		RelativeSize = fontSizeMap[Enum.FontSize.Size18],
	},
	Help_Text_Font = {
		Font = Enum.Font.Gotham,
		RelativeSize = fontSizeMap[Enum.FontSize.Size18],
		TextSize = 18 * nominalSizeFactor,
	},
	Help_Gamepad_Font = {
		Font = Enum.Font.GothamMedium,
	},
	Help_Touch_Font = {
		Font = Enum.Font.GothamBold,
		RelativeSize = fontSizeMap[Enum.FontSize.Size14],
	},
	Game_Settings_Font = {
		Font = Enum.Font.Gotham,
		RelativeSize = fontSizeMap[Enum.FontSize.Size24],
	},
	Conversation_Details_Font = {
		Font = Enum.Font.Gotham,
		TextSize = 16 * nominalSizeFactor,
	},
	Utility_Text_Font = {
		Font = Enum.Font.Gotham,
		TextSize = 18,
	},
	Utility_Text_Small_Font = {
		Font = Enum.Font.Gotham,
		TextSize = 16 * nominalSizeFactor,
	},
	Utility_Row_Small_Font = {
		Font = Enum.Font.Gotham,
		TextSize = 16 * nominalSizeFactor,
	},
	Utility_Row_Font = {
		Font = Enum.Font.GothamMedium,
		TextSize = 16 * nominalSizeFactor,
	},
	Back_Button_Font = {
		Font = Enum.Font.GothamSemibold,
		TextSize = 24 * nominalSizeFactor,
	},
	Semibold_Font = {
		Font = Enum.Font.GothamSemibold,
	},
	Bold_Font = {
		Font = Enum.Font.GothamMedium,
	}
}

setmetatable(AppTheme,
{
    __index=function(self,key)
        return DarkTheme[key]
    end
})

local ComponentThemeKeys = {
	SETTINGS_SHIELD = "IGM_Background",
	SETTINGS_SHIELD_TRANSPARENCY = "IGM_Background",

	SELECTION_TEXT_COLOR_NORMAL = "White",
	SELECTION_TEXT_COLOR_HIGHLIGHTED = "White",

	HubBarContainer = "IGM_Background",
	HubBarContainerTransparency = "IGM_Background",
	HubBarContainerHover = "IGM_Background",
	HubBarHomeButton = "IGM_Background",
	HubBarHomeButtonHover = "IGM_Background",
	HubBarHomeButtonTransparency = "IGM_Background",
	HubBarHomeButtonTransparencyHover = "IGM_Background",

	DarkenBackground = "Overlay",

	PlayerRowFrame = "BackgroundDefault",
	TabSelection = "IGM_TabSelection",

	DefaultButton = "IGM_Button",
	DefaultButtonHover = "IGM_ButtonHover",
	DefaultButtonStroke = "SecondaryDefault",
	WhiteButtonText = "SecondaryContent",

	MenuContainer = "BackgroundUIContrast",

	ControlInputText = "SystemPrimaryDefault",
	ControlInputStroke = "Divider",
	ControlInputBackground = "BackgroundDefault",
	ControlInputFocusedStroke = "IGM_TabSelection",

	InputActionBackground = "BackgroundUIDefault",

	IconButton = "UIDefault",
	IconButtonHover = "BackgroundOnHover",

	ImageButton = "Divider",

	RowFrameBackground = "BackgroundDefault",

	DropdownListBg = "BackgroundUIDefault",
	DropdownListFocusBg = "UIDefault",

	-- settings slider
	SELECTED_COLOR = "IGM_Selected",
	NON_SELECTED_COLOR = "BackgroundUIDefault",

	NotInteractableSelection = "UIEmphasis",

	Confirmation = "Confirmation_Font",
	Button = "Button_Font",
	SettingsHub = "Settings_Font",
	HelpTitle = "Help_Title_Font",
	HelpText = "Help_Text_Font",
	HelpGamepad = "Help_Gamepad_Font",
	HelpTouch = "Help_Touch_Font",
	GameSettings = "Game_Settings_Font",
	ConversationDetails = "Conversation_Details_Font",
	UtilityText = "Utility_Text_Font",
	UtilityRow = "Utility_Row_Font",
	UtilityRowSmall = "Utility_Row_Small_Font",
	UtilityTextSmall = "Utility_Text_Small_Font",
	BackButton = "Back_Button_Font",
	Semibold = "Semibold_Font",
	Bold = "Bold_Font",
	ShareLinkTitle = "Utility_Text_Font",

}




local function getViewportSize():any
	if _G.__TESTEZ_RUNNING_TEST__ then
		--Return fake value here for unit tests
		return Vector2.new(1024, 1024)
	end

	if not workspace.CurrentCamera then
		return nil
	end

	if (workspace.CurrentCamera :: Camera).ViewportSize == Vector2.new(0,0) or
		(workspace.CurrentCamera :: Camera).ViewportSize == Vector2.new(1,1) then
		return nil
	end

	return (workspace.CurrentCamera :: Camera).ViewportSize
end

local function isPortrait()
	local viewport = getViewportSize()
	return viewport and viewport.Y > viewport.X
end

local viewportSize = getViewportSize()
local IsSmallTouchScreen = viewportSize and UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)
local UseStickyBar = function()
	local currentViewportSize = getViewportSize()
	local isSmallScreen = currentViewportSize and (currentViewportSize.Y < 500 or currentViewportSize.X < 700)
	return UseStickyBarEnabled and isSmallScreen
end

local HubPadding = {
	PaddingTop = UDim.new(0, 0),
	PaddingLeft = UDim.new(0, 20),
	PaddingRight = UDim.new(0, 20),
	PaddingBottom = UDim.new(0, 14),
}
local HubPaddingMobile = {
	PaddingTop = UDim.new(0, 0),
	PaddingLeft = UDim.new(0, 12),
	PaddingRight = UDim.new(0, 12),
	PaddingBottom = UDim.new(0,12),
}

local MenuContainerPositionOld = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(0.95, 0, 0.95, 0),
	AutomaticSize = Enum.AutomaticSize.None,
}

local MenuContainerPositionOldMobile = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(1, 0, 0.99, 0),
	AutomaticSize = Enum.AutomaticSize.None,
}

local MenuContainerPosition = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 10),
	Size = UDim2.new(0.0, 0, 0.0, 0),
	AutomaticSize = Enum.AutomaticSize.XY,
}

local MenuContainerPositionMobile = {
	AnchorPoint = Vector2.new(0.5, 1),
	Position = UDim2.new(0.5, 0, 1, 8),
	Size = UDim2.new(0.0, 0, 0.0, 0),
	AutomaticSize = Enum.AutomaticSize.XY,
}

local MenuContainerPositionMobileWithStickyBar = {
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, topCornerInset.Y),
	Size = UDim2.new(1, -24, 0, 0),
	AutomaticSize = Enum.AutomaticSize.Y,
}


if ThemeEnabled then

	return {
		DefaultScrollBarThickness = 1,
		DefaultCornerRadius = UDim.new(0, 8),
		MenuContainerCornerRadius = UDim.new(0, 10),
		DefaultStokeThickness = 1,
		AlwaysShowBottomBar = function()
			if UseStickyBar() then
				return true
			end
			if IsSmallTouchScreen then
				if not UseBottomButtonBarOnMobile then
					return false
				elseif isPortrait() then
					return UseBottomButtonBarOnMobile
				else
					return not UseBottomButtonBarOnMobile
				end
			else
				return true
			end
		end,
		UIBloxThemeEnabled = true,
		UseIconButtons = UseIconButtons,
		ShowHomeButton = ExperienceMenuABTestManager.default:shouldShowHomeButton(),
		EnableVerticalBottomBar = UseBottomButtonBarOnMobile,
		UseBiggerText = UseBiggerText,
		UseStickyBar = UseStickyBar,
		EnableDarkenBackground = true,
		TabHeaderIconPadding = 5,
		UseInspectAndBuyPanel = function()
			return IsSmallTouchScreen
		end,
		HubPadding =  function()
			if IsSmallTouchScreen then
				return HubPaddingMobile
			else
				return HubPadding
			end
		end,
		MenuContainerPosition = function()
			if IsSmallTouchScreen then
				if UseStickyBar() then
					return MenuContainerPositionMobileWithStickyBar
				else
					return MenuContainerPositionMobile
				end
			else
				return MenuContainerPosition
			end
		end,
		ButtonHeight = 36,
		LargeButtonHeight = 48,
		SelectorArrowButtonWidth = 32,
		VerticalMenuWidth = 92,
		Images = UIBloxImages,
		getIconSize = getIconSize,
		IconSize = IconSize,
		SHIELD_INACTIVE_POSITION = UDim2.new(0,0,1,36),
		viewportResized = function()
			viewportSize = getViewportSize()
			IsSmallTouchScreen = viewportSize and UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)
		end,
		color = function(key:string, nonThemeColor:Color3?)
			key = ComponentThemeKeys[key] or key;
			return if AppTheme[key] then AppTheme[key].Color else nonThemeColor or nullColor
		end,
		transparency = function(key:string, nonThemeTransparency:number?)
			key = ComponentThemeKeys[key] or key;
			return if AppTheme[key] then AppTheme[key].Transparency else nonThemeTransparency or 0
		end,
		font = function(nonThemeFont:any?, key:string?)
			if not key then
				return nullFont
			end
			key = ComponentThemeKeys[key] or key;
			return if AppFont[key] then AppFont[key].Font else nonThemeFont or nullFont
		end,
		fontSize = function(nonThemeFontSize:Enum.FontSize, key:string?)
			if not key then
				return fontSizeMap[nonThemeFontSize]
			end
			key = ComponentThemeKeys[key] or key;
			return if AppFont[key] then AppFont[key].RelativeSize else nonThemeFontSize or nullFontSize
		end,
		textSize = function(nonThemeTextSize:number, key:string?)
			if not key then
				return nonThemeTextSize * nominalSizeFactor or nullTextSize
			end
			if IsSmallTouchScreen and key == "UtilityRow" then
				key = "UtilityRowSmall"
			elseif IsSmallTouchScreen and key == "UtilityText" then
					key = "UtilityTextSmall"
			end
			key = ComponentThemeKeys[key] or key;
			return if AppFont[key] and AppFont[key].TextSize then AppFont[key].TextSize else nonThemeTextSize * nominalSizeFactor or nullTextSize
		end,
		hydrateLabel = function(instance:any, colorStyle:string, fontStyle:string)
			colorStyle = ComponentThemeKeys[colorStyle] or colorStyle;
			if AppTheme[colorStyle] then
				local color = AppTheme[colorStyle]
				instance.TextColor3 = color.Color
				instance.TextTransparency = color.Transparency
			end

			if AppFont[fontStyle] then
				local font = AppFont[colorStyle]
				instance.Font = font.RelativeSize * AppFontBaseSize
				instance.TextSize = font.TextSize
			end
		end,
		platformNameTextSize = 18,
		platformNameIconSize = UDim2.fromOffset(36, 36),
	}
else
	return {
		DefaultScrollBarThickness = 12,
		DefaultCornerRadius = UDim.new(0, 8),
		MenuContainerCornerRadius = UDim.new(0, 10),
		AlwaysShowBottomBar = function()
			return false
		end,
		UseIconButtons = false,
		UIBloxThemeEnabled = false,
		EnableVerticalBottomBar = false,
		DefaultStokeThickness = 1,
		ShowHomeButton = true,
		UseBiggerText = false,
		UseStickyBar = function() return false end,
		EnableDarkenBackground = false,
		TabHeaderIconPadding = 0,
		UseInspectAndBuyPanel = function()
			return false
		end,
		HubPadding =  function()
			if IsSmallTouchScreen then
				return HubPaddingMobile
			else
				return HubPadding
			end
		end,
		MenuContainerPosition = function()
			if IsSmallTouchScreen then
				return MenuContainerPositionOldMobile
			else
				return MenuContainerPositionOld
			end
		end,
		ButtonHeight = 46,
		LargeButtonHeight = 70,
		SelectorArrowButtonWidth = 50,
		VerticalMenuWidth = 92,
		Images = UIBloxImages,
		getIconSize = getIconSize,
		IconSize = IconSize,
		SHIELD_INACTIVE_POSITION = UDim2.new(0,0,-1,-36),
		viewportResized = function()
		end,
		color = function(_:string, nonThemeColor:Color3?)
			return nonThemeColor or nullColor
		end,
		transparency = function(_:string, nonThemeTransparency:number?)
			return nonThemeTransparency or 0
		end,
		font = function(nonThemeFont:any?, _:string?)
			return nonThemeFont
		end,
		fontSize = function(nonThemeFontSize:Enum.FontSize, _:string?)
			return nonThemeFontSize
		end,
		textSize = function(nonThemeTextSize:number, _:string?)
			return nonThemeTextSize
		end,
		hydrateLabel = function(instance:any, colorStyle:string, fontStyle:string)
			-- noop
		end,
		platformNameTextSize = 18,
		platformNameIconSize = UDim2.fromOffset(36, 36),
	}
end
