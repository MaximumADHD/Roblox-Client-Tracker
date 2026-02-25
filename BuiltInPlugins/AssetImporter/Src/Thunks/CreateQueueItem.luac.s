PROTO_0:
        0 NAMECALL                         R4 R0 K0 ["getState"]
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R3 R4 K1 ["Sessions"]
        5 GETTABLEKS                       R2 R3 K2 ["sessionQueue"]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R0 K3 ["dispatch"]
       15 CALL                             R1 -1 0
       16 LOADNIL                          R1
       17 LOADNIL                          R2
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 0
       23 CALL                             R3 1 2
       24 MOVE                             R1 R3
       25 MOVE                             R2 R4
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R3 R4 K4 ["new"]
       29 DUPTABLE                         R4 K11 [{"assetName", "fileType", "filepath", "sortOrder", "state", "enabled"}]
       30 GETUPVAL                         R6 2
       31 CALL                             R6 0 1
       32 JUMPIFNOT                        R6 ; [+2]
       33 MOVE                             R5 R1
       34 JUMP                             ; [+3]
       35 GETUPVAL                         R5 5
       36 GETUPVAL                         R6 0
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K5 ["assetName"]
       40 GETUPVAL                         R6 2
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+2]
       43 MOVE                             R5 R2
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R4 K6 ["fileType"]
       48 GETUPVAL                         R5 0
       49 SETTABLEKS                       R5 R4 K7 ["filepath"]
       51 GETUPVAL                         R5 6
       52 SETTABLEKS                       R5 R4 K8 ["sortOrder"]
       54 GETUPVAL                         R7 7
       55 GETTABLEKS                       R6 R7 K12 ["SessionState"]
       57 GETTABLEKS                       R5 R6 K13 ["Parsing"]
       59 SETTABLEKS                       R5 R4 K9 ["state"]
       61 LOADB                            R5 1
       62 SETTABLEKS                       R5 R4 K10 ["enabled"]
       64 CALL                             R3 1 1
       65 GETUPVAL                         R5 6
       66 ADDK                             R4 R5 K14 [1]
       67 SETUPVAL                         R4 6
       68 GETUPVAL                         R6 8
       69 MOVE                             R7 R3
       70 CALL                             R6 1 -1
       71 NAMECALL                         R4 R0 K3 ["dispatch"]
       73 CALL                             R4 -1 0
       74 RETURN                           R3 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["AddQueueItem"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["RemoveQueueItem"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R5 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Types"]
       38 GETTABLEKS                       R5 R6 K11 ["QueuedSession"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K12 ["Utility"]
       47 GETTABLEKS                       R6 R7 K13 ["trimFilename"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R9 K12 ["Utility"]
       56 GETTABLEKS                       R7 R8 K14 ["parseFilename"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R10 K15 ["Flags"]
       65 GETTABLEKS                       R8 R9 K16 ["getEFCinUnifiedImportQueue"]
       67 CALL                             R7 1 1
       68 LOADN                            R8 1
       69 NEWCLOSURE                       R9 P0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          REF R8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 CLOSEUPVALS                      R8
       79 RETURN                           R9 1
