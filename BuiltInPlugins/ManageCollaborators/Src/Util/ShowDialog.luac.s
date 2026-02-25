PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["unmount"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K1 ["OnClose"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["unmount"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnButtonPressed"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K1 ["unmount"]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 0
       13 GETTABLEKS                       R2 R1 K2 ["OnClose"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R2 R1 K2 ["OnClose"]
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R5
        1 NEWCLOSURE                       R6 P0
        2 CAPTURE                          REF R5
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R8 1
        5 GETTABLEKS                       R7 R8 K0 ["provide"]
        7 NEWTABLE                         R8 0 3
        9 MOVE                             R9 R1
       10 GETUPVAL                         R10 2
       11 CALL                             R10 0 1
       12 MOVE                             R11 R0
       13 SETLIST                          R8 R9 3 [1]
       15 NEWTABLE                         R9 0 1
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K1 ["createElement"]
       20 MOVE                             R11 R2
       21 GETUPVAL                         R14 3
       22 GETTABLEKS                       R13 R14 K2 ["Dictionary"]
       24 GETTABLEKS                       R12 R13 K3 ["join"]
       26 MOVE                             R13 R3
       27 DUPTABLE                         R14 K6 [{"OnClose", "OnButtonPressed"}]
       28 NEWCLOSURE                       R15 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          REF R5
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R15 R14 K4 ["OnClose"]
       34 NEWCLOSURE                       R15 P2
       35 CAPTURE                          VAL R3
       36 CAPTURE                          REF R5
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R15 R14 K5 ["OnButtonPressed"]
       40 CALL                             R12 2 1
       41 MOVE                             R13 R4
       42 CALL                             R10 3 -1
       43 SETLIST                          R9 R10 -1 [1]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R8 R9 K7 ["mount"]
       49 MOVE                             R9 R7
       50 LOADNIL                          R10
       51 CALL                             R8 2 1
       52 MOVE                             R5 R8
       53 CLOSEUPVALS                      R5
       54 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Resources"]
       29 GETTABLEKS                       R4 R5 K10 ["MakeTheme"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K11 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       41 DUPCLOSURE                       R6 K13 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R6 1
