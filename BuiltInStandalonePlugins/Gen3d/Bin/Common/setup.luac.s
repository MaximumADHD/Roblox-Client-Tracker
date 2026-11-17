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
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Generate3DPanel"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Generate3DPanel"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["Gen3d"]
        3 LOADK                            R6 K1 ["SceneGen"]
        4 LOADK                            R7 K2 ["Generate"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 LOADK                            R5 K0 ["Gen3d"]
        3 LOADK                            R6 K1 ["SceneGen"]
        4 LOADK                            R7 K2 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_7:
        0 LOADB                            R2 0
        1 LOADB                            R3 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          REF R2
        4 CAPTURE                          REF R3
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R4 K1 [pcall]
        8 CALL                             R4 1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["Name"]
       12 SETTABLEKS                       R4 R0 K2 ["Name"]
       14 NEWTABLE                         R4 0 1
       16 DUPTABLE                         R5 K15 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "MeshTextureTool", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       17 DUPTABLE                         R6 K24 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       18 SETTABLEKS                       R6 R5 K3 ["uri"]
       20 SETTABLEKS                       R2 R5 K4 ["isPreexistingAction"]
       22 DUPCLOSURE                       R6 K25 [PROTO_1]
       23 SETTABLEKS                       R6 R5 K5 ["getText"]
       25 DUPCLOSURE                       R6 K26 [PROTO_2]
       26 SETTABLEKS                       R6 R5 K6 ["getTooltip"]
       28 SETLIST                          R4 R5 1 [1]
       30 GETUPVAL                         R5 1
       31 JUMPIFNOT                        R5 ; [+16]
       32 DUPTABLE                         R7 K28 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "Generate3D", ["enabled"] = True, ["visible"] = True, ["checkable"] = False, ["checked"] = False}]
       33 DUPTABLE                         R8 K30 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "Generate"}]
       34 SETTABLEKS                       R8 R7 K3 ["uri"]
       36 DUPCLOSURE                       R8 K31 [PROTO_3]
       37 SETTABLEKS                       R8 R7 K5 ["getText"]
       39 DUPCLOSURE                       R8 K32 [PROTO_4]
       40 SETTABLEKS                       R8 R7 K6 ["getTooltip"]
       42 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K35 [table.insert]
       47 CALL                             R5 2 0
       48 GETUPVAL                         R5 2
       49 GETTABLEKS                       R5 R5 K36 ["getFFlagGen3dSceneGenSurface"]
       51 CALL                             R5 0 1
       52 JUMPIFNOT                        R5 ; [+18]
       53 DUPTABLE                         R7 K38 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "", ["enabled"] = True, ["visible"] = True, ["checkable"] = False, ["checked"] = False}]
       54 DUPTABLE                         R8 K40 [{["DataModel"] = "Standalone", ["PluginId"] = "Gen3d", ["Category"] = "Actions", ["ItemId"] = "ToggleSceneGen"}]
       55 SETTABLEKS                       R8 R7 K3 ["uri"]
       57 SETTABLEKS                       R3 R7 K4 ["isPreexistingAction"]
       59 DUPCLOSURE                       R8 K41 [PROTO_5]
       60 SETTABLEKS                       R8 R7 K5 ["getText"]
       62 DUPCLOSURE                       R8 K42 [PROTO_6]
       63 SETTABLEKS                       R8 R7 K6 ["getTooltip"]
       65 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       67 MOVE                             R6 R4
       68 GETIMPORT                        R5 K35 [table.insert]
       70 CALL                             R5 2 0
       71 DUPTABLE                         R5 K49 [{["plugin"], ["pluginName"] = "Gen3d", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       72 SETTABLEKS                       R0 R5 K43 ["plugin"]
       74 GETUPVAL                         R6 3
       75 SETTABLEKS                       R6 R5 K45 ["translationResourceTable"]
       77 GETUPVAL                         R6 4
       78 SETTABLEKS                       R6 R5 K46 ["fallbackResourceTable"]
       80 SETTABLEKS                       R4 R5 K48 ["actionInfos"]
       82 GETUPVAL                         R6 5
       83 GETTABLEKS                       R6 R6 K50 ["build"]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 1
       87 MOVE                             R7 R1
       88 MOVE                             R8 R0
       89 MOVE                             R9 R6
       90 CALL                             R7 2 0
       91 CLOSEUPVALS                      R2
       92 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R3 K17 ["getFFlagRibbonEnableGenerateButton"]
       43 CALL                             R6 0 1
       44 DUPCLOSURE                       R7 K18 [PROTO_7]
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 RETURN                           R7 1
