PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["GroupMembersCursor"]
        5 NAMECALL                         R0 R0 K1 ["getGroupMembersPage"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 3
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R5 4
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 CALL                             R5 2 -1
       13 NAMECALL                         R3 R3 K2 ["dispatch"]
       15 CALL                             R3 -1 0
       16 GETUPVAL                         R3 3
       17 GETUPVAL                         R5 5
       18 MOVE                             R6 R1
       19 CALL                             R5 1 -1
       20 NAMECALL                         R3 R3 K2 ["dispatch"]
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0
       24 GETIMPORT                        R3 K4 [warn]
       26 LOADK                            R4 K5 ["Failed to load group members"]
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 3
       30 GETUPVAL                         R5 6
       31 LOADB                            R6 0
       32 CALL                             R5 1 -1
       33 NAMECALL                         R3 R3 K2 ["dispatch"]
       35 CALL                             R3 -1 0
       36 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["earlyTesterController"]
        2 NAMECALL                         R3 R0 K1 ["getState"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R3 R3 K2 ["EarlyTesters"]
        7 GETTABLEKS                       R4 R3 K3 ["GroupMembersLoading"]
        9 JUMPIF                           R4 ; [+3]
       10 GETTABLEKS                       R4 R3 K4 ["GroupMembersExhausted"]
       12 JUMPIFNOT                        R4 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R6 0
       15 LOADB                            R7 1
       16 CALL                             R6 1 -1
       17 NAMECALL                         R4 R0 K5 ["dispatch"]
       19 CALL                             R4 -1 0
       20 GETIMPORT                        R4 K8 [coroutine.wrap]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U0
       30 CALL                             R4 1 1
       31 MOVE                             R5 R4
       32 CALL                             R5 0 0
       33 RETURN                           R0 0

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
       15 GETTABLEKS                       R2 R2 K7 ["AddGroupMembersPage"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["LoadEarlyTesterMemberEligibility"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K10 ["SetGroupMembersLoading"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K11 [PROTO_3]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 RETURN                           R4 1
