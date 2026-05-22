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
       22 JUMPIFNOT                        R1 ; [+57]
       23 GETTABLEKS                       R1 R0 K0 ["item"]
       25 GETTABLEKS                       R1 R1 K1 ["source"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K7 ["SOURCE_MARKETPLACE"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+49]
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
       48 CALL                             R1 0 1
       49 JUMPIFNOT                        R1 ; [+18]
       50 GETTABLEKS                       R1 R0 K3 ["palette"]
       52 GETTABLEKS                       R1 R1 K8 ["PublishAssetType"]
       54 GETIMPORT                        R2 K13 [Enum.AssetType.Shirt]
       56 JUMPIFEQ                         R1 R2 ; [+9]
       58 GETIMPORT                        R2 K15 [Enum.AssetType.TShirt]
       60 JUMPIFEQ                         R1 R2 ; [+5]
       62 GETIMPORT                        R2 K17 [Enum.AssetType.Pants]
       64 JUMPIFNOTEQ                      R1 R2 ; [+3]
       66 LOADK                            R2 K18 ["classic"]
       67 RETURN                           R2 1
       68 GETUPVAL                         R1 3
       69 GETTABLEKS                       R2 R0 K3 ["palette"]
       71 GETTABLEKS                       R2 R2 K19 ["Key"]
       73 CALL                             R1 1 2
       74 JUMPIFNOTEQKS                    R2 K20 ["clothing"] ; [+3]
       76 LOADK                            R3 K21 ["layered"]
       77 RETURN                           R3 1
       78 LOADK                            R3 K22 ["rigid"]
       79 RETURN                           R3 1
       80 GETTABLEKS                       R1 R0 K0 ["item"]
       82 GETTABLEKS                       R1 R1 K23 ["instance"]
       84 LOADK                            R3 K24 ["WrapLayer"]
       85 LOADB                            R4 1
       86 NAMECALL                         R1 R1 K25 ["FindFirstChildWhichIsA"]
       88 CALL                             R1 3 1
       89 JUMPIFEQKNIL                     R1 ; [+3]
       91 LOADK                            R1 K21 ["layered"]
       92 RETURN                           R1 1
       93 GETUPVAL                         R1 4
       94 CALL                             R1 0 1
       95 JUMPIFNOT                        R1 ; [+13]
       96 GETTABLEKS                       R1 R0 K0 ["item"]
       98 GETTABLEKS                       R1 R1 K23 ["instance"]
      100 LOADK                            R3 K26 ["WrapTextureTransfer"]
      101 LOADB                            R4 1
      102 NAMECALL                         R1 R1 K25 ["FindFirstChildWhichIsA"]
      104 CALL                             R1 3 1
      105 JUMPIFEQKNIL                     R1 ; [+3]
      107 LOADK                            R1 K27 ["makeup"]
      108 RETURN                           R1 1
      109 LOADK                            R1 K22 ["rigid"]
      110 RETURN                           R1 1

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
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K11 ["Flags"]
       56 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarPreviewerClassicClothingPalettes"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K15 [PROTO_0]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 RETURN                           R7 1
