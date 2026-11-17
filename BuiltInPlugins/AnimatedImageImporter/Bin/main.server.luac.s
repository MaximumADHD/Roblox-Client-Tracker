PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["ImportAction"]
        4 LOADK                            R7 K1 ["Text"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["ImportAction"]
        4 LOADK                            R7 K1 ["Tooltip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K8 [game]
       16 LOADK                            R4 K9 ["EnableAnimationPlayer"]
       17 NAMECALL                         R2 R2 K10 ["GetEngineFeature"]
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETIMPORT                        R2 K8 [game]
       24 LOADK                            R4 K11 ["AnimatedImageImporter_Dev"]
       25 LOADB                            R5 0
       26 NAMECALL                         R2 R2 K12 ["DefineFastFlag"]
       28 CALL                             R2 3 1
       29 JUMPIF                           R2 ; [+1]
       30 RETURN                           R0 0
       31 GETIMPORT                        R2 K8 [game]
       33 LOADK                            R4 K13 ["AssetImportServicePickAnimatedImageFileWithPrompt"]
       34 NAMECALL                         R2 R2 K10 ["GetEngineFeature"]
       36 CALL                             R2 2 1
       37 JUMPIF                           R2 ; [+1]
       38 RETURN                           R0 0
       39 GETIMPORT                        R2 K15 [require]
       41 GETTABLEKS                       R3 R0 K16 ["Packages"]
       43 GETTABLEKS                       R3 R3 K17 ["PluginLoader"]
       45 CALL                             R2 1 1
       46 GETTABLEKS                       R3 R2 K18 ["PluginLoaderBuilder"]
       48 GETTABLEKS                       R3 R3 K19 ["build"]
       50 DUPTABLE                         R4 K27 [{["plugin"], ["pluginName"] = "AnimatedImageImporter", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       51 GETIMPORT                        R5 K28 [plugin]
       53 SETTABLEKS                       R5 R4 K20 ["plugin"]
       55 GETTABLEKS                       R5 R0 K29 ["Src"]
       57 GETTABLEKS                       R5 R5 K30 ["Resources"]
       59 GETTABLEKS                       R5 R5 K31 ["Localization"]
       61 GETTABLEKS                       R5 R5 K32 ["LocalizedStrings"]
       63 SETTABLEKS                       R5 R4 K22 ["translationResourceTable"]
       65 GETTABLEKS                       R5 R0 K29 ["Src"]
       67 GETTABLEKS                       R5 R5 K30 ["Resources"]
       69 GETTABLEKS                       R5 R5 K31 ["Localization"]
       71 GETTABLEKS                       R5 R5 K33 ["SourceStrings"]
       73 SETTABLEKS                       R5 R4 K23 ["fallbackResourceTable"]
       75 NEWTABLE                         R5 0 1
       77 DUPTABLE                         R6 K43 [{["uri"], ["isPreexistingAction"] = False, ["icon"] = "AnimatedImage", ["getText"], ["getTooltip"], ["enabled"] = True, ["visible"] = True}]
       78 DUPTABLE                         R7 K51 [{["DataModel"] = "Standalone", ["PluginId"] = "AnimatedImageImporter", ["Category"] = "Actions", ["ItemId"] = "Import"}]
       79 SETTABLEKS                       R7 R6 K34 ["uri"]
       81 DUPCLOSURE                       R7 K52 [PROTO_1]
       82 SETTABLEKS                       R7 R6 K39 ["getText"]
       84 DUPCLOSURE                       R7 K53 [PROTO_2]
       85 SETTABLEKS                       R7 R6 K40 ["getTooltip"]
       87 SETLIST                          R5 R6 1 [1]
       89 SETTABLEKS                       R5 R4 K26 ["actionInfos"]
       91 CALL                             R3 1 1
       92 GETTABLEKS                       R4 R3 K54 ["pluginLoader"]
       94 NAMECALL                         R4 R4 K55 ["waitForUserInteraction"]
       96 CALL                             R4 1 1
       97 JUMPIF                           R4 ; [+1]
       98 RETURN                           R0 0
       99 GETIMPORT                        R4 K15 [require]
      101 GETTABLEKS                       R5 R0 K56 ["Bin"]
      103 GETTABLEKS                       R5 R5 K57 ["createStartImportAsync"]
      105 CALL                             R4 1 1
      106 GETTABLEKS                       R6 R3 K58 ["actionTriggeredSignals"]
      108 GETTABLEN                        R5 R6 1
      109 MOVE                             R7 R4
      110 CALL                             R7 0 -1
      111 NAMECALL                         R5 R5 K59 ["Connect"]
      113 CALL                             R5 -1 0
      114 RETURN                           R0 0
