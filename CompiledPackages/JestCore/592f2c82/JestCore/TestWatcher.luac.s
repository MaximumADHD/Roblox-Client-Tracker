PROTO_0:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R2 R0 K2 ["isWatchMode"]
       10 DUPTABLE                         R3 K5 [{["interrupted"] = False}]
       11 SETTABLEKS                       R3 R1 K6 ["state"]
       13 SETTABLEKS                       R2 R1 K7 ["_isWatchMode"]
       15 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R0 K0 ["state"]
        6 SETTABLE                         R6 R7 R5
        7 FORGLOOP                         R2 2 ; [-4]
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["interrupted"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_isWatchMode"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 NEWTABLE                         R1 8 0
        5 SETTABLEKS                       R1 R1 K0 ["__index"]
        7 DUPCLOSURE                       R2 K1 [PROTO_0]
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R2 R1 K2 ["new"]
       11 DUPCLOSURE                       R2 K3 [PROTO_1]
       12 SETTABLEKS                       R2 R1 K4 ["setState"]
       14 DUPCLOSURE                       R2 K5 [PROTO_2]
       15 SETTABLEKS                       R2 R1 K6 ["isInterrupted"]
       17 DUPCLOSURE                       R2 K7 [PROTO_3]
       18 SETTABLEKS                       R2 R1 K8 ["isWatchMode"]
       20 SETTABLEKS                       R1 R0 K9 ["default"]
       22 RETURN                           R0 1
