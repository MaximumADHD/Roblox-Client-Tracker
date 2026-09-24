PROTO_0:
        0 LOADK                            R0 K0 ["rbxasset://textures/StudioToolbox/AvatarAnimationsThumbnail.png"]
        1 RETURN                           R0 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["EmoteAnimation"] ; [+3]
        2 LOADK                            R1 K1 ["rbxasset://textures/StudioToolbox/DefaultEmoteAnimation.png"]
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLE                         R2 R1 R0
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 LOADNIL                          R2
       13 RETURN                           R2 1
       14 LOADK                            R3 K3 ["rbxasset://textures/StudioToolbox/"]
       15 MOVE                             R4 R0
       16 LOADK                            R5 K4 ["Thumbnail.png"]
       17 CONCAT                           R2 R3 R5
       18 RETURN                           R2 1

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
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["getAvatarAnimationsBundleThumbnailUri"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K12 ["getAvatarAnimationPartThumbnailUri"]
       25 RETURN                           R2 1
