PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Store"]
        3 GETTABLEKS                       R2 R3 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 LOADNIL                          R4
        7 NEWTABLE                         R5 0 1
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K2 ["thunkMiddleware"]
       12 SETLIST                          R5 R6 1 [1]
       14 LOADNIL                          R6
       15 CALL                             R2 4 1
       16 SETTABLEKS                       R2 R0 K3 ["store"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K4 ["Localization"]
       21 GETTABLEKS                       R2 R3 K1 ["new"]
       23 DUPTABLE                         R3 K8 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       24 GETUPVAL                         R4 3
       25 SETTABLEKS                       R4 R3 K5 ["stringResourceTable"]
       27 GETUPVAL                         R4 4
       28 SETTABLEKS                       R4 R3 K6 ["translationResourceTable"]
       30 LOADK                            R4 K9 ["DynamicHeadExportTool"]
       31 SETTABLEKS                       R4 R3 K7 ["pluginName"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R0 K10 ["localization"]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R3 R4 K11 ["Analytics"]
       39 GETTABLEKS                       R2 R3 K1 ["new"]
       41 DUPCLOSURE                       R3 K12 [PROTO_0]
       42 NEWTABLE                         R4 0 0
       44 CALL                             R2 2 1
       45 SETTABLEKS                       R2 R0 K13 ["analytics"]
       47 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["provide"]
        7 NEWTABLE                         R4 0 6
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K3 ["new"]
       12 MOVE                             R6 R2
       13 CALL                             R5 1 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R6 R7 K3 ["new"]
       17 GETTABLEKS                       R7 R0 K4 ["store"]
       19 CALL                             R6 1 1
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R7 R8 K3 ["new"]
       23 NAMECALL                         R8 R2 K5 ["getMouse"]
       25 CALL                             R8 1 -1
       26 CALL                             R7 -1 1
       27 GETUPVAL                         R8 4
       28 CALL                             R8 0 1
       29 GETTABLEKS                       R9 R0 K6 ["localization"]
       31 GETTABLEKS                       R10 R0 K7 ["analytics"]
       33 SETLIST                          R4 R5 6 [1]
       35 DUPTABLE                         R5 K9 [{"MainPlugin"}]
       36 GETUPVAL                         R7 5
       37 GETTABLEKS                       R6 R7 K10 ["createElement"]
       39 GETUPVAL                         R7 6
       40 CALL                             R6 1 1
       41 SETTABLEKS                       R6 R5 K8 ["MainPlugin"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Plugin"]
       32 GETTABLEKS                       R6 R4 K12 ["Mouse"]
       34 GETTABLEKS                       R7 R4 K13 ["Store"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R11 R0 K14 ["Src"]
       40 GETTABLEKS                       R10 R11 K15 ["Reducers"]
       42 GETTABLEKS                       R9 R10 K16 ["MainReducer"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R12 R0 K14 ["Src"]
       49 GETTABLEKS                       R11 R12 K17 ["Resources"]
       51 GETTABLEKS                       R10 R11 K18 ["MakeTheme"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R13 R0 K14 ["Src"]
       56 GETTABLEKS                       R12 R13 K17 ["Resources"]
       58 GETTABLEKS                       R11 R12 K19 ["Localization"]
       60 GETTABLEKS                       R10 R11 K20 ["SourceStrings"]
       62 GETTABLEKS                       R14 R0 K14 ["Src"]
       64 GETTABLEKS                       R13 R14 K17 ["Resources"]
       66 GETTABLEKS                       R12 R13 K19 ["Localization"]
       68 GETTABLEKS                       R11 R12 K21 ["LocalizedStrings"]
       70 GETIMPORT                        R12 K5 [require]
       72 GETTABLEKS                       R14 R0 K14 ["Src"]
       74 GETTABLEKS                       R13 R14 K22 ["MainPlugin"]
       76 CALL                             R12 1 1
       77 GETTABLEKS                       R13 R1 K23 ["PureComponent"]
       79 LOADK                            R15 K24 ["PluginWrapper"]
       80 NAMECALL                         R13 R13 K25 ["extend"]
       82 CALL                             R13 2 1
       83 DUPCLOSURE                       R14 K26 [PROTO_1]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R11
       89 SETTABLEKS                       R14 R13 K27 ["init"]
       91 DUPCLOSURE                       R14 K28 [PROTO_2]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R14 R13 K29 ["render"]
      101 RETURN                           R13 1
