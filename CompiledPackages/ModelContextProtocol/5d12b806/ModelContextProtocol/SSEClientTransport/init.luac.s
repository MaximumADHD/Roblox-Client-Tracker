MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["SSEClientTransport"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K5 [{"SSEClientTransport"}]
        9 SETTABLEKS                       R0 R1 K4 ["SSEClientTransport"]
       11 RETURN                           R1 1
