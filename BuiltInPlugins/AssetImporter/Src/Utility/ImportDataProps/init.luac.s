MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Util"]
       16 GETTABLEKS                       R1 R1 K9 ["strict"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETIMPORT                        R3 K1 [script]
       22 GETTABLEKS                       R3 R3 K10 ["GroupProps"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K11 ["MeshProps"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K12 ["RootProps"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K13 ["MaterialProps"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K14 ["JointProps"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K15 ["BaseProps"]
       59 CALL                             R7 1 1
       60 MOVE                             R8 R1
       61 DUPTABLE                         R9 K16 [{"GroupProps", "MeshProps", "RootProps", "MaterialProps", "JointProps", "BaseProps"}]
       62 SETTABLEKS                       R2 R9 K10 ["GroupProps"]
       64 SETTABLEKS                       R3 R9 K11 ["MeshProps"]
       66 SETTABLEKS                       R4 R9 K12 ["RootProps"]
       68 SETTABLEKS                       R5 R9 K13 ["MaterialProps"]
       70 SETTABLEKS                       R6 R9 K14 ["JointProps"]
       72 SETTABLEKS                       R7 R9 K15 ["BaseProps"]
       74 CALL                             R8 1 1
       75 RETURN                           R8 1
