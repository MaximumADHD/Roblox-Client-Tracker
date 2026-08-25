PROTO_0:
        0 DUPTABLE                         R3 K4 [{[1] = "CombinedColor", ["readonly"], ["extra"]}]
        1 SETTABLEKS                       R0 R3 K2 ["readonly"]
        3 DUPTABLE                         R4 K7 [{"defaultView", "hasTransparency"}]
        4 SETTABLEKS                       R1 R4 K5 ["defaultView"]
        6 SETTABLEKS                       R2 R4 K6 ["hasTransparency"]
        8 SETTABLEKS                       R4 R3 K3 ["extra"]
       10 RETURN                           R3 1

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
