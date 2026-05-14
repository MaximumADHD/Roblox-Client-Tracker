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
       18 DUPTABLE                         R10 K11 [{"Style", "BackgroundColor3", "BorderSizePixel", "AnchorPoint", "Size", "Position", "ZIndex"}]
       19 LOADK                            R11 K12 ["BorderBox"]
       20 SETTABLEKS                       R11 R10 K8 ["Style"]
       22 GETTABLEKS                       R11 R2 K13 ["scaleControlsTheme"]
       24 GETTABLEKS                       R11 R11 K14 ["mainColor"]
       26 SETTABLEKS                       R11 R10 K9 ["BackgroundColor3"]
       28 LOADN                            R11 0
       29 SETTABLEKS                       R11 R10 K10 ["BorderSizePixel"]
       31 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       33 SETTABLEKS                       R4 R10 K3 ["Size"]
       35 SETTABLEKS                       R3 R10 K2 ["Position"]
       37 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       39 DUPTABLE                         R11 K15 [{"Time"}]
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R12 R12 K7 ["createElement"]
       43 LOADK                            R13 K16 ["TextLabel"]
       44 DUPTABLE                         R14 K24 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "TextSize", "Font"}]
       45 LOADN                            R15 1
       46 SETTABLEKS                       R15 R14 K17 ["BackgroundTransparency"]
       48 GETIMPORT                        R15 K27 [UDim2.new]
       50 LOADK                            R16 K28 [0.5]
       51 LOADN                            R17 0
       52 LOADK                            R18 K28 [0.5]
       53 LOADN                            R19 0
       54 CALL                             R15 4 1
       55 SETTABLEKS                       R15 R14 K2 ["Position"]
       57 GETIMPORT                        R15 K30 [Vector2.new]
       59 LOADK                            R16 K28 [0.5]
       60 LOADK                            R17 K28 [0.5]
       61 CALL                             R15 2 1
       62 SETTABLEKS                       R15 R14 K4 ["AnchorPoint"]
       64 GETIMPORT                        R15 K27 [UDim2.new]
       66 LOADN                            R16 1
       67 LOADN                            R17 252
       68 LOADN                            R18 1
       69 LOADN                            R19 254
       70 CALL                             R15 4 1
       71 SETTABLEKS                       R15 R14 K3 ["Size"]
       73 GETIMPORT                        R15 K33 [Enum.TextXAlignment.Center]
       75 SETTABLEKS                       R15 R14 K18 ["TextXAlignment"]
       77 GETIMPORT                        R15 K34 [Enum.TextYAlignment.Center]
       79 SETTABLEKS                       R15 R14 K19 ["TextYAlignment"]
       81 SETTABLEKS                       R6 R14 K20 ["Text"]
       83 GETTABLEKS                       R15 R2 K13 ["scaleControlsTheme"]
       85 GETTABLEKS                       R15 R15 K35 ["textColor"]
       87 SETTABLEKS                       R15 R14 K21 ["TextColor3"]
       89 GETTABLEKS                       R15 R2 K13 ["scaleControlsTheme"]
       91 GETTABLEKS                       R15 R15 K36 ["textSize"]
       93 SETTABLEKS                       R15 R14 K22 ["TextSize"]
       95 GETTABLEKS                       R15 R2 K37 ["font"]
       97 SETTABLEKS                       R15 R14 K23 ["Font"]
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K5 ["Time"]
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1

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
