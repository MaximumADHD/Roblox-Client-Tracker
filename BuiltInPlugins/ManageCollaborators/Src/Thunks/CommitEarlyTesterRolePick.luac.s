PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["id"]
        5 NAMECALL                         R0 R0 K1 ["getRoleMembers"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R0 K1 [pcall]
        7 CALL                             R0 1 2
        8 JUMPIFNOT                        R0 ; [+30]
        9 GETUPVAL                         R2 3
       10 GETUPVAL                         R4 4
       11 GETUPVAL                         R5 5
       12 GETTABLEKS                       R5 R5 K2 ["UsingExisting"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K3 ["id"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K4 ["name"]
       20 MOVE                             R8 R1
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K5 ["isPrivate"]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K6 ["color"]
       27 CALL                             R4 6 -1
       28 NAMECALL                         R2 R2 K7 ["dispatch"]
       30 CALL                             R2 -1 0
       31 GETUPVAL                         R2 3
       32 GETUPVAL                         R4 6
       33 MOVE                             R5 R1
       34 CALL                             R4 1 -1
       35 NAMECALL                         R2 R2 K7 ["dispatch"]
       37 CALL                             R2 -1 0
       38 JUMP                             ; [+15]
       39 GETIMPORT                        R2 K9 [warn]
       41 LOADK                            R3 K10 ["Failed to fetch members for role"]
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R4 R4 K3 ["id"]
       45 MOVE                             R5 R1
       46 CALL                             R2 3 0
       47 GETUPVAL                         R2 3
       48 GETUPVAL                         R4 7
       49 LOADK                            R5 K11 ["Error.LoadingRoleMembers"]
       50 CALL                             R4 1 -1
       51 NAMECALL                         R2 R2 K7 ["dispatch"]
       53 CALL                             R2 -1 0
       54 GETUPVAL                         R2 3
       55 GETUPVAL                         R4 8
       56 GETUPVAL                         R5 9
       57 GETTABLEKS                       R5 R5 K12 ["Main"]
       59 CALL                             R4 1 -1
       60 NAMECALL                         R2 R2 K7 ["dispatch"]
       62 CALL                             R2 -1 0
       63 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["EarlyTesters"]
        5 GETTABLEKS                       R4 R3 K2 ["PickedRoleId"]
        7 JUMPIF                           R4 ; [+2]
        8 GETTABLEKS                       R4 R3 K3 ["PendingRoleId"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 RETURN                           R0 0
       13 LOADNIL                          R5
       14 GETTABLEKS                       R6 R3 K4 ["AllRoles"]
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 GETTABLEKS                       R11 R10 K5 ["id"]
       21 JUMPIFNOTEQ                      R11 R4 ; [+3]
       23 MOVE                             R5 R10
       24 JUMP                             ; [+2]
       25 FORGLOOP                         R6 2 ; [-7]
       27 JUMPIFNOTEQKNIL                  R5 ; [+3]
       29 CLOSEUPVALS                      R5
       30 RETURN                           R0 0
       31 GETTABLEKS                       R6 R2 K6 ["GameOwnerMetadata"]
       33 GETTABLEKS                       R6 R6 K7 ["creatorId"]
       35 GETTABLEKS                       R7 R1 K8 ["earlyTesterController"]
       37 GETIMPORT                        R8 K11 [coroutine.wrap]
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R6
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CALL                             R8 1 1
       51 MOVE                             R9 R8
       52 CALL                             R9 0 0
       53 CLOSEUPVALS                      R5
       54 RETURN                           R0 0

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetEarlyTesterPendingRole"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Actions"]
       24 GETTABLEKS                       R3 R3 K8 ["SetEarlyTesterSaveError"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K6 ["Actions"]
       33 GETTABLEKS                       R4 R4 K9 ["SetEarlyTesterScreen"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K5 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Thunks"]
       42 GETTABLEKS                       R5 R5 K11 ["LoadEarlyTesterMemberEligibility"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K5 ["Src"]
       49 GETTABLEKS                       R6 R6 K12 ["Util"]
       51 GETTABLEKS                       R6 R6 K13 ["EarlyTesterMode"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K4 [require]
       56 GETTABLEKS                       R7 R0 K5 ["Src"]
       58 GETTABLEKS                       R7 R7 K12 ["Util"]
       60 GETTABLEKS                       R7 R7 K14 ["EarlyTesterScreen"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K15 [PROTO_3]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 RETURN                           R7 1
