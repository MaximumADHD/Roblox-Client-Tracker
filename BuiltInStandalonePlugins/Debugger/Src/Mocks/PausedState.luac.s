PROTO_0:
        0 SETTABLEKS                       R1 R0 K0 ["Breakpoint"]
        2 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R3 K3 [{"Reason", "ThreadId", "AllThreadsPaused"}]
        1 SETTABLEKS                       R0 R3 K0 ["Reason"]
        3 SETTABLEKS                       R1 R3 K1 ["ThreadId"]
        5 SETTABLEKS                       R2 R3 K2 ["AllThreadsPaused"]
        7 GETUPVAL                         R6 0
        8 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K5 [setmetatable]
       13 CALL                             R4 2 0
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Breakpoint"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 SETTABLEKS                       R2 R1 K8 ["SetBreakpointHit"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R2 R1 K10 ["new"]
       21 RETURN                           R1 1
