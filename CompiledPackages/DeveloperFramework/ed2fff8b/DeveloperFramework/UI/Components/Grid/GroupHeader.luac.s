PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnExpandCollapseClicked"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnExpandCollapseClicked"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R4 R1 K2 ["IsCollapsed"]
        6 JUMPIFNOT                        R4 ; [+2]
        7 LOADNIL                          R3
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["Selected"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["new"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K5 ["createElement"]
       19 GETUPVAL                         R6 3
       20 DUPTABLE                         R7 K15 [{"BackgroundColor", "BorderColor", "HorizontalAlignment", "Layout", "Padding", "Position", "Size", "Spacing", "Style", "VerticalAlignment"}]
       21 GETTABLEKS                       R8 R2 K6 ["BackgroundColor"]
       23 SETTABLEKS                       R8 R7 K6 ["BackgroundColor"]
       25 GETTABLEKS                       R8 R2 K7 ["BorderColor"]
       27 SETTABLEKS                       R8 R7 K7 ["BorderColor"]
       29 GETIMPORT                        R8 K18 [Enum.HorizontalAlignment.Left]
       31 SETTABLEKS                       R8 R7 K8 ["HorizontalAlignment"]
       33 GETIMPORT                        R8 K21 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R8 R7 K9 ["Layout"]
       37 GETTABLEKS                       R8 R2 K10 ["Padding"]
       39 SETTABLEKS                       R8 R7 K10 ["Padding"]
       41 GETTABLEKS                       R8 R1 K11 ["Position"]
       43 SETTABLEKS                       R8 R7 K11 ["Position"]
       45 GETTABLEKS                       R8 R1 K12 ["Size"]
       47 SETTABLEKS                       R8 R7 K12 ["Size"]
       49 GETTABLEKS                       R8 R2 K13 ["Spacing"]
       51 SETTABLEKS                       R8 R7 K13 ["Spacing"]
       53 GETTABLEKS                       R8 R2 K1 ["Style"]
       55 SETTABLEKS                       R8 R7 K1 ["Style"]
       57 GETIMPORT                        R8 K23 [Enum.VerticalAlignment.Center]
       59 SETTABLEKS                       R8 R7 K14 ["VerticalAlignment"]
       61 DUPTABLE                         R8 K26 [{"Arrow", "Text"}]
       62 GETTABLEKS                       R10 R1 K27 ["Collapsible"]
       64 JUMPIFNOT                        R10 ; [+47]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R9 R10 K5 ["createElement"]
       68 GETUPVAL                         R10 3
       69 DUPTABLE                         R11 K30 [{"Layout", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "OnClick", "Size"}]
       70 GETIMPORT                        R12 K21 [Enum.FillDirection.Horizontal]
       72 SETTABLEKS                       R12 R11 K9 ["Layout"]
       74 NAMECALL                         R12 R4 K31 ["getNextOrder"]
       76 CALL                             R12 1 1
       77 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
       79 GETIMPORT                        R12 K32 [Enum.HorizontalAlignment.Center]
       81 SETTABLEKS                       R12 R11 K8 ["HorizontalAlignment"]
       83 GETIMPORT                        R12 K23 [Enum.VerticalAlignment.Center]
       85 SETTABLEKS                       R12 R11 K14 ["VerticalAlignment"]
       87 NEWCLOSURE                       R12 P0
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R12 R11 K29 ["OnClick"]
       91 GETTABLEKS                       R12 R2 K33 ["ArrowButtonSize"]
       93 SETTABLEKS                       R12 R11 K12 ["Size"]
       95 DUPTABLE                         R12 K35 [{"Image"}]
       96 GETUPVAL                         R14 2
       97 GETTABLEKS                       R13 R14 K5 ["createElement"]
       99 GETUPVAL                         R14 4
      100 DUPTABLE                         R15 K37 [{"Style", "StyleModifier"}]
      101 GETTABLEKS                       R16 R2 K24 ["Arrow"]
      103 SETTABLEKS                       R16 R15 K1 ["Style"]
      105 SETTABLEKS                       R3 R15 K36 ["StyleModifier"]
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K34 ["Image"]
      110 CALL                             R9 3 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R9
      113 SETTABLEKS                       R9 R8 K24 ["Arrow"]
      115 GETUPVAL                         R10 2
      116 GETTABLEKS                       R9 R10 K5 ["createElement"]
      118 GETUPVAL                         R10 5
      119 DUPTABLE                         R11 K42 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextYAlignment"}]
      120 GETIMPORT                        R12 K44 [Enum.AutomaticSize.X]
      122 SETTABLEKS                       R12 R11 K38 ["AutomaticSize"]
      124 NAMECALL                         R12 R4 K31 ["getNextOrder"]
      126 CALL                             R12 1 1
      127 SETTABLEKS                       R12 R11 K28 ["LayoutOrder"]
      129 GETIMPORT                        R12 K47 [UDim2.fromScale]
      131 LOADN                            R13 0
      132 LOADN                            R14 1
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K12 ["Size"]
      136 GETTABLEKS                       R12 R1 K25 ["Text"]
      138 SETTABLEKS                       R12 R11 K25 ["Text"]
      140 GETTABLEKS                       R12 R2 K39 ["TextColor"]
      142 SETTABLEKS                       R12 R11 K39 ["TextColor"]
      144 GETTABLEKS                       R12 R2 K40 ["TextSize"]
      146 SETTABLEKS                       R12 R11 K40 ["TextSize"]
      148 GETIMPORT                        R12 K48 [Enum.TextYAlignment.Center]
      150 SETTABLEKS                       R12 R11 K41 ["TextYAlignment"]
      152 CALL                             R9 2 1
      153 SETTABLEKS                       R9 R8 K25 ["Text"]
      155 CALL                             R5 3 -1
      156 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K2 ["UI"]
       18 GETTABLEKS                       R2 R3 K8 ["Components"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R2 K9 ["Image"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R2 K10 ["Pane"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R6 K13 ["LayoutOrderIterator"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R6 K14 ["StyleModifier"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R9 R1 K15 ["PureComponent"]
       49 LOADK                            R11 K16 ["GroupHeader"]
       50 NAMECALL                         R9 R9 K17 ["extend"]
       52 CALL                             R9 2 1
       53 DUPCLOSURE                       R10 K18 [PROTO_1]
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R10 R9 K19 ["render"]
       62 RETURN                           R9 1
