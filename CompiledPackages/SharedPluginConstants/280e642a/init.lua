-- Constants that need to be shared across plugins, but which are not appropriate for DeveloperFramework
local AssetManager = require(script.plugins.AssetManager)

export type AssetManagerOpenFromExternalTriggerConfig = AssetManager.OpenFromExternalTriggerConfig
export type AssetManagerScopeType = AssetManager.ScopeType
export type AssetManagerCreatorInventoryItemType = AssetManager.CreatorInventoryItemType
export type AssetManagerViewType = AssetManager.ViewType

return {
	SHOW_TOOLBOX_PLUGINS_EVENT = "ShowToolboxPlugins",
	SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT = "OpenToolboxModelTabAndSearch",
	SHOW_MATERIAL_MANAGER_PLUGIN_EVENT = "ShowMaterialManagerPlugin",
	SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT = "ShowMaterialGeneratorPlugin",
	LOAD_MATERIAL_GENERATOR = "LoadMaterialGenerator",
	MATERIAL_GENERATOR_READY = "MaterialGeneratorReady",
	MATERIAL_GENERATOR_ENABLED = "MaterialGeneratorEnabled",
	MATERIAL_MANAGER_ENABLED = "MaterialManagerEnabled",
	DEFAULT_STUDIO_THEME_NAME = "Dark",
	REIMPORT = require(script.plugins.Reimport),
	ASSET_MANAGER = AssetManager,
	TERRAIN = require(script.plugins.Terrain),
	CONTENT_EDIT = require(script.plugins.ContentEdit),
}
