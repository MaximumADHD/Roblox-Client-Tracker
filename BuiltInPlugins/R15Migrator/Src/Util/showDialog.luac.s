PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["unmount"]
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
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["unmount"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R1 R0 K1 ["OnClose"]
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R4
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          REF R4
        3 CAPTURE                          UPVAL U0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["RunTests"]
        7 CALL                             R6 0 1
        8 GETUPVAL                         R7 2
        9 MOVE                             R8 R6
       10 CALL                             R7 1 1
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K1 ["provide"]
       14 NEWTABLE                         R9 0 3
       16 MOVE                             R10 R1
       17 MOVE                             R11 R7
       18 MOVE                             R12 R0
       19 SETLIST                          R9 R10 3 [1]
       21 NEWTABLE                         R10 0 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R11 R11 K2 ["createElement"]
       26 MOVE                             R12 R2
       27 GETUPVAL                         R13 4
       28 GETTABLEKS                       R13 R13 K3 ["Dictionary"]
       30 GETTABLEKS                       R13 R13 K4 ["join"]
       32 MOVE                             R14 R3
       33 DUPTABLE                         R15 K6 [{"OnClose"}]
       34 NEWCLOSURE                       R16 P1
       35 CAPTURE                          VAL R3
       36 CAPTURE                          REF R4
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R16 R15 K5 ["OnClose"]
       40 CALL                             R13 2 -1
       41 CALL                             R11 -1 -1
       42 SETLIST                          R10 R11 -1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K7 ["mount"]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 1
       50 MOVE                             R4 R9
       51 CLOSEUPVALS                      R4
       52 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Resources"]
       36 GETTABLEKS                       R6 R6 K13 ["MakeTheme"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Util"]
       45 GETTABLEKS                       R7 R7 K15 ["DebugFlags"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R2
       54 RETURN                           R7 1
