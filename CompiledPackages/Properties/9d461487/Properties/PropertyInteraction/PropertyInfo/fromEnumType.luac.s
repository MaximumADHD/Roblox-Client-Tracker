PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["Static"] ; [+10]
        2 DUPTABLE                         R3 K5 [{["type"] = "Enum", ["readonly"], ["extra"]}]
        3 SETTABLEKS                       R0 R3 K3 ["readonly"]
        5 DUPTABLE                         R4 K8 [{["type"] = "enum", ["enumName"]}]
        6 SETTABLEKS                       R2 R4 K7 ["enumName"]
        8 SETTABLEKS                       R4 R3 K4 ["extra"]
       10 RETURN                           R3 1
       11 DUPTABLE                         R3 K10 [{["type"] = "DynamicEnum", ["readonly"], ["extra"]}]
       12 SETTABLEKS                       R0 R3 K3 ["readonly"]
       14 DUPTABLE                         R4 K13 [{["type"] = "dynamicEnum", ["extraGuestDataKey"]}]
       15 SETTABLEKS                       R2 R4 K12 ["extraGuestDataKey"]
       17 SETTABLEKS                       R4 R3 K4 ["extra"]
       19 RETURN                           R3 1

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
