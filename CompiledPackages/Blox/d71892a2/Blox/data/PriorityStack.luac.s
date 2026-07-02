PROTO_0:
        0 DUPTABLE                         R1 K6 [{[1], ["_min"] = ∞, ["_max"] = 0, ["size"] = 0}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_buffers"]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K8 [setmetatable]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["_buffers"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOT                        R3 ; [+8]
        4 GETTABLEKS                       R4 R0 K0 ["_buffers"]
        6 GETTABLE                         R3 R4 R1
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R3 K1 ["enqueue"]
       10 CALL                             R3 2 0
       11 JUMP                             ; [+11]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["new"]
       15 CALL                             R3 0 1
       16 MOVE                             R6 R2
       17 NAMECALL                         R4 R3 K1 ["enqueue"]
       19 CALL                             R4 2 0
       20 GETTABLEKS                       R4 R0 K0 ["_buffers"]
       22 SETTABLE                         R3 R4 R1
       23 GETTABLEKS                       R4 R0 K3 ["_min"]
       25 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
       27 MOVE                             R5 R1
       28 GETIMPORT                        R3 K6 [math.min]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R0 K3 ["_min"]
       33 GETTABLEKS                       R4 R0 K7 ["_max"]
       35 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       37 MOVE                             R5 R1
       38 GETIMPORT                        R3 K9 [math.max]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R0 K7 ["_max"]
       43 GETTABLEKS                       R3 R0 K10 ["size"]
       45 ADDK                             R3 R3 K11 [1]
       46 SETTABLEKS                       R3 R0 K10 ["size"]
       48 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K2 ["_buffers"]
        8 GETTABLEKS                       R3 R0 K3 ["_min"]
       10 GETTABLE                         R1 R2 R3
       11 NAMECALL                         R2 R1 K4 ["dequeue"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R1 K0 ["size"]
       16 JUMPIFNOTEQKN                    R3 K1 [0] ; [+38]
       18 LOADK                            R3 K5 [∞]
       19 GETTABLEKS                       R6 R0 K3 ["_min"]
       21 GETTABLEKS                       R4 R0 K6 ["_max"]
       23 LOADN                            R5 1
       24 FORNPREP                         R4
       25 GETTABLEKS                       R8 R0 K2 ["_buffers"]
       27 GETTABLE                         R7 R8 R6
       28 JUMPIFNOT                        R7 ; [+14]
       29 GETTABLEKS                       R8 R7 K0 ["size"]
       31 LOADN                            R9 0
       32 JUMPIFNOTLT                      R9 R8 ; [+10]
       34 FASTCALL2                        MATH_MIN R3 R6 ; [+5]
       36 MOVE                             R9 R3
       37 MOVE                             R10 R6
       38 GETIMPORT                        R8 K9 [math.min]
       40 CALL                             R8 2 1
       41 MOVE                             R3 R8
       42 JUMP                             ; [+1]
       43 FORNLOOP                         R4
       44 JUMPIFNOTEQKN                    R3 K5 [∞] ; [+8]
       46 LOADK                            R4 K5 [∞]
       47 SETTABLEKS                       R4 R0 K3 ["_min"]
       49 LOADN                            R4 0
       50 SETTABLEKS                       R4 R0 K6 ["_max"]
       52 JUMP                             ; [+2]
       53 SETTABLEKS                       R3 R0 K3 ["_min"]
       55 GETTABLEKS                       R3 R0 K0 ["size"]
       57 SUBK                             R3 R3 K10 [1]
       58 SETTABLEKS                       R3 R0 K0 ["size"]
       60 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K2 ["_buffers"]
        8 GETTABLEKS                       R3 R0 K3 ["_min"]
       10 GETTABLE                         R1 R2 R3
       11 NAMECALL                         R1 R1 K4 ["peek"]
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [require]
        7 GETIMPORT                        R2 K4 [script]
        9 GETTABLEKS                       R2 R2 K5 ["Parent"]
       11 GETTABLEKS                       R2 R2 K6 ["CircularBuffer"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R0 K10 ["enqueue"]
       22 DUPCLOSURE                       R2 K11 [PROTO_2]
       23 SETTABLEKS                       R2 R0 K12 ["dequeue"]
       25 DUPCLOSURE                       R2 K13 [PROTO_3]
       26 SETTABLEKS                       R2 R0 K14 ["peek"]
       28 RETURN                           R0 1
