PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 JUMPIF                           R3 ; [+2]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETIMPORT                        R3 K3 [Enum.AssetType.Animation]
        8 GETTABLEKS                       R3 R3 K4 ["Value"]
       10 JUMPIFNOTEQ                      R1 R3 ; [+2]
       12 RETURN                           R0 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["loadAsset"]
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 CALL                             R3 2 1
       19 JUMPIF                           R3 ; [+2]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R3
       24 MOVE                             R6 R2
       25 CALL                             R4 2 -1
       26 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["default"]
        7 JUMPIFEQKB                       R4 FALSE ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Non-default InsertServiceContext expected"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 DUPTABLE                         R3 K7 [{["default"] = False, ["getAnimationIdFrom"]}]
       22 SETTABLEKS                       R2 R3 K6 ["getAnimationIdFrom"]
       24 GETUPVAL                         R4 4
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K8 ["Provider"]
       28 DUPTABLE                         R6 K10 [{"value"}]
       29 SETTABLEKS                       R3 R6 K9 ["value"]
       31 GETTABLEKS                       R7 R0 K11 ["children"]
       33 CALL                             R4 3 -1
       34 RETURN                           R4 -1

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
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       26 GETTABLEKS                       R3 R3 K10 ["LoadAnimationProvider"]
       28 GETTABLEKS                       R3 R3 K11 ["LoadAnimationContext"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K6 ["Src"]
       35 GETTABLEKS                       R4 R4 K12 ["Util"]
       37 GETTABLEKS                       R4 R4 K13 ["LoadAnimationTypes"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K14 ["Packages"]
       44 GETTABLEKS                       R5 R5 K15 ["React"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Src"]
       51 GETTABLEKS                       R6 R6 K7 ["Components"]
       53 GETTABLEKS                       R6 R6 K8 ["Contexts"]
       55 GETTABLEKS                       R6 R6 K10 ["LoadAnimationProvider"]
       57 GETTABLEKS                       R6 R6 K16 ["getAnimationIdFrom"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K6 ["Src"]
       64 GETTABLEKS                       R7 R7 K12 ["Util"]
       66 GETTABLEKS                       R7 R7 K17 ["isAnimationAssetType"]
       68 CALL                             R6 1 1
       69 GETTABLEKS                       R7 R4 K18 ["createElement"]
       71 DUPCLOSURE                       R8 K19 [PROTO_1]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R2
       78 RETURN                           R8 1
