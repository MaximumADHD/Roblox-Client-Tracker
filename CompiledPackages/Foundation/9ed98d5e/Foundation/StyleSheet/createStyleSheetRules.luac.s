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
       29 GETTABLEKS                       R8 R1 K5 ["pseudo"]
       31 JUMPIFEQKNIL                     R8 ; [+9]
       33 MOVE                             R8 R7
       34 LOADK                            R9 K7 [", "]
       35 MOVE                             R10 R4
       36 MOVE                             R11 R5
       37 LOADK                            R12 K8 [" > "]
       38 GETTABLEKS                       R13 R1 K5 ["pseudo"]
       40 CONCAT                           R7 R8 R13
       41 MOVE                             R9 R0
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R10 R11 K9 ["createElement"]
       45 GETUPVAL                         R11 1
       46 DUPTABLE                         R12 K13 [{"key", "Priority", "Selector", "properties"}]
       47 SETTABLEKS                       R7 R12 K10 ["key"]
       49 GETTABLEKS                       R13 R1 K14 ["priority"]
       51 SETTABLEKS                       R13 R12 K11 ["Priority"]
       53 SETTABLEKS                       R7 R12 K12 ["Selector"]
       55 SETTABLEKS                       R3 R12 K0 ["properties"]
       57 CALL                             R10 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R8 K17 [table.insert]
       61 CALL                             R8 -1 0
       62 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R5 R1
        1 JUMPIF                           R5 ; [+2]
        2 NEWTABLE                         R5 0 0
        4 MOVE                             R1 R5
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["FoundationDisableTokenScaling"]
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADN                            R3 1
       10 JUMP                             ; [+1]
       11 ORK                              R3 R3 K1 [1]
       12 MOVE                             R5 R1
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K2 ["FoundationUseAttributeTokens"]
       19 JUMPIFNOT                        R10 ; [+31]
       20 JUMPIFNOT                        R4 ; [+4]
       21 GETTABLEKS                       R11 R9 K3 ["name"]
       23 GETTABLE                         R10 R4 R11
       24 JUMP                             ; [+1]
       25 LOADNIL                          R10
       26 JUMPIFEQKNIL                     R10 ; [+3]
       28 MOVE                             R11 R10
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R11 R9 K4 ["value"]
       32 GETUPVAL                         R12 1
       33 MOVE                             R13 R11
       34 MOVE                             R14 R3
       35 CALL                             R12 2 1
       36 GETTABLEKS                       R14 R9 K3 ["name"]
       38 GETTABLE                         R13 R2 R14
       39 JUMPIFEQ                         R13 R12 ; [+30]
       41 GETTABLEKS                       R15 R9 K3 ["name"]
       43 MOVE                             R16 R12
       44 NAMECALL                         R13 R0 K5 ["SetAttribute"]
       46 CALL                             R13 3 0
       47 GETTABLEKS                       R13 R9 K3 ["name"]
       49 SETTABLE                         R12 R2 R13
       50 JUMP                             ; [+19]
       51 GETTABLEKS                       R11 R9 K3 ["name"]
       53 GETTABLE                         R10 R2 R11
       54 JUMPIFEQ                         R10 R3 ; [+15]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R11 R9 K4 ["value"]
       59 MOVE                             R12 R3
       60 CALL                             R10 2 1
       61 GETTABLEKS                       R13 R9 K3 ["name"]
       63 MOVE                             R14 R10
       64 NAMECALL                         R11 R0 K5 ["SetAttribute"]
       66 CALL                             R11 3 0
       67 GETTABLEKS                       R11 R9 K3 ["name"]
       69 SETTABLE                         R3 R2 R11
       70 FORGLOOP                         R5 2 ; [-55]
       72 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R6 0 0
        2 MOVE                             R7 R1
        3 LOADNIL                          R8
        4 LOADNIL                          R9
        5 FORGPREP                         R7
        6 GETTABLE                         R12 R0 R10
        7 JUMPIFEQKNIL                     R12 ; [+42]
        9 JUMPIFNOT                        R2 ; [+9]
       10 JUMPIFNOT                        R3 ; [+8]
       11 GETUPVAL                         R13 0
       12 MOVE                             R14 R2
       13 GETTABLEKS                       R15 R12 K0 ["attributes"]
       15 MOVE                             R16 R3
       16 MOVE                             R17 R4
       17 MOVE                             R18 R5
       18 CALL                             R13 5 0
       19 GETUPVAL                         R13 1
       20 MOVE                             R14 R6
       21 MOVE                             R15 R12
       22 MOVE                             R16 R10
       23 CALL                             R13 3 0
       24 GETTABLEKS                       R13 R12 K1 ["children"]
       26 JUMPIFNOT                        R13 ; [+23]
       27 GETTABLEKS                       R13 R12 K1 ["children"]
       29 LOADNIL                          R14
       30 LOADNIL                          R15
       31 FORGPREP                         R13
       32 JUMPIFNOT                        R2 ; [+9]
       33 JUMPIFNOT                        R3 ; [+8]
       34 GETUPVAL                         R18 0
       35 MOVE                             R19 R2
       36 GETTABLEKS                       R20 R17 K0 ["attributes"]
       38 MOVE                             R21 R3
       39 MOVE                             R22 R4
       40 MOVE                             R23 R5
       41 CALL                             R18 5 0
       42 GETUPVAL                         R18 1
       43 MOVE                             R19 R6
       44 MOVE                             R20 R17
       45 GETTABLEKS                       R21 R17 K2 ["tag"]
       47 CALL                             R18 3 0
       48 FORGLOOP                         R13 2 ; [-17]
       50 FORGLOOP                         R7 2 ; [-45]
       52 RETURN                           R6 1

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
       32 GETTABLEKS                       R8 R1 K11 ["Enums"]
       34 GETTABLEKS                       R7 R8 K12 ["Device"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R9 R1 K13 ["Utility"]
       41 GETTABLEKS                       R8 R9 K14 ["Flags"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K6 [require]
       46 GETTABLEKS                       R10 R1 K11 ["Enums"]
       48 GETTABLEKS                       R9 R10 K15 ["Theme"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K6 [require]
       53 GETTABLEKS                       R10 R0 K16 ["getOverrideAttributes"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K6 [require]
       58 GETTABLEKS                       R12 R1 K13 ["Utility"]
       60 GETTABLEKS                       R11 R12 K17 ["scaleValue"]
       62 CALL                             R10 1 1
       63 DUPCLOSURE                       R11 K18 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R12 K19 [PROTO_1]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R10
       69 DUPCLOSURE                       R13 K20 [PROTO_2]
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R11
       72 RETURN                           R13 1
