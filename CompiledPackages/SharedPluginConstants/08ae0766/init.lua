-- Constants that need to be shared across plugins, but which are not appropriate for DeveloperFramework
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
	ASSET_MANAGER = require(script.plugins.AssetManager),
	TERRAIN = require(script.plugins.Terrain),
}
