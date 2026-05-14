PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["JestGlobals"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["jest"]
       12 DUPTABLE                         R2 K7 [{"GetObjects"}]
       13 GETTABLEKS                       R3 R1 K8 ["fn"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K6 ["GetObjects"]
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 GETIMPORT                        R2 K5 [game]
       11 GETTABLEKS                       R2 R2 K6 ["Name"]
       13 SETTABLEKS                       R2 R1 K6 ["Name"]
       15 DUPCLOSURE                       R2 K7 [PROTO_0]
       16 SETTABLEKS                       R2 R1 K8 ["real"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["mock"]
       22 RETURN                           R1 1
