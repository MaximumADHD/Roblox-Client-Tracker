PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["searchGroupMembers"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 3
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K2 ["getState"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R3 R3 K3 ["EarlyTesters"]
       13 GETTABLEKS                       R3 R3 K4 ["SearchQuery"]
       15 GETUPVAL                         R4 2
       16 JUMPIFEQ                         R3 R4 ; [+2]
       18 RETURN                           R0 0
       19 JUMPIFNOT                        R0 ; [+16]
       20 GETUPVAL                         R3 3
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R1
       23 MOVE                             R7 R2
       24 CALL                             R5 2 -1
       25 NAMECALL                         R3 R3 K5 ["dispatch"]
       27 CALL                             R3 -1 0
       28 GETUPVAL                         R3 3
       29 GETUPVAL                         R5 5
       30 MOVE                             R6 R1
       31 CALL                             R5 1 -1
       32 NAMECALL                         R3 R3 K5 ["dispatch"]
       34 CALL                             R3 -1 0
       35 RETURN                           R0 0
       36 GETIMPORT                        R3 K7 [warn]
       38 LOADK                            R4 K8 ["Failed to search group members"]
       39 MOVE                             R5 R1
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 3
       42 GETUPVAL                         R5 6
       43 LOADB                            R6 0
       44 CALL                             R5 1 -1
       45 NAMECALL                         R3 R3 K5 ["dispatch"]
       47 CALL                             R3 -1 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["earlyTesterController"]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 CALL                             R5 1 -1
        5 NAMECALL                         R3 R0 K1 ["dispatch"]
        7 CALL                             R3 -1 0
        8 GETUPVAL                         R5 2
        9 LOADB                            R6 1
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R0 K1 ["dispatch"]
       13 CALL                             R3 -1 0
       14 GETIMPORT                        R3 K4 [coroutine.wrap]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U2
       24 CALL                             R3 1 1
       25 MOVE                             R4 R3
       26 CALL                             R4 0 0
       27 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetGroupMemberSearchQuery"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetGroupMemberSearchResults"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K9 ["Thunks"]
       33 GETTABLEKS                       R4 R4 K10 ["LoadEarlyTesterMemberEligibility"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K6 ["Actions"]
       42 GETTABLEKS                       R5 R5 K11 ["SetGroupMemberSearchResultsLoading"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K12 [PROTO_3]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 RETURN                           R5 1
