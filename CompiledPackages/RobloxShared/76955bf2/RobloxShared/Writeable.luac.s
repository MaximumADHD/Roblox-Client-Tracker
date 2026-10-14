PROTO_0:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 JUMPIFEQKNIL                     R0 ; [+12]
       10 GETTABLEKS                       R4 R0 K2 ["write"]
       12 FASTCALL1                        TYPEOF R4 ; [+2]
       13 GETIMPORT                        R3 K4 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K5 ["function"] ; [+4]
       18 GETTABLEKS                       R2 R0 K2 ["write"]
       20 JUMP                             ; [+2]
       21 GETIMPORT                        R2 K7 [print]
       23 SETTABLEKS                       R2 R1 K8 ["_writeFn"]
       25 LOADB                            R2 0
       26 SETTABLEKS                       R2 R1 K9 ["isTTY"]
       28 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_writeFn"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["write"]
       12 DUPTABLE                         R1 K6 [{"Writeable"}]
       13 SETTABLEKS                       R0 R1 K5 ["Writeable"]
       15 RETURN                           R1 1
