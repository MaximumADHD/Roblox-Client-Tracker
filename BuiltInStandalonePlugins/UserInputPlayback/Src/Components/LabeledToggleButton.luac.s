PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K3 ["Pane"]
       10 DUPTABLE                         R5 K12 [{"Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Padding", "Spacing", "LayoutOrder"}]
       11 GETTABLEKS                       R6 R2 K13 ["ComponentSize"]
       13 SETTABLEKS                       R6 R5 K4 ["Size"]
       15 GETIMPORT                        R6 K16 [Enum.AutomaticSize.X]
       17 SETTABLEKS                       R6 R5 K5 ["AutomaticSize"]
       19 GETIMPORT                        R6 K19 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R6 R5 K6 ["Layout"]
       23 GETIMPORT                        R6 K21 [Enum.HorizontalAlignment.Left]
       25 SETTABLEKS                       R6 R5 K7 ["HorizontalAlignment"]
       27 GETIMPORT                        R6 K23 [Enum.VerticalAlignment.Center]
       29 SETTABLEKS                       R6 R5 K8 ["VerticalAlignment"]
       31 DUPTABLE                         R6 K24 [{"Left"}]
       32 GETTABLEKS                       R7 R2 K25 ["LeftInsetPx"]
       34 SETTABLEKS                       R7 R6 K20 ["Left"]
       36 SETTABLEKS                       R6 R5 K9 ["Padding"]
       38 GETTABLEKS                       R6 R2 K26 ["PaddingPx"]
       40 SETTABLEKS                       R6 R5 K10 ["Spacing"]
       42 GETTABLEKS                       R6 R1 K11 ["LayoutOrder"]
       44 SETTABLEKS                       R6 R5 K11 ["LayoutOrder"]
       46 DUPTABLE                         R6 K29 [{"ToggleButton", "TextLabel"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K2 ["createElement"]
       50 GETUPVAL                         R8 2
       51 DUPTABLE                         R9 K34 [{"OnClick", "Size", "Selected", "AnchorPoint", "Disabled"}]
       52 GETTABLEKS                       R10 R1 K30 ["OnClick"]
       54 SETTABLEKS                       R10 R9 K30 ["OnClick"]
       56 GETTABLEKS                       R10 R2 K35 ["ToggleSize"]
       58 SETTABLEKS                       R10 R9 K4 ["Size"]
       60 GETTABLEKS                       R10 R1 K31 ["Selected"]
       62 SETTABLEKS                       R10 R9 K31 ["Selected"]
       64 GETIMPORT                        R10 K38 [Vector2.new]
       66 LOADN                            R11 0
       67 LOADK                            R12 K39 [0.5]
       68 CALL                             R10 2 1
       69 SETTABLEKS                       R10 R9 K32 ["AnchorPoint"]
       71 GETTABLEKS                       R10 R1 K33 ["Disabled"]
       73 SETTABLEKS                       R10 R9 K33 ["Disabled"]
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K27 ["ToggleButton"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R7 R8 K2 ["createElement"]
       81 GETUPVAL                         R8 3
       82 DUPTABLE                         R9 K44 [{"Size", "AutomaticSize", "Text", "TextXAlignment", "TextYAlignment", "StyleModifier"}]
       83 GETIMPORT                        R10 K47 [UDim2.fromScale]
       85 LOADN                            R11 0
       86 LOADN                            R12 0
       87 CALL                             R10 2 1
       88 SETTABLEKS                       R10 R9 K4 ["Size"]
       90 GETIMPORT                        R10 K49 [Enum.AutomaticSize.XY]
       92 SETTABLEKS                       R10 R9 K5 ["AutomaticSize"]
       94 GETTABLEKS                       R10 R1 K40 ["Text"]
       96 SETTABLEKS                       R10 R9 K40 ["Text"]
       98 GETIMPORT                        R10 K50 [Enum.TextXAlignment.Left]
      100 SETTABLEKS                       R10 R9 K41 ["TextXAlignment"]
      102 GETIMPORT                        R10 K51 [Enum.TextYAlignment.Center]
      104 SETTABLEKS                       R10 R9 K42 ["TextYAlignment"]
      106 GETTABLEKS                       R11 R1 K33 ["Disabled"]
      108 JUMPIFNOT                        R11 ; [+4]
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R10 R11 K33 ["Disabled"]
      112 JUMPIF                           R10 ; [+1]
      113 LOADNIL                          R10
      114 SETTABLEKS                       R10 R9 K43 ["StyleModifier"]
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K28 ["TextLabel"]
      119 CALL                             R3 3 -1
      120 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["TextLabel"]
       29 GETTABLEKS                       R6 R4 K11 ["ToggleButton"]
       31 GETTABLEKS                       R7 R2 K12 ["Util"]
       33 GETTABLEKS                       R8 R7 K13 ["StyleModifier"]
       35 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       37 LOADK                            R11 K15 ["LabeledToggleButton"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPTABLE                         R10 K19 [{"Disabled", "Selected"}]
       42 LOADB                            R11 0
       43 SETTABLEKS                       R11 R10 K17 ["Disabled"]
       45 LOADB                            R11 0
       46 SETTABLEKS                       R11 R10 K18 ["Selected"]
       48 SETTABLEKS                       R10 R9 K20 ["defaultProps"]
       50 DUPCLOSURE                       R10 K21 [PROTO_0]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R8
       56 SETTABLEKS                       R10 R9 K22 ["render"]
       58 GETTABLEKS                       R10 R3 K23 ["withContext"]
       60 DUPTABLE                         R11 K25 [{"Stylizer"}]
       61 GETTABLEKS                       R12 R3 K24 ["Stylizer"]
       63 SETTABLEKS                       R12 R11 K24 ["Stylizer"]
       65 CALL                             R10 1 1
       66 MOVE                             R11 R9
       67 CALL                             R10 1 1
       68 MOVE                             R9 R10
       69 RETURN                           R9 1
