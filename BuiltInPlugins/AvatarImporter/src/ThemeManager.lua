local Studio = settings().Studio

local ThemeManager = {}

function ThemeManager:setImageColor(object, styleGuide)
	self:_set(object, "ImageColor3", styleGuide, Enum.StudioStyleGuideModifier.Default)
end

function ThemeManager:setTextColor(object, styleGuide)
	self:_set(object, "TextColor3", styleGuide, Enum.StudioStyleGuideModifier.Default)
end

function ThemeManager:setBackgroundColor(object, styleGuide)
	self:_set(object, "BackgroundColor3", styleGuide, Enum.StudioStyleGuideModifier.Default)
end

function ThemeManager:setBorderColor(object, styleGuide)
	self:_set(object, "BorderColor3", styleGuide, Enum.StudioStyleGuideModifier.Default)
end

function ThemeManager:setCustom(object, field, options)
	self:_hook(function()
		object[field] = options[Studio.Theme.Name]
	end)
end

function ThemeManager:_set(object, field, styleGuide, styleModifier)
	self:_hook(function()
		object[field] = Studio.Theme:GetColor(styleGuide, styleModifier)
	end)
end

function ThemeManager:_hook(callback)
	callback()
	Studio.ThemeChanged:Connect(callback)
end

return ThemeManager