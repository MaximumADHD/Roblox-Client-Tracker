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
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K11 ["createElement"]
       29 LOADK                            R12 K12 ["Frame"]
       30 DUPTABLE                         R13 K17 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["ZIndex"], ["LayoutOrder"]}]
       31 SETTABLEKS                       R4 R13 K3 ["Size"]
       33 SETTABLEKS                       R10 R13 K13 ["BackgroundColor3"]
       35 JUMPIFNOT                        R10 ; [+2]
       36 LOADN                            R14 0
       37 JUMP                             ; [+1]
       38 LOADN                            R14 1
       39 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
       41 SETTABLEKS                       R7 R13 K6 ["ZIndex"]
       43 SETTABLEKS                       R6 R13 K5 ["LayoutOrder"]
       45 DUPTABLE                         R14 K19 [{"KeyframeDisplayArea"}]
       46 GETUPVAL                         R15 0
       47 GETTABLEKS                       R15 R15 K11 ["createElement"]
       49 LOADK                            R16 K12 ["Frame"]
       50 DUPTABLE                         R17 K23 [{["BackgroundTransparency"] = 1, ["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"]}]
       51 GETIMPORT                        R18 K26 [Vector2.new]
       53 LOADK                            R19 K27 [0.5]
       54 LOADN                            R20 0
       55 CALL                             R18 2 1
       56 SETTABLEKS                       R18 R17 K21 ["AnchorPoint"]
       58 GETIMPORT                        R18 K29 [UDim2.new]
       60 LOADK                            R19 K27 [0.5]
       61 LOADN                            R20 0
       62 LOADN                            R21 0
       63 LOADN                            R22 0
       64 CALL                             R18 4 1
       65 SETTABLEKS                       R18 R17 K22 ["Position"]
       67 GETIMPORT                        R18 K29 [UDim2.new]
       69 LOADN                            R19 0
       70 MOVE                             R20 R5
       71 LOADN                            R21 1
       72 LOADN                            R22 0
       73 CALL                             R18 4 1
       74 SETTABLEKS                       R18 R17 K3 ["Size"]
       76 SETTABLEKS                       R7 R17 K6 ["ZIndex"]
       78 GETTABLEKS                       R19 R0 K0 ["props"]
       80 GETUPVAL                         R20 0
       81 GETTABLEKS                       R20 R20 K30 ["Children"]
       83 GETTABLE                         R18 R19 R20
       84 CALL                             R15 3 1
       85 SETTABLEKS                       R15 R14 K18 ["KeyframeDisplayArea"]
       87 CALL                             R11 3 -1
       88 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R2 K9 ["withContext"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Roact"]
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
