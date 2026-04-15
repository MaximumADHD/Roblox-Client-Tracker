PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["Toolbox"] ; [+6]
        2 DUPTABLE                         R2 K2 [{"CreatorMarketplaceWebUrl"}]
        3 LOADK                            R3 K3 [""]
        4 SETTABLEKS                       R3 R2 K1 ["CreatorMarketplaceWebUrl"]
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["GetPluginPolicy"]
       12 RETURN                           R0 1
