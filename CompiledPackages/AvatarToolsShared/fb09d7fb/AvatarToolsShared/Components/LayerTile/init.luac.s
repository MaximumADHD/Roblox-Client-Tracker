PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        4 ORK                              R2 R3 K1 [1]
        5 GETTABLEKS                       R4 R1 K3 ["ZIndex"]
        7 ORK                              R3 R4 K1 [1]
        8 GETTABLEKS                       R5 R1 K5 ["IsOn"]
       10 ORK                              R4 R5 K4 [False]
       11 GETTABLEKS                       R5 R1 K6 ["Stylizer"]
       13 GETTABLEKS                       R6 R1 K7 ["TileSize"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R5 K7 ["TileSize"]
       18 GETTABLEKS                       R7 R1 K8 ["Model"]
       20 MOVE                             R8 R7
       21 JUMPIFNOT                        R8 ; [+8]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K9 ["createElement"]
       25 GETUPVAL                         R9 1
       26 DUPTABLE                         R10 K10 [{"Model"}]
       27 SETTABLEKS                       R7 R10 K8 ["Model"]
       29 CALL                             R8 2 1
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R9 R10 K9 ["createElement"]
       33 GETUPVAL                         R10 2
       34 DUPTABLE                         R11 K15 [{"Style", "StyleModifier", "Size", "Position", "LayoutOrder", "ZIndex"}]
       35 GETTABLEKS                       R12 R5 K16 ["paneStyle"]
       37 SETTABLEKS                       R12 R11 K11 ["Style"]
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K17 ["Selected"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R12
       45 SETTABLEKS                       R12 R11 K12 ["StyleModifier"]
       47 SETTABLEKS                       R6 R11 K13 ["Size"]
       49 GETTABLEKS                       R12 R1 K14 ["Position"]
       51 SETTABLEKS                       R12 R11 K14 ["Position"]
       53 SETTABLEKS                       R2 R11 K2 ["LayoutOrder"]
       55 SETTABLEKS                       R3 R11 K3 ["ZIndex"]
       57 DUPTABLE                         R12 K19 [{"PreviewThumbnail"}]
       58 SETTABLEKS                       R8 R12 K18 ["PreviewThumbnail"]
       60 CALL                             R9 3 -1
       61 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R4 K1 [script]
        9 GETTABLEKS                       R3 R4 K2 ["Parent"]
       11 GETTABLEKS                       R2 R3 K2 ["Parent"]
       13 GETTABLEKS                       R1 R2 K2 ["Parent"]
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R1 K5 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R1 K6 ["Framework"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K8 ["withContext"]
       29 GETTABLEKS                       R6 R3 K9 ["UI"]
       31 GETTABLEKS                       R7 R6 K10 ["Pane"]
       33 GETTABLEKS                       R8 R3 K11 ["Util"]
       35 GETTABLEKS                       R9 R8 K12 ["Typecheck"]
       37 GETTABLEKS                       R10 R8 K13 ["StyleModifier"]
       39 GETTABLEKS                       R11 R6 K14 ["AssetRenderModel"]
       41 GETIMPORT                        R12 K4 [require]
       43 GETTABLEKS                       R14 R0 K15 ["Components"]
       45 GETTABLEKS                       R13 R14 K16 ["StaticLCAssetRenderModel"]
       47 CALL                             R12 1 1
       48 GETTABLEKS                       R13 R2 K17 ["PureComponent"]
       50 LOADK                            R15 K18 ["LayerTile"]
       51 NAMECALL                         R13 R13 K19 ["extend"]
       53 CALL                             R13 2 1
       54 GETTABLEKS                       R14 R9 K20 ["wrap"]
       56 MOVE                             R15 R13
       57 GETIMPORT                        R16 K1 [script]
       59 CALL                             R14 2 0
       60 DUPCLOSURE                       R14 K21 [PROTO_0]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R12
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R10
       65 SETTABLEKS                       R14 R13 K22 ["render"]
       67 MOVE                             R14 R5
       68 DUPTABLE                         R15 K24 [{"Stylizer"}]
       69 GETTABLEKS                       R16 R4 K23 ["Stylizer"]
       71 SETTABLEKS                       R16 R15 K23 ["Stylizer"]
       73 CALL                             R14 1 1
       74 MOVE                             R15 R13
       75 CALL                             R14 1 1
       76 MOVE                             R13 R14
       77 RETURN                           R13 1
