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
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["CreatorType"]
        4 GETIMPORT                        R4 K5 [Enum.CreatorType.Group]
        6 JUMPIFNOTEQ                      R3 R4 ; [+6]
        8 GETIMPORT                        R2 K1 [game]
       10 GETTABLEKS                       R2 R2 K6 ["CreatorId"]
       12 JUMPIF                           R2 ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 MOVE                             R7 R2
       18 NAMECALL                         R3 R3 K7 ["PromptSaveInstanceToRobloxAsync"]
       20 CALL                             R3 4 -1
       21 RETURN                           R3 -1

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
       26 DUPTABLE                         R4 K15 [{"createAssetVersionAsync", "promptSaveInstanceToRobloxAsync"}]
       27 DUPCLOSURE                       R5 K16 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R5 R4 K13 ["createAssetVersionAsync"]
       31 DUPCLOSURE                       R5 K17 [PROTO_1]
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K14 ["promptSaveInstanceToRobloxAsync"]
       35 GETTABLEKS                       R5 R3 K18 ["createContext"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 1
       39 RETURN                           R5 1
