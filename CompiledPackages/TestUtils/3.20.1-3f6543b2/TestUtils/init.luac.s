MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["alignedAnsiStyleSerializer"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["config"]
       14 CALL                             R1 1 1
       15 DUPTABLE                         R2 K8 [{"alignedAnsiStyleSerializer", "makeGlobalConfig", "makeProjectConfig"}]
       16 SETTABLEKS                       R0 R2 K4 ["alignedAnsiStyleSerializer"]
       18 GETTABLEKS                       R3 R1 K6 ["makeGlobalConfig"]
       20 SETTABLEKS                       R3 R2 K6 ["makeGlobalConfig"]
       22 GETTABLEKS                       R3 R1 K7 ["makeProjectConfig"]
       24 SETTABLEKS                       R3 R2 K7 ["makeProjectConfig"]
       26 RETURN                           R2 1
