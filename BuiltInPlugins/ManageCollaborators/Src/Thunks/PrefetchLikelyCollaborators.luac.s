PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["SubjectIdKey"]
        5 GETTABLEKS                       R3 R0 K1 ["id"]
        7 SETTABLE                         R3 R1 R2
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["SubjectNameKey"]
       11 GETTABLEKS                       R3 R0 K3 ["name"]
       13 SETTABLE                         R3 R1 R2
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["SubjectDisplayNameKey"]
       17 GETTABLEKS                       R3 R0 K5 ["displayName"]
       19 SETTABLE                         R3 R1 R2
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["IsEligibleKey"]
       23 GETUPVAL                         R4 1
       24 NOT                              R3 R4
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K7 ["IsPrefetchedKey"]
       29 LOADB                            R3 1
       30 SETTABLE                         R3 R1 R2
       31 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SubjectIdKey"]
        3 GETTABLE                         R1 R0 R2
        4 RETURN                           R1 1

PROTO_2:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["SubjectIdKey"]
        4 GETTABLE                         R2 R0 R3
        5 RETURN                           R1 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["gamePermissionsController"]
        3 GETIMPORT                        R2 K2 [game]
        5 GETTABLEKS                       R2 R2 K3 ["GameId"]
        7 GETUPVAL                         R3 1
        8 NAMECALL                         R0 R0 K4 ["creatorEligibilitiesPOST"]
       10 CALL                             R0 3 1
       11 NAMECALL                         R0 R0 K5 ["await"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["likelyCollaboratorsController"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R2 R2 K1 ["GetUserId"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K2 ["getLikelyCollaborators"]
        9 CALL                             R0 -1 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K3 ["List"]
       13 GETTABLEKS                       R1 R1 K4 ["map"]
       15 MOVE                             R2 R0
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CALL                             R1 2 1
       20 GETUPVAL                         R2 4
       21 JUMPIFNOT                        R2 ; [+63]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K3 ["List"]
       25 GETTABLEKS                       R2 R2 K4 ["map"]
       27 MOVE                             R3 R1
       28 DUPCLOSURE                       R4 K5 [PROTO_1]
       29 CAPTURE                          UPVAL U3
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K6 ["Dictionary"]
       34 GETTABLEKS                       R3 R3 K4 ["map"]
       36 MOVE                             R4 R1
       37 DUPCLOSURE                       R5 K7 [PROTO_2]
       38 CAPTURE                          UPVAL U3
       39 CALL                             R3 2 1
       40 GETIMPORT                        R4 K9 [pcall]
       42 NEWCLOSURE                       R5 P3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R2
       45 CALL                             R4 1 2
       46 JUMPIFNOT                        R4 ; [+9]
       47 JUMPIFNOT                        R5 ; [+8]
       48 GETTABLEKS                       R6 R5 K10 ["responseBody"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETTABLEKS                       R6 R5 K10 ["responseBody"]
       53 GETTABLEKS                       R6 R6 K11 ["eligibilityByCreator"]
       55 JUMPIF                           R6 ; [+1]
       56 RETURN                           R0 0
       57 GETIMPORT                        R6 K13 [pairs]
       59 GETTABLEKS                       R7 R5 K10 ["responseBody"]
       61 GETTABLEKS                       R7 R7 K11 ["eligibilityByCreator"]
       63 CALL                             R6 1 3
       64 FORGPREP_NEXT                    R6
       65 GETTABLEKS                       R12 R10 K14 ["userId"]
       67 GETTABLE                         R11 R3 R12
       68 GETUPVAL                         R12 3
       69 GETTABLEKS                       R12 R12 K15 ["IsEligibleKey"]
       71 GETTABLEKS                       R13 R10 K16 ["userIsEligible"]
       73 SETTABLE                         R13 R11 R12
       74 GETTABLEKS                       R12 R10 K14 ["userId"]
       76 GETTABLE                         R11 R3 R12
       77 GETUPVAL                         R12 3
       78 GETTABLEKS                       R12 R12 K17 ["EligibilityTextKey"]
       80 GETTABLEKS                       R13 R10 K18 ["displayText"]
       82 SETTABLE                         R13 R11 R12
       83 FORGLOOP                         R6 2 ; [-19]
       85 GETUPVAL                         R2 5
       86 GETUPVAL                         R4 6
       87 GETTABLEKS                       R4 R4 K19 ["PrefetchLikelyCollaborators"]
       89 MOVE                             R5 R1
       90 CALL                             R4 1 -1
       91 NAMECALL                         R2 R2 K20 ["dispatch"]
       93 CALL                             R2 -1 0
       94 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ManageCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["IsLikelyCollaboratorPrefetchEnabled"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+37]
       19 GETIMPORT                        R2 K5 [require]
       21 GETTABLEKS                       R3 R0 K9 ["Packages"]
       23 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K5 [require]
       28 GETTABLEKS                       R4 R0 K6 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Actions"]
       32 GETTABLEKS                       R4 R4 K12 ["CollaboratorSearchActions"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K14 [game]
       37 LOADK                            R6 K15 ["StudioService"]
       38 NAMECALL                         R4 R4 K16 ["GetService"]
       40 CALL                             R4 2 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K7 ["Util"]
       47 GETTABLEKS                       R6 R6 K17 ["PermissionsConstants"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K18 [PROTO_6]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 RETURN                           R6 1
       56 RETURN                           R0 0
