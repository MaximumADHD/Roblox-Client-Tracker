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
       16 DUPTABLE                         R3 K11 [{"nextPageCursor", "data"}]
       17 GETTABLEKS                       R4 R1 K12 ["optional"]
       19 GETTABLEKS                       R5 R1 K13 ["string"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K9 ["nextPageCursor"]
       24 GETTABLEKS                       R4 R1 K14 ["array"]
       26 GETTABLEKS                       R5 R1 K8 ["interface"]
       28 DUPTABLE                         R6 K19 [{"id", "universeId", "name", "description"}]
       29 GETTABLEKS                       R7 R1 K20 ["number"]
       31 SETTABLEKS                       R7 R6 K15 ["id"]
       33 GETTABLEKS                       R7 R1 K20 ["number"]
       35 SETTABLEKS                       R7 R6 K16 ["universeId"]
       37 GETTABLEKS                       R7 R1 K13 ["string"]
       39 SETTABLEKS                       R7 R6 K17 ["name"]
       41 GETTABLEKS                       R7 R1 K13 ["string"]
       43 SETTABLEKS                       R7 R6 K18 ["description"]
       45 CALL                             R5 1 1
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K10 ["data"]
       49 CALL                             R2 1 1
       50 DUPTABLE                         R3 K22 [{"validate"}]
       51 SETTABLEKS                       R2 R3 K21 ["validate"]
       53 RETURN                           R3 1
