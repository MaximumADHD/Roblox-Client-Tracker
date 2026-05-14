PROTO_0:
        0 LOADK                            R0 K0 ["gameSettingsToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["gameSettingsButton"]
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+7]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 LOADK                            R6 K0 ["General"]
        6 LOADK                            R7 K1 ["PluginDescriptionExp"]
        7 CALL                             R3 4 1
        8 RETURN                           R3 1
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 LOADK                            R6 K0 ["General"]
       13 LOADK                            R7 K2 ["PluginDescription"]
       14 CALL                             R3 4 1
       15 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOpenGameSettings"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Src"]
       20 GETTABLEKS                       R2 R2 K7 ["Util"]
       22 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K11 [game]
       32 LOADK                            R4 K12 ["RunService"]
       33 NAMECALL                         R2 R2 K13 ["GetService"]
       35 CALL                             R2 2 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETTABLEKS                       R4 R0 K14 ["Packages"]
       40 GETTABLEKS                       R4 R4 K15 ["PluginLoader"]
       42 CALL                             R3 1 1
       43 GETTABLEKS                       R4 R3 K16 ["PluginLoaderBuilder"]
       45 GETTABLEKS                       R5 R0 K6 ["Src"]
       47 GETTABLEKS                       R5 R5 K17 ["Resources"]
       49 GETTABLEKS                       R5 R5 K18 ["SourceStrings"]
       51 GETTABLEKS                       R6 R0 K6 ["Src"]
       53 GETTABLEKS                       R6 R6 K17 ["Resources"]
       55 GETTABLEKS                       R6 R6 K19 ["LocalizedStrings"]
       57 GETIMPORT                        R7 K11 [game]
       59 LOADK                            R9 K20 ["StudioService"]
       60 NAMECALL                         R7 R7 K13 ["GetService"]
       62 CALL                             R7 2 1
       63 GETIMPORT                        R8 K1 [require]
       65 GETTABLEKS                       R9 R0 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K21 ["Flags"]
       69 GETTABLEKS                       R9 R9 K22 ["getFFlagGameSettingsGameToExperience"]
       71 CALL                             R8 1 1
       72 CALL                             R8 0 1
       73 DUPTABLE                         R9 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
       74 GETIMPORT                        R10 K34 [plugin]
       76 SETTABLEKS                       R10 R9 K23 ["plugin"]
       78 LOADK                            R10 K35 ["GameSettingsPlugin"]
       79 SETTABLEKS                       R10 R9 K24 ["pluginName"]
       81 SETTABLEKS                       R6 R9 K25 ["translationResourceTable"]
       83 SETTABLEKS                       R5 R9 K26 ["fallbackResourceTable"]
       85 LOADNIL                          R10
       86 SETTABLEKS                       R10 R9 K27 ["overrideLocaleId"]
       88 LOADNIL                          R10
       89 SETTABLEKS                       R10 R9 K28 ["localizationNamespace"]
       91 DUPCLOSURE                       R10 K36 [PROTO_0]
       92 SETTABLEKS                       R10 R9 K29 ["getToolbarName"]
       94 DUPTABLE                         R10 K43 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden", "enabled"}]
       95 DUPCLOSURE                       R11 K44 [PROTO_1]
       96 SETTABLEKS                       R11 R10 K37 ["getName"]
       98 DUPCLOSURE                       R11 K45 [PROTO_2]
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R11 R10 K38 ["getDescription"]
      102 LOADK                            R11 K46 ["rbxlocaltheme://GameSettings"]
      103 SETTABLEKS                       R11 R10 K39 ["icon"]
      105 LOADNIL                          R11
      106 SETTABLEKS                       R11 R10 K40 ["text"]
      108 LOADB                            R11 1
      109 SETTABLEKS                       R11 R10 K41 ["clickableWhenViewportHidden"]
      111 NAMECALL                         R11 R2 K47 ["IsEdit"]
      113 CALL                             R11 1 1
      114 SETTABLEKS                       R11 R10 K42 ["enabled"]
      116 SETTABLEKS                       R10 R9 K30 ["buttonInfo"]
      118 LOADNIL                          R10
      119 SETTABLEKS                       R10 R9 K31 ["dockWidgetInfo"]
      121 NEWTABLE                         R10 1 0
      123 DUPCLOSURE                       R11 K48 [PROTO_3]
      124 CAPTURE                          VAL R7
      125 SETTABLEKS                       R11 R10 K49 ["StudioService.OnOpenGameSettings"]
      127 SETTABLEKS                       R10 R9 K32 ["extraTriggers"]
      129 GETTABLEKS                       R10 R4 K50 ["build"]
      131 MOVE                             R11 R9
      132 CALL                             R10 1 1
      133 GETTABLEKS                       R11 R10 K51 ["pluginLoader"]
      135 NAMECALL                         R11 R11 K52 ["waitForUserInteraction"]
      137 CALL                             R11 1 1
      138 JUMPIF                           R11 ; [+1]
      139 RETURN                           R0 0
      140 GETIMPORT                        R12 K1 [require]
      142 GETIMPORT                        R13 K3 [script]
      144 GETTABLEKS                       R13 R13 K4 ["Parent"]
      146 GETTABLEKS                       R13 R13 K53 ["main"]
      148 CALL                             R12 1 1
      149 MOVE                             R13 R12
      150 GETIMPORT                        R14 K34 [plugin]
      152 MOVE                             R15 R10
      153 CALL                             R13 2 0
      154 RETURN                           R0 0
