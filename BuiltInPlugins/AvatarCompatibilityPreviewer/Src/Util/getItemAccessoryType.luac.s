PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R2 K1 ["source"]
        4 JUMPIFNOTEQKS                    R1 K2 ["builtin"] ; [+15]
        6 GETTABLEKS                       R2 R0 K3 ["palette"]
        8 GETTABLEKS                       R1 R2 K4 ["GetBuiltinItemData"]
       10 GETTABLEKS                       R3 R0 K0 ["item"]
       12 GETTABLEKS                       R2 R3 K5 ["builtinItem"]
       14 CALL                             R1 1 1
       15 MOVE                             R2 R1
       16 JUMPIFNOT                        R2 ; [+2]
       17 GETTABLEKS                       R2 R1 K6 ["accessoryType"]
       19 RETURN                           R2 1
       20 GETUPVAL                         R1 0
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+21]
       23 GETTABLEKS                       R2 R0 K0 ["item"]
       25 GETTABLEKS                       R1 R2 K1 ["source"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K7 ["SOURCE_MARKETPLACE"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+13]
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R3 R0 K3 ["palette"]
       35 GETTABLEKS                       R2 R3 K8 ["Key"]
       37 CALL                             R1 1 2
       38 JUMPIFNOTEQKS                    R2 K9 ["clothing"] ; [+3]
       40 LOADK                            R3 K10 ["layered"]
       41 RETURN                           R3 1
       42 LOADK                            R3 K11 ["rigid"]
       43 RETURN                           R3 1
       44 GETTABLEKS                       R2 R0 K0 ["item"]
       46 GETTABLEKS                       R1 R2 K12 ["instance"]
       48 LOADK                            R3 K13 ["WrapLayer"]
       49 LOADB                            R4 1
       50 NAMECALL                         R1 R1 K14 ["FindFirstChildWhichIsA"]
       52 CALL                             R1 3 1
       53 JUMPIFEQKNIL                     R1 ; [+3]
       55 LOADK                            R1 K10 ["layered"]
       56 RETURN                           R1 1
       57 GETUPVAL                         R1 3
       58 CALL                             R1 0 1
       59 JUMPIFNOT                        R1 ; [+13]
       60 GETTABLEKS                       R2 R0 K0 ["item"]
       62 GETTABLEKS                       R1 R2 K12 ["instance"]
       64 LOADK                            R3 K15 ["WrapTextureTransfer"]
       65 LOADB                            R4 1
       66 NAMECALL                         R1 R1 K14 ["FindFirstChildWhichIsA"]
       68 CALL                             R1 3 1
       69 JUMPIFEQKNIL                     R1 ; [+3]
       71 LOADK                            R1 K16 ["makeup"]
       72 RETURN                           R1 1
       73 LOADK                            R1 K11 ["rigid"]
       74 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Src"]
       18 GETTABLEKS                       R4 R5 K8 ["Util"]
       20 GETTABLEKS                       R3 R4 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K8 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["getPaletteFromKey"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K11 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFFlagAvatarPreviewerMakeup"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K11 ["Flags"]
       47 GETTABLEKS                       R6 R7 K13 ["getFFlagAvatarPreviewerLookComposer"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K14 [PROTO_0]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 RETURN                           R6 1
