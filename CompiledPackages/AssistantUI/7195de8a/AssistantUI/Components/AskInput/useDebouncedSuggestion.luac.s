PROTO_0:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 JUMPIFNOT                        R0 ; [+9]
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 GETUPVAL                         R0 2
       14 GETTABLEKS                       R0 R0 K0 ["current"]
       16 LOADB                            R1 0
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["suggestPartsAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 1
        6 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 GETUPVAL                         R3 4
       11 JUMPIFEQ                         R2 R3 ; [+2]
       13 RETURN                           R0 0
       14 JUMPIFNOT                        R0 ; [+3]
       15 JUMPIFNOT                        R1 ; [+2]
       16 MOVE                             R2 R1
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R3 5
       21 GETTABLEKS                       R3 R3 K2 ["current"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 6
       26 GETTABLEKS                       R3 R3 K2 ["current"]
       28 JUMPIFNOTEQKB                    R3 FALSE ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R3 6
       32 LOADB                            R4 0
       33 SETTABLEKS                       R4 R3 K2 ["current"]
       35 GETUPVAL                         R3 7
       36 GETTABLEKS                       R3 R3 K2 ["current"]
       38 LOADB                            R4 0
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K0 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
       10 JUMP                             ; [+9]
       11 GETUPVAL                         R3 1
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K0 ["current"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K0 ["current"]
       18 LOADB                            R4 1
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K3 [task.spawn]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K0 ["current"]
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 3
        9 GETUPVAL                         R2 4
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 SETTABLEKS                       R2 R3 K0 ["current"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["current"]
        8 JUMPIFNOTEQKB                    R3 TRUE ; [+2]
       10 JUMP                             ; [+9]
       11 GETUPVAL                         R3 1
       12 LOADB                            R4 1
       13 SETTABLEKS                       R4 R3 K0 ["current"]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K0 ["current"]
       18 LOADB                            R4 1
       19 CALL                             R3 1 0
       20 GETIMPORT                        R3 K3 [task.delay]
       22 LOADN                            R4 2
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 DUPTABLE                         R3 K3 [{"request", "requestNow", "cancel"}]
       14 NEWCLOSURE                       R4 P3
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R4 R3 K0 ["request"]
       21 SETTABLEKS                       R1 R3 K1 ["requestNow"]
       23 SETTABLEKS                       R2 R3 K2 ["cancel"]
       25 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["useRef"]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K0 ["useRef"]
       15 LOADB                            R6 0
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R8 0 0
       26 CALL                             R6 2 0
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R8 0 0
       38 CALL                             R6 2 1
       39 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["MeshGen"]
       20 GETTABLEKS                       R4 R4 K10 ["MeshGenSchemaSelector"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R5 R5 K12 ["useLatest"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_10]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
