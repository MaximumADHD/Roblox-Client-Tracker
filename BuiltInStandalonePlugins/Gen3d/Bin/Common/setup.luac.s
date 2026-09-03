PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableGen3dTextureEngineAction"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["TexturePanel"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["TexturePanel"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 LOADB                            R2 0
        1 GETIMPORT                        R3 K1 [pcall]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          REF R2
        5 CALL                             R3 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["Name"]
        9 SETTABLEKS                       R3 R0 K2 ["Name"]
       11 NEWTABLE                         R3 0 1
       13 DUPTABLE                         R4 K15 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "MeshTextureTool", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       14 DUPTABLE                         R5 K24 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       15 SETTABLEKS                       R5 R4 K3 ["uri"]
       17 SETTABLEKS                       R2 R4 K4 ["isPreexistingAction"]
       19 DUPCLOSURE                       R5 K25 [PROTO_1]
       20 SETTABLEKS                       R5 R4 K5 ["getText"]
       22 DUPCLOSURE                       R5 K26 [PROTO_2]
       23 SETTABLEKS                       R5 R4 K6 ["getTooltip"]
       25 SETLIST                          R3 R4 1 [1]
       27 DUPTABLE                         R4 K33 [{["plugin"], ["pluginName"] = "Gen3d", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       28 SETTABLEKS                       R0 R4 K27 ["plugin"]
       30 GETUPVAL                         R5 1
       31 SETTABLEKS                       R5 R4 K29 ["translationResourceTable"]
       33 GETUPVAL                         R5 2
       34 SETTABLEKS                       R5 R4 K30 ["fallbackResourceTable"]
       36 SETTABLEKS                       R3 R4 K32 ["actionInfos"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K34 ["build"]
       41 MOVE                             R6 R4
       42 CALL                             R5 1 1
       43 MOVE                             R6 R1
       44 MOVE                             R7 R0
       45 MOVE                             R8 R5
       46 CALL                             R6 2 0
       47 CLOSEUPVALS                      R2
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 DUPCLOSURE                       R5 K14 [PROTO_3]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
