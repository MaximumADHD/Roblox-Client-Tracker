MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Api"]
       20 GETTABLEKS                       R4 R5 K9 ["AssetUpload"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R6 R7 K8 ["Api"]
       29 GETTABLEKS                       R5 R6 K10 ["GenerateMesh"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R8 K1 [script]
       36 GETTABLEKS                       R7 R8 K8 ["Api"]
       38 GETTABLEKS                       R6 R7 K11 ["GenerateModel"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K8 ["Api"]
       47 GETTABLEKS                       R7 R8 K12 ["GeneratePrimitive"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K15 [table.freeze]
       52 DUPTABLE                         R8 K16 [{"AssetUpload", "GenerateMesh", "GenerateModel", "GeneratePrimitive"}]
       53 SETTABLEKS                       R3 R8 K9 ["AssetUpload"]
       55 SETTABLEKS                       R4 R8 K10 ["GenerateMesh"]
       57 SETTABLEKS                       R5 R8 K11 ["GenerateModel"]
       59 SETTABLEKS                       R6 R8 K12 ["GeneratePrimitive"]
       61 CALL                             R7 1 -1
       62 RETURN                           R7 -1
