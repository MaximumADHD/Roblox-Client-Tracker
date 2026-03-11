MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["AssetAccessController"]
        8 NAMECALL                         R1 R0 K5 ["GetPluginComponent"]
       10 CALL                             R1 2 1
       11 RETURN                           R1 1
