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
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K9 ["createElement"]
       32 LOADK                            R6 K10 ["TextLabel"]
       33 DUPTABLE                         R7 K20 [{["AutomaticSize"], ["BackgroundColor3"], ["Font"], ["LayoutOrder"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"] = 24}]
       34 GETIMPORT                        R8 K23 [Enum.AutomaticSize.XY]
       36 SETTABLEKS                       R8 R7 K11 ["AutomaticSize"]
       38 SETTABLEKS                       R2 R7 K12 ["BackgroundColor3"]
       40 GETIMPORT                        R8 K25 [Enum.Font.SourceSansBold]
       42 SETTABLEKS                       R8 R7 K13 ["Font"]
       44 GETTABLEKS                       R8 R0 K14 ["LayoutOrder"]
       46 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       48 GETIMPORT                        R8 K28 [UDim2.fromOffset]
       50 LOADN                            R9 32
       51 LOADN                            R10 32
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K15 ["Size"]
       55 GETTABLEKS                       R9 R0 K29 ["Key"]
       57 JUMPIFNOTEQKS                    R9 K30 ["LeftControl"] ; [+3]
       59 LOADK                            R8 K31 ["Ctrl"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R8 R0 K29 ["Key"]
       63 SETTABLEKS                       R8 R7 K16 ["Text"]
       65 SETTABLEKS                       R4 R7 K17 ["TextColor3"]
       67 DUPTABLE                         R8 K35 [{"Corner", "Padding", "Stroke"}]
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R9 R9 K9 ["createElement"]
       71 LOADK                            R10 K36 ["UICorner"]
       72 DUPTABLE                         R11 K38 [{"CornerRadius"}]
       73 GETIMPORT                        R12 K41 [UDim.new]
       75 LOADN                            R13 0
       76 LOADN                            R14 8
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K37 ["CornerRadius"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K32 ["Corner"]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K9 ["createElement"]
       86 LOADK                            R10 K42 ["UIPadding"]
       87 DUPTABLE                         R11 K47 [{"PaddingLeft", "PaddingTop", "PaddingRight", "PaddingBottom"}]
       88 GETIMPORT                        R12 K41 [UDim.new]
       90 LOADN                            R13 0
       91 LOADN                            R14 5
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K43 ["PaddingLeft"]
       95 GETIMPORT                        R12 K41 [UDim.new]
       97 LOADN                            R13 0
       98 LOADN                            R14 5
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K44 ["PaddingTop"]
      102 GETIMPORT                        R12 K41 [UDim.new]
      104 LOADN                            R13 0
      105 LOADN                            R14 5
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K45 ["PaddingRight"]
      109 GETIMPORT                        R12 K41 [UDim.new]
      111 LOADN                            R13 0
      112 LOADN                            R14 5
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K46 ["PaddingBottom"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K33 ["Padding"]
      119 GETUPVAL                         R9 1
      120 GETTABLEKS                       R9 R9 K9 ["createElement"]
      122 LOADK                            R10 K48 ["UIStroke"]
      123 DUPTABLE                         R11 K53 [{["ApplyStrokeMode"], ["Color"], ["Thickness"] = 5}]
      124 GETIMPORT                        R12 K55 [Enum.ApplyStrokeMode.Border]
      126 SETTABLEKS                       R12 R11 K49 ["ApplyStrokeMode"]
      128 SETTABLEKS                       R3 R11 K50 ["Color"]
      130 CALL                             R9 2 1
      131 SETTABLEKS                       R9 R8 K34 ["Stroke"]
      133 CALL                             R5 3 -1
      134 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
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
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["createElement"]
       10 GETUPVAL                         R3 3
       11 DUPTABLE                         R4 K10 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Padding"] = 10, ["Spacing"] = 20}]
       12 GETIMPORT                        R5 K13 [Enum.AutomaticSize.XY]
       14 SETTABLEKS                       R5 R4 K3 ["AutomaticSize"]
       16 GETIMPORT                        R5 K16 [Enum.FillDirection.Horizontal]
       18 SETTABLEKS                       R5 R4 K4 ["Layout"]
       20 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       24 MOVE                             R5 R1
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["map"]
       25 GETIMPORT                        R4 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R5 R5 K9 ["Framework"]
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
