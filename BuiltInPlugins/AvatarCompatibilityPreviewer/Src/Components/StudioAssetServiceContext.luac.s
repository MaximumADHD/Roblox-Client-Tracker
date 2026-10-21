PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioAssetService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETIMPORT                        R1 K1 [require]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["Src"]
        8 GETTABLEKS                       R2 R2 K3 ["Util"]
       10 GETTABLEKS                       R2 R2 K4 ["AutoSetupUtils"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R1 K5 ["createTemplateBody"]
       15 CALL                             R2 0 -1
       16 RETURN                           R2 -1
       17 GETUPVAL                         R1 2
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R1 3
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K6 ["UploadAndInsertAssetForJobAsync"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1
       25 GETIMPORT                        R1 K8 [error]
       27 LOADK                            R2 K9 ["Calling uploadAndInsertAssetForJobAsync on unmocked StudioAssetService"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETVARARGS                       R2 -1
        5 NAMECALL                         R0 R0 K0 ["ShowSaveToRoblox"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K2 [error]
       11 LOADK                            R1 K3 ["Calling showSaveToRoblox on unmocked StudioAssetService"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagDebugAvatarPreviewerMockAvatarCreation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K12 [pcall]
       25 DUPCLOSURE                       R4 K13 [PROTO_0]
       26 CALL                             R3 1 2
       27 DUPTABLE                         R5 K17 [{"uploadAndInsertAssetForJobAsync", "showSaveToRoblox", "onUGCSubmitCompleted"}]
       28 DUPCLOSURE                       R6 K18 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R6 R5 K14 ["uploadAndInsertAssetForJobAsync"]
       35 DUPCLOSURE                       R6 K19 [PROTO_2]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R5 K15 ["showSaveToRoblox"]
       40 JUMPIFNOT                        R3 ; [+3]
       41 GETTABLEKS                       R6 R4 K20 ["OnUGCSubmitCompleted"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K16 ["onUGCSubmitCompleted"]
       47 GETTABLEKS                       R6 R1 K21 ["createContext"]
       49 MOVE                             R7 R5
       50 CALL                             R6 1 1
       51 RETURN                           R6 1
