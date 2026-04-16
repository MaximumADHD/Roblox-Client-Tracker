PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["plugin"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["stringResourceTable"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["translationResourceTable"]
       10 LOADK                            R2 K5 ["DialogPlugin"]
       11 SETTABLEKS                       R2 R1 K3 ["pluginName"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["plugin"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       17 DUPCLOSURE                       R3 K2 [PROTO_1]
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 NEWTABLE                         R4 0 0
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 6
       25 DUPTABLE                         R4 K6 [{"Design", "Localization", "Plugin"}]
       26 GETUPVAL                         R6 7
       27 GETTABLEKS                       R5 R6 K7 ["new"]
       29 MOVE                             R6 R1
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R5 R4 K3 ["Design"]
       33 SETTABLEKS                       R2 R4 K4 ["Localization"]
       35 GETUPVAL                         R6 8
       36 GETTABLEKS                       R5 R6 K7 ["new"]
       38 GETTABLEKS                       R6 R0 K1 ["plugin"]
       40 CALL                             R5 1 1
       41 SETTABLEKS                       R5 R4 K5 ["Plugin"]
       43 DUPTABLE                         R5 K9 [{"DialogSessionManager"}]
       44 GETUPVAL                         R6 9
       45 GETUPVAL                         R7 10
       46 CALL                             R6 1 1
       47 SETTABLEKS                       R6 R5 K8 ["DialogSessionManager"]
       49 CALL                             R3 2 -1
       50 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["DialogSessionManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R7 R0 K6 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Resources"]
       34 GETTABLEKS                       R5 R6 K13 ["Localization"]
       36 GETTABLEKS                       R4 R5 K14 ["LocalizedStrings"]
       38 GETTABLEKS                       R8 R0 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K12 ["Resources"]
       42 GETTABLEKS                       R6 R7 K13 ["Localization"]
       44 GETTABLEKS                       R5 R6 K15 ["SourceStrings"]
       46 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       48 GETTABLEKS                       R6 R7 K17 ["Design"]
       50 GETTABLEKS                       R8 R2 K16 ["ContextServices"]
       52 GETTABLEKS                       R7 R8 K13 ["Localization"]
       54 GETTABLEKS                       R9 R2 K16 ["ContextServices"]
       56 GETTABLEKS                       R8 R9 K18 ["Plugin"]
       58 GETTABLEKS                       R9 R3 K19 ["createElement"]
       60 GETTABLEKS                       R11 R2 K16 ["ContextServices"]
       62 GETTABLEKS                       R10 R11 K20 ["provide"]
       64 GETTABLEKS                       R12 R2 K21 ["Styling"]
       66 GETTABLEKS                       R11 R12 K22 ["registerPluginStyles"]
       68 DUPCLOSURE                       R12 K23 [PROTO_2]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 GETTABLEKS                       R13 R3 K24 ["memo"]
       82 MOVE                             R14 R12
       83 CALL                             R13 1 -1
       84 RETURN                           R13 -1
