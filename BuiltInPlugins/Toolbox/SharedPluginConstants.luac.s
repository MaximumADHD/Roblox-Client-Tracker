MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K10 [{"SHOW_TOOLBOX_PLUGINS_EVENT", "SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT", "DEPRECATED_HIDE_MATERIAL_MANAGER_PLUGIN_EVENT", "SHOW_MATERIAL_MANAGER_PLUGIN_EVENT", "DEPRECATED_HIDE_MATERIAL_GENERATOR_PLUGIN_EVENT", "SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT", "LOAD_MATERIAL_GENERATOR", "MATERIAL_GENERATOR_READY", "MATERIAL_GENERATOR_ENABLED", "MATERIAL_MANAGER_ENABLED"}]
  LOADK R1 K11 ["ShowToolboxPlugins"]
  SETTABLEKS R1 R0 K0 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
  LOADK R1 K12 ["OpenToolboxModelTabAndSearch"]
  SETTABLEKS R1 R0 K1 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
  LOADK R1 K13 ["HideMaterialManagerPlugin"]
  SETTABLEKS R1 R0 K2 ["DEPRECATED_HIDE_MATERIAL_MANAGER_PLUGIN_EVENT"]
  LOADK R1 K14 ["ShowMaterialManagerPlugin"]
  SETTABLEKS R1 R0 K3 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
  LOADK R1 K15 ["HideMaterialGeneratorPlugin"]
  SETTABLEKS R1 R0 K4 ["DEPRECATED_HIDE_MATERIAL_GENERATOR_PLUGIN_EVENT"]
  LOADK R1 K16 ["ShowMaterialGeneratorPlugin"]
  SETTABLEKS R1 R0 K5 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
  LOADK R1 K17 ["LoadMaterialGenerator"]
  SETTABLEKS R1 R0 K6 ["LOAD_MATERIAL_GENERATOR"]
  LOADK R1 K18 ["MaterialGeneratorReady"]
  SETTABLEKS R1 R0 K7 ["MATERIAL_GENERATOR_READY"]
  LOADK R1 K19 ["MaterialGeneratorEnabled"]
  SETTABLEKS R1 R0 K8 ["MATERIAL_GENERATOR_ENABLED"]
  LOADK R1 K20 ["MaterialManagerEnabled"]
  SETTABLEKS R1 R0 K9 ["MATERIAL_MANAGER_ENABLED"]
  RETURN R0 1
