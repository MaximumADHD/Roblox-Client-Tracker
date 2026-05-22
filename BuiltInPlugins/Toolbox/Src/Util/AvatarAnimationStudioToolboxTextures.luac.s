PROTO_0:
        0 LOADK                            R0 K0 ["rbxasset://textures/StudioToolbox/AvatarAnimationsThumbnail.png"]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETTABLEKS                       R3 R0 K1 ["Name"]
       14 GETTABLE                         R2 R1 R3
       15 JUMPIFEQKNIL                     R2 ; [+7]
       17 LOADK                            R3 K2 ["rbxasset://textures/StudioToolbox/"]
       18 GETTABLEKS                       R4 R0 K1 ["Name"]
       20 LOADK                            R5 K3 ["Thumbnail.png"]
       21 CONCAT                           R2 R3 R5
       22 RETURN                           R2 1
       23 LOADNIL                          R2
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetConfigConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Flags"]
       22 GETTABLEKS                       R3 R3 K10 ["getFFlagEnableUploadingAvatarAnimations"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 2 0
       27 DUPCLOSURE                       R4 K11 [PROTO_0]
       28 SETTABLEKS                       R4 R3 K12 ["getAvatarAnimationsBundleThumbnailUri"]
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R4 R3 K14 ["getAvatarAnimationPartThumbnailUri"]
       35 RETURN                           R3 1
