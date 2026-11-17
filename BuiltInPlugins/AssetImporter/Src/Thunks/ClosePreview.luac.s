PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Preview"]
        5 GETTABLEKS                       R1 R1 K2 ["activeQueueItem"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R1
       10 DUPTABLE                         R6 K5 [{["settingsChanged"] = True}]
       11 CALL                             R4 2 -1
       12 NAMECALL                         R2 R0 K6 ["dispatch"]
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R4 1
       16 LOADB                            R5 0
       17 CALL                             R4 1 -1
       18 NAMECALL                         R2 R0 K6 ["dispatch"]
       20 CALL                             R2 -1 0
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+6]
       24 GETUPVAL                         R4 3
       25 LOADB                            R5 0
       26 CALL                             R4 1 -1
       27 NAMECALL                         R2 R0 K6 ["dispatch"]
       29 CALL                             R2 -1 0
       30 GETUPVAL                         R4 4
       31 CALL                             R4 0 -1
       32 NAMECALL                         R2 R0 K6 ["dispatch"]
       34 CALL                             R2 -1 0
       35 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["ResetState"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetPreviewLoading"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetShowPreview"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R0 K4 ["Src"]
       30 GETTABLEKS                       R6 R6 K11 ["Thunks"]
       32 GETTABLEKS                       R6 R6 K12 ["UpdateQueueItem"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K7 [require]
       37 GETTABLEKS                       R7 R0 K4 ["Src"]
       39 GETTABLEKS                       R7 R7 K13 ["Flags"]
       41 GETTABLEKS                       R7 R7 K14 ["getFFlagAssetImporterShowPreviewLoading"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K15 [PROTO_1]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 RETURN                           R7 1
