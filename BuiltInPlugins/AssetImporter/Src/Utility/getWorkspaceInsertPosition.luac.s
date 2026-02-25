PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R1 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R1 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R0 K4 ["CFrame"]
        8 GETTABLEKS                       R1 R2 K5 ["Position"]
       10 GETTABLEKS                       R3 R0 K4 ["CFrame"]
       12 GETTABLEKS                       R2 R3 K6 ["LookVector"]
       14 GETIMPORT                        R4 K1 [game]
       16 GETTABLEKS                       R3 R4 K2 ["Workspace"]
       18 MOVE                             R5 R1
       19 GETUPVAL                         R7 0
       20 MUL                              R6 R2 R7
       21 NAMECALL                         R3 R3 K7 ["Raycast"]
       23 CALL                             R3 3 1
       24 JUMPIFNOTEQKNIL                  R3 ; [+4]
       26 GETUPVAL                         R5 0
       27 MUL                              R4 R2 R5
       28 RETURN                           R4 1
       29 GETTABLEKS                       R4 R3 K5 ["Position"]
       31 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFIntAssetImportInsertRayMaxDistance"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
