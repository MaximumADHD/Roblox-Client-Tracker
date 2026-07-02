PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsUpdate"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["requestReason"]
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
       20 NAMECALL                         R1 R0 K3 ["getState"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R1 R1 K4 ["pageInfo"]
       25 GETTABLEKS                       R2 R1 K5 ["audioSearchInfo"]
       27 GETTABLEKS                       R3 R1 K6 ["categoryName"]
       29 GETUPVAL                         R4 5
       30 CALL                             R4 0 1
       31 JUMPIFNOT                        R4 ; [+9]
       32 JUMPIFNOTEQKNIL                  R2 ; [+8]
       34 DUPTABLE                         R4 K10 [{["minDuration"] = 0, ["maxDuration"]}]
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R5 R5 K11 ["MAX_AUDIO_SEARCH_DURATION"]
       38 SETTABLEKS                       R5 R4 K9 ["maxDuration"]
       40 MOVE                             R2 R4
       41 GETUPVAL                         R5 7
       42 GETTABLEKS                       R5 R5 K12 ["API_NAMES"]
       44 GETTABLE                         R4 R5 R3
       45 JUMPIFNOT                        R4 ; [+11]
       46 GETUPVAL                         R6 8
       47 GETUPVAL                         R7 9
       48 MOVE                             R8 R3
       49 MOVE                             R9 R2
       50 MOVE                             R10 R1
       51 GETUPVAL                         R11 4
       52 CALL                             R6 5 -1
       53 NAMECALL                         R4 R0 K2 ["dispatch"]
       55 CALL                             R4 -1 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R6 10
       58 GETUPVAL                         R7 9
       59 MOVE                             R8 R1
       60 CALL                             R6 2 -1
       61 NAMECALL                         R4 R0 K2 ["dispatch"]
       63 CALL                             R4 -1 0
       64 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 GETTABLEKS                       R2 R2 K7 ["RequestReason"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K8 ["Networking"]
       26 GETTABLEKS                       R3 R3 K9 ["Requests"]
       28 GETTABLEKS                       R3 R3 K10 ["GetAssetsRequest"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K4 [require]
       33 GETTABLEKS                       R4 R0 K5 ["Src"]
       35 GETTABLEKS                       R4 R4 K8 ["Networking"]
       37 GETTABLEKS                       R4 R4 K9 ["Requests"]
       39 GETTABLEKS                       R4 R4 K11 ["GetToolboxItems"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K4 [require]
       44 GETTABLEKS                       R5 R0 K5 ["Src"]
       46 GETTABLEKS                       R5 R5 K6 ["Types"]
       48 GETTABLEKS                       R5 R5 K12 ["Category"]
       50 CALL                             R4 1 1
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R6 R0 K5 ["Src"]
       55 GETTABLEKS                       R6 R6 K13 ["Actions"]
       57 GETTABLEKS                       R6 R6 K14 ["ClearAssets"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K4 [require]
       62 GETTABLEKS                       R7 R0 K5 ["Src"]
       64 GETTABLEKS                       R7 R7 K13 ["Actions"]
       66 GETTABLEKS                       R7 R7 K15 ["UpdatePageInfo"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K4 [require]
       71 GETTABLEKS                       R8 R0 K5 ["Src"]
       73 GETTABLEKS                       R8 R8 K16 ["Util"]
       75 GETTABLEKS                       R8 R8 K17 ["Constants"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K4 [require]
       80 GETTABLEKS                       R9 R0 K5 ["Src"]
       82 GETTABLEKS                       R9 R9 K16 ["Util"]
       84 GETTABLEKS                       R9 R9 K18 ["ToolboxUtilities"]
       86 CALL                             R8 1 1
       87 GETTABLEKS                       R8 R8 K19 ["showRobloxCreatedAssets"]
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
