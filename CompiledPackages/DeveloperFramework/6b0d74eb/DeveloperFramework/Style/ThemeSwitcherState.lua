--[[
	The observable theme-name state that ThemeSwitcher is built on: the current (possibly
	overridden) theme name plus a signal that fires when it changes.
]]
local Framework = script.Parent.Parent
local Style = Framework.Style
local Signal = require(Framework.Util.Signal)
local getStudioThemeNameOrDefault = require(Style.getStudioThemeNameOrDefault)

local themeSignal = Signal.new()
pcall(function()
	settings().Studio.ThemeChanged:Connect(function()
		themeSignal:Fire()
	end)
end)

local ThemeSwitcherState = {
	current = "Default",
	themeSignal = themeSignal,
}

function ThemeSwitcherState.getThemeName()
	if ThemeSwitcherState.current == "Default" then
		return getStudioThemeNameOrDefault()
	else
		return ThemeSwitcherState.current
	end
end

function ThemeSwitcherState.subscribe(callback: () -> ())
	return themeSignal:Connect(callback)
end

function ThemeSwitcherState.setTheme(name: string)
	ThemeSwitcherState.current = name
	themeSignal:Fire()
	local StylingService = game:GetService("StylingService")
	for _, design in StylingService:GetChildren() do
		if design:IsA("Folder") and design.Name:match("^StudioDesign") then
			-- We create a side-effect for the studio design here. It starts to inherit from the new theme even if the plugin is closed and open again.
			design.Design:SetDerives({ design.Themes:FindFirstChild(ThemeSwitcherState.getThemeName()) })
		end
	end
end

return ThemeSwitcherState
