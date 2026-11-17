PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETTABLEKS                       R4 R4 K0 ["SearchResultsCursor"]
        6 NAMECALL                         R0 R0 K1 ["searchGroupMembers"]
        8 CALL                             R0 4 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R0 K1 [pcall]
        8 CALL                             R0 1 3
        9 GETUPVAL                         R3 4
       10 NAMECALL                         R3 R3 K2 ["getState"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R3 R3 K3 ["EarlyTesters"]
       15 GETTABLEKS                       R3 R3 K4 ["SearchQuery"]
       17 GETUPVAL                         R4 2
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 JUMPIFNOT                        R0 ; [+16]
       22 GETUPVAL                         R3 4
       23 GETUPVAL                         R5 5
       24 MOVE                             R6 R1
       25 MOVE                             R7 R2
       26 CALL                             R5 2 -1
       27 NAMECALL                         R3 R3 K5 ["dispatch"]
       29 CALL                             R3 -1 0
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R5 6
       32 MOVE                             R6 R1
       33 CALL                             R5 1 -1
       34 NAMECALL                         R3 R3 K5 ["dispatch"]
       36 CALL                             R3 -1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K7 [warn]
       40 LOADK                            R4 K8 ["Failed to load more group member search results"]
       41 MOVE                             R5 R1
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 4
       44 GETUPVAL                         R5 7
       45 LOADB                            R6 0
       46 CALL                             R5 1 -1
       47 NAMECALL                         R3 R3 K5 ["dispatch"]
       49 CALL                             R3 -1 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["earlyTesterController"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["EarlyTesters"]
        7 GETTABLEKS                       R4 R3 K3 ["SearchQuery"]
        9 JUMPIFEQKS                       R4 K4 [""] ; [+7]
       11 GETTABLEKS                       R5 R3 K5 ["SearchResultsLoading"]
       13 JUMPIF                           R5 ; [+3]
       14 GETTABLEKS                       R5 R3 K6 ["SearchResultsExhausted"]
       16 JUMPIFNOT                        R5 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R7 0
       19 LOADB                            R8 1
       20 CALL                             R7 1 -1
       21 NAMECALL                         R5 R0 K7 ["dispatch"]
       23 CALL                             R5 -1 0
       24 GETIMPORT                        R5 K10 [coroutine.wrap]
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U0
       35 CALL                             R5 1 1
       36 MOVE                             R6 R5
       37 CALL                             R6 0 0
       38 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["AddGroupMemberSearchResultsPage"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["LoadEarlyTesterMemberEligibility"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["SetGroupMemberSearchResultsLoading"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R4 1
