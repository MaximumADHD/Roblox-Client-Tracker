PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["IsUpdate"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["requestReason"]
        6 CALL                             R1 1 1
        7 JUMPIF                           R1 ; [+5]
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 -1
       10 NAMECALL                         R1 R0 K2 ["dispatch"]
       12 CALL                             R1 -1 0
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 4
       16 CALL                             R3 2 -1
       17 NAMECALL                         R1 R0 K2 ["dispatch"]
       19 CALL                             R1 -1 0
       20 NAMECALL                         R2 R0 K3 ["getState"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R1 R2 K4 ["pageInfo"]
       25 GETTABLEKS                       R2 R1 K5 ["audioSearchInfo"]
       27 GETTABLEKS                       R3 R1 K6 ["categoryName"]
       29 GETUPVAL                         R4 5
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+12]
       32 JUMPIFNOTEQKNIL                  R2 ; [+11]
       34 DUPTABLE                         R4 K9 [{"minDuration", "maxDuration"}]
       35 LOADN                            R5 0
       36 SETTABLEKS                       R5 R4 K7 ["minDuration"]
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R5 R6 K10 ["MAX_AUDIO_SEARCH_DURATION"]
       41 SETTABLEKS                       R5 R4 K8 ["maxDuration"]
       43 MOVE                             R2 R4
       44 GETUPVAL                         R6 7
       45 GETTABLEKS                       R5 R6 K11 ["API_NAMES"]
       47 GETTABLE                         R4 R5 R3
       48 JUMPIFNOT                        R4 ; [+11]
       49 GETUPVAL                         R6 8
       50 GETUPVAL                         R7 9
       51 MOVE                             R8 R3
       52 MOVE                             R9 R2
       53 MOVE                             R10 R1
       54 GETUPVAL                         R11 4
       55 CALL                             R6 5 -1
       56 NAMECALL                         R4 R0 K2 ["dispatch"]
       58 CALL                             R4 -1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 10
       61 GETUPVAL                         R7 9
       62 MOVE                             R8 R1
       63 CALL                             R6 2 -1
       64 NAMECALL                         R4 R0 K2 ["dispatch"]
       66 CALL                             R4 -1 0
       67 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Types"]
       17 GETTABLEKS                       R2 R3 K7 ["RequestReason"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R6 R0 K5 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Networking"]
       26 GETTABLEKS                       R4 R5 K9 ["Requests"]
       28 GETTABLEKS                       R3 R4 K10 ["GetAssetsRequest"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R7 R0 K5 ["Src"]
       35 GETTABLEKS                       R6 R7 K8 ["Networking"]
       37 GETTABLEKS                       R5 R6 K9 ["Requests"]
       39 GETTABLEKS                       R4 R5 K11 ["GetToolboxItems"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["Src"]
       46 GETTABLEKS                       R6 R7 K6 ["Types"]
       48 GETTABLEKS                       R5 R6 K12 ["Category"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["Src"]
       55 GETTABLEKS                       R7 R8 K13 ["Actions"]
       57 GETTABLEKS                       R6 R7 K14 ["ClearAssets"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K4 [require]
       62 GETTABLEKS                       R9 R0 K5 ["Src"]
       64 GETTABLEKS                       R8 R9 K13 ["Actions"]
       66 GETTABLEKS                       R7 R8 K15 ["UpdatePageInfo"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K4 [require]
       71 GETTABLEKS                       R10 R0 K5 ["Src"]
       73 GETTABLEKS                       R9 R10 K16 ["Util"]
       75 GETTABLEKS                       R8 R9 K17 ["Constants"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R9 K4 [require]
       80 GETTABLEKS                       R12 R0 K5 ["Src"]
       82 GETTABLEKS                       R11 R12 K16 ["Util"]
       84 GETTABLEKS                       R10 R11 K18 ["ToolboxUtilities"]
       86 CALL                             R9 1 1
       87 GETTABLEKS                       R8 R9 K19 ["showRobloxCreatedAssets"]
       89 DUPCLOSURE                       R9 K20 [PROTO_1]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R2
       98 RETURN                           R9 1
