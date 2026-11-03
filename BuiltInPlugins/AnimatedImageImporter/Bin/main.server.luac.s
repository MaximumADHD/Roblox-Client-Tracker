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
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R2 K8 [game]
       15 LOADK                            R4 K9 ["EnableAnimationPlayer"]
       16 NAMECALL                         R2 R2 K10 ["GetEngineFeature"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K8 [game]
       23 LOADK                            R4 K11 ["AnimatedImageImporter_Dev"]
       24 LOADB                            R5 0
       25 NAMECALL                         R2 R2 K12 ["DefineFastFlag"]
       27 CALL                             R2 3 1
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K8 [game]
       32 LOADK                            R4 K13 ["AssetImportServicePickAnimatedImageFileWithPrompt"]
       33 NAMECALL                         R2 R2 K10 ["GetEngineFeature"]
       35 CALL                             R2 2 1
       36 JUMPIF                           R2 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R2 K15 [require]
       40 GETTABLEKS                       R3 R0 K16 ["Packages"]
       42 GETTABLEKS                       R3 R3 K17 ["PluginLoader"]
       44 CALL                             R2 1 1
       45 GETTABLEKS                       R3 R2 K18 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R3 R3 K19 ["build"]
       49 DUPTABLE                         R4 K27 [{["plugin"], ["pluginName"] = "AnimatedImageImporter", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       50 GETIMPORT                        R5 K28 [plugin]
       52 SETTABLEKS                       R5 R4 K20 ["plugin"]
       54 GETTABLEKS                       R5 R0 K29 ["Src"]
       56 GETTABLEKS                       R5 R5 K30 ["Resources"]
       58 GETTABLEKS                       R5 R5 K31 ["Localization"]
       60 GETTABLEKS                       R5 R5 K32 ["LocalizedStrings"]
       62 SETTABLEKS                       R5 R4 K22 ["translationResourceTable"]
       64 GETTABLEKS                       R5 R0 K29 ["Src"]
       66 GETTABLEKS                       R5 R5 K30 ["Resources"]
       68 GETTABLEKS                       R5 R5 K31 ["Localization"]
       70 GETTABLEKS                       R5 R5 K33 ["SourceStrings"]
       72 SETTABLEKS                       R5 R4 K23 ["fallbackResourceTable"]
       74 NEWTABLE                         R5 0 1
       76 DUPTABLE                         R6 K41 [{["uri"], ["isPreexistingAction"] = False, ["getText"], ["getTooltip"], ["enabled"] = True, ["visible"] = True}]
       77 DUPTABLE                         R7 K49 [{["DataModel"] = "Standalone", ["PluginId"] = "AnimatedImageImporter", ["Category"] = "Actions", ["ItemId"] = "Import"}]
       78 SETTABLEKS                       R7 R6 K34 ["uri"]
       80 DUPCLOSURE                       R7 K50 [PROTO_1]
       81 SETTABLEKS                       R7 R6 K37 ["getText"]
       83 DUPCLOSURE                       R7 K51 [PROTO_2]
       84 SETTABLEKS                       R7 R6 K38 ["getTooltip"]
       86 SETLIST                          R5 R6 1 [1]
       88 SETTABLEKS                       R5 R4 K26 ["actionInfos"]
       90 CALL                             R3 1 1
       91 GETTABLEKS                       R4 R3 K52 ["pluginLoader"]
       93 NAMECALL                         R4 R4 K53 ["waitForUserInteraction"]
       95 CALL                             R4 1 1
       96 JUMPIF                           R4 ; [+1]
       97 RETURN                           R0 0
       98 GETIMPORT                        R4 K15 [require]
      100 GETTABLEKS                       R5 R0 K54 ["Bin"]
      102 GETTABLEKS                       R5 R5 K55 ["createStartImportAsync"]
      104 CALL                             R4 1 1
      105 GETTABLEKS                       R6 R3 K56 ["actionTriggeredSignals"]
      107 GETTABLEN                        R5 R6 1
      108 MOVE                             R7 R4
      109 CALL                             R7 0 -1
      110 NAMECALL                         R5 R5 K57 ["Connect"]
      112 CALL                             R5 -1 0
      113 RETURN                           R0 0
