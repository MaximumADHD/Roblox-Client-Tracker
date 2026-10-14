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
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R1 1

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R2 R0 K0 ["isEnabled"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K1 ["_logTag"]
        7 JUMPIFNOT                        R3 ; [+5]
        8 GETTABLEKS                       R3 R0 K1 ["_logTag"]
       10 LOADK                            R4 K2 [" "]
       11 CONCAT                           R2 R3 R4
       12 JUMP                             ; [+1]
       13 LOADK                            R2 K3 [""]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R4 K5 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+4]
       21 MOVE                             R3 R1
       22 CALL                             R3 0 1
       23 JUMP                             ; [+1]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R4 K8 [print]
       27 MOVE                             R6 R2
       28 MOVE                             R7 R3
       29 CONCAT                           R5 R6 R7
       30 CALL                             R4 1 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 NEWTABLE                         R1 8 0
        5 SETTABLEKS                       R1 R1 K0 ["__index"]
        7 DUPCLOSURE                       R2 K1 [PROTO_0]
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R2 R1 K2 ["new"]
       11 DUPCLOSURE                       R2 K3 [PROTO_1]
       12 SETTABLEKS                       R2 R1 K4 ["isEnabled"]
       14 DUPCLOSURE                       R2 K5 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K6 ["setEnabled"]
       17 DUPCLOSURE                       R2 K7 [PROTO_3]
       18 SETTABLEKS                       R2 R1 K8 ["log"]
       20 SETTABLEKS                       R1 R0 K9 ["Logger"]
       22 RETURN                           R0 1
