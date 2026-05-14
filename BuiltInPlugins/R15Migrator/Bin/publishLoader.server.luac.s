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
       69 DUPTABLE                         R8 K31 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
       70 GETIMPORT                        R9 K32 [plugin]
       72 SETTABLEKS                       R9 R8 K23 ["plugin"]
       74 LOADK                            R9 K33 ["PublishBlocked"]
       75 SETTABLEKS                       R9 R8 K24 ["pluginName"]
       77 SETTABLEKS                       R6 R8 K25 ["translationResourceTable"]
       79 SETTABLEKS                       R5 R8 K26 ["fallbackResourceTable"]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R8 K27 ["overrideLocaleId"]
       84 LOADNIL                          R9
       85 SETTABLEKS                       R9 R8 K28 ["localizationNamespace"]
       87 LOADB                            R9 1
       88 SETTABLEKS                       R9 R8 K29 ["noToolbar"]
       90 NEWTABLE                         R9 1 0
       92 DUPCLOSURE                       R10 K34 [PROTO_0]
       93 CAPTURE                          VAL R7
       94 SETTABLEKS                       R10 R9 K35 ["StudioPublishService.OnPublishAttempt"]
       96 SETTABLEKS                       R9 R8 K30 ["extraTriggers"]
       98 GETTABLEKS                       R9 R4 K36 ["build"]
      100 MOVE                             R10 R8
      101 CALL                             R9 1 1
      102 GETTABLEKS                       R10 R9 K37 ["pluginLoader"]
      104 NAMECALL                         R10 R10 K38 ["waitForUserInteraction"]
      106 CALL                             R10 1 1
      107 JUMPIF                           R10 ; [+1]
      108 RETURN                           R0 0
      109 GETIMPORT                        R11 K5 [require]
      111 GETIMPORT                        R12 K1 [script]
      113 GETTABLEKS                       R12 R12 K39 ["Parent"]
      115 GETTABLEKS                       R12 R12 K40 ["publishMain"]
      117 CALL                             R11 1 1
      118 MOVE                             R12 R11
      119 GETIMPORT                        R13 K32 [plugin]
      121 MOVE                             R14 R9
      122 CALL                             R12 2 0
      123 RETURN                           R0 0
