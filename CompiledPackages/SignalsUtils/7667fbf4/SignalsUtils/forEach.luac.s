PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLE                         R5 R6 R4
        6 GETUPVAL                         R6 2
        7 JUMPIFNOTEQ                      R5 R6 ; [+2]
        9 RETURN                           R0 0
       10 FORGLOOP                         R0 2 ; [-7]
       12 GETIMPORT                        R0 K2 [table.create]
       14 GETUPVAL                         R2 0
       15 LENGTH                           R1 R2
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 0
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETUPVAL                         R7 1
       22 GETTABLE                         R6 R7 R5
       23 SETTABLE                         R6 R0 R4
       24 FORGLOOP                         R1 2 ; [-4]
       26 GETIMPORT                        R1 K4 [table.freeze]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SETTABLE                         R3 R1 R2
        6 GETUPVAL                         R1 3
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 2
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["createEffect"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U4
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K3 [table.freeze]
       17 DUPTABLE                         R4 K6 [{"target", "dispose"}]
       18 SETTABLEKS                       R0 R4 K4 ["target"]
       20 SETTABLEKS                       R2 R4 K5 ["dispose"]
       22 CALL                             R3 1 -1
       23 RETURN                           R3 -1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 GETIMPORT                        R3 K2 [table.clone]
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R4 1 -1
       11 CALL                             R3 -1 1
       12 SETUPVAL                         R3 1
       13 GETUPVAL                         R3 1
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 FORGPREP                         R3
       17 GETUPVAL                         R9 0
       18 GETTABLE                         R8 R9 R7
       19 JUMPIFNOT                        R8 ; [+6]
       20 LOADNIL                          R8
       21 SETTABLE                         R8 R1 R7
       22 GETUPVAL                         R9 0
       23 GETTABLE                         R8 R9 R7
       24 SETTABLE                         R8 R2 R7
       25 JUMP                             ; [+4]
       26 GETUPVAL                         R8 3
       27 MOVE                             R9 R7
       28 CALL                             R8 1 1
       29 SETTABLE                         R8 R2 R7
       30 FORGLOOP                         R3 2 ; [-14]
       32 MOVE                             R3 R1
       33 LOADNIL                          R4
       34 LOADNIL                          R5
       35 FORGPREP                         R3
       36 GETTABLEKS                       R8 R7 K3 ["dispose"]
       38 CALL                             R8 0 0
       39 GETUPVAL                         R8 4
       40 GETTABLEKS                       R9 R7 K4 ["target"]
       42 LOADNIL                          R10
       43 SETTABLE                         R10 R8 R9
       44 FORGLOOP                         R3 2 ; [-9]
       46 GETIMPORT                        R3 K6 [table.freeze]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 SETUPVAL                         R3 0
       51 GETUPVAL                         R3 5
       52 CALL                             R3 0 0
       53 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [table.clone]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 3
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R1 3
        9 SETUPVAL                         R1 4
       10 GETUPVAL                         R1 3
       11 SETUPVAL                         R1 1
       12 MOVE                             R1 R0
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 GETTABLEKS                       R6 R5 K3 ["dispose"]
       18 CALL                             R6 0 0
       19 FORGLOOP                         R1 2 ; [-4]
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R3 0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          REF R3
        6 CAPTURE                          REF R2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R4
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K0 ["createEffect"]
       18 NEWCLOSURE                       R7 P2
       19 CAPTURE                          REF R1
       20 CAPTURE                          REF R3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          REF R2
       24 CAPTURE                          VAL R4
       25 CALL                             R6 1 1
       26 NEWCLOSURE                       R7 P3
       27 CAPTURE                          VAL R6
       28 CAPTURE                          REF R1
       29 CAPTURE                          REF R2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R3
       32 CLOSEUPVALS                      R1
       33 RETURN                           R7 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 DUPCLOSURE                       R3 K0 [PROTO_0]
        2 NEWCLOSURE                       R4 P1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SignalsUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["provide"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K11 [table.freeze]
       21 NEWTABLE                         R4 0 0
       23 CALL                             R3 1 1
       24 DUPTABLE                         R4 K14 [{["_SYMBOL"] = "UNSET_SYMBOL"}]
       25 DUPCLOSURE                       R5 K15 [PROTO_7]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R1
       30 RETURN                           R5 1
