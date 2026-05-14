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
       55 DUPTABLE                         R7 K27 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       56 GETIMPORT                        R8 K28 [plugin]
       58 SETTABLEKS                       R8 R7 K18 ["plugin"]
       60 GETTABLEKS                       R8 R2 K29 ["PLUGIN_NAME"]
       62 SETTABLEKS                       R8 R7 K19 ["pluginName"]
       64 SETTABLEKS                       R4 R7 K20 ["translationResourceTable"]
       66 SETTABLEKS                       R3 R7 K21 ["fallbackResourceTable"]
       68 LOADNIL                          R8
       69 SETTABLEKS                       R8 R7 K22 ["overrideLocaleId"]
       71 LOADNIL                          R8
       72 SETTABLEKS                       R8 R7 K23 ["localizationNamespace"]
       74 DUPCLOSURE                       R8 K30 [PROTO_0]
       75 SETTABLEKS                       R8 R7 K24 ["getToolbarName"]
       77 DUPTABLE                         R8 K35 [{"getName", "getDescription", "icon", "text"}]
       78 DUPCLOSURE                       R9 K36 [PROTO_1]
       79 SETTABLEKS                       R9 R8 K31 ["getName"]
       81 DUPCLOSURE                       R9 K37 [PROTO_2]
       82 SETTABLEKS                       R9 R8 K32 ["getDescription"]
       84 GETTABLEKS                       R9 R2 K38 ["PLUGIN_ICON"]
       86 SETTABLEKS                       R9 R8 K33 ["icon"]
       88 LOADNIL                          R9
       89 SETTABLEKS                       R9 R8 K34 ["text"]
       91 SETTABLEKS                       R8 R7 K25 ["buttonInfo"]
       93 DUPTABLE                         R8 K44 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
       94 LOADK                            R9 K2 ["AnimationClipEditor"]
       95 SETTABLEKS                       R9 R8 K39 ["id"]
       97 GETIMPORT                        R9 K47 [DockWidgetPluginGuiInfo.new]
       99 GETIMPORT                        R10 K51 [Enum.InitialDockState.Bottom]
      101 LOADB                            R11 0
      102 LOADB                            R12 1
      103 GETTABLEKS                       R13 R2 K52 ["MAIN_FLOATING_SIZE"]
      105 GETTABLEKS                       R13 R13 K53 ["X"]
      107 GETTABLEKS                       R14 R2 K52 ["MAIN_FLOATING_SIZE"]
      109 GETTABLEKS                       R14 R14 K54 ["Y"]
      111 GETTABLEKS                       R15 R2 K55 ["MAIN_MINIMUM_SIZE"]
      113 GETTABLEKS                       R15 R15 K53 ["X"]
      115 GETTABLEKS                       R16 R2 K55 ["MAIN_MINIMUM_SIZE"]
      117 GETTABLEKS                       R16 R16 K54 ["Y"]
      119 CALL                             R9 7 1
      120 SETTABLEKS                       R9 R8 K40 ["dockWidgetPluginGuiInfo"]
      122 DUPCLOSURE                       R9 K56 [PROTO_3]
      123 SETTABLEKS                       R9 R8 K41 ["getDockTitle"]
      125 LOADK                            R9 K2 ["AnimationClipEditor"]
      126 SETTABLEKS                       R9 R8 K42 ["name"]
      128 GETIMPORT                        R9 K59 [Enum.ZIndexBehavior.Sibling]
      130 SETTABLEKS                       R9 R8 K43 ["zIndexBehavior"]
      132 SETTABLEKS                       R8 R7 K26 ["dockWidgetInfo"]
      134 GETTABLEKS                       R8 R6 K60 ["build"]
      136 MOVE                             R9 R7
      137 CALL                             R8 1 1
      138 GETTABLEKS                       R9 R8 K61 ["pluginLoader"]
      140 NAMECALL                         R9 R9 K62 ["waitForUserInteraction"]
      142 CALL                             R9 1 1
      143 JUMPIF                           R9 ; [+1]
      144 RETURN                           R0 0
      145 GETIMPORT                        R10 K5 [require]
      147 GETIMPORT                        R11 K1 [script]
      149 GETTABLEKS                       R11 R11 K63 ["Parent"]
      151 GETTABLEKS                       R11 R11 K64 ["main"]
      153 CALL                             R10 1 1
      154 MOVE                             R11 R10
      155 GETIMPORT                        R12 K28 [plugin]
      157 MOVE                             R13 R8
      158 CALL                             R11 2 0
      159 RETURN                           R0 0
