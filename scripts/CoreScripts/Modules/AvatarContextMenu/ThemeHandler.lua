local InsertService = game:GetService("InsertService")
local StarterGui = game:GetService("StarterGui")

-- Keep around any entries removed from this table to avoid breaking
-- AvatarContextMenuTheme backwards compatibility.
local DEFAULT_THEME = {
	BackgroundImage = "rbxasset://textures/blackBkg_round.png",
	BackgroundImageScaleType = Enum.ScaleType.Slice,
	BackgroundImageSliceCenter = Rect.new(12, 12, 12, 12),
	BackgroundImageTransparency = 0,

	BackgroundTransparency = 1,
	BackgroundColor = Color3.fromRGB(31, 31, 31),

	NameTagColor = Color3.fromRGB(79, 79, 79),
	NameUnderlineColor = Color3.fromRGB(255, 255, 255),

	ButtonFrameColor = Color3.fromRGB(79, 79, 79),
	ButtonFrameTransparency = 0,

	ButtonImage = "",
	ButtonImageScaleType = Enum.ScaleType.Slice,
	ButtonImageSliceCenter = Rect.new(8, 6, 46, 44),
	ButtonColor = Color3.fromRGB(79, 79, 79),
	ButtonTransparency = 1,
	ButtonHoverColor = Color3.fromRGB(163, 162, 165),
	ButtonHoverTransparency = 0.5,
	ButtonUnderlineColor = Color3.fromRGB(137, 137, 137),

	Font = Enum.Font.SourceSansBold,
	TextColor = Color3.fromRGB(255, 255, 255),
	TextScale = 1,

	LeaveMenuImage = "rbxasset://textures/loading/cancelButton.png",
	ScrollRightImage = "rbxasset://textures/ui/AvatarContextMenu_Arrow.png",
	ScrollLeftImage = "", --If no ScrollLeftImage is provided, the right image is rotated 180 degrees.

	SelectedCharacterIndicator = InsertService:LoadLocalAsset(
		"rbxasset://models/AvatarContextMenu/AvatarContextArrow.rbxm"
	),

	Size = UDim2.new(0.95, 0, 0.9, 0),
	MinSize = Vector2.new(200, 200),
	MaxSize = Vector2.new(300, 300),
	AspectRatio = 1.15,
	AnchorPoint = Vector2.new(0.5, 1),
	OnScreenPosition = UDim2.new(0.5, 0, 0.98, 0),
	OffScreenPosition = UDim2.new(0.5, 0, 1, 300),
}

export type Theme = typeof(DEFAULT_THEME)

local ThemeHandler = {}
ThemeHandler.__index = ThemeHandler

function ThemeHandler:UpdateTheme(newThemeData)
	local newTheme = {}
	for key, value in pairs(DEFAULT_THEME) do
		if typeof(newThemeData[key]) == typeof(value) then
			newTheme[key] = newThemeData[key]
		elseif newThemeData[key] == nil then
			newTheme[key] = value
		else
			error(string.format(
				"AvatarContextMenuTheme wrong type for key %s: %s. Expected type %s",
				key,
				typeof(newThemeData[key]),
				typeof(value)
			), 2)
		end
	end
	self.Theme = newTheme
end

function ThemeHandler:RegisterCoreMethods()
	local function setMenuTheme(newTheme)
		if type(newTheme) == "table" then
			for key in pairs(newTheme) do
				if DEFAULT_THEME[key] == nil then
					error(string.format("AvatarContextMenuTheme got invalid key: %s", key))
				end
			end
			self:UpdateTheme(newTheme)
		else
			error("AvatarContextMenuTheme argument must be a table")
		end
	end
	StarterGui:RegisterSetCore("AvatarContextMenuTheme", setMenuTheme)
end

-- PUBLIC METHODS

function ThemeHandler:GetTheme(): Theme
	return self.Theme
end

function ThemeHandler.new()
	local obj: any = setmetatable({}, ThemeHandler)

	obj.Theme = DEFAULT_THEME

	obj:RegisterCoreMethods()

	return obj
end

return ThemeHandler.new()
