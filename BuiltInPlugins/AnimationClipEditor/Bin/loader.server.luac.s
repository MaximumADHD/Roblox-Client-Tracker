PROTO_0:
        0 LOADK                            R3 K0 ["Animations"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Animation Editor"]
        1 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["RunTests"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+4]
       20 GETTABLEKS                       R2 R1 K10 ["RunRhodiumTests"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K6 ["Src"]
       29 GETTABLEKS                       R3 R3 K7 ["Util"]
       31 GETTABLEKS                       R3 R3 K11 ["Constants"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R3 R0 K6 ["Src"]
       36 GETTABLEKS                       R3 R3 K12 ["Resources"]
       38 GETTABLEKS                       R3 R3 K13 ["SourceStrings"]
       40 GETTABLEKS                       R4 R0 K6 ["Src"]
       42 GETTABLEKS                       R4 R4 K12 ["Resources"]
       44 GETTABLEKS                       R4 R4 K14 ["LocalizedStrings"]
       46 GETIMPORT                        R5 K5 [require]
       48 GETTABLEKS                       R6 R0 K15 ["Packages"]
       50 GETTABLEKS                       R6 R6 K16 ["PluginLoader"]
       52 CALL                             R5 1 1
       53 GETTABLEKS                       R6 R5 K17 ["PluginLoaderBuilder"]
       55 DUPTABLE                         R7 K28 [{["plugin"], ["pluginName"], ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       56 GETIMPORT                        R8 K29 [plugin]
       58 SETTABLEKS                       R8 R7 K18 ["plugin"]
       60 GETTABLEKS                       R8 R2 K30 ["PLUGIN_NAME"]
       62 SETTABLEKS                       R8 R7 K19 ["pluginName"]
       64 SETTABLEKS                       R4 R7 K20 ["translationResourceTable"]
       66 SETTABLEKS                       R3 R7 K21 ["fallbackResourceTable"]
       68 DUPCLOSURE                       R8 K31 [PROTO_0]
       69 SETTABLEKS                       R8 R7 K25 ["getToolbarName"]
       71 DUPTABLE                         R8 K36 [{["getName"], ["getDescription"], ["icon"], ["text"] = }]
       72 DUPCLOSURE                       R9 K37 [PROTO_1]
       73 SETTABLEKS                       R9 R8 K32 ["getName"]
       75 DUPCLOSURE                       R9 K38 [PROTO_2]
       76 SETTABLEKS                       R9 R8 K33 ["getDescription"]
       78 GETTABLEKS                       R9 R2 K39 ["PLUGIN_ICON"]
       80 SETTABLEKS                       R9 R8 K34 ["icon"]
       82 SETTABLEKS                       R8 R7 K26 ["buttonInfo"]
       84 DUPTABLE                         R8 K45 [{["id"] = "AnimationClipEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"] = "AnimationClipEditor", ["zIndexBehavior"]}]
       85 GETIMPORT                        R9 K48 [DockWidgetPluginGuiInfo.new]
       87 GETIMPORT                        R10 K52 [Enum.InitialDockState.Bottom]
       89 LOADB                            R11 0
       90 LOADB                            R12 1
       91 GETTABLEKS                       R13 R2 K53 ["MAIN_FLOATING_SIZE"]
       93 GETTABLEKS                       R13 R13 K54 ["X"]
       95 GETTABLEKS                       R14 R2 K53 ["MAIN_FLOATING_SIZE"]
       97 GETTABLEKS                       R14 R14 K55 ["Y"]
       99 GETTABLEKS                       R15 R2 K56 ["MAIN_MINIMUM_SIZE"]
      101 GETTABLEKS                       R15 R15 K54 ["X"]
      103 GETTABLEKS                       R16 R2 K56 ["MAIN_MINIMUM_SIZE"]
      105 GETTABLEKS                       R16 R16 K55 ["Y"]
      107 CALL                             R9 7 1
      108 SETTABLEKS                       R9 R8 K41 ["dockWidgetPluginGuiInfo"]
      110 DUPCLOSURE                       R9 K57 [PROTO_3]
      111 SETTABLEKS                       R9 R8 K42 ["getDockTitle"]
      113 GETIMPORT                        R9 K60 [Enum.ZIndexBehavior.Sibling]
      115 SETTABLEKS                       R9 R8 K44 ["zIndexBehavior"]
      117 SETTABLEKS                       R8 R7 K27 ["dockWidgetInfo"]
      119 GETTABLEKS                       R8 R6 K61 ["build"]
      121 MOVE                             R9 R7
      122 CALL                             R8 1 1
      123 GETTABLEKS                       R9 R8 K62 ["pluginLoader"]
      125 NAMECALL                         R9 R9 K63 ["waitForUserInteraction"]
      127 CALL                             R9 1 1
      128 JUMPIF                           R9 ; [+1]
      129 RETURN                           R0 0
      130 GETIMPORT                        R10 K5 [require]
      132 GETIMPORT                        R11 K1 [script]
      134 GETTABLEKS                       R11 R11 K64 ["Parent"]
      136 GETTABLEKS                       R11 R11 K65 ["main"]
      138 CALL                             R10 1 1
      139 MOVE                             R11 R10
      140 GETIMPORT                        R12 K29 [plugin]
      142 MOVE                             R13 R8
      143 CALL                             R11 2 0
      144 RETURN                           R0 0
