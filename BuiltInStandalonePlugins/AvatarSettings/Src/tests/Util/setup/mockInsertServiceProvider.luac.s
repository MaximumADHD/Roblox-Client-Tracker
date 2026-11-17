PROTO_0:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1
       10 GETIMPORT                        R2 K2 [Instance.new]
       12 LOADK                            R3 K3 ["Part"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["loadAsset"]}]
        1 DUPCLOSURE                       R2 K4 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R2 R1 K2 ["loadAsset"]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K5 ["Provider"]
       10 DUPTABLE                         R4 K7 [{"value"}]
       11 SETTABLEKS                       R1 R4 K6 ["value"]
       13 GETTABLEKS                       R5 R0 K8 ["children"]
       15 CALL                             R2 3 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["InsertServiceContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["tests"]
       31 GETTABLEKS                       R4 R4 K13 ["Util"]
       33 GETTABLEKS                       R4 R4 K14 ["getMockAnimationAsset"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K13 ["Util"]
       42 GETTABLEKS                       R5 R5 K15 ["isAnimationAssetType"]
       44 CALL                             R4 1 1
       45 GETTABLEKS                       R5 R2 K16 ["createElement"]
       47 DUPCLOSURE                       R6 K17 [PROTO_1]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R1
       52 RETURN                           R6 1
