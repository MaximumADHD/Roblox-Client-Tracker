PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["size"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["omit"]
        7 MOVE                             R4 R2
        8 NEWTABLE                         R5 0 1
       10 LOADK                            R6 K1 ["size"]
       11 SETLIST                          R5 R6 1 [1]
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R6 0 1
       22 GETTABLEKS                       R7 R2 K1 ["size"]
       24 SETLIST                          R6 R7 1 [1]
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K3 ["createElement"]
       30 GETUPVAL                         R6 5
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R7 R7 K4 ["assign"]
       34 MOVE                             R8 R3
       35 DUPTABLE                         R9 K7 [{"tag", "ref"}]
       36 GETIMPORT                        R10 K10 [table.concat]
       38 NEWTABLE                         R11 0 2
       40 MOVE                             R12 R4
       41 GETTABLEKS                       R13 R2 K5 ["tag"]
       43 SETLIST                          R11 R12 2 [1]
       45 LOADK                            R12 K11 [" "]
       46 CALL                             R10 2 1
       47 SETTABLEKS                       R10 R9 K5 ["tag"]
       49 SETTABLEKS                       R1 R9 K6 ["ref"]
       51 CALL                             R7 2 1
       52 GETTABLEKS                       R8 R2 K12 ["children"]
       54 CALL                             R5 3 -1
       55 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["withDefaults"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["getGridSizeTag"]
       46 CALL                             R7 1 1
       47 DUPTABLE                         R8 K19 [{["size"] = 1, ["testId"] = "--foundation-grid--cell"}]
       48 DUPCLOSURE                       R9 K20 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 GETTABLEKS                       R10 R2 K21 ["memo"]
       57 GETTABLEKS                       R11 R2 K22 ["forwardRef"]
       59 MOVE                             R12 R9
       60 CALL                             R11 1 -1
       61 CALL                             R10 -1 -1
       62 RETURN                           R10 -1
