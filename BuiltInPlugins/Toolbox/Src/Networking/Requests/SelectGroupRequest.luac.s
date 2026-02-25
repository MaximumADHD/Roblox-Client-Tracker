PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 LOADNIL                          R5
        8 DUPTABLE                         R6 K7 [{"searchTerm", "sortIndex", "groupIndex", "targetPage", "currentPage", "requestReason"}]
        9 LOADK                            R7 K8 [""]
       10 SETTABLEKS                       R7 R6 K1 ["searchTerm"]
       12 GETUPVAL                         R8 3
       13 GETTABLEKS                       R7 R8 K9 ["getDefaultSortForGroups"]
       15 NAMECALL                         R9 R0 K10 ["getState"]
       17 CALL                             R9 1 1
       18 GETTABLEKS                       R8 R9 K11 ["pageInfo"]
       20 CALL                             R7 1 1
       21 SETTABLEKS                       R7 R6 K2 ["sortIndex"]
       23 GETUPVAL                         R7 4
       24 SETTABLEKS                       R7 R6 K3 ["groupIndex"]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K4 ["targetPage"]
       29 LOADN                            R7 0
       30 SETTABLEKS                       R7 R6 K5 ["currentPage"]
       32 GETUPVAL                         R8 5
       33 GETTABLEKS                       R7 R8 K12 ["ChangeGroup"]
       35 SETTABLEKS                       R7 R6 K6 ["requestReason"]
       37 CALL                             R3 3 -1
       38 NAMECALL                         R1 R0 K0 ["dispatch"]
       40 CALL                             R1 -1 0
       41 RETURN                           R0 0

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
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Types"]
       17 GETTABLEKS                       R2 R3 K7 ["Sort"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K6 ["Types"]
       26 GETTABLEKS                       R3 R4 K8 ["RequestReason"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R7 R0 K5 ["Src"]
       33 GETTABLEKS                       R6 R7 K9 ["Networking"]
       35 GETTABLEKS                       R5 R6 K10 ["Requests"]
       37 GETTABLEKS                       R4 R5 K11 ["UpdatePageInfoAndSendRequest"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K4 [require]
       42 GETTABLEKS                       R7 R0 K5 ["Src"]
       44 GETTABLEKS                       R6 R7 K12 ["Actions"]
       46 GETTABLEKS                       R5 R6 K13 ["StopAllSounds"]
       48 CALL                             R4 1 1
       49 DUPCLOSURE                       R5 K14 [PROTO_1]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 RETURN                           R5 1
