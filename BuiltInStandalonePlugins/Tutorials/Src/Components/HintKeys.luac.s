PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["HintKeys"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R3 R0 K2 ["Pressed"]
        7 JUMPIFNOT                        R3 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["HintKeyBackgroundPressed"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R2 R1 K4 ["HintKeyBackground"]
       13 GETTABLEKS                       R4 R0 K2 ["Pressed"]
       15 JUMPIFNOT                        R4 ; [+3]
       16 GETTABLEKS                       R3 R1 K5 ["HintKeyBorderPressed"]
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R3 R1 K6 ["HintKeyBorder"]
       21 GETTABLEKS                       R5 R0 K2 ["Pressed"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R4 R1 K7 ["HintKeyTextColorPressed"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R4 R1 K8 ["HintKeyTextColor"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K9 ["createElement"]
       32 LOADK                            R6 K10 ["TextLabel"]
       33 DUPTABLE                         R7 K19 [{"AutomaticSize", "BackgroundColor3", "Font", "LayoutOrder", "Size", "Text", "TextColor3", "TextSize"}]
       34 GETIMPORT                        R8 K22 [Enum.AutomaticSize.XY]
       36 SETTABLEKS                       R8 R7 K11 ["AutomaticSize"]
       38 SETTABLEKS                       R2 R7 K12 ["BackgroundColor3"]
       40 GETIMPORT                        R8 K24 [Enum.Font.SourceSansBold]
       42 SETTABLEKS                       R8 R7 K13 ["Font"]
       44 GETTABLEKS                       R8 R0 K14 ["LayoutOrder"]
       46 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       48 GETIMPORT                        R8 K27 [UDim2.fromOffset]
       50 LOADN                            R9 32
       51 LOADN                            R10 32
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K15 ["Size"]
       55 GETTABLEKS                       R9 R0 K28 ["Key"]
       57 JUMPIFNOTEQKS                    R9 K29 ["LeftControl"] ; [+3]
       59 LOADK                            R8 K30 ["Ctrl"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R8 R0 K28 ["Key"]
       63 SETTABLEKS                       R8 R7 K16 ["Text"]
       65 SETTABLEKS                       R4 R7 K17 ["TextColor3"]
       67 LOADN                            R8 24
       68 SETTABLEKS                       R8 R7 K18 ["TextSize"]
       70 DUPTABLE                         R8 K34 [{"Corner", "Padding", "Stroke"}]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R9 R10 K9 ["createElement"]
       74 LOADK                            R10 K35 ["UICorner"]
       75 DUPTABLE                         R11 K37 [{"CornerRadius"}]
       76 GETIMPORT                        R12 K40 [UDim.new]
       78 LOADN                            R13 0
       79 LOADN                            R14 8
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K36 ["CornerRadius"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K31 ["Corner"]
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R9 R10 K9 ["createElement"]
       89 LOADK                            R10 K41 ["UIPadding"]
       90 DUPTABLE                         R11 K46 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
       91 GETIMPORT                        R12 K40 [UDim.new]
       93 LOADN                            R13 0
       94 LOADN                            R14 5
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K42 ["PaddingLeft"]
       98 GETIMPORT                        R12 K40 [UDim.new]
      100 LOADN                            R13 0
      101 LOADN                            R14 5
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K43 ["PaddingTop"]
      105 GETIMPORT                        R12 K40 [UDim.new]
      107 LOADN                            R13 0
      108 LOADN                            R14 5
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K44 ["PaddingRight"]
      112 GETIMPORT                        R12 K40 [UDim.new]
      114 LOADN                            R13 0
      115 LOADN                            R14 5
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K45 ["PaddingBottom"]
      119 CALL                             R9 2 1
      120 SETTABLEKS                       R9 R8 K32 ["Padding"]
      122 GETUPVAL                         R10 1
      123 GETTABLEKS                       R9 R10 K9 ["createElement"]
      125 LOADK                            R10 K47 ["UIStroke"]
      126 DUPTABLE                         R11 K51 [{"ApplyStrokeMode", "Color", "Thickness"}]
      127 GETIMPORT                        R12 K53 [Enum.ApplyStrokeMode.Border]
      129 SETTABLEKS                       R12 R11 K48 ["ApplyStrokeMode"]
      131 SETTABLEKS                       R3 R11 K49 ["Color"]
      133 LOADN                            R12 5
      134 SETTABLEKS                       R12 R11 K50 ["Thickness"]
      136 CALL                             R9 2 1
      137 SETTABLEKS                       R9 R8 K33 ["Stroke"]
      139 CALL                             R5 3 -1
      140 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{"Key", "LayoutOrder", "Pressed"}]
        5 GETTABLEKS                       R4 R0 K5 ["key"]
        7 SETTABLEKS                       R4 R3 K1 ["Key"]
        9 GETTABLEKS                       R4 R0 K6 ["index"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R4 R0 K7 ["pressed"]
       15 SETTABLEKS                       R4 R3 K3 ["Pressed"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["PressedKeys"]
        3 DUPCLOSURE                       R3 K1 [PROTO_1]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 2 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["createElement"]
       10 GETUPVAL                         R3 3
       11 DUPTABLE                         R4 K8 [{"AutomaticSize", "Layout", "LayoutOrder", "Padding", "Spacing"}]
       12 GETIMPORT                        R5 K11 [Enum.AutomaticSize.XY]
       14 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       16 GETIMPORT                        R5 K14 [Enum.FillDirection.Horizontal]
       18 SETTABLEKS                       R5 R4 K4 ["Layout"]
       20 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       24 LOADN                            R5 10
       25 SETTABLEKS                       R5 R4 K6 ["Padding"]
       27 LOADN                            R5 20
       28 SETTABLEKS                       R5 R4 K7 ["Spacing"]
       30 MOVE                             R5 R1
       31 CALL                             R2 3 -1
       32 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["map"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Packages"]
       29 GETTABLEKS                       R5 R6 K9 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["Pane"]
       36 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       38 GETTABLEKS                       R8 R7 K13 ["Stylizer"]
       40 DUPCLOSURE                       R9 K14 [PROTO_0]
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R1
       43 DUPCLOSURE                       R10 K15 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R9
       47 CAPTURE                          VAL R6
       48 RETURN                           R10 1
