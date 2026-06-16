PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 DUPTABLE                         R4 K9 [{"postProfileInsights", "postGetTrustedFriendsLink", "postSendRequestToNewParent", "postSendRequestToAllParents", "getUniverseConfiguration"}]
        8 GETUPVAL                         R5 2
        9 SETTABLEKS                       R5 R4 K4 ["postProfileInsights"]
       11 GETUPVAL                         R5 3
       12 SETTABLEKS                       R5 R4 K5 ["postGetTrustedFriendsLink"]
       14 GETUPVAL                         R5 4
       15 SETTABLEKS                       R5 R4 K6 ["postSendRequestToNewParent"]
       17 GETUPVAL                         R5 5
       18 SETTABLEKS                       R5 R4 K7 ["postSendRequestToAllParents"]
       20 GETUPVAL                         R5 6
       21 SETTABLEKS                       R5 R4 K8 ["getUniverseConfiguration"]
       23 SETTABLEKS                       R4 R3 K2 ["value"]
       25 GETTABLEKS                       R4 R0 K10 ["children"]
       27 CALL                             R1 3 -1
       28 RETURN                           R1 -1

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
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["NetworkContext"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Network"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["PostProfileInsights"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["PostGetTrustedFriendLink"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["PostSendRequestToNewParent"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K15 ["PostSendRequestToAllParents"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R4 K16 ["GetUniverseConfiguration"]
       51 CALL                             R9 1 1
       52 DUPCLOSURE                       R10 K17 [PROTO_0]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 RETURN                           R10 1
