PROTO_0:
        0 LOADK                            R3 K0 ["BaseImportData"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["ClassName"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIF                           R1 ; [+8]
       10 GETIMPORT                        R2 K4 [warn]
       12 LOADK                            R3 K5 ["Unexpected instance type deriving from BaseImportData: "]
       13 GETTABLEKS                       R4 R0 K2 ["ClassName"]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 1
       17 RETURN                           R2 1
       18 RETURN                           R1 1
       19 GETIMPORT                        R1 K7 [error]
       21 LOADK                            R2 K8 ["Unexpected instance type: "]
       22 GETTABLEKS                       R3 R0 K2 ["ClassName"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["ImportDataProps"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["RootProps"]
       25 GETTABLEKS                       R4 R2 K11 ["MeshProps"]
       27 GETTABLEKS                       R5 R2 K12 ["MaterialProps"]
       29 GETTABLEKS                       R6 R2 K13 ["GroupProps"]
       31 GETTABLEKS                       R7 R2 K14 ["JointProps"]
       33 GETTABLEKS                       R8 R2 K15 ["BaseProps"]
       35 DUPTABLE                         R9 K23 [{"RootImportData", "MeshImportData", "MaterialImportData", "GroupImportData", "JointImportData", "AnimationImportData", "FacsImportData"}]
       36 SETTABLEKS                       R3 R9 K16 ["RootImportData"]
       38 SETTABLEKS                       R4 R9 K17 ["MeshImportData"]
       40 SETTABLEKS                       R5 R9 K18 ["MaterialImportData"]
       42 SETTABLEKS                       R6 R9 K19 ["GroupImportData"]
       44 SETTABLEKS                       R7 R9 K20 ["JointImportData"]
       46 SETTABLEKS                       R8 R9 K21 ["AnimationImportData"]
       48 SETTABLEKS                       R8 R9 K22 ["FacsImportData"]
       50 DUPCLOSURE                       R10 K24 [PROTO_0]
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R8
       53 RETURN                           R10 1
