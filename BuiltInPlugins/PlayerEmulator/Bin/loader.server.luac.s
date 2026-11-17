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
       66 DUPTABLE                         R8 K33 [{["plugin"], ["pluginName"] = "PlayerEmulator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = , ["shouldImmediatelyOpen"]}]
       67 GETIMPORT                        R9 K34 [plugin]
       69 SETTABLEKS                       R9 R8 K21 ["plugin"]
       71 SETTABLEKS                       R7 R8 K24 ["translationResourceTable"]
       73 SETTABLEKS                       R6 R8 K25 ["fallbackResourceTable"]
       75 DUPCLOSURE                       R9 K35 [PROTO_0]
       76 SETTABLEKS                       R9 R8 K29 ["getToolbarName"]
       78 DUPTABLE                         R9 K44 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://Player", ["text"] = , ["clickableWhenViewportHidden"] = True, ["enabled"]}]
       79 DUPCLOSURE                       R10 K45 [PROTO_1]
       80 SETTABLEKS                       R10 R9 K36 ["getName"]
       82 DUPCLOSURE                       R10 K46 [PROTO_2]
       83 SETTABLEKS                       R10 R9 K37 ["getDescription"]
       85 NAMECALL                         R10 R2 K47 ["IsEdit"]
       87 CALL                             R10 1 1
       88 SETTABLEKS                       R10 R9 K43 ["enabled"]
       90 SETTABLEKS                       R9 R8 K30 ["buttonInfo"]
       92 DUPCLOSURE                       R9 K48 [PROTO_3]
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R9 R8 K32 ["shouldImmediatelyOpen"]
       96 GETTABLEKS                       R9 R5 K49 ["build"]
       98 MOVE                             R10 R8
       99 CALL                             R9 1 1
      100 GETTABLEKS                       R10 R9 K50 ["pluginLoader"]
      102 NAMECALL                         R10 R10 K51 ["waitForUserInteraction"]
      104 CALL                             R10 1 1
      105 JUMPIF                           R10 ; [+1]
      106 RETURN                           R0 0
      107 GETIMPORT                        R11 K4 [require]
      109 GETIMPORT                        R12 K1 [script]
      111 GETTABLEKS                       R12 R12 K2 ["Parent"]
      113 GETTABLEKS                       R12 R12 K52 ["main"]
      115 CALL                             R11 1 1
      116 MOVE                             R12 R11
      117 GETIMPORT                        R13 K34 [plugin]
      119 MOVE                             R14 R9
      120 CALL                             R12 2 0
      121 RETURN                           R0 0
