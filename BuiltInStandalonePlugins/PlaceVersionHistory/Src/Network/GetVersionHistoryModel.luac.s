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
       16 DUPTABLE                         R3 K12 [{"hasMore", "nextCursor", "placeVersions"}]
       17 GETTABLEKS                       R4 R1 K13 ["boolean"]
       19 SETTABLEKS                       R4 R3 K9 ["hasMore"]
       21 GETTABLEKS                       R4 R1 K14 ["optional"]
       23 GETTABLEKS                       R5 R1 K15 ["string"]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K10 ["nextCursor"]
       28 GETTABLEKS                       R4 R1 K14 ["optional"]
       30 GETTABLEKS                       R5 R1 K16 ["array"]
       32 GETTABLEKS                       R6 R1 K8 ["interface"]
       34 DUPTABLE                         R7 K26 [{"version", "title", "description", "contributors", "createdBy", "saveType", "isPublished", "hasNotes", "createdTime"}]
       35 GETTABLEKS                       R8 R1 K15 ["string"]
       37 SETTABLEKS                       R8 R7 K17 ["version"]
       39 GETTABLEKS                       R8 R1 K14 ["optional"]
       41 GETTABLEKS                       R9 R1 K15 ["string"]
       43 CALL                             R8 1 1
       44 SETTABLEKS                       R8 R7 K18 ["title"]
       46 GETTABLEKS                       R8 R1 K14 ["optional"]
       48 GETTABLEKS                       R9 R1 K15 ["string"]
       50 CALL                             R8 1 1
       51 SETTABLEKS                       R8 R7 K19 ["description"]
       53 GETTABLEKS                       R8 R1 K14 ["optional"]
       55 GETTABLEKS                       R9 R1 K16 ["array"]
       57 GETTABLEKS                       R10 R1 K27 ["number"]
       59 CALL                             R9 1 1
       60 CALL                             R8 1 1
       61 SETTABLEKS                       R8 R7 K20 ["contributors"]
       63 GETTABLEKS                       R8 R1 K14 ["optional"]
       65 GETTABLEKS                       R9 R1 K28 ["integer"]
       67 CALL                             R8 1 1
       68 SETTABLEKS                       R8 R7 K21 ["createdBy"]
       70 GETTABLEKS                       R8 R1 K29 ["intersection"]
       72 GETTABLEKS                       R9 R1 K28 ["integer"]
       74 GETTABLEKS                       R10 R1 K30 ["numberConstrained"]
       76 LOADN                            R11 0
       77 LOADN                            R12 2
       78 CALL                             R10 2 -1
       79 CALL                             R8 -1 1
       80 SETTABLEKS                       R8 R7 K22 ["saveType"]
       82 GETTABLEKS                       R8 R1 K13 ["boolean"]
       84 SETTABLEKS                       R8 R7 K23 ["isPublished"]
       86 GETTABLEKS                       R8 R1 K13 ["boolean"]
       88 SETTABLEKS                       R8 R7 K24 ["hasNotes"]
       90 GETTABLEKS                       R8 R1 K15 ["string"]
       92 SETTABLEKS                       R8 R7 K25 ["createdTime"]
       94 CALL                             R6 1 1
       95 CALL                             R5 1 1
       96 CALL                             R4 1 1
       97 SETTABLEKS                       R4 R3 K11 ["placeVersions"]
       99 CALL                             R2 1 1
      100 DUPTABLE                         R3 K32 [{"validate"}]
      101 SETTABLEKS                       R2 R3 K31 ["validate"]
      103 RETURN                           R3 1
