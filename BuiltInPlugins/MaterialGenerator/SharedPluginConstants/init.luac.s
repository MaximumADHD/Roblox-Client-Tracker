MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["plugins"]
        7 GETTABLEKS                       R1 R1 K5 ["AssetManager"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K29 [{["SHOW_TOOLBOX_PLUGINS_EVENT"] = "ShowToolboxPlugins", ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"] = "OpenToolboxModelTabAndSearch", ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"] = "ShowMaterialManagerPlugin", ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"] = "ShowMaterialGeneratorPlugin", ["LOAD_MATERIAL_GENERATOR"] = "LoadMaterialGenerator", ["MATERIAL_GENERATOR_READY"] = "MaterialGeneratorReady", ["MATERIAL_GENERATOR_ENABLED"] = "MaterialGeneratorEnabled", ["MATERIAL_MANAGER_ENABLED"] = "MaterialManagerEnabled", ["DEFAULT_STUDIO_THEME_NAME"] = "Dark", ["REIMPORT"], ["ASSET_MANAGER"], ["TERRAIN"], ["CONTENT_EDIT"], ["TEXT_DOCUMENT_ASSET_EDITOR"]}]
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R3 K3 [script]
       15 GETTABLEKS                       R3 R3 K4 ["plugins"]
       17 GETTABLEKS                       R3 R3 K30 ["Reimport"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K24 ["REIMPORT"]
       22 SETTABLEKS                       R0 R1 K25 ["ASSET_MANAGER"]
       24 GETIMPORT                        R2 K1 [require]
       26 GETIMPORT                        R3 K3 [script]
       28 GETTABLEKS                       R3 R3 K4 ["plugins"]
       30 GETTABLEKS                       R3 R3 K31 ["Terrain"]
       32 CALL                             R2 1 1
       33 SETTABLEKS                       R2 R1 K26 ["TERRAIN"]
       35 GETIMPORT                        R2 K1 [require]
       37 GETIMPORT                        R3 K3 [script]
       39 GETTABLEKS                       R3 R3 K4 ["plugins"]
       41 GETTABLEKS                       R3 R3 K32 ["ContentEdit"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R1 K27 ["CONTENT_EDIT"]
       46 GETIMPORT                        R2 K1 [require]
       48 GETIMPORT                        R3 K3 [script]
       50 GETTABLEKS                       R3 R3 K4 ["plugins"]
       52 GETTABLEKS                       R3 R3 K33 ["TextDocumentAssetEditor"]
       54 CALL                             R2 1 1
       55 SETTABLEKS                       R2 R1 K28 ["TEXT_DOCUMENT_ASSET_EDITOR"]
       57 RETURN                           R1 1
