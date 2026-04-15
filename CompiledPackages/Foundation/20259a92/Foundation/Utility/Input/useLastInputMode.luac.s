PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetLastInputType"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R3 R4 K1 ["LastInputTypeChanged"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U1
       12 CALL                             R2 2 0
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [game]
       11 LOADK                            R4 K7 ["UserInputService"]
       12 NAMECALL                         R2 R2 K8 ["GetService"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R1 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["ReactUtils"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K13 ["useEventConnection"]
       27 GETIMPORT                        R6 K10 [require]
       29 GETTABLEKS                       R9 R0 K14 ["Utility"]
       31 GETTABLEKS                       R8 R9 K15 ["Input"]
       33 GETTABLEKS                       R7 R8 K16 ["InputMode"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K10 [require]
       38 GETTABLEKS                       R10 R0 K14 ["Utility"]
       40 GETTABLEKS                       R9 R10 K15 ["Input"]
       42 GETTABLEKS                       R8 R9 K17 ["getInputMode"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K18 [PROTO_0]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R2
       48 DUPCLOSURE                       R9 K19 [PROTO_2]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 RETURN                           R9 1
