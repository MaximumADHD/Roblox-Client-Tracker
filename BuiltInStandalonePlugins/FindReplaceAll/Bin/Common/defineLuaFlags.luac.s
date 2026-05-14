PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableFindReplaceAll"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["EnableFindReplaceAllMaxResultsSetting"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FindReplaceAllCacheSize"]
        3 NAMECALL                         R0 R0 K3 ["GetFastInt"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FindReplaceAllEnableCache"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FindReplaceKeyboardNavigation"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["FindReplaceOnOpen"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableFindReplaceAllMaxResultsSetting"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["FindReplaceAllEnableCache"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["FindReplaceKeyboardNavigation"]
       18 LOADB                            R3 0
       19 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["FindReplaceOnOpen"]
       25 LOADB                            R3 1
       26 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
       28 CALL                             R0 3 0
       29 GETIMPORT                        R0 K1 [game]
       31 LOADK                            R2 K7 ["FindReplaceAllCacheSize"]
       32 LOADN                            R3 100
       33 NAMECALL                         R0 R0 K8 ["DefineFastInt"]
       35 CALL                             R0 3 0
       36 DUPTABLE                         R0 K15 [{"getFFlagEnableFindReplaceAll", "getFFlagEnableFindReplaceAllMaxResultsSetting", "getFFlagFindReplaceAllCacheSize", "getFFlagFindReplaceAllEnableCache", "getFFlagFindReplaceKeyboardNavigation", "getFFlagFindReplaceOnOpen"}]
       37 DUPCLOSURE                       R1 K16 [PROTO_0]
       38 SETTABLEKS                       R1 R0 K9 ["getFFlagEnableFindReplaceAll"]
       40 DUPCLOSURE                       R1 K17 [PROTO_1]
       41 SETTABLEKS                       R1 R0 K10 ["getFFlagEnableFindReplaceAllMaxResultsSetting"]
       43 DUPCLOSURE                       R1 K18 [PROTO_2]
       44 SETTABLEKS                       R1 R0 K11 ["getFFlagFindReplaceAllCacheSize"]
       46 DUPCLOSURE                       R1 K19 [PROTO_3]
       47 SETTABLEKS                       R1 R0 K12 ["getFFlagFindReplaceAllEnableCache"]
       49 DUPCLOSURE                       R1 K20 [PROTO_4]
       50 SETTABLEKS                       R1 R0 K13 ["getFFlagFindReplaceKeyboardNavigation"]
       52 DUPCLOSURE                       R1 K21 [PROTO_5]
       53 SETTABLEKS                       R1 R0 K14 ["getFFlagFindReplaceOnOpen"]
       55 RETURN                           R0 1
