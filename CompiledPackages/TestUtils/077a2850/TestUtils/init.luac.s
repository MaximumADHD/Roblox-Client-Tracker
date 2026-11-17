MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["alignedAnsiStyleSerializer"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K3 [require]
       10 GETTABLEKS                       R3 R0 K5 ["config"]
       12 CALL                             R2 1 1
       13 DUPTABLE                         R3 K8 [{"alignedAnsiStyleSerializer", "makeGlobalConfig", "makeProjectConfig"}]
       14 SETTABLEKS                       R1 R3 K4 ["alignedAnsiStyleSerializer"]
       16 GETTABLEKS                       R4 R2 K6 ["makeGlobalConfig"]
       18 SETTABLEKS                       R4 R3 K6 ["makeGlobalConfig"]
       20 GETTABLEKS                       R4 R2 K7 ["makeProjectConfig"]
       22 SETTABLEKS                       R4 R3 K7 ["makeProjectConfig"]
       24 RETURN                           R3 1
