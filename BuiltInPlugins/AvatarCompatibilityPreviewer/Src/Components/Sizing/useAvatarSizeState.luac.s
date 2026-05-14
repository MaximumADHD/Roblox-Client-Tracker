PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getBodyTypeSizeSpecification"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["Avatar"]
        7 GETTABLEKS                       R2 R2 K2 ["WorldModel"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ValidationResults"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["computeInvalidBodyPartList"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["Avatar"]
       10 GETTABLEKS                       R1 R1 K3 ["WorldModel"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["ValidationResults"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1
       17 NEWTABLE                         R0 0 0
       19 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ValidationResults"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["getAvatarSizeBoundsFromValidationResults"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["ValidationResults"]
       10 GETUPVAL                         R2 2
       11 CALL                             R0 2 1
       12 JUMPIFNOT                        R0 ; [+1]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["guessAvatarSizeBounds"]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"sizeBounds", "invalidBodyParts"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["sizeBounds"]
        4 GETUPVAL                         R1 1
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["invalidBodyParts"]
       10 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Avatar"}]
        2 GETTABLEKS                       R3 R0 K0 ["Avatar"]
        4 SETTABLEKS                       R3 R2 K0 ["Avatar"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 3
       16 MOVE                             R5 R1
       17 GETTABLEKS                       R6 R0 K0 ["Avatar"]
       19 GETTABLEKS                       R6 R6 K3 ["WorldModel"]
       21 GETTABLEKS                       R7 R0 K0 ["Avatar"]
       23 GETTABLEKS                       R7 R7 K4 ["LatestWorldModelHash"]
       25 SETLIST                          R4 R5 3 [1]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 NEWTABLE                         R5 0 5
       36 GETTABLEKS                       R6 R0 K0 ["Avatar"]
       38 GETTABLEKS                       R6 R6 K3 ["WorldModel"]
       40 GETTABLEKS                       R7 R0 K0 ["Avatar"]
       42 GETTABLEKS                       R7 R7 K4 ["LatestWorldModelHash"]
       44 GETTABLEKS                       R8 R0 K0 ["Avatar"]
       46 GETTABLEKS                       R8 R8 K5 ["WorldModelScale"]
       48 GETTABLEKS                       R9 R0 K0 ["Avatar"]
       50 GETTABLEKS                       R9 R9 K6 ["ProportionalScale"]
       52 GETTABLEKS                       R10 R0 K7 ["ValidationResults"]
       54 SETLIST                          R5 R6 5 [1]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       60 NEWCLOSURE                       R5 P2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 NEWTABLE                         R6 0 3
       67 GETTABLEKS                       R7 R0 K7 ["ValidationResults"]
       69 MOVE                             R8 R1
       70 MOVE                             R9 R2
       71 SETLIST                          R6 R7 3 [1]
       73 CALL                             R4 2 1
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       77 NEWCLOSURE                       R6 P3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R7 0 2
       82 MOVE                             R8 R4
       83 MOVE                             R9 R3
       84 SETLIST                          R7 R8 2 [1]
       86 CALL                             R5 2 1
       87 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Sizing"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSizeSpecificationUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Components"]
       38 GETTABLEKS                       R5 R5 K8 ["Sizing"]
       40 GETTABLEKS                       R5 R5 K13 ["useAvatarProportions"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["UGCValidation"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 RETURN                           R6 1
