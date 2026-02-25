PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["trackTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["Width"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETTABLEKS                       R8 R1 K7 ["Primary"]
       16 GETTABLEKS                       R9 R1 K8 ["ShowBackground"]
       18 LOADNIL                          R10
       19 JUMPIFNOT                        R8 ; [+3]
       20 GETTABLEKS                       R10 R3 K9 ["primaryBackgroundColor"]
       22 JUMP                             ; [+3]
       23 JUMPIFNOT                        R9 ; [+2]
       24 GETTABLEKS                       R10 R3 K10 ["titleBackgroundColor"]
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K11 ["createElement"]
       29 LOADK                            R12 K12 ["Frame"]
       30 DUPTABLE                         R13 K16 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "ZIndex", "LayoutOrder"}]
       31 SETTABLEKS                       R4 R13 K3 ["Size"]
       33 SETTABLEKS                       R10 R13 K13 ["BackgroundColor3"]
       35 JUMPIFNOT                        R10 ; [+2]
       36 LOADN                            R14 0
       37 JUMP                             ; [+1]
       38 LOADN                            R14 1
       39 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
       41 LOADN                            R14 0
       42 SETTABLEKS                       R14 R13 K15 ["BorderSizePixel"]
       44 SETTABLEKS                       R7 R13 K6 ["ZIndex"]
       46 SETTABLEKS                       R6 R13 K5 ["LayoutOrder"]
       48 DUPTABLE                         R14 K18 [{"KeyframeDisplayArea"}]
       49 GETUPVAL                         R16 0
       50 GETTABLEKS                       R15 R16 K11 ["createElement"]
       52 LOADK                            R16 K12 ["Frame"]
       53 DUPTABLE                         R17 K21 [{"BackgroundTransparency", "AnchorPoint", "Position", "Size", "ZIndex"}]
       54 LOADN                            R18 1
       55 SETTABLEKS                       R18 R17 K14 ["BackgroundTransparency"]
       57 GETIMPORT                        R18 K24 [Vector2.new]
       59 LOADK                            R19 K25 [0.5]
       60 LOADN                            R20 0
       61 CALL                             R18 2 1
       62 SETTABLEKS                       R18 R17 K19 ["AnchorPoint"]
       64 GETIMPORT                        R18 K27 [UDim2.new]
       66 LOADK                            R19 K25 [0.5]
       67 LOADN                            R20 0
       68 LOADN                            R21 0
       69 LOADN                            R22 0
       70 CALL                             R18 4 1
       71 SETTABLEKS                       R18 R17 K20 ["Position"]
       73 GETIMPORT                        R18 K27 [UDim2.new]
       75 LOADN                            R19 0
       76 MOVE                             R20 R5
       77 LOADN                            R21 1
       78 LOADN                            R22 0
       79 CALL                             R18 4 1
       80 SETTABLEKS                       R18 R17 K3 ["Size"]
       82 SETTABLEKS                       R7 R17 K6 ["ZIndex"]
       84 GETTABLEKS                       R19 R0 K0 ["props"]
       86 GETUPVAL                         R21 0
       87 GETTABLEKS                       R20 R21 K28 ["Children"]
       89 GETTABLE                         R18 R19 R20
       90 CALL                             R15 3 1
       91 SETTABLEKS                       R15 R14 K17 ["KeyframeDisplayArea"]
       93 CALL                             R11 3 -1
       94 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["withContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R6 K10 ["Roact"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["PureComponent"]
       27 LOADK                            R7 K12 ["BaseTrack"]
       28 NAMECALL                         R5 R5 K13 ["extend"]
       30 CALL                             R5 2 1
       31 DUPCLOSURE                       R6 K14 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R6 R5 K15 ["render"]
       35 MOVE                             R6 R3
       36 DUPTABLE                         R7 K17 [{"Stylizer"}]
       37 GETTABLEKS                       R8 R2 K16 ["Stylizer"]
       39 SETTABLEKS                       R8 R7 K16 ["Stylizer"]
       41 CALL                             R6 1 1
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 MOVE                             R5 R6
       45 RETURN                           R5 1
