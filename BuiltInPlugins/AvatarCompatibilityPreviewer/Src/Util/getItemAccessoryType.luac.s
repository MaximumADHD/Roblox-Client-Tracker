PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R1 K1 ["source"]
        4 JUMPIFNOTEQKS                    R1 K2 ["builtin"] ; [+15]
        6 GETTABLEKS                       R1 R0 K3 ["palette"]
        8 GETTABLEKS                       R1 R1 K4 ["GetBuiltinItemData"]
       10 GETTABLEKS                       R2 R0 K0 ["item"]
       12 GETTABLEKS                       R2 R2 K5 ["builtinItem"]
       14 CALL                             R1 1 1
       15 MOVE                             R2 R1
       16 JUMPIFNOT                        R2 ; [+2]
       17 GETTABLEKS                       R2 R1 K6 ["accessoryType"]
       19 RETURN                           R2 1
       20 GETUPVAL                         R1 0
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+36]
       23 GETTABLEKS                       R1 R0 K0 ["item"]
       25 GETTABLEKS                       R1 R1 K1 ["source"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K7 ["SOURCE_MARKETPLACE"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+28]
       32 GETTABLEKS                       R1 R0 K3 ["palette"]
       34 GETTABLEKS                       R1 R1 K8 ["PublishAssetType"]
       36 JUMPIFNOT                        R1 ; [+10]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K9 ["MARKETPLACE_PUBLISH_ASSET_TYPE_TO_MAKEUP_ASSET_TYPE"]
       40 GETTABLEKS                       R3 R0 K3 ["palette"]
       42 GETTABLEKS                       R3 R3 K8 ["PublishAssetType"]
       44 GETTABLE                         R1 R2 R3
       45 JUMPIFNOT                        R1 ; [+1]
       46 RETURN                           R1 1
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R2 R0 K3 ["palette"]
       50 GETTABLEKS                       R2 R2 K10 ["Key"]
       52 CALL                             R1 1 2
       53 JUMPIFNOTEQKS                    R2 K11 ["clothing"] ; [+3]
       55 LOADK                            R3 K12 ["layered"]
       56 RETURN                           R3 1
       57 LOADK                            R3 K13 ["rigid"]
       58 RETURN                           R3 1
       59 GETTABLEKS                       R1 R0 K0 ["item"]
       61 GETTABLEKS                       R1 R1 K14 ["instance"]
       63 LOADK                            R3 K15 ["WrapLayer"]
       64 LOADB                            R4 1
       65 NAMECALL                         R1 R1 K16 ["FindFirstChildWhichIsA"]
       67 CALL                             R1 3 1
       68 JUMPIFEQKNIL                     R1 ; [+3]
       70 LOADK                            R1 K12 ["layered"]
       71 RETURN                           R1 1
       72 GETUPVAL                         R1 3
       73 CALL                             R1 0 1
       74 JUMPIFNOT                        R1 ; [+13]
       75 GETTABLEKS                       R1 R0 K0 ["item"]
       77 GETTABLEKS                       R1 R1 K14 ["instance"]
       79 LOADK                            R3 K17 ["WrapTextureTransfer"]
       80 LOADB                            R4 1
       81 NAMECALL                         R1 R1 K16 ["FindFirstChildWhichIsA"]
       83 CALL                             R1 3 1
       84 JUMPIFEQKNIL                     R1 ; [+3]
       86 LOADK                            R1 K18 ["makeup"]
       87 RETURN                           R1 1
       88 LOADK                            R1 K13 ["rigid"]
       89 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["getPaletteFromKey"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagAvatarPreviewerMakeup"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Flags"]
       47 GETTABLEKS                       R6 R6 K13 ["getFFlagAvatarPreviewerLookComposer"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 RETURN                           R6 1
