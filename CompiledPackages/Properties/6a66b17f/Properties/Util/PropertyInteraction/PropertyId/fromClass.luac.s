PROTO_0:
        0 DUPTABLE                         R3 K3 [{"name", "className", "metaType"}]
        1 SETTABLEKS                       R0 R3 K0 ["name"]
        3 SETTABLEKS                       R1 R3 K1 ["className"]
        5 SETTABLEKS                       R2 R3 K2 ["metaType"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1
