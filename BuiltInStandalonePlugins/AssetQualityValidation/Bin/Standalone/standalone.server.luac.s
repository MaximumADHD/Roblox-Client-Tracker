MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableAssetQualityValidation"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [game]
       23 LOADK                            R4 K12 ["EngineAssetQualityValidationV2"]
       24 NAMECALL                         R2 R2 K13 ["GetEngineFeature"]
       26 CALL                             R2 2 1
       27 JUMPIF                           R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K15 [print]
       31 LOADK                            R3 K16 ["AssetQualityValidation Loaded!"]
       32 CALL                             R2 1 0
       33 GETIMPORT                        R2 K5 [require]
       35 GETTABLEKS                       R3 R0 K17 ["Packages"]
       37 GETTABLEKS                       R3 R3 K18 ["TestLoader"]
       39 CALL                             R2 1 1
       40 GETTABLEKS                       R3 R2 K19 ["isCli"]
       42 CALL                             R3 0 1
       43 JUMPIFNOT                        R3 ; [+5]
       44 GETIMPORT                        R3 K21 [error]
       46 LOADK                            R4 K22 ["roblox-cli should not be loading standalone plugins"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0
       49 GETIMPORT                        R3 K5 [require]
       51 GETTABLEKS                       R4 R0 K6 ["Bin"]
       53 GETTABLEKS                       R4 R4 K7 ["Common"]
       55 GETTABLEKS                       R4 R4 K23 ["pluginType"]
       57 CALL                             R3 1 1
       58 GETTABLEKS                       R4 R3 K24 ["get"]
       60 CALL                             R4 0 1
       61 GETTABLEKS                       R5 R3 K25 ["Standalone"]
       63 JUMPIFEQ                         R4 R5 ; [+2]
       65 RETURN                           R0 0
       66 GETIMPORT                        R4 K5 [require]
       68 GETTABLEKS                       R5 R0 K6 ["Bin"]
       70 GETTABLEKS                       R5 R5 K7 ["Common"]
       72 GETTABLEKS                       R5 R5 K26 ["setup"]
       74 CALL                             R4 1 1
       75 GETIMPORT                        R5 K5 [require]
       77 GETTABLEKS                       R6 R0 K6 ["Bin"]
       79 GETTABLEKS                       R6 R6 K7 ["Common"]
       81 GETTABLEKS                       R6 R6 K27 ["setupMain"]
       83 CALL                             R5 1 1
       84 MOVE                             R6 R4
       85 GETIMPORT                        R7 K29 [plugin]
       87 MOVE                             R8 R5
       88 CALL                             R6 2 0
       89 RETURN                           R0 0
