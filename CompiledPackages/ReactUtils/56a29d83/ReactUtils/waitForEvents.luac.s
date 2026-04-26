PROTO_0:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADN                            R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADN                            R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["act"]
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ReactRoblox"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K8 [PROTO_0]
       15 DUPCLOSURE                       R4 K9 [PROTO_2]
       16 CAPTURE                          VAL R2
       17 DUPTABLE                         R6 K11 [{"act"}]
       18 SETTABLEKS                       R4 R6 K10 ["act"]
       20 DUPTABLE                         R7 K13 [{"__call"}]
       21 SETTABLEKS                       R3 R7 K12 ["__call"]
       23 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       25 GETIMPORT                        R5 K15 [setmetatable]
       27 CALL                             R5 2 1
       28 RETURN                           R5 1
