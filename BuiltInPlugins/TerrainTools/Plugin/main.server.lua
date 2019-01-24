local mainPanelModule = require(script.Parent.MainPanel)
local terrainBrushScriptModule = require(script.Parent.TerrainBrush)
local i18nModule = require(script.Parent.Parent.Libs.Localization)

i18nModule.SetLocalizationTable(script.Parent.Parent.Data.TerrainTranslations)

local kToolbarButtonText = i18nModule.TranslateId("Studio.TerrainEditor.ToolbarButton")

local kMinWidthWidth = 249

local FFlagEnableCreateButtonWithId = settings():GetFFlag("EnableCreateButtonWithId")

-- A function to sync toolbar button 'active' state with plugin gui
-- visibility.
local function updateButtonActive(button, plugin)
	if plugin.Enabled then 
	  button:SetActive(true)
	else
	  button:SetActive(false)
	end
end

-- Create the toolbar, create the button to toggle terrain tools plugin GUI on/off.
local toolbar = plugin:CreateToolbar('TerrainToolsLuaToolbarName')

local toggleVisibilityButton

if (FFlagEnableCreateButtonWithId) then 
	toggleVisibilityButton = toolbar:CreateButtonWithId("Editor", 
		kToolbarButtonText,
		i18nModule.TranslateId("Studio.TerrainEditor.Tooltip"),
		"rbxasset://textures/TerrainTools/icon_terrain_big.png")
else
	toggleVisibilityButton = toolbar:CreateButton("Editor", 
		i18nModule.TranslateId("Studio.TerrainEditor.Tooltip"),
		"rbxasset://textures/TerrainTools/icon_terrain_big.png")
end


toggleVisibilityButton.ClickableWhenViewportHidden = true

local dockWidgetPluginGuiInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Left, false, false, 0, 0, kMinWidthWidth)

local pluginGui = plugin:CreateDockWidgetPluginGui("TerrainTools_PluginGui", dockWidgetPluginGuiInfo)
pluginGui.Title = i18nModule.TranslateId("Studio.TerrainEditor.Title")

toggleVisibilityButton.Click:connect(function()
	if pluginGui.Enabled then
		pluginGui.Enabled = false
	else
		pluginGui.Enabled = true
	end
end)


-- Immediately sync toolbar button active state with plugin gui visibility.   
updateButtonActive(toggleVisibilityButton, pluginGui)

-- Listen for changes in plugin gui visibility to keep toolbar button
-- active state synced.
pluginGui:GetPropertyChangedSignal("Enabled"):connect(function(property)
	updateButtonActive(toggleVisibilityButton, pluginGui)
end)     

-- Make sure plugin and pluginGui have nice names.
plugin.Name = "Terrain"
pluginGui.Name = "Tools"


-- Some craziness I don't fully understand.
local Terrain = workspace:WaitForChild('Terrain', 86400) or workspace:WaitForChild('Terrain')
while not Terrain.IsSmooth do
	Terrain.Changed:wait()
end

-- Add the main panel.
mainPanelModule.Initialize(plugin, pluginGui)





