PROTO_0:
        0 MOVE                             R2 R1
        1 CALL                             R2 0 0
        2 LOADNIL                          R2
        3 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 2 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R1 R2 K2 ["_delay"]
       10 SETTABLEKS                       R0 R2 K3 ["_callback"]
       12 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 MOVE                             R2 R1
        2 JUMP                             ; [+1]
        3 DUPTABLE                         R2 K2 [{[1] = False}]
        4 GETTABLEKS                       R3 R0 K3 ["_taskHandle"]
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETTABLEKS                       R3 R0 K3 ["_taskHandle"]
        9 GETTABLEKS                       R3 R3 K4 ["cancel"]
       11 CALL                             R3 0 0
       12 GETTABLEKS                       R3 R2 K0 ["abort"]
       14 JUMPIF                           R3 ; [+3]
       15 GETTABLEKS                       R3 R0 K5 ["_callback"]
       17 CALL                             R3 0 0
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R0 K3 ["_taskHandle"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["_taskHandle"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["_callback"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R1 R1 K0 ["runAfterInteractions"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["_taskHandle"]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_taskHandle"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 GETTABLEKS                       R3 R0 K1 ["_delay"]
       10 CALL                             R1 2 1
       11 DUPTABLE                         R2 K3 [{"cancel"}]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["cancel"]
       17 SETTABLEKS                       R2 R0 K0 ["_taskHandle"]
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["setTimeout"]
       16 GETTABLEKS                       R4 R2 K7 ["clearTimeout"]
       18 DUPTABLE                         R5 K9 [{"runAfterInteractions"}]
       19 DUPCLOSURE                       R6 K10 [PROTO_0]
       20 SETTABLEKS                       R6 R5 K8 ["runAfterInteractions"]
       22 NEWTABLE                         R6 0 0
       24 SETTABLEKS                       R6 R6 K11 ["__index"]
       26 DUPCLOSURE                       R7 K12 [PROTO_1]
       27 CAPTURE                          VAL R6
       28 SETTABLEKS                       R7 R6 K13 ["new"]
       30 DUPCLOSURE                       R7 K14 [PROTO_2]
       31 SETTABLEKS                       R7 R6 K15 ["dispose"]
       33 DUPCLOSURE                       R7 K16 [PROTO_6]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 SETTABLEKS                       R7 R6 K17 ["schedule"]
       39 RETURN                           R6 1
