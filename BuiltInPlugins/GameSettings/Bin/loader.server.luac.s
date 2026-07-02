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
       73 DUPTABLE                         R9 K35 [{["plugin"], ["pluginName"] = "GameSettingsPlugin", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = , ["extraTriggers"]}]
       74 GETIMPORT                        R10 K36 [plugin]
       76 SETTABLEKS                       R10 R9 K23 ["plugin"]
       78 SETTABLEKS                       R6 R9 K26 ["translationResourceTable"]
       80 SETTABLEKS                       R5 R9 K27 ["fallbackResourceTable"]
       82 DUPCLOSURE                       R10 K37 [PROTO_0]
       83 SETTABLEKS                       R10 R9 K31 ["getToolbarName"]
       85 DUPTABLE                         R10 K46 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://GameSettings", ["text"] = , ["clickableWhenViewportHidden"] = True, ["enabled"]}]
       86 DUPCLOSURE                       R11 K47 [PROTO_1]
       87 SETTABLEKS                       R11 R10 K38 ["getName"]
       89 DUPCLOSURE                       R11 K48 [PROTO_2]
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R11 R10 K39 ["getDescription"]
       93 NAMECALL                         R11 R2 K49 ["IsEdit"]
       95 CALL                             R11 1 1
       96 SETTABLEKS                       R11 R10 K45 ["enabled"]
       98 SETTABLEKS                       R10 R9 K32 ["buttonInfo"]
      100 NEWTABLE                         R10 1 0
      102 DUPCLOSURE                       R11 K50 [PROTO_3]
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R11 R10 K51 ["StudioService.OnOpenGameSettings"]
      106 SETTABLEKS                       R10 R9 K34 ["extraTriggers"]
      108 GETTABLEKS                       R10 R4 K52 ["build"]
      110 MOVE                             R11 R9
      111 CALL                             R10 1 1
      112 GETTABLEKS                       R11 R10 K53 ["pluginLoader"]
      114 NAMECALL                         R11 R11 K54 ["waitForUserInteraction"]
      116 CALL                             R11 1 1
      117 JUMPIF                           R11 ; [+1]
      118 RETURN                           R0 0
      119 GETIMPORT                        R12 K1 [require]
      121 GETIMPORT                        R13 K3 [script]
      123 GETTABLEKS                       R13 R13 K4 ["Parent"]
      125 GETTABLEKS                       R13 R13 K55 ["main"]
      127 CALL                             R12 1 1
      128 MOVE                             R13 R12
      129 GETIMPORT                        R14 K36 [plugin]
      131 MOVE                             R15 R10
      132 CALL                             R13 2 0
      133 RETURN                           R0 0
