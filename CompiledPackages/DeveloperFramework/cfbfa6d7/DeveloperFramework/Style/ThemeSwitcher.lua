--[[
	ThemeSwitcher is a DeveloperFramework theme that can be included in place of StudioTheme.
	For example, instead of `StudioTheme.new()`, use `ThemeSwitcher.new()`.

	It has methods setTheme(name: string) and getThemeName() to let developers programatically change
	or query the current theme. This is used in the Developer Storybook to let stories dynamically
	change which theme they are displaying under in the plugin itself.
]]
local Framework = script.Parent.Parent
local Cryo = require(Framework.Parent.Cryo)
local Signal = require(Framework.Util.Signal)
local Style = Framework.Style
local DarkTheme = require(Style.Themes.DarkTheme)
local LightTheme = require(Style.Themes.LightTheme)
local createDefaultTheme = require(Style.createDefaultTheme)

local getStudioThemeNameOrDefault = require(Style.getStudioThemeNameOrDefault)

local themeSignal = Signal.new()
pcall(function()
	settings().Studio.ThemeChanged:Connect(function()
		themeSignal:Fire()
	end)
end)

local ThemeSwitcher = {
	current = "Default",
}

function ThemeSwitcher.getThemeName()
	if ThemeSwitcher.current == "Default" then
		return getStudioThemeNameOrDefault()
	else
		return ThemeSwitcher.current
	end
end

function ThemeSwitcher.setTheme(name: string)
	ThemeSwitcher.current = name
	themeSignal:Fire()
	local StylingService = game:GetService("StylingService")
	for _, design in StylingService:GetChildren() do
		if design:IsA("Folder") and design.Name:match("^StudioDesign") then
			-- We create a side-effect for the studio design here. It starts to inherit from the new theme even if the plugin is closed and open again.
			design.Design:SetDerives({ design.Themes:FindFirstChild(ThemeSwitcher.getThemeName()) })
		end
	end
end

function ThemeSwitcher.new(darkThemeOverride, lightThemeOverride)
	local darkTheme = DarkTheme
	if darkThemeOverride then
		darkTheme = Cryo.Dictionary.join(DarkTheme, darkThemeOverride)
	end

	local lightTheme = LightTheme
	if lightThemeOverride then
		lightTheme = Cryo.Dictionary.join(LightTheme, lightThemeOverride)
	end

	local themeProps = Cryo.Dictionary.join({
		themesList = {
			["Dark"] = darkTheme,
			["Light"] = lightTheme,
		},
		themeChangedConnection = themeSignal,
	}, ThemeSwitcher)

	local theme = createDefaultTheme(themeProps)
	-- Yes, this is stupid, but we actually must reset the design derived and copying the code here would be worse.
	ThemeSwitcher.setTheme(ThemeSwitcher.current)
	return theme
end

return ThemeSwitcher
