PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 LOADK                            R3 K0 ["[%*]"]
        3 MOVE                             R5 R0
        4 NAMECALL                         R3 R3 K1 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 SETTABLEKS                       R2 R1 K2 ["_logTag"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["_enabled"]
       13 GETUPVAL                         R4 0
       14 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K5 [setmetatable]
       19 CALL                             R2 2 0
       20 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["ALL_LOGGING_ENABLED"]
        4 JUMPIF                           R2 ; [+3]
        5 GETTABLEKS                       R2 R0 K1 ["_enabled"]
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETTABLEKS                       R3 R0 K2 ["_logTag"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R3 R0 K2 ["_logTag"]
       13 LOADK                            R4 K3 [" "]
       14 CONCAT                           R2 R3 R4
       15 JUMP                             ; [+1]
       16 LOADK                            R2 K4 [""]
       17 GETIMPORT                        R3 K6 [print]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R1
       21 CONCAT                           R4 R5 R6
       22 GETVARARGS                       R5 -1
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["ALL_LOGGING_ENABLED"]
        4 JUMPIF                           R2 ; [+3]
        5 GETTABLEKS                       R2 R0 K1 ["_enabled"]
        7 JUMPIFNOT                        R2 ; [+16]
        8 GETTABLEKS                       R3 R0 K2 ["_logTag"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R3 R0 K2 ["_logTag"]
       13 LOADK                            R4 K3 [" "]
       14 CONCAT                           R2 R3 R4
       15 JUMP                             ; [+1]
       16 LOADK                            R2 K4 [""]
       17 GETIMPORT                        R3 K6 [warn]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R1
       21 CONCAT                           R4 R5 R6
       22 GETVARARGS                       R5 -1
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ALL_LOGGING_ENABLED"]
        3 JUMPIF                           R1 ; [+2]
        4 GETTABLEKS                       R1 R0 K1 ["_enabled"]
        6 RETURN                           R1 1

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        6 NEWTABLE                         R1 8 0
        8 SETTABLEKS                       R1 R1 K1 ["__index"]
       10 DUPCLOSURE                       R2 K2 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R2 R1 K3 ["new"]
       14 DUPCLOSURE                       R2 K4 [PROTO_1]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R1 K5 ["log"]
       18 DUPCLOSURE                       R2 K6 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K7 ["warn"]
       22 DUPCLOSURE                       R2 K8 [PROTO_3]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K9 ["isEnabled"]
       26 DUPCLOSURE                       R2 K10 [PROTO_4]
       27 SETTABLEKS                       R2 R1 K11 ["setEnabled"]
       29 SETTABLEKS                       R1 R0 K12 ["Logger"]
       31 RETURN                           R0 1
