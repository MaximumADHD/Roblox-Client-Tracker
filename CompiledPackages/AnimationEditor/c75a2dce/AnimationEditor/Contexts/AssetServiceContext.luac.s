PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R4 K0 ["CreateAssetVersionAsync"]
        7 CALL                             R4 5 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+4]
        3 GETIMPORT                        R2 K1 [error]
        5 LOADK                            R3 K2 ["SaveInstanceToRobloxAsync is not enabled"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R3 K4 [game]
        9 GETTABLEKS                       R3 R3 K5 ["CreatorType"]
       11 GETIMPORT                        R4 K8 [Enum.CreatorType.Group]
       13 JUMPIFNOTEQ                      R3 R4 ; [+6]
       15 GETIMPORT                        R2 K4 [game]
       17 GETTABLEKS                       R2 R2 K9 ["CreatorId"]
       19 JUMPIF                           R2 ; [+1]
       20 LOADNIL                          R2
       21 GETUPVAL                         R3 1
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 NAMECALL                         R3 R3 K10 ["PromptSaveInstanceToRobloxAsync"]
       27 CALL                             R3 4 -1
       28 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioAssetService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Flags"]
       30 GETTABLEKS                       R5 R5 K14 ["getFFlagSaveInstanceToRobloxAsyncEnabled"]
       32 CALL                             R4 1 1
       33 DUPTABLE                         R5 K17 [{"createAssetVersionAsync", "promptSaveInstanceToRobloxAsync"}]
       34 DUPCLOSURE                       R6 K18 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K15 ["createAssetVersionAsync"]
       38 DUPCLOSURE                       R6 K19 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R6 R5 K16 ["promptSaveInstanceToRobloxAsync"]
       43 GETTABLEKS                       R6 R3 K20 ["createContext"]
       45 MOVE                             R7 R5
       46 CALL                             R6 1 1
       47 RETURN                           R6 1
