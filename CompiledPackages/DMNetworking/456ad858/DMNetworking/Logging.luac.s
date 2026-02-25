PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 SETTABLEKS                       R0 R1 K0 ["_logTag"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["_enabled"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [setmetatable]
       13 CALL                             R2 2 0
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ALL_LOGGING_ENABLED"]
        3 JUMPIF                           R2 ; [+3]
        4 GETTABLEKS                       R2 R0 K1 ["_enabled"]
        6 JUMPIFNOT                        R2 ; [+15]
        7 GETTABLEKS                       R3 R0 K2 ["_logTag"]
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["_logTag"]
       12 LOADK                            R4 K3 [" "]
       13 CONCAT                           R2 R3 R4
       14 JUMP                             ; [+1]
       15 LOADK                            R2 K4 [""]
       16 GETIMPORT                        R3 K6 [print]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 CONCAT                           R4 R5 R6
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        6 NEWTABLE                         R1 4 0
        8 SETTABLEKS                       R1 R1 K1 ["__index"]
       10 DUPCLOSURE                       R2 K2 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R2 R1 K3 ["new"]
       14 DUPCLOSURE                       R2 K4 [PROTO_1]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K5 ["log"]
       18 DUPCLOSURE                       R2 K6 [PROTO_2]
       19 SETTABLEKS                       R2 R1 K7 ["setEnabled"]
       21 SETTABLEKS                       R1 R0 K8 ["Logger"]
       23 RETURN                           R0 1
