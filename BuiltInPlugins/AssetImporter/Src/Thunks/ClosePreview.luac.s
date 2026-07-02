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
       21 GETUPVAL                         R4 2
       22 CALL                             R4 0 -1
       23 NAMECALL                         R2 R0 K6 ["dispatch"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 RETURN                           R0 1

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
       18 GETTABLEKS                       R4 R1 K9 ["SetShowPreview"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R0 K4 ["Src"]
       25 GETTABLEKS                       R5 R5 K10 ["Thunks"]
       27 GETTABLEKS                       R5 R5 K11 ["UpdateQueueItem"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_1]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 RETURN                           R5 1
