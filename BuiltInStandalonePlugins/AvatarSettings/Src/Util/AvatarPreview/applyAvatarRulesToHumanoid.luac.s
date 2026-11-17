PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ApplyAvatarRules"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarRules"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+30]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["invalidate"]
       10 MOVE                             R3 R0
       11 LOADB                            R4 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R3 K3 [pcall]
       22 CALL                             R3 1 2
       23 NAMECALL                         R5 R2 K4 ["Destroy"]
       25 CALL                             R5 1 0
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K1 ["invalidate"]
       29 MOVE                             R6 R0
       30 CALL                             R5 1 0
       31 JUMPIF                           R3 ; [+4]
       32 GETIMPORT                        R5 K6 [error]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 RETURN                           R0 0
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R0 K7 ["ApplyAvatarRules"]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["BridgingFiles"]
       15 GETTABLEKS                       R2 R2 K9 ["AssetDmFiles"]
       17 GETTABLEKS                       R2 R2 K10 ["assetDmUtils"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Src"]
       24 GETTABLEKS                       R3 R3 K7 ["Util"]
       26 GETTABLEKS                       R3 R3 K11 ["AvatarPreview"]
       28 GETTABLEKS                       R3 R3 K12 ["createPreviewAvatarRules"]
       30 CALL                             R2 1 1
       31 GETIMPORT                        R3 K5 [require]
       33 GETTABLEKS                       R4 R0 K6 ["Src"]
       35 GETTABLEKS                       R4 R4 K13 ["Flags"]
       37 GETTABLEKS                       R4 R4 K14 ["getFFlagAvatarSettingsPreviewRemovalHighlight"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K6 ["Src"]
       44 GETTABLEKS                       R5 R5 K7 ["Util"]
       46 GETTABLEKS                       R5 R5 K11 ["AvatarPreview"]
       48 GETTABLEKS                       R5 R5 K15 ["removalHighlightResults"]
       50 CALL                             R4 1 1
       51 DUPCLOSURE                       R5 K16 [PROTO_1]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 RETURN                           R5 1
