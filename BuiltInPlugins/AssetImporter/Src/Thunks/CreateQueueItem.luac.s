PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["Sessions"]
        5 GETTABLEKS                       R2 R2 K2 ["sessionQueue"]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R0 K3 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 0
       18 CALL                             R1 1 2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K4 ["new"]
       22 DUPTABLE                         R4 K11 [{"assetName", "fileType", "filepath", "sortOrder", "state", "enabled"}]
       23 SETTABLEKS                       R1 R4 K5 ["assetName"]
       25 SETTABLEKS                       R2 R4 K6 ["fileType"]
       27 GETUPVAL                         R5 0
       28 SETTABLEKS                       R5 R4 K7 ["filepath"]
       30 GETUPVAL                         R5 4
       31 SETTABLEKS                       R5 R4 K8 ["sortOrder"]
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K12 ["SessionState"]
       36 GETTABLEKS                       R5 R5 K13 ["Parsing"]
       38 SETTABLEKS                       R5 R4 K9 ["state"]
       40 LOADB                            R5 1
       41 SETTABLEKS                       R5 R4 K10 ["enabled"]
       43 CALL                             R3 1 1
       44 GETUPVAL                         R5 4
       45 ADDK                             R4 R5 K14 [1]
       46 SETUPVAL                         R4 4
       47 GETUPVAL                         R6 6
       48 MOVE                             R7 R3
       49 CALL                             R6 1 -1
       50 NAMECALL                         R4 R0 K3 ["dispatch"]
       52 CALL                             R4 -1 0
       53 RETURN                           R3 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["AddQueueItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["RemoveQueueItem"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Types"]
       38 GETTABLEKS                       R5 R5 K11 ["QueuedSession"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Utility"]
       47 GETTABLEKS                       R6 R6 K13 ["parseFilename"]
       49 CALL                             R5 1 1
       50 LOADN                            R6 1
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          REF R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 CLOSEUPVALS                      R6
       59 RETURN                           R7 1
