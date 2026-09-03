--[[
	The Default theme for Studio.
]]

local Framework = script:FindFirstAncestor("Style").Parent
local DarkTheme = require(Framework.Style.Themes.DarkTheme)
local LightTheme = require(Framework.Style.Themes.LightTheme)
local createDefaultTheme = require(Framework.Style.createDefaultTheme)
local Cryo = require(Framework.Parent.Cryo)
local getStudioSettings = require(Framework.Util.getStudioSettings)

local getClosestColorSystemColor = require(Framework.Style.getClosestColorSystemColor)
local getStudioThemeNameOrDefault = require(Framework.Style.getStudioThemeNameOrDefault)
local FFlagDebugDeveloperFrameworkSdk = game:GetFastFlag("DebugDeveloperFrameworkSdk")

local StudioTheme = {}

local function replaceWithClosestColorSystemColors(themeOverride)
	local updatedTheme = {}

	for key, value in themeOverride do
		if typeof(value) == "Color3" then
			local closestColor, category, name = getClosestColorSystemColor(value)
			if FFlagDebugDeveloperFrameworkSdk and value ~= closestColor then
				warn(
					("[DebugDeveloperFrameworkSdk] Theme override %s: (%s) replaced with the closest color system color %s[%s]: (%s)"):format(
						tostring(key),
						value:ToHex(),
						category,
						name,
						closestColor:ToHex()
					)
				)
			end
			updatedTheme[key] = closestColor
		else
			updatedTheme[key] = value
		end
	end

	return updatedTheme
end

function StudioTheme.new(darkThemeOverride: { any }?, lightThemeOverride: { any }?)
	local darkTheme = DarkTheme
	if darkThemeOverride then
		darkTheme = Cryo.Dictionary.join(DarkTheme, replaceWithClosestColorSystemColors(darkThemeOverride))
	end

	local lightTheme = LightTheme
	if lightThemeOverride then
		lightTheme = Cryo.Dictionary.join(LightTheme, replaceWithClosestColorSystemColors(lightThemeOverride))
	end

	local studioSettings = getStudioSettings()
	local themeChangedConnection = if studioSettings then studioSettings.ThemeChanged else nil

	local themeProps = {
		getThemeName = getStudioThemeNameOrDefault,
		themesList = {
			["Dark"] = darkTheme,
			["Light"] = lightTheme,
		},
		themeChangedConnection = themeChangedConnection,
	}
	return createDefaultTheme(themeProps)
end

function StudioTheme.mock(themeOverride: { any }?)
	local darkTheme = DarkTheme
	if themeOverride then
		darkTheme = Cryo.Dictionary.join(DarkTheme, replaceWithClosestColorSystemColors(themeOverride))
	end

	local themeProps = {
		getThemeName = function()
			return "Dark"
		end,
		themesList = {
			Dark = darkTheme,
		},
	}
	return createDefaultTheme(themeProps)
end

return StudioTheme
