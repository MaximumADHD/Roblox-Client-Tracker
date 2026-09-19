-- CHANGE ME: The current version of the StudioDesign stylesheet.
-- Increment this number when you change the DF StyleSheets to ensure an older copy isn't kept around
local STUDIO_DESIGN_VERSION = 4

local Framework = script.Parent.Parent

local StylingService = game:GetService("StylingService")

local Dash = require(Framework.Parent.Dash)
local append = Dash.append
local filter = Dash.filter
local includes = Dash.includes

local StudioThemeFallback = require(Framework.Style.StudioThemeFallback)
local createDesign = require(Framework.Styling.createDesign)
local createStyleSheet = require(Framework.Styling.createStyleSheet)

local Components = Framework.UI.Components
local Hooks = Framework.UI.Hooks

local StudioPalette = require(Framework.Styling.StudioPalette)
local StudioMixins = require(Framework.Styling.StudioMixins)
local LightThemeTokens = require(Framework.Styling.LightThemeTokens)
local DarkThemeTokens = require(Framework.Styling.DarkThemeTokens)

local FFlagDevFrameworkDesignVersionRename = require(Framework.SharedFlags.getFFlagDevFrameworkDesignVersionRename)()

local getStudioSettings = require(Framework.Util.getStudioSettings)

local CORE_COMPONENTS = {
	"Image",
	"Pane",
	"TextLabel",
}

local VERSION_ATTRIBUTE_NAME = if FFlagDevFrameworkDesignVersionRename then "Version" else "RBX_Version"

local function registerComponent(design: Folder, component: Instance)
	local styles = component:FindFirstChild("styles")
	if styles then
		local componentRule = require(styles)
		local designStyleSheet = design:FindFirstChild("Design")
		if designStyleSheet and designStyleSheet:IsA("StyleSheet") then
			designStyleSheet:InsertStyleRule(componentRule, #designStyleSheet:GetStyleRules())
		end
	end
end

-- Returns the StudioDesign as well as a connection for watching the themes changed signal.
-- If Studio settings are not available (such as in CI), this connection is nil.
local function createStudioDesign()
	for _, design in StylingService:GetChildren() do
		-- Check if we already have this version of the StudioDesign
		if design:IsA("Folder") and design.Name:match("^StudioDesign") then
			if design:GetAttribute(VERSION_ATTRIBUTE_NAME) == STUDIO_DESIGN_VERSION then
				return design
			elseif game:GetFastFlag("DebugDeveloperFrameworkSdk") then
				-- If a plugin has an outdated copy of DF it may have previously called createStudioDesign
				-- and generated an older version of the design for plugins to share. We detect this by
				-- storing an attribute on the StudioDesign folder instance under StylingService.
				warn(
					`[DebugDeveloperFrameworkSdk] Found an outdated copy of Studio design. Please update plugin that created Version {design:GetAttribute(
						VERSION_ATTRIBUTE_NAME
					) or 0}`
				)
			end
		end
	end

	if game:GetFastFlag("DebugDeveloperFrameworkSdk") then
		local Plugin = script:FindFirstAncestorWhichIsA("Plugin")
		if Plugin then
			print(`[DebugDeveloperFrameworkSdk] Plugin creating Studio design: {Plugin.Name}`)
		end
	end

	local studioSettings = getStudioSettings()
	local currentTheme = if studioSettings then studioSettings.Theme.Name else StudioThemeFallback

	local design = createDesign(`StudioDesign-{STUDIO_DESIGN_VERSION}`)

	local palette = createStyleSheet("Palette", {}, StudioPalette, {})
	palette.Parent = design

	local themes = {
		Light = createStyleSheet("Light", {}, LightThemeTokens, { palette }),
		Dark = createStyleSheet("Dark", {}, DarkThemeTokens, { palette }),
	}
	for name, theme in themes do
		theme.Parent = design.Themes
		theme:SetAttribute("StyleCategory", "Theme")
		if name == currentTheme then
			design.Design:SetDerives({ theme })
		end
	end

	local children = append({}, Components:GetChildren(), Hooks:GetChildren())
	local nonCoreChildren = filter(children, function(child: Instance)
		return not includes(CORE_COMPONENTS, child.Name)
	end)
	table.sort(nonCoreChildren, function(a, b)
		return a.Name < b.Name
	end)
	for _, name in CORE_COMPONENTS do
		registerComponent(design, Components:FindFirstChild(name))
	end
	for _, child in nonCoreChildren do
		registerComponent(design, child)
	end

	for _, rule in StudioMixins do
		design.Design:InsertStyleRule(rule, #design.Design:GetStyleRules())
	end

	local connection = nil

	if studioSettings ~= nil then
		connection = studioSettings.ThemeChanged:Connect(function()
			local newStudioSettings = getStudioSettings()
			if not newStudioSettings then
				return
			end

			local nextTheme = newStudioSettings.Theme.Name
			design.Design:SetDerives({ themes[nextTheme] })
		end)
	end

	design:SetAttribute(VERSION_ATTRIBUTE_NAME, STUDIO_DESIGN_VERSION)
	design.Parent = StylingService

	return design, connection
end

return createStudioDesign
