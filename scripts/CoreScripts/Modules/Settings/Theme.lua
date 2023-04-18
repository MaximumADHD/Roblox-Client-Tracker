local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local DarkTheme = require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = require(CorePackages.Workspace.Packages.Style).Fonts.Gotham

local AppFontBaseSize = AppFont.BaseSize

local ThemeEnabled = false

local nullColor = Color3.fromRGB(0, 0, 0);
local nullFont = Enum.Font.SourceSans

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
		font = function(key:string, nonThemeFont:any?)
			key = ComponentThemeKeys[key] or key;
			return if AppTheme[key] then AppFont[key].Font else nonThemeFont or nullFont
		end,
		fontSize = function(key:string, nonThemeFontSize:any?)
			key = ComponentThemeKeys[key] or key;
			return if AppTheme[key] then (AppFont[key].RelativeSize * AppFontBaseSize) else nonThemeFontSize or 20
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
		font = function(_:string, nonThemeFont:any?)
			return nonThemeFont
		end,
		fontSize = function(_:string, nonThemeFontSize:any?)
			return nonThemeFontSize
		end,
		hydrateLabel = function(instance:any, colorStyle:string, fontStyle:string)
			-- noop
		end,
	}
end
