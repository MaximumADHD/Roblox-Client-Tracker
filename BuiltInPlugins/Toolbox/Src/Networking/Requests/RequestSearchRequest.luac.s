PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 NAMECALL                         R1 R0 K1 ["getState"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K2 ["pageInfo"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K3 ["canSort"]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 JUMPIF                           R5 ; [+2]
       16 GETTABLEKS                       R5 R1 K4 ["categoryName"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R2 R1 K5 ["sortIndex"]
       22 JUMPIF                           R2 ; [+1]
       23 LOADN                            R2 1
       24 GETUPVAL                         R5 4
       25 GETUPVAL                         R6 5
       26 GETUPVAL                         R7 6
       27 DUPTABLE                         R8 K20 [{["searchTerm"], ["sortIndex"], ["sortDirection"], ["uiSortIntent"], ["categoryName"], ["targetPage"] = 1, ["currentPage"] = 0, ["requestReason"], ["isTopKeyword"], ["searchSource"], ["querySource"], ["originalUserQuery"], ["originalCorrection"], ["queryParams"]}]
       28 GETUPVAL                         R9 2
       29 SETTABLEKS                       R9 R8 K6 ["searchTerm"]
       31 SETTABLEKS                       R2 R8 K5 ["sortIndex"]
       33 GETUPVAL                         R9 7
       34 GETTABLEKS                       R9 R9 K21 ["None"]
       36 SETTABLEKS                       R9 R8 K7 ["sortDirection"]
       38 GETUPVAL                         R9 7
       39 GETTABLEKS                       R9 R9 K21 ["None"]
       41 SETTABLEKS                       R9 R8 K8 ["uiSortIntent"]
       43 GETUPVAL                         R9 3
       44 SETTABLEKS                       R9 R8 K4 ["categoryName"]
       46 GETUPVAL                         R9 8
       47 GETTABLEKS                       R9 R9 K22 ["StartSearch"]
       49 SETTABLEKS                       R9 R8 K13 ["requestReason"]
       51 GETUPVAL                         R10 9
       52 ORK                              R9 R10 K23 [False]
       53 SETTABLEKS                       R9 R8 K14 ["isTopKeyword"]
       55 GETUPVAL                         R10 2
       56 JUMPIFNOT                        R10 ; [+6]
       57 GETUPVAL                         R9 10
       58 GETTABLEKS                       R9 R9 K24 ["SEARCH_SOURCE"]
       60 GETTABLEKS                       R9 R9 K25 ["KEYWORD"]
       62 JUMP                             ; [+1]
       63 LOADNIL                          R9
       64 SETTABLEKS                       R9 R8 K15 ["searchSource"]
       66 GETUPVAL                         R10 11
       67 JUMPIFNOT                        R10 ; [+2]
       68 GETUPVAL                         R9 11
       69 JUMP                             ; [+5]
       70 GETUPVAL                         R9 12
       71 GETTABLEKS                       R9 R9 K26 ["QuerySource"]
       73 GETTABLEKS                       R9 R9 K27 ["OriginalUserQuery"]
       75 SETTABLEKS                       R9 R8 K16 ["querySource"]
       77 GETUPVAL                         R10 13
       78 JUMPIFNOT                        R10 ; [+2]
       79 GETUPVAL                         R9 13
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 SETTABLEKS                       R9 R8 K17 ["originalUserQuery"]
       84 GETUPVAL                         R10 14
       85 JUMPIFNOT                        R10 ; [+2]
       86 GETUPVAL                         R9 14
       87 JUMP                             ; [+1]
       88 LOADNIL                          R9
       89 SETTABLEKS                       R9 R8 K18 ["originalCorrection"]
       91 GETUPVAL                         R9 7
       92 GETTABLEKS                       R9 R9 K21 ["None"]
       94 SETTABLEKS                       R9 R8 K19 ["queryParams"]
       96 CALL                             R5 3 -1
       97 NAMECALL                         R3 R0 K0 ["dispatch"]
       99 CALL                             R3 -1 0
      100 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R8 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          VAL R6
       15 CAPTURE                          VAL R7
       16 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K7 ["Src"]
       20 GETTABLEKS                       R2 R2 K8 ["Util"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R2 K9 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["Types"]
       33 GETTABLEKS                       R5 R5 K11 ["Sort"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K10 ["Types"]
       42 GETTABLEKS                       R6 R6 K12 ["RequestReason"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K10 ["Types"]
       51 GETTABLEKS                       R7 R7 K13 ["AutocorrectTypes"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETTABLEKS                       R8 R0 K7 ["Src"]
       58 GETTABLEKS                       R8 R8 K14 ["Networking"]
       60 GETTABLEKS                       R8 R8 K15 ["Requests"]
       62 GETTABLEKS                       R8 R8 K16 ["UpdatePageInfoAndSendRequest"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K4 [require]
       67 GETTABLEKS                       R9 R0 K7 ["Src"]
       69 GETTABLEKS                       R9 R9 K17 ["Actions"]
       71 GETTABLEKS                       R9 R9 K18 ["StopAllSounds"]
       73 CALL                             R8 1 1
       74 DUPCLOSURE                       R9 K19 [PROTO_1]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R6
       82 RETURN                           R9 1
