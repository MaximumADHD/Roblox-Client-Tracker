PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADNIL                          R2
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R2 R1 K1 ["userVote"]
        8 JUMPIFEQKNIL                     R2 ; [+9]
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R5 1
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R2
       14 CALL                             R5 2 -1
       15 NAMECALL                         R3 R3 K2 ["dispatch"]
       17 CALL                             R3 -1 0
       18 GETUPVAL                         R3 0
       19 GETUPVAL                         R5 3
       20 GETUPVAL                         R6 2
       21 LOADB                            R7 0
       22 LOADB                            R8 1
       23 CALL                             R5 3 -1
       24 NAMECALL                         R3 R3 K2 ["dispatch"]
       26 CALL                             R3 -1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETIMPORT                        R1 K2 [warn]
        7 LOADK                            R2 K3 ["Could not get vote data"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 GETUPVAL                         R1 1
       17 GETUPVAL                         R3 3
       18 GETUPVAL                         R4 4
       19 LOADB                            R5 0
       20 LOADB                            R6 1
       21 CALL                             R3 3 -1
       22 NAMECALL                         R1 R1 K4 ["dispatch"]
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+31]
        2 NAMECALL                         R1 R0 K0 ["getState"]
        4 CALL                             R1 1 1
        5 JUMPIFEQKNIL                     R1 ; [+27]
        7 GETTABLEKS                       R2 R1 K1 ["voting"]
        9 JUMPIFEQKNIL                     R2 ; [+23]
       11 GETTABLEKS                       R3 R1 K1 ["voting"]
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R2 R3 R4
       15 JUMPIFEQKNIL                     R2 ; [+17]
       17 GETTABLEKS                       R4 R1 K1 ["voting"]
       19 GETUPVAL                         R5 1
       20 GETTABLE                         R3 R4 R5
       21 GETTABLEKS                       R2 R3 K2 ["VoteFetchAttempted"]
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 2
       26 GETUPVAL                         R5 1
       27 LOADB                            R6 1
       28 LOADB                            R7 1
       29 CALL                             R4 3 -1
       30 NAMECALL                         R2 R0 K3 ["dispatch"]
       32 CALL                             R2 -1 0
       33 GETUPVAL                         R1 3
       34 GETUPVAL                         R3 1
       35 GETUPVAL                         R4 4
       36 NAMECALL                         R1 R1 K4 ["getVote"]
       38 CALL                             R1 3 1
       39 NEWCLOSURE                       R3 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 NEWCLOSURE                       R4 P1
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U1
       50 NAMECALL                         R1 R1 K5 ["andThen"]
       52 CALL                             R1 3 -1
       53 RETURN                           R1 -1

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R3
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Actions"]
       26 GETTABLEKS                       R3 R4 K9 ["NetworkError"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R6 R0 K5 ["Src"]
       33 GETTABLEKS                       R5 R6 K8 ["Actions"]
       35 GETTABLEKS                       R4 R5 K10 ["GetVote"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K4 [require]
       40 GETTABLEKS                       R7 R0 K5 ["Src"]
       42 GETTABLEKS                       R6 R7 K8 ["Actions"]
       44 GETTABLEKS                       R5 R6 K11 ["SetVoteLoading"]
       46 CALL                             R4 1 1
       47 DUPCLOSURE                       R5 K12 [PROTO_3]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 RETURN                           R5 1
