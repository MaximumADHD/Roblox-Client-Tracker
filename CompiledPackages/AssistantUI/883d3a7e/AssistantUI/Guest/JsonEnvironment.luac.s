PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 MOVE                             R3 R0
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R9 R10 K3 ["Types"]
       21 GETTABLEKS                       R8 R9 K4 ["tableHiddenKey"]
       23 JUMPIFEQ                         R6 R8 ; [+6]
       25 GETUPVAL                         R8 1
       26 MOVE                             R9 R7
       27 MOVE                             R10 R1
       28 CALL                             R8 2 1
       29 SETTABLE                         R8 R2 R6
       30 FORGLOOP                         R3 2 ; [-13]
       32 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Types"]
        3 GETTABLEKS                       R3 R4 K1 ["tableHiddenKey"]
        5 GETTABLE                         R2 R0 R3
        6 JUMPIFNOT                        R2 ; [+11]
        7 MOVE                             R3 R1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K0 ["Types"]
       11 GETTABLEKS                       R4 R5 K2 ["emptyTable"]
       13 CALL                             R4 0 -1
       14 FASTCALL                         SETMETATABLE ; [+2]
       15 GETIMPORT                        R2 K4 [setmetatable]
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_1]
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        GETMETATABLE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [getmetatable]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+14]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K2 ["Types"]
        9 GETTABLEKS                       R4 R5 K3 ["tableHiddenKey"]
       11 GETTABLE                         R3 R2 R4
       12 JUMPIFNOT                        R3 ; [+7]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["Types"]
       16 GETTABLEKS                       R3 R4 K3 ["tableHiddenKey"]
       18 LOADB                            R4 1
       19 SETTABLE                         R4 R1 R3
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPCLOSURE                       R3 K0 [PROTO_3]
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 MOVE                             R1 R0
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 DUPCLOSURE                       R4 K0 [PROTO_3]
        6 CAPTURE                          UPVAL U2
        7 CALL                             R2 2 1
        8 MOVE                             R0 R2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R2 R3 K1 ["json"]
       12 GETTABLEKS                       R1 R2 K2 ["encodeAsync"]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 1
       16 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["json"]
        3 GETTABLEKS                       R1 R2 K1 ["decodeAsync"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+7]
        9 MOVE                             R2 R1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R2
       12 DUPCLOSURE                       R5 K2 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 CALL                             R3 2 1
       15 MOVE                             R1 R3
       16 RETURN                           R1 1

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K0 ["Json"]
       13 GETTABLEKS                       R4 R5 K1 ["setup"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 DUPCLOSURE                       R4 K11 [PROTO_2]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R5 K12 [PROTO_4]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 DUPCLOSURE                       R6 K13 [PROTO_7]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 DUPTABLE                         R7 K15 [{"setup"}]
       34 SETTABLEKS                       R6 R7 K14 ["setup"]
       36 RETURN                           R7 1
