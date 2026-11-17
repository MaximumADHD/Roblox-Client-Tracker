PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 LOADNIL                          R5
        8 DUPTABLE                         R6 K10 [{["searchTerm"] = "", ["sortIndex"], ["groupIndex"], ["targetPage"] = 1, ["currentPage"] = 0, ["requestReason"]}]
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R7 R7 K11 ["getDefaultSortForGroups"]
       12 NAMECALL                         R8 R0 K12 ["getState"]
       14 CALL                             R8 1 1
       15 GETTABLEKS                       R8 R8 K13 ["pageInfo"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K3 ["sortIndex"]
       20 GETUPVAL                         R7 4
       21 SETTABLEKS                       R7 R6 K4 ["groupIndex"]
       23 GETUPVAL                         R7 5
       24 GETTABLEKS                       R7 R7 K14 ["ChangeGroup"]
       26 SETTABLEKS                       R7 R6 K9 ["requestReason"]
       28 CALL                             R3 3 -1
       29 NAMECALL                         R1 R0 K0 ["dispatch"]
       31 CALL                             R1 -1 0
       32 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

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
       17 GETTABLEKS                       R2 R2 K7 ["Sort"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R3 K6 ["Types"]
       26 GETTABLEKS                       R3 R3 K8 ["RequestReason"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K5 ["Src"]
       33 GETTABLEKS                       R4 R4 K9 ["Networking"]
       35 GETTABLEKS                       R4 R4 K10 ["Requests"]
       37 GETTABLEKS                       R4 R4 K11 ["UpdatePageInfoAndSendRequest"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R5 R0 K5 ["Src"]
       44 GETTABLEKS                       R5 R5 K12 ["Actions"]
       46 GETTABLEKS                       R5 R5 K13 ["StopAllSounds"]
       48 CALL                             R4 1 1
       49 DUPCLOSURE                       R5 K14 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 RETURN                           R5 1
