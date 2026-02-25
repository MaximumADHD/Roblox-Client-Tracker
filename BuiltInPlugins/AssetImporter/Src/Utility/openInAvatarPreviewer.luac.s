PROTO_0:
        0 NAMECALL                         R3 R2 K0 ["IsR15"]
        2 CALL                             R3 1 1
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R3 R1 K1 ["ValidateUgcBody"]
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 NAMECALL                         R3 R3 K2 ["Get"]
       11 CALL                             R3 1 1
       12 LENGTH                           R4 R3
       13 JUMPIFEQKN                       R4 K3 [1] ; [+2]
       15 RETURN                           R0 0
       16 LOADK                            R5 K4 ["rbxassetid://%*"]
       17 GETTABLEKS                       R8 R0 K5 ["AssetIds"]
       19 GETTABLEKS                       R9 R1 K6 ["id"]
       21 GETTABLE                         R7 R8 R9
       22 NAMECALL                         R5 R5 K7 ["format"]
       24 CALL                             R5 2 1
       25 MOVE                             R4 R5
       26 GETTABLEN                        R5 R3 1
       27 GETTABLEKS                       R6 R0 K8 ["Instance"]
       29 JUMPIFEQ                         R5 R6 ; [+11]
       31 GETTABLEN                        R6 R3 1
       32 LOADK                            R8 K9 ["PackageLink"]
       33 NAMECALL                         R6 R6 K10 ["FindFirstChildWhichIsA"]
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R5 R6 K11 ["PackageId"]
       38 JUMPIFEQ                         R5 R4 ; [+2]
       40 RETURN                           R0 0
       41 GETUPVAL                         R5 1
       42 LOADK                            R7 K1 ["ValidateUgcBody"]
       43 NAMECALL                         R5 R5 K12 ["Fire"]
       45 CALL                             R5 2 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utility"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["MemStorageService"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R1 K9 ["GetService"]
       22 LOADK                            R4 K11 ["Selection"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K12 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R2
       27 RETURN                           R4 1
