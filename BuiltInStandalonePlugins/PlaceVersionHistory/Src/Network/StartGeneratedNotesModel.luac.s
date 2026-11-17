MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["t"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["interface"]
       16 DUPTABLE                         R3 K10 [{"operationId"}]
       17 GETTABLEKS                       R4 R1 K11 ["string"]
       19 SETTABLEKS                       R4 R3 K9 ["operationId"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K13 [{"validate"}]
       23 SETTABLEKS                       R2 R3 K12 ["validate"]
       25 RETURN                           R3 1
