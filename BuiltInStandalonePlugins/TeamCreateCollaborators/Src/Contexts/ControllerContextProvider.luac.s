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
       15 GETUPVAL                         R3 2
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 3
       18 DUPTABLE                         R5 K3 [{"isGranted"}]
       19 GETTABLEKS                       R6 R3 K2 ["isGranted"]
       21 SETTABLEKS                       R6 R5 K2 ["isGranted"]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K4 ["createElement"]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K5 ["Provider"]
       30 DUPTABLE                         R7 K7 [{"value"}]
       31 DUPTABLE                         R8 K14 [{"profileInsightsController", "userInfoController", "trustedFriendLinkController", "trustedConnectionParentalConsentController", "hasLinkedParentController", "universeInfoController", "collaborators"}]
       32 GETUPVAL                         R9 5
       33 DUPTABLE                         R10 K16 [{"userIds"}]
       34 SETTABLEKS                       R2 R10 K15 ["userIds"]
       36 CALL                             R9 1 1
       37 SETTABLEKS                       R9 R8 K8 ["profileInsightsController"]
       39 GETUPVAL                         R9 6
       40 DUPTABLE                         R10 K16 [{"userIds"}]
       41 SETTABLEKS                       R2 R10 K15 ["userIds"]
       43 CALL                             R9 1 1
       44 SETTABLEKS                       R9 R8 K9 ["userInfoController"]
       46 GETUPVAL                         R9 7
       47 DUPTABLE                         R10 K18 [{"userIds", "universeId"}]
       48 SETTABLEKS                       R2 R10 K15 ["userIds"]
       50 GETTABLEKS                       R11 R0 K17 ["universeId"]
       52 SETTABLEKS                       R11 R10 K17 ["universeId"]
       54 CALL                             R9 1 1
       55 SETTABLEKS                       R9 R8 K10 ["trustedFriendLinkController"]
       57 SETTABLEKS                       R3 R8 K11 ["trustedConnectionParentalConsentController"]
       59 SETTABLEKS                       R4 R8 K12 ["hasLinkedParentController"]
       61 GETUPVAL                         R9 8
       62 DUPTABLE                         R10 K19 [{"universeId"}]
       63 GETTABLEKS                       R11 R0 K17 ["universeId"]
       65 SETTABLEKS                       R11 R10 K17 ["universeId"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K13 ["universeInfoController"]
       70 SETTABLEKS                       R1 R8 K0 ["collaborators"]
       72 SETTABLEKS                       R8 R7 K6 ["value"]
       74 GETTABLEKS                       R8 R0 K20 ["children"]
       76 CALL                             R5 3 -1
       77 RETURN                           R5 -1

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
       44 GETTABLEKS                       R9 R4 K15 ["useTrustedConnectionParentalConsentController"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R4 K16 ["useHasLinkedParentController"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R4 K17 ["useUniverseInfoController"]
       56 CALL                             R10 1 1
       57 NEWTABLE                         R11 0 0
       59 DUPCLOSURE                       R12 K18 [PROTO_1]
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R10
       69 RETURN                           R12 1
