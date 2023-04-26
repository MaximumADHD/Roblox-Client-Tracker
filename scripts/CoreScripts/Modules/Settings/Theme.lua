local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local DarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local AppFontBaseSize = AppFont.BaseSize

local ThemeEnabled = false

local nominalSizeFactor = 0.833

-- roughly maps SourceSans font size to Gotham using nominalSizeFactor, rounding down
local fontSizeMap = {
	[ Enum.FontSize.Size14 ] = Enum.FontSize.Size11,
	[ Enum.FontSize.Size18 ]  = Enum.FontSize.Size14,
	[ Enum.FontSize.Size24 ]  = Enum.FontSize.Size18,
	[ Enum.FontSize.Size36 ]  = Enum.FontSize.Size28,
}

local nullColor = Color3.fromRGB(0, 0, 0);
local nullFont: any? = Enum.Font.Gotham
local nullFontSize: any? = fontSizeMap[Enum.FontSize.Size24]
local nullTextSize: any? = 20

local AppTheme = {
	IGM_TabSelection = {
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
}

local AppFont = {
	-- TODO Gotham is a temporary font, should be switched to new one when available
	Confirmation_Font = {
		Font = Enum.Font.GothamBold,
		RelativeSize = fontSizeMap[Enum.FontSize.Size36],
		TextSize = 36 * nominalSizeFactor,
	},
	Button_Font = {
		Font = Enum.Font.GothamBold,
		RelativeSize = fontSizeMap[Enum.FontSize.Size24],
		TextSize = 24 * nominalSizeFactor,
	},
	Settings_Font = {
		Font = Enum.Font.Gotham,
	},
	Help_Title_Font = {
		Font = Enum.Font.GothamBold,
		RelativeSize = fontSizeMap[Enum.FontSize.Size18],
	},
	Help_Text_Font = {
		Font = Enum.Font.Gotham,
		RelativeSize = fontSizeMap[Enum.FontSize.Size18],
		TextSize = 18 * nominalSizeFactor,
	},
	Help_Gamepad_Font = {
		Font = Enum.Font.GothamBold,
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
		TextSize = 24 * nominalSizeFactor,
	},
	Utility_Row_Font = {
		Font = Enum.Font.GothamBold,
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
		Font = Enum.Font.GothamBold,
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

	HubBarContainer = "IGM_Background",
	HubBarContainerTransparency = "IGM_Background",
	HubBarContainerHover = "IGM_Background",
	HubBarHomeButton = "IGM_Background",
	HubBarHomeButtonHover = "IGM_Background",
	HubBarHomeButtonTransparency = "IGM_Background",
	HubBarHomeButtonTransparencyHover = "IGM_Background",

	PlayerRowFrame = "BackgroundDefault",
	TabSelection = "IGM_TabSelection",

	DefaultButton = "IGM_Button",
	DefaultButtonHover = "IGM_ButtonHover",
	DefaultButtonStroke = "IGM_Stroke",

	MenuContainer = "BackgroundUIContrast",

	ControlInputText = "SystemPrimaryDefault",
	ControlInputStroke = "Divider",
	ControlInputBackground = "BackgroundDefault",
	ControlInputFocusedStroke = "IGM_TabSelection",

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
	BackButton = "Back_Button_Font",
	Semibold = "Semibold_Font",
	Bold = "Bold_Font",
}




local function getViewportSize()
	if _G.__TESTEZ_RUNNING_TEST__ then
		--Return fake value here for unit tests
		return Vector2.new(1024, 1024)
	end

	while not workspace.CurrentCamera do
		workspace.Changed:Wait()
	end
	assert(workspace.CurrentCamera, "")

	-- ViewportSize is initally set to 1, 1 in Camera.cpp constructor.
	-- Also check against 0, 0 incase this is changed in the future.
	while (workspace.CurrentCamera :: Camera).ViewportSize == Vector2.new(0,0) or
		(workspace.CurrentCamera :: Camera).ViewportSize == Vector2.new(1,1) do
		(workspace.CurrentCamera :: Camera).Changed:Wait()
	end

	return (workspace.CurrentCamera :: Camera).ViewportSize
end

local viewportSize = getViewportSize()
local IsSmallTouchScreen =  UserInputService.TouchEnabled and (viewportSize.Y < 500 or viewportSize.X < 700)

local HubPadding = {
	PaddingTop = UDim.new(0, 0),
	PaddingLeft = UDim.new(0, 20),
	PaddingRight = UDim.new(0, 20),
	PaddingBottom = UDim.new(0, 35),
}
local MenuContainerPosition = {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	Size = UDim2.new(0.95, 0, 0.95, 0),
}

if IsSmallTouchScreen then
	HubPadding.PaddingBottom =  UDim.new(0,0)
end

if ThemeEnabled then

	if IsSmallTouchScreen then
		MenuContainerPosition.AnchorPoint =  Vector2.new(0.5, 1)
		MenuContainerPosition.Position =  UDim2.new(0.5, 0, 1, 0)
	end

	return {
		DefaultScrollBarThickness = 1,
		DefaultCornerRadius = UDim.new(0, 8),
		MenuContainerCornerRadius = UDim.new(0, 10),
		DefaultStokeThickness = 1,
		UIBloxThemeEnabled = true,
		ShowHomeButton = false,
		TabHeaderIconPadding = 5,
		HubPadding =  HubPadding,
		MenuContainerPosition = MenuContainerPosition,
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
	}
else
	return {
		DefaultScrollBarThickness = 12,
		DefaultCornerRadius = UDim.new(0, 8),
		MenuContainerCornerRadius = UDim.new(0, 10),
		UIBloxThemeEnabled = false,
		DefaultStokeThickness = 1,
		ShowHomeButton = true,
		TabHeaderIconPadding = 0,
		HubPadding =  HubPadding,
		MenuContainerPosition = MenuContainerPosition,

		color = function(_:string, nonThemeColor:Color3?)
			return nonThemeColor
		end,
		transparency = function(_:string, nonThemeTransparency:number?)
			return nonThemeTransparency
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
	}
end
