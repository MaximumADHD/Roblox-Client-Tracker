PROTO_0:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+2]
        2 LOADK                            R3 K0 ["Localization"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["ToolbarLabel"]
        9 CALL                             R3 4 1
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+2]
        2 LOADK                            R3 K0 ["Tools"]
        3 RETURN                           R3 1
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 LOADK                            R6 K1 ["Plugin"]
        8 LOADK                            R7 K2 ["RibbonBarButton"]
        9 CALL                             R3 4 1
       10 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["ToolTipMessage"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["WindowTitle"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K7 ["Util"]
       22 GETTABLEKS                       R2 R3 K8 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K11 [game]
       32 LOADK                            R4 K12 ["StudioFixLocalizationToolsEnabled"]
       33 LOADB                            R5 0
       34 NAMECALL                         R2 R2 K13 ["DefineFastFlag"]
       36 CALL                             R2 3 1
       37 GETIMPORT                        R3 K11 [game]
       39 LOADK                            R5 K14 ["RunService"]
       40 NAMECALL                         R3 R3 K15 ["GetService"]
       42 CALL                             R3 2 1
       43 GETIMPORT                        R4 K4 [require]
       45 GETTABLEKS                       R6 R0 K16 ["Packages"]
       47 GETTABLEKS                       R5 R6 K17 ["PluginLoader"]
       49 CALL                             R4 1 1
       50 GETTABLEKS                       R5 R4 K18 ["PluginLoaderBuilder"]
       52 GETTABLEKS                       R9 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R9 K19 ["Resources"]
       56 GETTABLEKS                       R7 R8 K20 ["Localization"]
       58 GETTABLEKS                       R6 R7 K21 ["SourceStrings"]
       60 GETTABLEKS                       R10 R0 K6 ["Src"]
       62 GETTABLEKS                       R9 R10 K19 ["Resources"]
       64 GETTABLEKS                       R8 R9 K20 ["Localization"]
       66 GETTABLEKS                       R7 R8 K22 ["LocalizedStrings"]
       68 DUPTABLE                         R8 K32 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       69 GETIMPORT                        R9 K33 [plugin]
       71 SETTABLEKS                       R9 R8 K23 ["plugin"]
       73 LOADK                            R9 K34 ["LocalizationTools"]
       74 SETTABLEKS                       R9 R8 K24 ["pluginName"]
       76 SETTABLEKS                       R7 R8 K25 ["translationResourceTable"]
       78 SETTABLEKS                       R6 R8 K26 ["fallbackResourceTable"]
       80 LOADNIL                          R9
       81 SETTABLEKS                       R9 R8 K27 ["overrideLocaleId"]
       83 LOADNIL                          R9
       84 SETTABLEKS                       R9 R8 K28 ["localizationNamespace"]
       86 DUPCLOSURE                       R9 K35 [PROTO_0]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R9 R8 K29 ["getToolbarName"]
       90 DUPTABLE                         R9 K41 [{"getName", "getDescription", "icon", "text", "enabled"}]
       91 DUPCLOSURE                       R10 K42 [PROTO_1]
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R10 R9 K36 ["getName"]
       95 DUPCLOSURE                       R10 K43 [PROTO_2]
       96 SETTABLEKS                       R10 R9 K37 ["getDescription"]
       98 LOADK                            R10 K44 ["rbxlocaltheme://LocalizationTools"]
       99 SETTABLEKS                       R10 R9 K38 ["icon"]
      101 LOADNIL                          R10
      102 SETTABLEKS                       R10 R9 K39 ["text"]
      104 NAMECALL                         R10 R3 K45 ["IsEdit"]
      106 CALL                             R10 1 1
      107 SETTABLEKS                       R10 R9 K40 ["enabled"]
      109 SETTABLEKS                       R9 R8 K30 ["buttonInfo"]
      111 DUPTABLE                         R9 K50 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      112 LOADK                            R10 K34 ["LocalizationTools"]
      113 SETTABLEKS                       R10 R9 K46 ["id"]
      115 GETIMPORT                        R10 K53 [DockWidgetPluginGuiInfo.new]
      117 GETIMPORT                        R11 K57 [Enum.InitialDockState.Left]
      119 LOADB                            R12 0
      120 LOADB                            R13 0
      121 LOADN                            R14 44
      122 LOADN                            R15 250
      123 LOADN                            R16 0
      124 LOADN                            R17 0
      125 CALL                             R10 7 1
      126 SETTABLEKS                       R10 R9 K47 ["dockWidgetPluginGuiInfo"]
      128 DUPCLOSURE                       R10 K58 [PROTO_3]
      129 SETTABLEKS                       R10 R9 K48 ["getDockTitle"]
      131 GETIMPORT                        R10 K61 [Enum.ZIndexBehavior.Sibling]
      133 SETTABLEKS                       R10 R9 K49 ["zIndexBehavior"]
      135 SETTABLEKS                       R9 R8 K31 ["dockWidgetInfo"]
      137 GETTABLEKS                       R9 R5 K62 ["build"]
      139 MOVE                             R10 R8
      140 CALL                             R9 1 1
      141 GETTABLEKS                       R10 R9 K63 ["pluginLoader"]
      143 NAMECALL                         R10 R10 K64 ["waitForUserInteraction"]
      145 CALL                             R10 1 1
      146 JUMPIF                           R10 ; [+1]
      147 RETURN                           R0 0
      148 GETIMPORT                        R11 K4 [require]
      150 GETIMPORT                        R14 K1 [script]
      152 GETTABLEKS                       R13 R14 K2 ["Parent"]
      154 GETTABLEKS                       R12 R13 K65 ["main"]
      156 CALL                             R11 1 1
      157 MOVE                             R12 R11
      158 GETIMPORT                        R13 K33 [plugin]
      160 MOVE                             R14 R9
      161 CALL                             R12 2 0
      162 RETURN                           R0 0
