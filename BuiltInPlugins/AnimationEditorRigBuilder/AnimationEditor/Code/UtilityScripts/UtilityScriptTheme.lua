-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)
local ThemeManager = {}

ThemeManager.CurrentTheme = nil

local getLightThemeName = nil
local getLightThemeIndex = nil
local getDarkThemeIndex = nil
local testForOldStudioThemeAPI = nil

getLightThemeName = function()
	return "Light"
end

local initThemeColors = nil

local function colorsEqual(self, firstColor, secondColor)
	return self.Paths.HelperFunctionsMath:isCloseToZero(math.abs(secondColor.r - firstColor.r)) and self.Paths.HelperFunctionsMath:isCloseToZero(math.abs(secondColor.g - firstColor.g)) and self.Paths.HelperFunctionsMath:isCloseToZero(math.abs(secondColor.b - firstColor.b))
end

local function lookupThemeColorKey(self, color, categoryTable)
	if categoryTable then
		for name, styleInfo in pairs(categoryTable) do
			if colorsEqual(self, styleInfo.Color, color) then
				return name
			end
		end
	end
end

local function hasChild(element, childName)
	return element:FindFirstChild(childName)
end

local function createNewKeyInstance(element, keyType, colorKey)
	local keyInstance = Instance.new("StringValue", element)
	keyInstance.Name = keyType
	keyInstance.Value = colorKey
end

local function isGUIFrameElement(element)
	return element:isA("Frame")
end

local function isScrollingFrameElement(element)
	return element:isA("ScrollingFrame")
end

local function isImageElement(element)
	return element:isA("ImageButton") or element:isA("ImageLabel")
end

local function isTextElement(element)
	return element:isA("TextButton") or element:isA("TextLabel")
end

local function isTextInputElement(element)
	return element:isA("TextBox")
end

local function mapThemeColorsToElements(self, element)
	local hasPlaceholderColor = isTextInputElement(element)
	local hasTextColor = isTextElement(element) or hasPlaceholderColor
	local hasImage = isImageElement(element)
	local hasScrollBarColor = isScrollingFrameElement(element)
	local hasBackgroundAndBorderColor = isGUIFrameElement(element) or hasTextColor or hasPlaceholderColor or hasImage or hasScrollBarColor

	if hasBackgroundAndBorderColor and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BackgroundColorKey) then
		local key = lookupThemeColorKey(self, element.BackgroundColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Data)
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BackgroundColorKey, key)
		end
	end

	if hasBackgroundAndBorderColor and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BorderColorKey) then
		local key = lookupThemeColorKey(self, element.BorderColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Data)
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BorderColorKey, key)
		end
	end

	if hasTextColor and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.TextColorKey) then
		local key = lookupThemeColorKey(self, element.TextColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Text)
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.TextColorKey, key)
		end
	end

	if hasPlaceholderColor and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.PlaceholderColorKey) then
		local key = lookupThemeColorKey(self, element.PlaceholderColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Text)
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.PlaceholderColorKey, key)
		end
	end

	if hasImage and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ImageKey) then
		local key = lookupThemeColorKey(self, element.ImageColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap[element.Image])
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ImageKey, key)
		end
	end

	if hasScrollBarColor and not hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ScrollBarColorKey) then
		local key = lookupThemeColorKey(self, element.ScrollBarImageColor3, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Scroll)
		if key then
			createNewKeyInstance(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ScrollBarColorKey, key)
		end
	end

	local children = element:GetChildren()
	for _, child in pairs(children) do
		mapThemeColorsToElements(self, child)
	end
end

local getThemeColor = function(self, styleInfo)
		local style = self.Paths.UtilityScriptThemeData.CustomColors[styleInfo.Style]
		local color = nil
		if style then 
			color = style[styleInfo.Modifier]
		end
		if self.CurrentTheme == getLightThemeName() then
			return styleInfo.Color
		elseif color then
			return color
		else
			return settings().Studio.Theme:getColor(styleInfo.Style, styleInfo.Modifier)
		end
	end

local function GetThemeDataColor(self, colorName)
	return getThemeColor(self, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Data[colorName])
end

local function GetThemeTextColor(self, colorName)
	return getThemeColor(self, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Text[colorName])
end

local function GetThemeImageColor(self, imageName, colorName)
	return getThemeColor(self, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap[imageName][colorName])
end

local function GetThemeScrollColor(self, colorName)
	return getThemeColor(self, self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap.Scroll[colorName])
end

