local Framework = script.Parent.Parent

local StylingService = game:GetService("StylingService")

local Dash = require(Framework.Parent.Dash)
local collectArray = Dash.collectArray
local copy = Dash.copy

local createStudioDesign = require(script.Parent.createStudioDesign)

local getStudioSettings = require(Framework.Util.getStudioSettings)
local StudioThemeFallback = require(Framework.Style.StudioThemeFallback)

local getFFlagDevFrameworkOptionalComponentsFolder =
	require(Framework.SharedFlags.getFFlagDevFrameworkOptionalComponentsFolder)

type Connection = {
	Disconnect: () -> (),
}
type Observable<T> = {
	Connect: (self: Observable<T>, fn: (T) -> ()) -> Connection,
}

export type StyleSheetBinding = {
	GetStyleSheet: ((name: string) -> StyleSheet)?,
	GetCurrentName: () -> string?,
	GetNames: () -> { string },
	Changed: Observable<nil>?,
}

-- A list of different StyleSheet bindings defined by the plugin
export type StyleSheetBindings = { StyleSheetBinding }

local function getThemeBinding(): StyleSheetBinding
	local studioSettings = getStudioSettings()
	return {
		GetCurrentName = function()
			local themeName = if studioSettings then studioSettings.Theme.Name else StudioThemeFallback
			return `PluginStyles{themeName}Theme`
		end,
		GetNames = function()
			return { "PluginStylesDarkTheme", "PluginStylesLightTheme" }
		end,
		Changed = if studioSettings then studioSettings.ThemeChanged else nil,
	}
end
local function getStyleSheetFromResourceScript(pluginFolder: any, name: string)
	local styleSheet = pluginFolder.Src.Resources:FindFirstChild(name)
	assert(styleSheet, `Missing StyleSheet expected under Src/Resources: {name}`)
	return require(styleSheet) :: StyleSheet
end

-- pluginRoot and parent are optional parameters used by embedded plugins to override the default values in the function
local function registerPluginStyles(
	plugin: Plugin,
	pluginRoot: any,
	parent: Instance?,
	styleSheetBindings: StyleSheetBindings?
): StyleSheet
	-- Set default pluginRoot if not provided
	if not pluginRoot then
		if game:DefineFastFlag("GetPluginParentInternalFix", false) then
			local src = plugin:FindFirstChild("Src", true)
			assert(src ~= nil, "Couldn't find root Src folder")
			pluginRoot = src.Parent
		else
			pluginRoot = plugin:FindFirstChildWhichIsA("Folder")
		end
	end

	-- Check if the plugin has a theme
	local darkTheme = pluginRoot.Src.Resources:FindFirstChild("PluginStylesDarkTheme")

	-- Generate the table of StyleSheet bindings that we want to use in the plugin
	local bindings = copy(styleSheetBindings or {})
	if darkTheme then
		table.insert(bindings, getThemeBinding())
	end

	local pluginName = pluginRoot.Name

	-- If we have just reloaded the plugin, we should destroy the previous Plugin stylesheets as we'll create a fresh one
	local pluginStyleFolder = StylingService:FindFirstChild(pluginName) :: Folder
	if pluginStyleFolder then
		pluginStyleFolder.Parent = nil
	end

	-- Create a folder to store all the plugin's stylesheets
	pluginStyleFolder = Instance.new("Folder")
	pluginStyleFolder.Name = pluginName

	local pluginDesign

	-- Load the PluginStyles module, which is optional if the plugin has no custom styles
	if pluginRoot.Src.Resources:FindFirstChild("PluginStyles") then
		pluginDesign = require(pluginRoot.Src.Resources.PluginStyles)
	else
		-- Otherwise create a blank stylesheet
		pluginDesign = Instance.new("StyleSheet")
	end
	pluginDesign.Name = "Design"
	pluginDesign.Parent = pluginStyleFolder

	-- Iterate through components defined in plugin to check if they have individual stylesheets
	local components = if getFFlagDevFrameworkOptionalComponentsFolder()
		then pluginRoot.Src:FindFirstChild("Components")
		else pluginRoot.Src.Components
	if components then
		for _, descendant in components:GetDescendants() do
			if descendant:IsA("ModuleScript") and descendant.Name == "styles" then
				pluginDesign:InsertStyleRule(require(descendant), #pluginDesign:GetStyleRules())
			end
		end
	end

	-- Ensure stylesheets derive studioDesign
	local studioDesign = createStudioDesign()

	for _, binding in bindings do
		local names = binding.GetNames()
		for _, name in names do
			local getStyleSheet = binding.GetStyleSheet or getStyleSheetFromResourceScript
			local styleSheet = getStyleSheet(pluginRoot, name)
			if not styleSheet then
				-- StyleSheet hasn't been provided, so skip
				continue
			end
			styleSheet:SetDerives({ studioDesign.Design })
			-- Parent stylesheet to plugin root
			styleSheet.Parent = pluginStyleFolder
		end
	end

	-- A callback to update the derives of the plugin sheet if one of the bindings changes
	local function updatePluginDesignDerives()
		local derivations = collectArray(bindings, function(_, binding: StyleSheetBinding)
			local getStyleSheet = binding.GetStyleSheet or getStyleSheetFromResourceScript
			local name = binding.GetCurrentName()
			return if name then getStyleSheet(pluginRoot, name) else nil
		end)
		table.insert(derivations, studioDesign.Design)
		-- e.g. { CustomPluginTokens, Foundation, PluginTheme, StudioDesign }
		pluginDesign:SetDerives(derivations)
	end

	-- Connect to all the signals and store the connections
	local connections = collectArray(bindings, function(_, binding: StyleSheetBinding): Connection?
		if binding.Changed then
			return binding.Changed:Connect(updatePluginDesignDerives)
		else
			return nil
		end
	end)

	-- Disconnect all the signals when the plugin unloads
	plugin.Unloading:Connect(function()
		for _, connection in connections do
			connection:Disconnect()
		end
	end)

	-- Set default parent
	if not parent then
		parent = StylingService
	end
	pluginStyleFolder.Parent = parent

	-- Immediately set the derivations for the plugin sheet before returning
	updatePluginDesignDerives()

	return pluginDesign
end

return registerPluginStyles
