PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R8 R5 K0 ["userId"]
        8 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       10 MOVE                             R7 R0
       11 GETIMPORT                        R6 K3 [table.insert]
       13 CALL                             R6 2 0
       14 FORGLOOP                         R1 2 ; [-9]
       16 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["collaborators"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R4 0 1
       11 MOVE                             R5 R1
       12 SETLIST                          R4 R5 1 [1]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K2 ["createElement"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K3 ["Provider"]
       21 DUPTABLE                         R5 K5 [{"value"}]
       22 DUPTABLE                         R6 K10 [{"profileInsightsController", "userInfoController", "trustedFriendLinkController", "universeInfoController", "collaborators"}]
       23 GETUPVAL                         R7 3
       24 DUPTABLE                         R8 K12 [{"userIds"}]
       25 SETTABLEKS                       R2 R8 K11 ["userIds"]
       27 CALL                             R7 1 1
       28 SETTABLEKS                       R7 R6 K6 ["profileInsightsController"]
       30 GETUPVAL                         R7 4
       31 DUPTABLE                         R8 K12 [{"userIds"}]
       32 SETTABLEKS                       R2 R8 K11 ["userIds"]
       34 CALL                             R7 1 1
       35 SETTABLEKS                       R7 R6 K7 ["userInfoController"]
       37 GETUPVAL                         R7 5
       38 DUPTABLE                         R8 K14 [{"userIds", "universeId"}]
       39 SETTABLEKS                       R2 R8 K11 ["userIds"]
       41 GETTABLEKS                       R9 R0 K13 ["universeId"]
       43 SETTABLEKS                       R9 R8 K13 ["universeId"]
       45 CALL                             R7 1 1
       46 SETTABLEKS                       R7 R6 K8 ["trustedFriendLinkController"]
       48 GETUPVAL                         R7 6
       49 DUPTABLE                         R8 K15 [{"universeId"}]
       50 GETTABLEKS                       R9 R0 K13 ["universeId"]
       52 SETTABLEKS                       R9 R8 K13 ["universeId"]
       54 CALL                             R7 1 1
       55 SETTABLEKS                       R7 R6 K9 ["universeInfoController"]
       57 SETTABLEKS                       R1 R6 K0 ["collaborators"]
       59 SETTABLEKS                       R6 R5 K4 ["value"]
       61 GETTABLEKS                       R6 R0 K16 ["children"]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

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
       20 GETTABLEKS                       R4 R2 K10 ["ControllerContext"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["useProfileInsightsController"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["useUserInfoController"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["useTrustedFriendLinkController"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R4 K15 ["useUniverseInfoController"]
       46 CALL                             R8 1 1
       47 NEWTABLE                         R9 0 0
       49 DUPCLOSURE                       R10 K16 [PROTO_1]
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R8
       57 RETURN                           R10 1
