PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Src"]
        5 GETTABLEKS                       R1 R1 K3 ["Util"]
        7 GETTABLEKS                       R1 R1 K4 ["Services"]
        9 GETTABLEKS                       R1 R1 K5 ["StudioService"]
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K6 ["isCli"]
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEKS                       R2 R0 K7 ["mock"]
       20 CALL                             R2 0 1
       21 JUMP                             ; [+3]
       22 GETTABLEKS                       R2 R0 K8 ["real"]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R1 K5 ["StudioService"]
       27 GETIMPORT                        R1 K1 [require]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K2 ["Src"]
       32 GETTABLEKS                       R2 R2 K3 ["Util"]
       34 GETTABLEKS                       R2 R2 K4 ["Services"]
       36 GETTABLEKS                       R2 R2 K9 ["StartPageService"]
       38 CALL                             R1 1 1
       39 GETUPVAL                         R2 1
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K6 ["isCli"]
       43 CALL                             R4 0 1
       44 JUMPIFNOT                        R4 ; [+4]
       45 GETTABLEKS                       R3 R1 K7 ["mock"]
       47 CALL                             R3 0 1
       48 JUMP                             ; [+3]
       49 GETTABLEKS                       R3 R1 K8 ["real"]
       51 CALL                             R3 0 1
       52 SETTABLEKS                       R3 R2 K9 ["StartPageService"]
       54 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 MOVE                             R4 R3
       21 CALL                             R4 0 0
       22 SETTABLEKS                       R3 R2 K9 ["_load"]
       24 RETURN                           R2 1
