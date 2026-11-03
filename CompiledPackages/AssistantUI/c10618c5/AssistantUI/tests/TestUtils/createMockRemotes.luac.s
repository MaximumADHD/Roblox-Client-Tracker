PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetIdentity"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R5 R2 K0 ["net"]
        5 JUMPIFNOT                        R5 ; [+3]
        6 GETTABLEKS                       R3 R2 K0 ["net"]
        8 JUMP                             ; [+19]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K1 ["create"]
       12 MOVE                             R6 R2
       13 CALL                             R5 1 2
       14 MOVE                             R3 R5
       15 MOVE                             R4 R6
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["new"]
       19 MOVE                             R6 R3
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R5 R5 K3 ["getIdentity"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          REF R3
       25 NAMECALL                         R5 R5 K4 ["Connect"]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K2 ["new"]
       30 MOVE                             R6 R3
       31 CALL                             R5 1 1
       32 JUMPIFNOT                        R1 ; [+23]
       33 MOVE                             R6 R1
       34 LOADNIL                          R7
       35 LOADNIL                          R8
       36 FORGPREP                         R6
       37 GETTABLE                         R11 R5 R9
       38 LOADK                            R14 K5 ["createMockRemotes: no remote named \"%*\""]
       39 MOVE                             R16 R9
       40 NAMECALL                         R14 R14 K6 ["format"]
       42 CALL                             R14 2 1
       43 FASTCALL2                        ASSERT R11 R14 ; [+4]
       45 MOVE                             R13 R11
       46 GETIMPORT                        R12 K8 [assert]
       48 CALL                             R12 2 0
       49 NEWCLOSURE                       R14 P1
       50 CAPTURE                          VAL R10
       51 NAMECALL                         R12 R11 K4 ["Connect"]
       53 CALL                             R12 2 0
       54 FORGLOOP                         R6 2 ; [-18]
       56 MOVE                             R6 R5
       57 MOVE                             R7 R4
       58 MOVE                             R8 R3
       59 CLOSEUPVALS                      R3
       60 RETURN                           R6 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Remotes"]
       18 GETTABLEKS                       R4 R4 K9 ["NetworkingRemotes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["RecordingNetworking"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_2]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 RETURN                           R5 1
