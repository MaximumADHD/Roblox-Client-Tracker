MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["enumerate"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K8 ["StatusLevel"]
       16 DUPTABLE                         R4 K11 [{"Error", "Warning"}]
       17 LOADK                            R5 K9 ["Error"]
       18 SETTABLEKS                       R5 R4 K9 ["Error"]
       20 LOADK                            R5 K10 ["Warning"]
       21 SETTABLEKS                       R5 R4 K10 ["Warning"]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1
