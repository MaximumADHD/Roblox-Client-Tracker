MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K20 [{[1] = "ShowToolboxPlugins", ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"] = "OpenToolboxModelTabAndSearch", ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"] = "ShowMaterialManagerPlugin", ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"] = "ShowMaterialGeneratorPlugin", ["LOAD_MATERIAL_GENERATOR"] = "LoadMaterialGenerator", ["MATERIAL_GENERATOR_READY"] = "MaterialGeneratorReady", ["MATERIAL_GENERATOR_ENABLED"] = "MaterialGeneratorEnabled", ["MATERIAL_MANAGER_ENABLED"] = "MaterialManagerEnabled", ["DEFAULT_STUDIO_THEME_NAME"] = "Dark", ["REIMPORT"], ["ASSET_MANAGER"]}]
        2 GETIMPORT                        R1 K22 [require]
        4 GETIMPORT                        R2 K24 [script]
        6 GETTABLEKS                       R2 R2 K25 ["plugins"]
        8 GETTABLEKS                       R2 R2 K26 ["Reimport"]
       10 CALL                             R1 1 1
       11 SETTABLEKS                       R1 R0 K18 ["REIMPORT"]
       13 GETIMPORT                        R1 K22 [require]
       15 GETIMPORT                        R2 K24 [script]
       17 GETTABLEKS                       R2 R2 K25 ["plugins"]
       19 GETTABLEKS                       R2 R2 K27 ["AssetManager"]
       21 CALL                             R1 1 1
       22 SETTABLEKS                       R1 R0 K19 ["ASSET_MANAGER"]
       24 RETURN                           R0 1
