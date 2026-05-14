PROTO_0:
        0 LOADK                            R0 K0 ["luaPlayerEmulatorToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["luaPlayerEmulatorButton"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["PLUGIN_WIDGET_STATE"]
        5 NAMECALL                         R0 R0 K3 ["GetSetting"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
       18 CALL                             R2 0 1
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K10 [game]
       23 LOADK                            R4 K11 ["RunService"]
       24 NAMECALL                         R2 R2 K12 ["GetService"]
       26 CALL                             R2 2 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K2 ["Parent"]
       33 GETTABLEKS                       R4 R4 K13 ["defineLuaFlags"]
       35 CALL                             R3 1 0
       36 GETIMPORT                        R3 K4 [require]
       38 GETTABLEKS                       R4 R0 K5 ["Src"]
       40 GETTABLEKS                       R4 R4 K6 ["Util"]
       42 GETTABLEKS                       R4 R4 K14 ["Constants"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K4 [require]
       47 GETTABLEKS                       R5 R0 K15 ["Packages"]
       49 GETTABLEKS                       R5 R5 K16 ["PluginLoader"]
       51 CALL                             R4 1 1
       52 GETTABLEKS                       R5 R4 K17 ["PluginLoaderBuilder"]
       54 GETTABLEKS                       R6 R0 K5 ["Src"]
       56 GETTABLEKS                       R6 R6 K18 ["Resources"]
       58 GETTABLEKS                       R6 R6 K19 ["SourceStrings"]
       60 GETTABLEKS                       R7 R0 K5 ["Src"]
       62 GETTABLEKS                       R7 R7 K18 ["Resources"]
       64 GETTABLEKS                       R7 R7 K20 ["LocalizedStrings"]
       66 DUPTABLE                         R8 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen"}]
       67 GETIMPORT                        R9 K32 [plugin]
       69 SETTABLEKS                       R9 R8 K21 ["plugin"]
       71 LOADK                            R9 K33 ["PlayerEmulator"]
       72 SETTABLEKS                       R9 R8 K22 ["pluginName"]
       74 SETTABLEKS                       R7 R8 K23 ["translationResourceTable"]
       76 SETTABLEKS                       R6 R8 K24 ["fallbackResourceTable"]
       78 LOADNIL                          R9
       79 SETTABLEKS                       R9 R8 K25 ["overrideLocaleId"]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R8 K26 ["localizationNamespace"]
       84 DUPCLOSURE                       R9 K34 [PROTO_0]
       85 SETTABLEKS                       R9 R8 K27 ["getToolbarName"]
       87 DUPTABLE                         R9 K41 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
       88 DUPCLOSURE                       R10 K42 [PROTO_1]
       89 SETTABLEKS                       R10 R9 K35 ["getName"]
       91 DUPCLOSURE                       R10 K43 [PROTO_2]
       92 SETTABLEKS                       R10 R9 K36 ["getDescription"]
       94 LOADK                            R10 K44 ["rbxlocaltheme://Player"]
       95 SETTABLEKS                       R10 R9 K37 ["icon"]
       97 LOADNIL                          R10
       98 SETTABLEKS                       R10 R9 K38 ["text"]
      100 GETIMPORT                        R10 K10 [game]
      102 LOADK                            R12 K45 ["PlayerEmulatorButtonAlwaysClickable"]
      103 NAMECALL                         R10 R10 K46 ["GetFastFlag"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K39 ["clickableWhenViewportHidden"]
      108 NAMECALL                         R10 R2 K47 ["IsEdit"]
      110 CALL                             R10 1 1
      111 SETTABLEKS                       R10 R9 K40 ["enabled"]
      113 SETTABLEKS                       R9 R8 K28 ["buttonInfo"]
      115 LOADNIL                          R9
      116 SETTABLEKS                       R9 R8 K29 ["dockWidgetInfo"]
      118 DUPCLOSURE                       R9 K48 [PROTO_3]
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R9 R8 K30 ["shouldImmediatelyOpen"]
      122 GETTABLEKS                       R9 R5 K49 ["build"]
      124 MOVE                             R10 R8
      125 CALL                             R9 1 1
      126 GETTABLEKS                       R10 R9 K50 ["pluginLoader"]
      128 NAMECALL                         R10 R10 K51 ["waitForUserInteraction"]
      130 CALL                             R10 1 1
      131 JUMPIF                           R10 ; [+1]
      132 RETURN                           R0 0
      133 GETIMPORT                        R11 K4 [require]
      135 GETIMPORT                        R12 K1 [script]
      137 GETTABLEKS                       R12 R12 K2 ["Parent"]
      139 GETTABLEKS                       R12 R12 K52 ["main"]
      141 CALL                             R11 1 1
      142 MOVE                             R12 R11
      143 GETIMPORT                        R13 K32 [plugin]
      145 MOVE                             R14 R9
      146 CALL                             R12 2 0
      147 RETURN                           R0 0
