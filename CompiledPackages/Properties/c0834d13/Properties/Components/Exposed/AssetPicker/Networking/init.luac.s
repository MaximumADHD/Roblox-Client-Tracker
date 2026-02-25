MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["tests"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["MockData"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K9 ["Networking"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["tests"]
       32 GETTABLEKS                       R6 R7 K7 ["Util"]
       34 GETTABLEKS                       R5 R6 K11 ["createMockNetworking"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K13 [game]
       39 LOADK                            R7 K14 ["DebugAssetPickerUseMockNetworking"]
       40 LOADB                            R8 0
       41 NAMECALL                         R5 R5 K15 ["DefineFastFlag"]
       43 CALL                             R5 3 1
       44 JUMPIFNOT                        R5 ; [+12]
       45 MOVE                             R6 R4
       46 DUPTABLE                         R7 K18 [{"scopes", "assets"}]
       47 GETTABLEKS                       R8 R1 K16 ["scopes"]
       49 SETTABLEKS                       R8 R7 K16 ["scopes"]
       51 GETTABLEKS                       R8 R1 K17 ["assets"]
       53 SETTABLEKS                       R8 R7 K17 ["assets"]
       55 CALL                             R6 1 1
       56 RETURN                           R6 1
       57 MOVE                             R6 R2
       58 RETURN                           R6 1
