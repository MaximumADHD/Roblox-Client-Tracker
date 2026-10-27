PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["FilterInstances"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R0 R0 K3 ["OnInvoke"]
        7 CALL                             R0 3 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["filterInstances"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 0
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["createElement"]
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K4 [{"filterInstances"}]
       19 SETTABLEKS                       R1 R5 K1 ["filterInstances"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K1 [{"OverlayProvider"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 DUPTABLE                         R7 K4 [{"Container"}]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K2 ["createElement"]
       16 GETUPVAL                         R9 3
       17 DUPTABLE                         R10 K6 [{"tag"}]
       18 GETTABLEKS                       R12 R1 K5 ["tag"]
       20 ORK                              R11 R12 K7 ["size-full-full col"]
       21 SETTABLEKS                       R11 R10 K5 ["tag"]
       23 DUPTABLE                         R11 K9 [{"App"}]
       24 GETTABLEKS                       R13 R1 K10 ["filterInstances"]
       26 JUMPIFNOT                        R13 ; [+11]
       27 GETUPVAL                         R12 1
       28 GETTABLEKS                       R12 R12 K2 ["createElement"]
       30 GETUPVAL                         R13 4
       31 DUPTABLE                         R14 K11 [{"filterInstances"}]
       32 GETTABLEKS                       R15 R1 K10 ["filterInstances"]
       34 SETTABLEKS                       R15 R14 K10 ["filterInstances"]
       36 CALL                             R12 2 1
       37 JUMP                             ; [+5]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R12 R12 K2 ["createElement"]
       41 GETUPVAL                         R13 5
       42 CALL                             R12 1 1
       43 SETTABLEKS                       R12 R11 K8 ["App"]
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K3 ["Container"]
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K0 ["OverlayProvider"]
       51 CALL                             R2 1 -1
       52 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Test"]
       36 GETTABLEKS                       R5 R5 K13 ["Mock"]
       38 GETTABLEKS                       R5 R5 K14 ["mockContext"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Host"]
       47 GETTABLEKS                       R6 R6 K16 ["App"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K11 ["Util"]
       56 GETTABLEKS                       R7 R7 K12 ["Test"]
       58 GETTABLEKS                       R7 R7 K17 ["Setup"]
       60 GETTABLEKS                       R7 R7 K18 ["SelfContainedOverlayProvider"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K19 ["View"]
       65 DUPCLOSURE                       R8 K20 [PROTO_3]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 DUPCLOSURE                       R9 K21 [PROTO_4]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R5
       75 RETURN                           R9 1
