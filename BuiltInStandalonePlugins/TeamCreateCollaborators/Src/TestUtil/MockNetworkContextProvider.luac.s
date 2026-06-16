PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 MOVE                             R2 R1
       10 LOADK                            R3 K2 ["Mock network failure"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["postProfileInsightsResponse"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 MOVE                             R2 R1
       10 LOADK                            R3 K2 ["Mock network failure"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["postGetTrustedFriendsLinkResponse"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 MOVE                             R2 R1
       10 LOADK                            R3 K2 ["Mock network failure"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["postSendRequestToNewParentResponse"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 MOVE                             R2 R1
       10 LOADK                            R3 K2 ["Mock network failure"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["postSendRequestToAllParentsResponse"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["networkDelay"]
        3 CALL                             R2 0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["networkFailure"]
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+4]
        9 MOVE                             R2 R1
       10 LOADK                            R3 K2 ["Mock network failure"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1
       13 MOVE                             R2 R0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["getUniverseConfigurationResponse"]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["defer"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETTABLEKS                       R1 R1 K0 ["mockNetworkConfig"]
        4 JUMPIF                           R1 ; [+1]
        5 GETUPVAL                         R1 3
        6 CALL                             R0 1 1
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R3 0 0
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["createElement"]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K2 ["Provider"]
       17 DUPTABLE                         R3 K4 [{"value"}]
       18 DUPTABLE                         R4 K10 [{"postProfileInsights", "postGetTrustedFriendsLink", "postSendRequestToNewParent", "postSendRequestToAllParents", "getUniverseConfiguration"}]
       19 GETUPVAL                         R5 5
       20 SETTABLEKS                       R5 R4 K5 ["postProfileInsights"]
       22 GETUPVAL                         R5 6
       23 SETTABLEKS                       R5 R4 K6 ["postGetTrustedFriendsLink"]
       25 GETUPVAL                         R5 7
       26 SETTABLEKS                       R5 R4 K7 ["postSendRequestToNewParent"]
       28 GETUPVAL                         R5 8
       29 SETTABLEKS                       R5 R4 K8 ["postSendRequestToAllParents"]
       31 GETUPVAL                         R5 9
       32 SETTABLEKS                       R5 R4 K9 ["getUniverseConfiguration"]
       34 SETTABLEKS                       R4 R3 K3 ["value"]
       36 GETTABLEKS                       R4 R0 K11 ["children"]
       38 CALL                             R1 3 -1
       39 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["NetworkContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K9 ["Src"]
       32 GETTABLEKS                       R4 R4 K12 ["TestUtil"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["MockNetwork"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K17 [{"latencySec", "failureRate"}]
       47 LOADN                            R8 0
       48 SETTABLEKS                       R8 R7 K15 ["latencySec"]
       50 LOADN                            R8 0
       51 SETTABLEKS                       R8 R7 K16 ["failureRate"]
       53 LOADNIL                          R8
       54 NEWCLOSURE                       R9 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          REF R8
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          REF R8
       60 NEWCLOSURE                       R11 P2
       61 CAPTURE                          VAL R2
       62 CAPTURE                          REF R8
       63 NEWCLOSURE                       R12 P3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R8
       66 NEWCLOSURE                       R13 P4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          REF R8
       69 NEWCLOSURE                       R14 P5
       70 CAPTURE                          VAL R1
       71 CAPTURE                          REF R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R13
       80 CLOSEUPVALS                      R8
       81 RETURN                           R14 1
