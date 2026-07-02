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
       25 DUPTABLE                         R4 K22 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["icon"] = "rbxlocaltheme://GameSettings", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       26 DUPTABLE                         R5 K30 [{["DataModel"] = "Standalone", ["PluginId"] = "AssetQualityValidation", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       27 SETTABLEKS                       R5 R4 K11 ["uri"]
       29 DUPCLOSURE                       R5 K31 [PROTO_0]
       30 SETTABLEKS                       R5 R4 K9 ["getText"]
       32 DUPCLOSURE                       R5 K32 [PROTO_1]
       33 SETTABLEKS                       R5 R4 K14 ["getTooltip"]
       35 SETLIST                          R3 R4 1 [1]
       37 DUPTABLE                         R4 K37 [{["plugin"], ["pluginName"] = "AssetQualityValidation", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       38 SETTABLEKS                       R0 R4 K33 ["plugin"]
       40 GETUPVAL                         R5 2
       41 SETTABLEKS                       R5 R4 K3 ["translationResourceTable"]
       43 GETUPVAL                         R5 1
       44 SETTABLEKS                       R5 R4 K34 ["fallbackResourceTable"]
       46 SETTABLEKS                       R3 R4 K36 ["actionInfos"]
       48 GETIMPORT                        R5 K39 [game]
       50 LOADK                            R7 K40 ["RunService"]
       51 NAMECALL                         R5 R5 K41 ["GetService"]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R7 3
       55 GETTABLEKS                       R7 R7 K42 ["get"]
       57 CALL                             R7 0 1
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K24 ["Standalone"]
       61 JUMPIFEQ                         R7 R8 ; [+2]
       63 LOADB                            R6 0 +1
       64 LOADB                            R6 1
       65 NAMECALL                         R7 R5 K43 ["IsEdit"]
       67 CALL                             R7 1 1
       68 JUMPIF                           R6 ; [+1]
       69 JUMPIFNOT                        R7 ; [+40]
       70 DUPTABLE                         R8 K48 [{["id"] = "AssetQualityValidation", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       71 GETIMPORT                        R9 K50 [DockWidgetPluginGuiInfo.new]
       73 GETIMPORT                        R10 K54 [Enum.InitialDockState.Bottom]
       75 LOADB                            R11 0
       76 LOADB                            R12 0
       77 LOADN                            R13 640
       78 LOADN                            R14 480
       79 LOADN                            R15 250
       80 LOADN                            R16 200
       81 CALL                             R9 7 1
       82 SETTABLEKS                       R9 R8 K45 ["dockWidgetPluginGuiInfo"]
       84 DUPCLOSURE                       R9 K55 [PROTO_2]
       85 SETTABLEKS                       R9 R8 K46 ["getDockTitle"]
       87 GETIMPORT                        R9 K58 [Enum.ZIndexBehavior.Sibling]
       89 SETTABLEKS                       R9 R8 K47 ["zIndexBehavior"]
       91 SETTABLEKS                       R8 R4 K59 ["dockWidgetInfo"]
       93 GETUPVAL                         R8 4
       94 GETTABLEKS                       R8 R8 K60 ["build"]
       96 MOVE                             R9 R4
       97 CALL                             R8 1 1
       98 GETTABLEKS                       R9 R8 K61 ["pluginLoader"]
      100 NAMECALL                         R9 R9 K62 ["waitForUserInteraction"]
      102 CALL                             R9 1 1
      103 JUMPIF                           R9 ; [+1]
      104 RETURN                           R0 0
      105 MOVE                             R10 R1
      106 MOVE                             R11 R0
      107 MOVE                             R12 R8
      108 CALL                             R10 2 0
      109 RETURN                           R0 0
      110 GETUPVAL                         R8 4
      111 GETTABLEKS                       R8 R8 K60 ["build"]
      113 MOVE                             R9 R4
      114 CALL                             R8 1 0
      115 RETURN                           R0 0

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
       49 GETTABLEKS                       R8 R8 K18 ["pluginType"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K19 [PROTO_3]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 RETURN                           R8 1
