PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Localization"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 DUPTABLE                         R3 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetQualityValidation"}]
        6 GETUPVAL                         R4 1
        7 SETTABLEKS                       R4 R3 K2 ["stringResourceTable"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       12 CALL                             R2 1 1
       13 LOADK                            R5 K7 ["Plugin"]
       14 LOADK                            R6 K8 ["Name"]
       15 NAMECALL                         R3 R2 K9 ["getText"]
       17 CALL                             R3 3 1
       18 SETTABLEKS                       R3 R0 K8 ["Name"]
       20 NAMECALL                         R3 R2 K10 ["destroy"]
       22 CALL                             R3 1 0
       23 NEWTABLE                         R3 0 1
       25 DUPTABLE                         R4 K21 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"], ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       26 DUPTABLE                         R5 K29 [{["DataModel"] = "Standalone", ["PluginId"] = "AssetQualityValidation", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       27 SETTABLEKS                       R5 R4 K11 ["uri"]
       29 DUPCLOSURE                       R5 K30 [PROTO_0]
       30 SETTABLEKS                       R5 R4 K9 ["getText"]
       32 DUPCLOSURE                       R5 K31 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K14 ["getTooltip"]
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K32 ["getFFlagEnableAssetQualityValidationIcon"]
       38 CALL                             R6 0 1
       39 JUMPIFNOT                        R6 ; [+2]
       40 LOADK                            R5 K33 ["RibbonUGCValidation"]
       41 JUMP                             ; [+1]
       42 LOADK                            R5 K34 ["rbxlocaltheme://GameSettings"]
       43 SETTABLEKS                       R5 R4 K15 ["icon"]
       45 SETLIST                          R3 R4 1 [1]
       47 DUPTABLE                         R4 K39 [{["plugin"], ["pluginName"] = "AssetQualityValidation", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       48 SETTABLEKS                       R0 R4 K35 ["plugin"]
       50 GETUPVAL                         R5 2
       51 SETTABLEKS                       R5 R4 K3 ["translationResourceTable"]
       53 GETUPVAL                         R5 1
       54 SETTABLEKS                       R5 R4 K36 ["fallbackResourceTable"]
       56 SETTABLEKS                       R3 R4 K38 ["actionInfos"]
       58 GETIMPORT                        R5 K41 [game]
       60 LOADK                            R7 K42 ["RunService"]
       61 NAMECALL                         R5 R5 K43 ["GetService"]
       63 CALL                             R5 2 1
       64 GETUPVAL                         R7 4
       65 GETTABLEKS                       R7 R7 K44 ["get"]
       67 CALL                             R7 0 1
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K23 ["Standalone"]
       71 JUMPIFEQ                         R7 R8 ; [+2]
       73 LOADB                            R6 0 +1
       74 LOADB                            R6 1
       75 NAMECALL                         R7 R5 K45 ["IsEdit"]
       77 CALL                             R7 1 1
       78 JUMPIF                           R6 ; [+1]
       79 JUMPIFNOT                        R7 ; [+40]
       80 DUPTABLE                         R8 K50 [{["id"] = "AssetQualityValidation", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       81 GETIMPORT                        R9 K52 [DockWidgetPluginGuiInfo.new]
       83 GETIMPORT                        R10 K56 [Enum.InitialDockState.Bottom]
       85 LOADB                            R11 0
       86 LOADB                            R12 0
       87 LOADN                            R13 640
       88 LOADN                            R14 480
       89 LOADN                            R15 250
       90 LOADN                            R16 200
       91 CALL                             R9 7 1
       92 SETTABLEKS                       R9 R8 K47 ["dockWidgetPluginGuiInfo"]
       94 DUPCLOSURE                       R9 K57 [PROTO_2]
       95 SETTABLEKS                       R9 R8 K48 ["getDockTitle"]
       97 GETIMPORT                        R9 K60 [Enum.ZIndexBehavior.Sibling]
       99 SETTABLEKS                       R9 R8 K49 ["zIndexBehavior"]
      101 SETTABLEKS                       R8 R4 K61 ["dockWidgetInfo"]
      103 GETUPVAL                         R8 5
      104 GETTABLEKS                       R8 R8 K62 ["build"]
      106 MOVE                             R9 R4
      107 CALL                             R8 1 1
      108 GETTABLEKS                       R9 R8 K63 ["pluginLoader"]
      110 NAMECALL                         R9 R9 K64 ["waitForUserInteraction"]
      112 CALL                             R9 1 1
      113 JUMPIF                           R9 ; [+1]
      114 RETURN                           R0 0
      115 MOVE                             R10 R1
      116 MOVE                             R11 R0
      117 MOVE                             R12 R8
      118 CALL                             R10 2 0
      119 RETURN                           R0 0
      120 GETUPVAL                         R8 5
      121 GETTABLEKS                       R8 R8 K62 ["build"]
      123 MOVE                             R9 R4
      124 CALL                             R8 1 0
      125 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["Localization"]
       27 GETTABLEKS                       R5 R0 K12 ["Src"]
       29 GETTABLEKS                       R5 R5 K13 ["Resources"]
       31 GETTABLEKS                       R5 R5 K11 ["Localization"]
       33 GETTABLEKS                       R5 R5 K14 ["SourceStrings"]
       35 GETTABLEKS                       R6 R0 K12 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K11 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["LocalizedStrings"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K16 ["Bin"]
       47 GETTABLEKS                       R8 R8 K17 ["Common"]
       49 GETTABLEKS                       R8 R8 K18 ["defineLuaFlags"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K16 ["Bin"]
       56 GETTABLEKS                       R9 R9 K17 ["Common"]
       58 GETTABLEKS                       R9 R9 K19 ["pluginType"]
       60 CALL                             R8 1 1
       61 DUPCLOSURE                       R9 K20 [PROTO_3]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 RETURN                           R9 1
