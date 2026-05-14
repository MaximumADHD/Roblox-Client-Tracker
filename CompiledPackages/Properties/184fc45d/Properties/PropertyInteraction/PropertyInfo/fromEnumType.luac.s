PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["Static"] ; [+13]
        2 DUPTABLE                         R3 K4 [{"type", "readonly", "extra"}]
        3 LOADK                            R4 K5 ["Enum"]
        4 SETTABLEKS                       R4 R3 K1 ["type"]
        6 SETTABLEKS                       R0 R3 K2 ["readonly"]
        8 DUPTABLE                         R4 K7 [{"enumName"}]
        9 SETTABLEKS                       R2 R4 K6 ["enumName"]
       11 SETTABLEKS                       R4 R3 K3 ["extra"]
       13 RETURN                           R3 1
       14 DUPTABLE                         R3 K4 [{"type", "readonly", "extra"}]
       15 LOADK                            R4 K8 ["DynamicEnum"]
       16 SETTABLEKS                       R4 R3 K1 ["type"]
       18 SETTABLEKS                       R0 R3 K2 ["readonly"]
       20 DUPTABLE                         R4 K10 [{"extraGuestDataKey"}]
       21 SETTABLEKS                       R2 R4 K9 ["extraGuestDataKey"]
       23 SETTABLEKS                       R4 R3 K3 ["extra"]
       25 RETURN                           R3 1

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
