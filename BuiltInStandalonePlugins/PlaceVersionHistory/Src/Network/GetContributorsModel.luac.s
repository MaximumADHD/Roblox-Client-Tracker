MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["t"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["interface"]
       16 DUPTABLE                         R3 K12 [{"nextCursor", "hasMore", "contributors"}]
       17 GETTABLEKS                       R4 R1 K13 ["string"]
       19 SETTABLEKS                       R4 R3 K9 ["nextCursor"]
       21 GETTABLEKS                       R4 R1 K14 ["boolean"]
       23 SETTABLEKS                       R4 R3 K10 ["hasMore"]
       25 GETTABLEKS                       R4 R1 K15 ["array"]
       27 GETTABLEKS                       R5 R1 K16 ["number"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K11 ["contributors"]
       32 CALL                             R2 1 1
       33 DUPTABLE                         R3 K18 [{"validate"}]
       34 SETTABLEKS                       R2 R3 K17 ["validate"]
       36 RETURN                           R3 1
