PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishAttempt"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["shouldPluginRun"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R1 K10 ["RunTests"]
       31 CALL                             R3 0 1
       32 JUMPIF                           R3 ; [+4]
       33 GETTABLEKS                       R3 R1 K11 ["RunningUnderCLI"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K5 [require]
       40 GETTABLEKS                       R4 R0 K12 ["Packages"]
       42 GETTABLEKS                       R4 R4 K13 ["PluginLoader"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R4 R3 K14 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R5 R0 K6 ["Src"]
       49 GETTABLEKS                       R5 R5 K15 ["Resources"]
       51 GETTABLEKS                       R5 R5 K16 ["Localization"]
       53 GETTABLEKS                       R5 R5 K17 ["SourceStrings"]
       55 GETTABLEKS                       R6 R0 K6 ["Src"]
       57 GETTABLEKS                       R6 R6 K15 ["Resources"]
       59 GETTABLEKS                       R6 R6 K16 ["Localization"]
       61 GETTABLEKS                       R6 R6 K18 ["LocalizedStrings"]
       63 GETIMPORT                        R7 K20 [game]
       65 LOADK                            R9 K21 ["StudioPublishService"]
       66 NAMECALL                         R7 R7 K22 ["GetService"]
       68 CALL                             R7 2 1
       69 DUPTABLE                         R8 K34 [{["plugin"], ["pluginName"] = "PublishBlocked", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["extraTriggers"]}]
       70 GETIMPORT                        R9 K35 [plugin]
       72 SETTABLEKS                       R9 R8 K23 ["plugin"]
       74 SETTABLEKS                       R6 R8 K26 ["translationResourceTable"]
       76 SETTABLEKS                       R5 R8 K27 ["fallbackResourceTable"]
       78 NEWTABLE                         R9 1 0
       80 DUPCLOSURE                       R10 K36 [PROTO_0]
       81 CAPTURE                          VAL R7
       82 SETTABLEKS                       R10 R9 K37 ["StudioPublishService.OnPublishAttempt"]
       84 SETTABLEKS                       R9 R8 K33 ["extraTriggers"]
       86 GETTABLEKS                       R9 R4 K38 ["build"]
       88 MOVE                             R10 R8
       89 CALL                             R9 1 1
       90 GETTABLEKS                       R10 R9 K39 ["pluginLoader"]
       92 NAMECALL                         R10 R10 K40 ["waitForUserInteraction"]
       94 CALL                             R10 1 1
       95 JUMPIF                           R10 ; [+1]
       96 RETURN                           R0 0
       97 GETIMPORT                        R11 K5 [require]
       99 GETIMPORT                        R12 K1 [script]
      101 GETTABLEKS                       R12 R12 K41 ["Parent"]
      103 GETTABLEKS                       R12 R12 K42 ["publishMain"]
      105 CALL                             R11 1 1
      106 MOVE                             R12 R11
      107 GETIMPORT                        R13 K35 [plugin]
      109 MOVE                             R14 R9
      110 CALL                             R12 2 0
      111 RETURN                           R0 0
