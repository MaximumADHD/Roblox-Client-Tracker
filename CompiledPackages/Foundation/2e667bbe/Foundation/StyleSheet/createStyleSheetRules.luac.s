PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["properties"]
        2 LOADK                            R5 K1 ["."]
        3 MOVE                             R6 R2
        4 CONCAT                           R4 R5 R6
        5 GETTABLEKS                       R6 R1 K2 ["modifier"]
        7 JUMPIFEQKNIL                     R6 ; [+6]
        9 LOADK                            R6 K3 [":"]
       10 GETTABLEKS                       R7 R1 K2 ["modifier"]
       12 CONCAT                           R5 R6 R7
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K4 [""]
       15 GETTABLEKS                       R7 R1 K5 ["pseudo"]
       17 JUMPIFEQKNIL                     R7 ; [+6]
       19 LOADK                            R7 K6 [" ::"]
       20 GETTABLEKS                       R8 R1 K5 ["pseudo"]
       22 CONCAT                           R6 R7 R8
       23 JUMP                             ; [+1]
       24 LOADK                            R6 K4 [""]
       25 MOVE                             R8 R4
       26 MOVE                             R9 R5
       27 MOVE                             R10 R6
       28 CONCAT                           R7 R8 R10
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R8 R9 K7 ["FoundationPseudoChildSelectors"]
       32 JUMPIFNOT                        R8 ; [+12]
       33 GETTABLEKS                       R8 R1 K5 ["pseudo"]
       35 JUMPIFEQKNIL                     R8 ; [+9]
       37 MOVE                             R8 R7
       38 LOADK                            R9 K8 [", "]
       39 MOVE                             R10 R4
       40 MOVE                             R11 R5
       41 LOADK                            R12 K9 [" > "]
       42 GETTABLEKS                       R13 R1 K5 ["pseudo"]
       44 CONCAT                           R7 R8 R13
       45 MOVE                             R9 R0
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R10 R11 K10 ["createElement"]
       49 GETUPVAL                         R11 2
       50 DUPTABLE                         R12 K14 [{"key", "Priority", "Selector", "properties"}]
       51 SETTABLEKS                       R7 R12 K11 ["key"]
       53 GETTABLEKS                       R13 R1 K15 ["priority"]
       55 SETTABLEKS                       R13 R12 K12 ["Priority"]
       57 SETTABLEKS                       R7 R12 K13 ["Selector"]
       59 SETTABLEKS                       R3 R12 K0 ["properties"]
       61 CALL                             R10 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R8 K18 [table.insert]
       65 CALL                             R8 -1 0
       66 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R1 R4
        5 ORK                              R3 R3 K0 [1]
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R10 R8 K1 ["name"]
       12 GETTABLE                         R9 R2 R10
       13 JUMPIFEQ                         R9 R3 ; [+15]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R10 R8 K2 ["value"]
       18 MOVE                             R11 R3
       19 CALL                             R9 2 1
       20 GETTABLEKS                       R12 R8 K1 ["name"]
       22 MOVE                             R13 R9
       23 NAMECALL                         R10 R0 K3 ["SetAttribute"]
       25 CALL                             R10 3 0
       26 GETTABLEKS                       R10 R8 K1 ["name"]
       28 SETTABLE                         R3 R2 R10
       29 FORGLOOP                         R4 2 ; [-20]
       31 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R5 0 0
        2 MOVE                             R6 R1
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 GETTABLE                         R11 R0 R9
        7 JUMPIFEQKNIL                     R11 ; [+40]
        9 JUMPIFNOT                        R2 ; [+8]
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETUPVAL                         R12 0
       12 MOVE                             R13 R2
       13 GETTABLEKS                       R14 R11 K0 ["attributes"]
       15 MOVE                             R15 R3
       16 MOVE                             R16 R4
       17 CALL                             R12 4 0
       18 GETUPVAL                         R12 1
       19 MOVE                             R13 R5
       20 MOVE                             R14 R11
       21 MOVE                             R15 R9
       22 CALL                             R12 3 0
       23 GETTABLEKS                       R12 R11 K1 ["children"]
       25 JUMPIFNOT                        R12 ; [+22]
       26 GETTABLEKS                       R12 R11 K1 ["children"]
       28 LOADNIL                          R13
       29 LOADNIL                          R14
       30 FORGPREP                         R12
       31 JUMPIFNOT                        R2 ; [+8]
       32 JUMPIFNOT                        R3 ; [+7]
       33 GETUPVAL                         R17 0
       34 MOVE                             R18 R2
       35 GETTABLEKS                       R19 R16 K0 ["attributes"]
       37 MOVE                             R20 R3
       38 MOVE                             R21 R4
       39 CALL                             R17 4 0
       40 GETUPVAL                         R17 1
       41 MOVE                             R18 R5
       42 MOVE                             R19 R16
       43 GETTABLEKS                       R20 R16 K2 ["tag"]
       45 CALL                             R17 3 0
       46 FORGLOOP                         R12 2 ; [-16]
       48 FORGLOOP                         R6 2 ; [-43]
       50 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K8 ["StyleRule"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R7 R0 K9 ["Rules"]
       27 GETTABLEKS                       R6 R7 K10 ["Types"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R1 K11 ["Utility"]
       34 GETTABLEKS                       R7 R8 K12 ["scaleValue"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R1 K13 ["Enums"]
       41 GETTABLEKS                       R8 R9 K14 ["Theme"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R1 K13 ["Enums"]
       48 GETTABLEKS                       R9 R10 K15 ["Device"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R11 R1 K11 ["Utility"]
       55 GETTABLEKS                       R10 R11 K16 ["Flags"]
       57 CALL                             R9 1 1
       58 DUPCLOSURE                       R10 K17 [PROTO_0]
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 DUPCLOSURE                       R11 K18 [PROTO_1]
       63 CAPTURE                          VAL R6
       64 DUPCLOSURE                       R12 K19 [PROTO_2]
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R10
       67 RETURN                           R12 1
