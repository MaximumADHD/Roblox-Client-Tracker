PROTO_0:
        0 DUPTABLE                         R2 K3 [{"type", "readonly", "extra"}]
        1 LOADK                            R3 K4 ["InstanceRef"]
        2 SETTABLEKS                       R3 R2 K0 ["type"]
        4 SETTABLEKS                       R0 R2 K1 ["readonly"]
        6 DUPTABLE                         R3 K6 [{"className"}]
        7 SETTABLEKS                       R1 R3 K5 ["className"]
        9 SETTABLEKS                       R3 R2 K2 ["extra"]
       11 RETURN                           R2 1

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
