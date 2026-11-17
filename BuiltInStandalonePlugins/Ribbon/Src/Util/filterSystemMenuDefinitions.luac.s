PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 1
        2 RETURN                           R2 1
        3 GETTABLEKS                       R2 R0 K0 ["Internal"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R3 K2 [{"FastFlag"}]
       11 GETTABLEKS                       R4 R0 K1 ["FastFlag"]
       13 SETTABLEKS                       R4 R3 K1 ["FastFlag"]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["Visibility"]
        8 JUMPIF                           R9 ; [+2]
        9 LOADB                            R8 1
       10 JUMP                             ; [+14]
       11 GETTABLEKS                       R10 R9 K1 ["Internal"]
       13 JUMPIFNOT                        R10 ; [+3]
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R8 0
       16 JUMP                             ; [+8]
       17 GETUPVAL                         R10 0
       18 DUPTABLE                         R11 K3 [{"FastFlag"}]
       19 GETTABLEKS                       R12 R9 K2 ["FastFlag"]
       21 SETTABLEKS                       R12 R11 K2 ["FastFlag"]
       23 CALL                             R10 1 1
       24 MOVE                             R8 R10
       25 JUMPIFNOT                        R8 ; [+29]
       26 GETTABLEKS                       R8 R7 K4 ["Items"]
       28 JUMPIFNOT                        R8 ; [+19]
       29 GETIMPORT                        R8 K7 [table.clone]
       31 MOVE                             R9 R7
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R10 R7 K4 ["Items"]
       36 MOVE                             R11 R1
       37 CALL                             R9 2 1
       38 SETTABLEKS                       R9 R8 K4 ["Items"]
       40 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       42 MOVE                             R10 R2
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K9 [table.insert]
       46 CALL                             R9 2 0
       47 JUMP                             ; [+7]
       48 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       50 MOVE                             R9 R2
       51 MOVE                             R10 R7
       52 GETIMPORT                        R8 K9 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R3 2 ; [-50]
       57 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R9 R7 K0 ["Visibility"]
        8 JUMPIF                           R9 ; [+2]
        9 LOADB                            R8 1
       10 JUMP                             ; [+14]
       11 GETTABLEKS                       R10 R9 K1 ["Internal"]
       13 JUMPIFNOT                        R10 ; [+3]
       14 JUMPIF                           R1 ; [+2]
       15 LOADB                            R8 0
       16 JUMP                             ; [+8]
       17 GETUPVAL                         R10 0
       18 DUPTABLE                         R11 K3 [{"FastFlag"}]
       19 GETTABLEKS                       R12 R9 K2 ["FastFlag"]
       21 SETTABLEKS                       R12 R11 K2 ["FastFlag"]
       23 CALL                             R10 1 1
       24 MOVE                             R8 R10
       25 JUMPIFNOT                        R8 ; [+18]
       26 GETIMPORT                        R8 K6 [table.clone]
       28 MOVE                             R9 R7
       29 CALL                             R8 1 1
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R10 R7 K7 ["Items"]
       33 MOVE                             R11 R1
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K7 ["Items"]
       37 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R8
       41 GETIMPORT                        R9 K9 [table.insert]
       43 CALL                             R9 2 0
       44 FORGLOOP                         R3 2 ; [-39]
       46 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["isControlEnabledFromFlags"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 DUPCLOSURE                       R5 K12 [PROTO_2]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
