PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["Time"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K13 [{["Style"] = "BorderBox", ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Size"], ["Position"], ["ZIndex"]}]
       19 GETTABLEKS                       R11 R2 K14 ["scaleControlsTheme"]
       21 GETTABLEKS                       R11 R11 K15 ["mainColor"]
       23 SETTABLEKS                       R11 R10 K10 ["BackgroundColor3"]
       25 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       27 SETTABLEKS                       R4 R10 K3 ["Size"]
       29 SETTABLEKS                       R3 R10 K2 ["Position"]
       31 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       33 DUPTABLE                         R11 K16 [{"Time"}]
       34 GETUPVAL                         R12 0
       35 GETTABLEKS                       R12 R12 K7 ["createElement"]
       37 LOADK                            R13 K17 ["TextLabel"]
       38 DUPTABLE                         R14 K26 [{["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextColor3"], ["TextSize"], ["Font"]}]
       39 GETIMPORT                        R15 K29 [UDim2.new]
       41 LOADK                            R16 K30 [0.5]
       42 LOADN                            R17 0
       43 LOADK                            R18 K30 [0.5]
       44 LOADN                            R19 0
       45 CALL                             R15 4 1
       46 SETTABLEKS                       R15 R14 K2 ["Position"]
       48 GETIMPORT                        R15 K32 [Vector2.new]
       50 LOADK                            R16 K30 [0.5]
       51 LOADK                            R17 K30 [0.5]
       52 CALL                             R15 2 1
       53 SETTABLEKS                       R15 R14 K4 ["AnchorPoint"]
       55 GETIMPORT                        R15 K29 [UDim2.new]
       57 LOADN                            R16 1
       58 LOADN                            R17 -4
       59 LOADN                            R18 1
       60 LOADN                            R19 -2
       61 CALL                             R15 4 1
       62 SETTABLEKS                       R15 R14 K3 ["Size"]
       64 GETIMPORT                        R15 K35 [Enum.TextXAlignment.Center]
       66 SETTABLEKS                       R15 R14 K20 ["TextXAlignment"]
       68 GETIMPORT                        R15 K36 [Enum.TextYAlignment.Center]
       70 SETTABLEKS                       R15 R14 K21 ["TextYAlignment"]
       72 SETTABLEKS                       R6 R14 K22 ["Text"]
       74 GETTABLEKS                       R15 R2 K14 ["scaleControlsTheme"]
       76 GETTABLEKS                       R15 R15 K37 ["textColor"]
       78 SETTABLEKS                       R15 R14 K23 ["TextColor3"]
       80 GETTABLEKS                       R15 R2 K14 ["scaleControlsTheme"]
       82 GETTABLEKS                       R15 R15 K38 ["textSize"]
       84 SETTABLEKS                       R15 R14 K24 ["TextSize"]
       86 GETTABLEKS                       R15 R2 K39 ["font"]
       88 SETTABLEKS                       R15 R14 K25 ["Font"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K5 ["Time"]
       93 CALL                             R8 3 -1
       94 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["Pane"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K14 ["TimeTag"]
       32 NAMECALL                         R6 R6 K15 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K16 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K17 ["render"]
       40 MOVE                             R7 R4
       41 DUPTABLE                         R8 K19 [{"Stylizer"}]
       42 GETTABLEKS                       R9 R3 K18 ["Stylizer"]
       44 SETTABLEKS                       R9 R8 K18 ["Stylizer"]
       46 CALL                             R7 1 1
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 MOVE                             R6 R7
       50 RETURN                           R6 1
