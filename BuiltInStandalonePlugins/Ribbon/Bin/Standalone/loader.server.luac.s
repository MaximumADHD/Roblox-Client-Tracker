PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 RETURN                           R0 1

PROTO_1:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K5 [require]
       18 GETTABLEKS                       R2 R0 K9 ["Packages"]
       20 GETTABLEKS                       R2 R2 K10 ["TestLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K11 ["launch"]
       25 LOADK                            R3 K2 ["Ribbon"]
       26 GETTABLEKS                       R4 R0 K12 ["Src"]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R1 K13 ["isCli"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R2 K15 [plugin]
       36 GETTABLEKS                       R3 R0 K16 ["Name"]
       38 SETTABLEKS                       R3 R2 K16 ["Name"]
       40 GETIMPORT                        R2 K5 [require]
       42 GETTABLEKS                       R3 R0 K9 ["Packages"]
       44 GETTABLEKS                       R3 R3 K17 ["PluginLoader"]
       46 CALL                             R2 1 1
       47 GETTABLEKS                       R3 R2 K18 ["PluginLoaderBuilder"]
       49 GETTABLEKS                       R4 R0 K12 ["Src"]
       51 GETTABLEKS                       R4 R4 K19 ["Resources"]
       53 GETTABLEKS                       R4 R4 K20 ["Localization"]
       55 GETTABLEKS                       R4 R4 K21 ["SourceStrings"]
       57 GETTABLEKS                       R5 R0 K12 ["Src"]
       59 GETTABLEKS                       R5 R5 K19 ["Resources"]
       61 GETTABLEKS                       R5 R5 K20 ["Localization"]
       63 GETTABLEKS                       R5 R5 K22 ["LocalizedStrings"]
       65 GETIMPORT                        R6 K15 [plugin]
       67 GETTABLEKS                       R6 R6 K23 ["MultipleDocumentInterfaceInstance"]
       69 DUPTABLE                         R7 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "extraTriggers", "shouldImmediatelyOpen"}]
       70 GETIMPORT                        R8 K15 [plugin]
       72 SETTABLEKS                       R8 R7 K14 ["plugin"]
       74 LOADK                            R8 K2 ["Ribbon"]
       75 SETTABLEKS                       R8 R7 K24 ["pluginName"]
       77 SETTABLEKS                       R5 R7 K25 ["translationResourceTable"]
       79 SETTABLEKS                       R4 R7 K26 ["fallbackResourceTable"]
       81 LOADB                            R8 1
       82 SETTABLEKS                       R8 R7 K27 ["noToolbar"]
       84 DUPTABLE                         R8 K32 [{"SessionStarted"}]
       85 DUPCLOSURE                       R9 K33 [PROTO_0]
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R9 R8 K31 ["SessionStarted"]
       89 SETTABLEKS                       R8 R7 K28 ["extraTriggers"]
       91 DUPCLOSURE                       R8 K34 [PROTO_1]
       92 SETTABLEKS                       R8 R7 K29 ["shouldImmediatelyOpen"]
       94 GETTABLEKS                       R8 R3 K35 ["build"]
       96 MOVE                             R9 R7
       97 CALL                             R8 1 1
       98 GETTABLEKS                       R9 R8 K36 ["pluginLoader"]
      100 NAMECALL                         R9 R9 K37 ["waitForUserInteraction"]
      102 CALL                             R9 1 1
      103 JUMPIF                           R9 ; [+1]
      104 RETURN                           R0 0
      105 GETIMPORT                        R10 K5 [require]
      107 GETIMPORT                        R11 K1 [script]
      109 GETTABLEKS                       R11 R11 K38 ["Parent"]
      111 GETTABLEKS                       R11 R11 K39 ["main"]
      113 CALL                             R10 1 1
      114 MOVE                             R11 R10
      115 GETIMPORT                        R12 K15 [plugin]
      117 CALL                             R11 1 0
      118 RETURN                           R0 0
