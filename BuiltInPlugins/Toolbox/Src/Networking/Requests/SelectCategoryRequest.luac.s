PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["getDefaultSortForCategory"]
        8 GETUPVAL                         R2 2
        9 CALL                             R1 1 1
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+27]
       14 GETUPVAL                         R3 4
       15 GETTABLEKS                       R3 R3 K2 ["getCurrentTab"]
       17 NAMECALL                         R4 R0 K3 ["getState"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R4 R4 K4 ["pageInfo"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 5
       24 GETTABLEKS                       R4 R4 K5 ["MARKETPLACE_KEY"]
       26 JUMPIFNOTEQ                      R3 R4 ; [+11]
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R4 R4 K6 ["categoryIsVideo"]
       31 GETUPVAL                         R5 2
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R2 R4 K7 ["CREATOR_ROBLOX_DEVELOP_API"]
       37 JUMP                             ; [+3]
       38 GETUPVAL                         R4 5
       39 GETTABLEKS                       R2 R4 K8 ["CREATOR_ROBLOX"]
       41 DUPTABLE                         R3 K24 [{["audioSearchInfo"], ["additionalAudioSearchInfo"], ["categoryName"], ["creator"], ["searchTerm"] = "", ["sortIndex"], ["targetPage"] = 1, ["currentPage"] = 0, ["requestReason"], ["queryParams"], ["uiSortIntent"], ["sortDirection"]}]
       42 GETUPVAL                         R4 6
       43 GETTABLEKS                       R4 R4 K25 ["None"]
       45 SETTABLEKS                       R4 R3 K9 ["audioSearchInfo"]
       47 GETUPVAL                         R4 6
       48 GETTABLEKS                       R4 R4 K25 ["None"]
       50 SETTABLEKS                       R4 R3 K10 ["additionalAudioSearchInfo"]
       52 GETUPVAL                         R4 2
       53 SETTABLEKS                       R4 R3 K11 ["categoryName"]
       55 SETTABLEKS                       R2 R3 K12 ["creator"]
       57 SETTABLEKS                       R1 R3 K15 ["sortIndex"]
       59 GETUPVAL                         R4 7
       60 GETTABLEKS                       R4 R4 K26 ["ChangeCategory"]
       62 SETTABLEKS                       R4 R3 K20 ["requestReason"]
       64 GETUPVAL                         R4 6
       65 GETTABLEKS                       R4 R4 K25 ["None"]
       67 SETTABLEKS                       R4 R3 K21 ["queryParams"]
       69 GETUPVAL                         R4 6
       70 GETTABLEKS                       R4 R4 K25 ["None"]
       72 SETTABLEKS                       R4 R3 K22 ["uiSortIntent"]
       74 GETUPVAL                         R4 6
       75 GETTABLEKS                       R4 R4 K25 ["None"]
       77 SETTABLEKS                       R4 R3 K23 ["sortDirection"]
       79 GETUPVAL                         R6 8
       80 GETUPVAL                         R7 9
       81 GETUPVAL                         R8 10
       82 MOVE                             R9 R3
       83 CALL                             R6 3 -1
       84 NAMECALL                         R4 R0 K0 ["dispatch"]
       86 CALL                             R4 -1 0
       87 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
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
       17 GETTABLEKS                       R2 R2 K7 ["Category"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Types"]
       26 GETTABLEKS                       R3 R3 K8 ["Sort"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K6 ["Types"]
       35 GETTABLEKS                       R4 R4 K9 ["RequestReason"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R4 R0 K10 ["Packages"]
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R6 R4 K11 ["Cryo"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K5 ["Src"]
       49 GETTABLEKS                       R7 R7 K12 ["Util"]
       51 GETTABLEKS                       R7 R7 K13 ["PageInfoHelper"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K5 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Networking"]
       60 GETTABLEKS                       R8 R8 K15 ["Requests"]
       62 GETTABLEKS                       R8 R8 K16 ["UpdatePageInfoAndSendRequest"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R0 K5 ["Src"]
       69 GETTABLEKS                       R9 R9 K17 ["Actions"]
       71 GETTABLEKS                       R9 R9 K18 ["StopAllSounds"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K4 [require]
       76 GETTABLEKS                       R10 R0 K5 ["Src"]
       78 GETTABLEKS                       R10 R10 K12 ["Util"]
       80 GETTABLEKS                       R10 R10 K19 ["ToolboxUtilities"]
       82 CALL                             R9 1 1
       83 GETTABLEKS                       R9 R9 K20 ["showRobloxCreatedAssets"]
       85 DUPCLOSURE                       R10 K21 [PROTO_1]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 RETURN                           R10 1
