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
       20 GETTABLEKS                       R3 R4 K9 ["Requests"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["tests"]
       32 GETTABLEKS                       R6 R7 K7 ["Util"]
       34 GETTABLEKS                       R5 R6 K11 ["createMockRequests"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R6 R7 K12 ["createNetworking"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K14 [game]
       46 LOADK                            R8 K15 ["DebugAssetPickerUseMockNetworking"]
       47 LOADB                            R9 0
       48 NAMECALL                         R6 R6 K16 ["DefineFastFlag"]
       50 CALL                             R6 3 1
       51 JUMPIFNOT                        R6 ; [+31]
       52 MOVE                             R7 R5
       53 MOVE                             R8 R4
       54 DUPTABLE                         R9 K19 [{"inventories", "universeInfo"}]
       55 GETTABLEKS                       R10 R1 K17 ["inventories"]
       57 SETTABLEKS                       R10 R9 K17 ["inventories"]
       59 DUPTABLE                         R10 K22 [{"gameId", "creatorInfo"}]
       60 GETTABLEKS                       R12 R1 K23 ["universe"]
       62 GETTABLEKS                       R11 R12 K24 ["id"]
       64 SETTABLEKS                       R11 R10 K20 ["gameId"]
       66 DUPTABLE                         R11 K26 [{"id", "type"}]
       67 GETTABLEKS                       R13 R1 K27 ["user"]
       69 GETTABLEKS                       R12 R13 K24 ["id"]
       71 SETTABLEKS                       R12 R11 K24 ["id"]
       73 LOADK                            R12 K28 ["User"]
       74 SETTABLEKS                       R12 R11 K25 ["type"]
       76 SETTABLEKS                       R11 R10 K21 ["creatorInfo"]
       78 SETTABLEKS                       R10 R9 K18 ["universeInfo"]
       80 CALL                             R8 1 -1
       81 CALL                             R7 -1 1
       82 RETURN                           R7 1
       83 MOVE                             R7 R5
       84 MOVE                             R8 R2
       85 CALL                             R7 1 1
       86 RETURN                           R7 1
