PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["TitleText"]
        4 GETTABLEKS                       R3 R1 K2 ["AnchorPoint"]
        6 GETTABLEKS                       R4 R1 K3 ["Image"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 GETUPVAL                         R8 1
       16 DUPTABLE                         R9 K15 [{"AutomaticSize", "Position", "AnchorPoint", "Padding", "Layout", "Spacing", "VerticalAlignment", "ZIndex", "Style", "ImageTransparency", "LayoutOrder"}]
       17 GETIMPORT                        R10 K18 [Enum.AutomaticSize.XY]
       19 SETTABLEKS                       R10 R9 K7 ["AutomaticSize"]
       21 SETTABLEKS                       R5 R9 K4 ["Position"]
       23 SETTABLEKS                       R3 R9 K2 ["AnchorPoint"]
       25 DUPTABLE                         R10 K23 [{"Left", "Right", "Top", "Bottom"}]
       26 LOADN                            R11 10
       27 SETTABLEKS                       R11 R10 K19 ["Left"]
       29 LOADN                            R11 10
       30 SETTABLEKS                       R11 R10 K20 ["Right"]
       32 LOADN                            R11 5
       33 SETTABLEKS                       R11 R10 K21 ["Top"]
       35 LOADN                            R11 5
       36 SETTABLEKS                       R11 R10 K22 ["Bottom"]
       38 SETTABLEKS                       R10 R9 K8 ["Padding"]
       40 GETIMPORT                        R10 K26 [Enum.FillDirection.Horizontal]
       42 SETTABLEKS                       R10 R9 K9 ["Layout"]
       44 LOADN                            R10 8
       45 SETTABLEKS                       R10 R9 K10 ["Spacing"]
       47 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Center]
       49 SETTABLEKS                       R10 R9 K11 ["VerticalAlignment"]
       51 LOADN                            R10 1
       52 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
       54 LOADK                            R10 K29 ["RoundBox"]
       55 SETTABLEKS                       R10 R9 K13 ["Style"]
       57 LOADK                            R10 K30 [0.1]
       58 SETTABLEKS                       R10 R9 K14 ["ImageTransparency"]
       60 SETTABLEKS                       R6 R9 K5 ["LayoutOrder"]
       62 DUPTABLE                         R10 K32 [{"Image", "Message"}]
       63 LOADB                            R11 0
       64 JUMPIFEQKNIL                     R4 ; [+33]
       66 LOADB                            R11 0
       67 JUMPIFEQKS                       R4 K33 [""] ; [+30]
       69 GETUPVAL                         R11 0
       70 GETTABLEKS                       R11 R11 K6 ["createElement"]
       72 LOADK                            R12 K34 ["ImageLabel"]
       73 DUPTABLE                         R13 K37 [{"BackgroundTransparency", "Size", "Position", "Image"}]
       74 LOADN                            R14 1
       75 SETTABLEKS                       R14 R13 K35 ["BackgroundTransparency"]
       77 GETIMPORT                        R14 K40 [UDim2.new]
       79 LOADN                            R15 0
       80 LOADN                            R16 15
       81 LOADN                            R17 0
       82 LOADN                            R18 15
       83 CALL                             R14 4 1
       84 SETTABLEKS                       R14 R13 K36 ["Size"]
       86 GETIMPORT                        R14 K40 [UDim2.new]
       88 LOADN                            R15 0
       89 LOADN                            R16 19
       90 LOADN                            R17 0
       91 LOADN                            R18 5
       92 CALL                             R14 4 1
       93 SETTABLEKS                       R14 R13 K4 ["Position"]
       95 SETTABLEKS                       R4 R13 K3 ["Image"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K3 ["Image"]
      100 GETUPVAL                         R11 0
      101 GETTABLEKS                       R11 R11 K6 ["createElement"]
      103 GETUPVAL                         R12 2
      104 DUPTABLE                         R13 K44 [{"AutomaticSize", "TextXAlignment", "Text", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      105 GETIMPORT                        R14 K18 [Enum.AutomaticSize.XY]
      107 SETTABLEKS                       R14 R13 K7 ["AutomaticSize"]
      109 GETIMPORT                        R14 K45 [Enum.TextXAlignment.Left]
      111 SETTABLEKS                       R14 R13 K41 ["TextXAlignment"]
      113 SETTABLEKS                       R2 R13 K42 ["Text"]
      115 LOADN                            R14 1
      116 SETTABLEKS                       R14 R13 K35 ["BackgroundTransparency"]
      118 LOADB                            R14 1
      119 SETTABLEKS                       R14 R13 K43 ["TextWrapped"]
      121 LOADN                            R14 1
      122 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K31 ["Message"]
      127 CALL                             R7 3 -1
      128 RETURN                           R7 -1

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
       27 GETTABLEKS                       R6 R5 K12 ["Pane"]
       29 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       31 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       33 LOADK                            R10 K15 ["WarningOverlay"]
       34 NAMECALL                         R8 R8 K16 ["extend"]
       36 CALL                             R8 2 1
       37 DUPCLOSURE                       R9 K17 [PROTO_0]
       38 SETTABLEKS                       R9 R8 K18 ["init"]
       40 DUPCLOSURE                       R9 K19 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 SETTABLEKS                       R9 R8 K20 ["render"]
       46 MOVE                             R9 R4
       47 DUPTABLE                         R10 K23 [{"Stylizer", "Localization"}]
       48 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       50 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       52 GETTABLEKS                       R11 R3 K22 ["Localization"]
       54 SETTABLEKS                       R11 R10 K22 ["Localization"]
       56 CALL                             R9 1 1
       57 MOVE                             R10 R8
       58 CALL                             R9 1 1
       59 MOVE                             R8 R9
       60 RETURN                           R8 1
