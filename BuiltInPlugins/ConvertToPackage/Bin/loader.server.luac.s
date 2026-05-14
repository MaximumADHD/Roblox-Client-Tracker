PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnOpenConvertToPackagePlugin"]
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
       25 GETTABLEKS                       R2 R1 K9 ["runningUnderCli"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+1]
       29 RETURN                           R0 0
       30 GETIMPORT                        R2 K1 [require]
       32 GETTABLEKS                       R3 R0 K10 ["Packages"]
       34 GETTABLEKS                       R3 R3 K11 ["PluginLoader"]
       36 CALL                             R2 1 1
       37 GETTABLEKS                       R3 R2 K12 ["PluginLoaderBuilder"]
       39 GETTABLEKS                       R4 R0 K6 ["Src"]
       41 GETTABLEKS                       R4 R4 K13 ["Resources"]
       43 GETTABLEKS                       R4 R4 K14 ["SourceStrings"]
       45 GETTABLEKS                       R5 R0 K6 ["Src"]
       47 GETTABLEKS                       R5 R5 K13 ["Resources"]
       49 GETTABLEKS                       R5 R5 K15 ["LocalizedStrings"]
       51 GETIMPORT                        R7 K18 [game]
       53 LOADK                            R9 K19 ["PackageUIService"]
       54 NAMECALL                         R7 R7 K20 ["GetService"]
       56 CALL                             R7 2 1
       57 ORK                              R6 R7 K16 []
       58 DUPTABLE                         R7 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "noToolbar", "extraTriggers"}]
       59 GETIMPORT                        R8 K30 [plugin]
       61 SETTABLEKS                       R8 R7 K21 ["plugin"]
       63 LOADK                            R8 K31 ["ConvertToPackage"]
       64 SETTABLEKS                       R8 R7 K22 ["pluginName"]
       66 SETTABLEKS                       R5 R7 K23 ["translationResourceTable"]
       68 SETTABLEKS                       R4 R7 K24 ["fallbackResourceTable"]
       70 LOADNIL                          R8
       71 SETTABLEKS                       R8 R7 K25 ["overrideLocaleId"]
       73 LOADNIL                          R8
       74 SETTABLEKS                       R8 R7 K26 ["localizationNamespace"]
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K27 ["noToolbar"]
       79 NEWTABLE                         R8 1 0
       81 DUPCLOSURE                       R10 K32 [PROTO_0]
       82 CAPTURE                          VAL R6
       83 ORK                              R9 R10 K16 []
       84 SETTABLEKS                       R9 R8 K33 ["PackageUIService.OnOpenConvertToPackagePlugin"]
       86 SETTABLEKS                       R8 R7 K28 ["extraTriggers"]
       88 GETTABLEKS                       R8 R3 K34 ["build"]
       90 MOVE                             R9 R7
       91 CALL                             R8 1 1
       92 GETTABLEKS                       R9 R8 K35 ["pluginLoader"]
       94 NAMECALL                         R9 R9 K36 ["waitForUserInteraction"]
       96 CALL                             R9 1 1
       97 JUMPIF                           R9 ; [+1]
       98 RETURN                           R0 0
       99 GETIMPORT                        R10 K1 [require]
      101 GETIMPORT                        R11 K3 [script]
      103 GETTABLEKS                       R11 R11 K4 ["Parent"]
      105 GETTABLEKS                       R11 R11 K37 ["main"]
      107 CALL                             R10 1 1
      108 MOVE                             R11 R10
      109 GETIMPORT                        R12 K30 [plugin]
      111 MOVE                             R13 R8
      112 CALL                             R11 2 0
      113 RETURN                           R0 0
