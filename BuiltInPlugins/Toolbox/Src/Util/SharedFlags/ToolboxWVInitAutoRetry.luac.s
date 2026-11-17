PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ToolboxWVInitAutoRetryMaxAttempts"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxWVInitAutoRetryMaxAttempts"]
        4 LOADN                            R3 5
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 DUPTABLE                         R0 K5 [{"getIntMaxAttempts"}]
        9 DUPCLOSURE                       R1 K6 [PROTO_0]
       10 SETTABLEKS                       R1 R0 K4 ["getIntMaxAttempts"]
       12 RETURN                           R0 1
