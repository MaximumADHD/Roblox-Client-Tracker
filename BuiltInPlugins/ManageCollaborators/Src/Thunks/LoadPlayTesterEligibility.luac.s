PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["playTestersController"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["getEligibility"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R0 R0 K1 ["GameOwnerMetadata"]
        6 GETTABLEKS                       R0 R0 K2 ["creatorFriends"]
        8 JUMPIF                           R0 ; [+2]
        9 NEWTABLE                         R0 0 0
       11 GETIMPORT                        R1 K4 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 2
       18 JUMPIF                           R1 ; [+5]
       19 GETIMPORT                        R3 K6 [warn]
       21 LOADK                            R4 K7 ["getEligibility failed"]
       22 MOVE                             R5 R2
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 0
       25 NAMECALL                         R3 R3 K0 ["getState"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K8 ["PendingPlayTesters"]
       30 JUMPIFEQKNIL                     R3 ; [+16]
       32 GETTABLEKS                       R4 R3 K9 ["EligibilityPendingLoad"]
       34 GETUPVAL                         R5 3
       35 JUMPIFNOTEQ                      R4 R5 ; [+11]
       37 GETUPVAL                         R4 0
       38 GETUPVAL                         R6 4
       39 JUMPIFNOT                        R1 ; [+2]
       40 MOVE                             R7 R2
       41 JUMP                             ; [+1]
       42 LOADNIL                          R7
       43 CALL                             R6 1 -1
       44 NAMECALL                         R4 R4 K10 ["dispatch"]
       46 CALL                             R4 -1 0
       47 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R5 0
        3 NEWTABLE                         R6 0 0
        5 MOVE                             R7 R2
        6 CALL                             R5 2 -1
        7 NAMECALL                         R3 R0 K0 ["dispatch"]
        9 CALL                             R3 -1 0
       10 GETIMPORT                        R3 K3 [coroutine.wrap]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U0
       18 CALL                             R3 1 1
       19 CALL                             R3 0 0
       20 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetPlayTesterEligibility"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_3]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
