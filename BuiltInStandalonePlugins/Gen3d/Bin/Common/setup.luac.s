PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableGen3dTextureEngineAction"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["EnableGenerateSceneEngineAction"]
       10 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

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
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["Gen3d"]
        3 LOADK                            R6 K1 ["SceneGen"]
        4 LOADK                            R7 K2 ["Generate"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["Gen3d"]
        3 LOADK                            R6 K1 ["SceneGen"]
        4 LOADK                            R7 K2 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 GETIMPORT                        R4 K1 [pcall]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          REF R3
        7 CALL                             R4 1 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Name"]
       11 SETTABLEKS                       R4 R0 K2 ["Name"]
       13 NEWTABLE                         R4 0 1
       15 DUPTABLE                         R5 K15 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "MeshTextureTool", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       16 DUPTABLE                         R6 K24 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       17 SETTABLEKS                       R6 R5 K3 ["uri"]
       19 SETTABLEKS                       R2 R5 K4 ["isPreexistingAction"]
       21 DUPCLOSURE                       R6 K25 [PROTO_1]
       22 SETTABLEKS                       R6 R5 K5 ["getText"]
       24 DUPCLOSURE                       R6 K26 [PROTO_2]
       25 SETTABLEKS                       R6 R5 K6 ["getTooltip"]
       27 SETLIST                          R4 R5 1 [1]
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K27 ["getFFlagGen3dSceneGenSurface"]
       32 CALL                             R5 0 1
       33 JUMPIFNOT                        R5 ; [+18]
       34 DUPTABLE                         R7 K29 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "", ["enabled"] = True, ["visible"] = True, ["checkable"] = False, ["checked"] = False}]
       35 DUPTABLE                         R8 K31 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "ToggleSceneGen"}]
       36 SETTABLEKS                       R8 R7 K3 ["uri"]
       38 SETTABLEKS                       R3 R7 K4 ["isPreexistingAction"]
       40 DUPCLOSURE                       R8 K32 [PROTO_3]
       41 SETTABLEKS                       R8 R7 K5 ["getText"]
       43 DUPCLOSURE                       R8 K33 [PROTO_4]
       44 SETTABLEKS                       R8 R7 K6 ["getTooltip"]
       46 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       48 MOVE                             R6 R4
       49 GETIMPORT                        R5 K36 [table.insert]
       51 CALL                             R5 2 0
       52 DUPTABLE                         R5 K43 [{["plugin"], ["pluginName"] = "Gen3d", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       53 SETTABLEKS                       R0 R5 K37 ["plugin"]
       55 GETUPVAL                         R6 2
       56 SETTABLEKS                       R6 R5 K39 ["translationResourceTable"]
       58 GETUPVAL                         R6 3
       59 SETTABLEKS                       R6 R5 K40 ["fallbackResourceTable"]
       61 SETTABLEKS                       R4 R5 K42 ["actionInfos"]
       63 GETUPVAL                         R6 4
       64 GETTABLEKS                       R6 R6 K44 ["build"]
       66 MOVE                             R7 R5
       67 CALL                             R6 1 1
       68 MOVE                             R7 R1
       69 MOVE                             R8 R0
       70 MOVE                             R9 R6
       71 CALL                             R7 2 0
       72 CLOSEUPVALS                      R2
       73 RETURN                           R0 0

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
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Bin"]
       20 GETTABLEKS                       R4 R4 K10 ["Common"]
       22 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R0 K12 ["Src"]
       27 GETTABLEKS                       R4 R4 K13 ["Resources"]
       29 GETTABLEKS                       R4 R4 K14 ["Localization"]
       31 GETTABLEKS                       R4 R4 K15 ["SourceStrings"]
       33 GETTABLEKS                       R5 R0 K12 ["Src"]
       35 GETTABLEKS                       R5 R5 K13 ["Resources"]
       37 GETTABLEKS                       R5 R5 K14 ["Localization"]
       39 GETTABLEKS                       R5 R5 K16 ["LocalizedStrings"]
       41 DUPCLOSURE                       R6 K17 [PROTO_5]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R2
       47 RETURN                           R6 1