local function changeElementColors(self, element)
	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BackgroundColorKey) then
		element.BackgroundColor3 = GetThemeDataColor(self, element.BackgroundColorKey.Value)
	end

	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.BorderColorKey) then
		element.BorderColor3 = GetThemeDataColor(self, element.BorderColorKey.Value)
	end

	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.TextColorKey) then
		element.TextColor3 = GetThemeTextColor(self, element.TextColorKey.Value)
	end

	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.PlaceholderColorKey) then
		element.PlaceholderColor3 = GetThemeTextColor(self, element.PlaceholderColorKey.Value)
	end

	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ImageKey) then
		if self.Paths.UtilityScriptThemeData.AnimationEditorStyleMap[element.Image] then
			element.ImageColor3 = GetThemeImageColor(self, element.Image, element.ImageKey.Value)
		end
	end

	if hasChild(element, self.Paths.UtilityScriptThemeData.KeyNamesMap.ScrollBarColorKey) then
		element.ScrollBarImageColor3 = GetThemeScrollColor(self, element.ScrollBarColorKey.Value)
	end

	local children = element:GetChildren()
	for _, child in pairs(children) do
		changeElementColors(self, child)
	end
end

function ThemeManager:init(Paths)
	self.Paths = Paths
	self.CurrentTheme = self:getStudioCurrentTheme()

	pcall(function()
		self.Handle = settings().Studio.ThemeChanged:connect(function()
			self.CurrentTheme = self:getStudioCurrentTheme()
			if Paths.GUIScriptStartScreen:isOnScreen() then
				changeElementColors(self, self.Paths.GUIScriptStartScreen.gui)
			elseif self.Paths and self.Paths.GUI then
				changeElementColors(self, self.Paths.GUI)
				if not FastFlags:isEnableRigSwitchingOn() or self.Paths.DataModelSession.SelectedChangeEvent then
					self.Paths.DataModelSession.SelectedChangeEvent:fire()
				end
			end
		end)
	end)
end

function ThemeManager:initPreGUICreate()
	self.CurrentTheme = getLightThemeName()
end

function ThemeManager:initPostGUICreate()
	mapThemeColorsToElements(self, self.Paths.GUI)
	self.CurrentTheme = self:getStudioCurrentTheme()
	changeElementColors(self, self.Paths.GUI)
end

function ThemeManager:terminate()
	self.Handle:Disconnect()
end

function ThemeManager:getStudioCurrentTheme()
	return settings().Studio.Theme.Name
end

function ThemeManager:setColorsToTheme(element)
	mapThemeColorsToElements(self, element)
	changeElementColors(self, element)
end

function ThemeManager:GetShadeColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.ShadeColor)
end

function ThemeManager:GetVerticalLineColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.VerticalLine)
end

function ThemeManager:GetTextColor()
	return GetThemeTextColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.TextColor)
end

function ThemeManager:GetPopupBorderColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.PopupBorder)
end

function ThemeManager:GetHighlightColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Highlight)
end

function ThemeManager:GetHighlightedTextColor()
	return GetThemeTextColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.HighlightText)
end

function ThemeManager:GetDisabledTextColor()
	return GetThemeTextColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.DisabledTextColor)
end

function ThemeManager:GetDisabledColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.DisabledColor)
end

function ThemeManager:GetBackgroundColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.BackgroundColor)
end

function ThemeManager:GetJointSelectedColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.JointSelected)
end

function ThemeManager:GetInputBorderColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.InputBorder)
end

function ThemeManager:GetHoverColor()
	return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Hover)
end

if FastFlags:isIKModeFlagOn() then
	function ThemeManager:GetHierarchyLineColor()
		return GetThemeDataColor(self, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.HierarchyLine)
	end
end

function ThemeManager:GetKeyBorderColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyBorder, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.BackgroundColor)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyBorder, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.DisabledColor)
	end
end

function ThemeManager:GetKeySelectedBorderColor()
	return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeySelectedBorder, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Highlight)
end

function ThemeManager:GetLinearColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Linear)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.LinearDisabled)
	end
end

function ThemeManager:GetElasticColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Elastic)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.ElasticDisabled)
	end
end

function ThemeManager:GetCubicColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Cubic)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.CubicDisabled)
	end
end

function ThemeManager:GetConstantColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Constant)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.ConstantDisabled)
	end
end

function ThemeManager:GetBounceColor(enabled)
	if enabled then
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.Bounce)
	else
		return GetThemeImageColor(self, self.Paths.UtilityScriptThemeData.Images.KeyInner, self.Paths.UtilityScriptThemeData.ColorAndImageNamesMap.BounceDisabled)
	end
end

return ThemeManager