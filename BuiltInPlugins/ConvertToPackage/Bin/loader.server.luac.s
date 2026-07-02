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
       58 DUPTABLE                         R7 K31 [{["plugin"], ["pluginName"] = "ConvertToPackage", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["noToolbar"] = True, ["extraTriggers"]}]
       59 GETIMPORT                        R8 K32 [plugin]
       61 SETTABLEKS                       R8 R7 K21 ["plugin"]
       63 SETTABLEKS                       R5 R7 K24 ["translationResourceTable"]
       65 SETTABLEKS                       R4 R7 K25 ["fallbackResourceTable"]
       67 NEWTABLE                         R8 1 0
       69 DUPCLOSURE                       R10 K33 [PROTO_0]
       70 CAPTURE                          VAL R6
       71 ORK                              R9 R10 K16 []
       72 SETTABLEKS                       R9 R8 K34 ["PackageUIService.OnOpenConvertToPackagePlugin"]
       74 SETTABLEKS                       R8 R7 K30 ["extraTriggers"]
       76 GETTABLEKS                       R8 R3 K35 ["build"]
       78 MOVE                             R9 R7
       79 CALL                             R8 1 1
       80 GETTABLEKS                       R9 R8 K36 ["pluginLoader"]
       82 NAMECALL                         R9 R9 K37 ["waitForUserInteraction"]
       84 CALL                             R9 1 1
       85 JUMPIF                           R9 ; [+1]
       86 RETURN                           R0 0
       87 GETIMPORT                        R10 K1 [require]
       89 GETIMPORT                        R11 K3 [script]
       91 GETTABLEKS                       R11 R11 K4 ["Parent"]
       93 GETTABLEKS                       R11 R11 K38 ["main"]
       95 CALL                             R10 1 1
       96 MOVE                             R11 R10
       97 GETIMPORT                        R12 K32 [plugin]
       99 MOVE                             R13 R8
      100 CALL                             R11 2 0
      101 RETURN                           R0 0
