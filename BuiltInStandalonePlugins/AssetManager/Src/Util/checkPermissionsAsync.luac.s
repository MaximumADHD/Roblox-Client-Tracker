PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["GetUserId"]
        3 CALL                             R3 1 1
        4 MOVE                             R6 R1
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K1 ["PermissionsSubject"]
        8 GETTABLEKS                       R7 R7 K2 ["User"]
       10 MOVE                             R8 R3
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R9 R9 K3 ["PermissionsAction"]
       14 GETTABLEKS                       R9 R9 K4 ["GrantAssetPermissions"]
       16 MOVE                             R10 R2
       17 NAMECALL                         R4 R0 K5 ["checkAssetsPermissionsAsync"]
       19 CALL                             R4 6 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Services"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["GetService"]
       25 LOADK                            R4 K11 ["StudioService"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
