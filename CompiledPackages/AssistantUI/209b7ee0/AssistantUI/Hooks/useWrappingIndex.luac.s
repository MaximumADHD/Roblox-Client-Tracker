PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        MATH_MIN R0 R3 ; [+4]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K2 [math.min]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 1
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
        4 GETIMPORT                        R0 K2 [math.max]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 SUBK                             R1 R0 K0 [1]
        1 LOADN                            R2 1
        2 JUMPIFNOTLT                      R1 R2 ; [+2]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 ADDK                             R1 R0 K0 [1]
        1 GETUPVAL                         R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+2]
        4 LOADN                            R1 1
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADN                            R2 1
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R0 ; [+2]
        6 LENGTH                           R3 R0
        7 JUMP                             ; [+1]
        8 LOADN                            R3 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R3
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 NEWTABLE                         R6 0 1
       29 MOVE                             R7 R3
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R7 0 1
       41 MOVE                             R8 R3
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 JUMPIFNOT                        R0 ; [+2]
       46 GETTABLE                         R6 R0 R1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R6
       49 DUPTABLE                         R7 K8 [{"exists", "index", "current", "decrement", "increment"}]
       50 LOADN                            R9 0
       51 JUMPIFLT                         R9 R3 ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 SETTABLEKS                       R8 R7 K3 ["exists"]
       57 SETTABLEKS                       R1 R7 K4 ["index"]
       59 SETTABLEKS                       R6 R7 K5 ["current"]
       61 SETTABLEKS                       R4 R7 K6 ["decrement"]
       63 SETTABLEKS                       R5 R7 K7 ["increment"]
       65 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_6]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
