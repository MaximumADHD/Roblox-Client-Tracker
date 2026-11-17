MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["enumerate"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K8 ["StatusLevel"]
       16 DUPTABLE                         R4 K11 [{["Error"] = "Error", ["Warning"] = "Warning"}]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1
