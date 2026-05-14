PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"HoveringLeft"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["HoveringLeft"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"HoveringLeft"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["HoveringLeft"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"HoveringRight"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["HoveringRight"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"HoveringRight"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["HoveringRight"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"HoveringLeft", "HoveringRight"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["HoveringLeft"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["HoveringRight"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K4 ["mouseEnterLeft"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K5 ["mouseLeaveLeft"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K6 ["mouseEnterRight"]
       21 NEWCLOSURE                       R2 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K7 ["mouseLeaveRight"]
       25 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K2 ["ButtonSize"]
        6 GETTABLEKS                       R5 R1 K3 ["Icon"]
        8 GETTABLEKS                       R6 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R7 R1 K5 ["OnClick"]
       12 GETTABLEKS                       R8 R1 K6 ["OnMouseEnter"]
       14 GETTABLEKS                       R9 R1 K7 ["OnMouseLeave"]
       16 GETTABLEKS                       R10 R1 K8 ["TooltipText"]
       18 GETTABLEKS                       R11 R1 K9 ["Hovered"]
       20 GETTABLEKS                       R12 R1 K10 ["Selected"]
       22 GETTABLEKS                       R13 R1 K11 ["BackgroundImage"]
       24 GETTABLEKS                       R14 R1 K12 ["BorderImage"]
       26 GETTABLEKS                       R15 R3 K13 ["SliceCenter"]
       28 GETTABLEKS                       R16 R3 K14 ["BorderColor"]
       30 GETTABLEKS                       R17 R3 K15 ["Color"]
       32 JUMPIFNOT                        R12 ; [+3]
       33 GETTABLEKS                       R17 R3 K16 ["PressedColor"]
       35 JUMP                             ; [+3]
       36 JUMPIFNOT                        R11 ; [+2]
       37 GETTABLEKS                       R17 R3 K17 ["HoverColor"]
       39 GETUPVAL                         R18 0
       40 GETTABLEKS                       R18 R18 K18 ["createElement"]
       42 LOADK                            R19 K19 ["TextButton"]
       43 NEWTABLE                         R20 8 0
       45 LOADN                            R21 1
       46 SETTABLEKS                       R21 R20 K20 ["BackgroundTransparency"]
       48 GETIMPORT                        R21 K23 [UDim2.fromOffset]
       50 MOVE                             R22 R4
       51 MOVE                             R23 R4
       52 CALL                             R21 2 1
       53 SETTABLEKS                       R21 R20 K24 ["Size"]
       55 LOADK                            R21 K25 [""]
       56 SETTABLEKS                       R21 R20 K26 ["Text"]
       58 SETTABLEKS                       R6 R20 K4 ["LayoutOrder"]
       60 GETUPVAL                         R21 0
       61 GETTABLEKS                       R21 R21 K27 ["Event"]
       63 GETTABLEKS                       R21 R21 K28 ["Activated"]
       65 GETIMPORT                        R23 K30 [disabled]
       67 JUMPIF                           R23 ; [+2]
       68 MOVE                             R22 R7
       69 JUMP                             ; [+1]
       70 LOADNIL                          R22
       71 SETTABLE                         R22 R20 R21
       72 GETUPVAL                         R21 0
       73 GETTABLEKS                       R21 R21 K27 ["Event"]
       75 GETTABLEKS                       R21 R21 K31 ["MouseEnter"]
       77 SETTABLE                         R8 R20 R21
       78 GETUPVAL                         R21 0
       79 GETTABLEKS                       R21 R21 K27 ["Event"]
       81 GETTABLEKS                       R21 R21 K32 ["MouseLeave"]
       83 SETTABLE                         R9 R20 R21
       84 DUPTABLE                         R21 K35 [{"Container", "Tooltip"}]
       85 GETUPVAL                         R22 0
       86 GETTABLEKS                       R22 R22 K18 ["createElement"]
       88 LOADK                            R23 K36 ["ImageLabel"]
       89 DUPTABLE                         R24 K40 [{"Size", "BackgroundTransparency", "ImageColor3", "Image", "ScaleType", "SliceCenter"}]
       90 GETIMPORT                        R25 K42 [UDim2.new]
       92 LOADN                            R26 1
       93 LOADN                            R27 0
       94 LOADN                            R28 1
       95 LOADN                            R29 0
       96 CALL                             R25 4 1
       97 SETTABLEKS                       R25 R24 K24 ["Size"]
       99 LOADN                            R25 1
      100 SETTABLEKS                       R25 R24 K20 ["BackgroundTransparency"]
      102 SETTABLEKS                       R17 R24 K37 ["ImageColor3"]
      104 SETTABLEKS                       R13 R24 K38 ["Image"]
      106 GETIMPORT                        R25 K45 [Enum.ScaleType.Slice]
      108 SETTABLEKS                       R25 R24 K39 ["ScaleType"]
      110 SETTABLEKS                       R15 R24 K13 ["SliceCenter"]
      112 DUPTABLE                         R25 K47 [{"Border"}]
      113 GETUPVAL                         R26 0
      114 GETTABLEKS                       R26 R26 K18 ["createElement"]
      116 LOADK                            R27 K36 ["ImageLabel"]
      117 DUPTABLE                         R28 K40 [{"Size", "BackgroundTransparency", "ImageColor3", "Image", "ScaleType", "SliceCenter"}]
      118 GETIMPORT                        R29 K42 [UDim2.new]
      120 LOADN                            R30 1
      121 LOADN                            R31 0
      122 LOADN                            R32 1
      123 LOADN                            R33 0
      124 CALL                             R29 4 1
      125 SETTABLEKS                       R29 R28 K24 ["Size"]
      127 LOADN                            R29 1
      128 SETTABLEKS                       R29 R28 K20 ["BackgroundTransparency"]
      130 SETTABLEKS                       R16 R28 K37 ["ImageColor3"]
      132 SETTABLEKS                       R14 R28 K38 ["Image"]
      134 GETIMPORT                        R29 K45 [Enum.ScaleType.Slice]
      136 SETTABLEKS                       R29 R28 K39 ["ScaleType"]
      138 SETTABLEKS                       R15 R28 K13 ["SliceCenter"]
      140 DUPTABLE                         R29 K48 [{"Icon"}]
      141 GETUPVAL                         R30 0
      142 GETTABLEKS                       R30 R30 K18 ["createElement"]
      144 GETUPVAL                         R31 1
      145 DUPTABLE                         R32 K49 [{"Image"}]
      146 SETTABLEKS                       R5 R32 K38 ["Image"]
      148 CALL                             R30 2 1
      149 SETTABLEKS                       R30 R29 K3 ["Icon"]
      151 CALL                             R26 3 1
      152 SETTABLEKS                       R26 R25 K46 ["Border"]
      154 CALL                             R22 3 1
      155 SETTABLEKS                       R22 R21 K33 ["Container"]
      157 MOVE                             R22 R10
      158 JUMPIFNOT                        R22 ; [+8]
      159 GETUPVAL                         R22 0
      160 GETTABLEKS                       R22 R22 K18 ["createElement"]
      162 GETUPVAL                         R23 2
      163 DUPTABLE                         R24 K50 [{"Text"}]
      164 SETTABLEKS                       R10 R24 K26 ["Text"]
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K34 ["Tooltip"]
      169 CALL                             R18 3 -1
      170 RETURN                           R18 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["HoveringLeft"]
        6 GETTABLEKS                       R4 R2 K3 ["HoveringRight"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R1 K5 ["ButtonSize"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R8 R1 K7 ["LeftIcon"]
       16 GETTABLEKS                       R9 R1 K8 ["RightIcon"]
       18 GETTABLEKS                       R10 R1 K9 ["LeftTooltipText"]
       20 GETTABLEKS                       R11 R1 K10 ["RightTooltipText"]
       22 GETTABLEKS                       R12 R1 K11 ["OnLeftSideClick"]
       24 GETTABLEKS                       R13 R1 K12 ["OnRightSideClick"]
       26 GETTABLEKS                       R14 R1 K13 ["IsOn"]
       28 GETUPVAL                         R15 0
       29 GETTABLEKS                       R15 R15 K14 ["new"]
       31 CALL                             R15 0 1
       32 GETUPVAL                         R16 1
       33 GETTABLEKS                       R16 R16 K15 ["createElement"]
       35 GETUPVAL                         R17 2
       36 DUPTABLE                         R18 K20 [{"Layout", "AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
       37 GETIMPORT                        R19 K24 [Enum.FillDirection.Horizontal]
       39 SETTABLEKS                       R19 R18 K16 ["Layout"]
       41 GETTABLEKS                       R19 R1 K17 ["AutomaticSize"]
       43 SETTABLEKS                       R19 R18 K17 ["AutomaticSize"]
       45 LOADN                            R19 1
       46 SETTABLEKS                       R19 R18 K18 ["BackgroundTransparency"]
       48 SETTABLEKS                       R7 R18 K6 ["LayoutOrder"]
       50 GETIMPORT                        R19 K27 [UDim2.fromOffset]
       52 MULK                             R20 R6 K28 [2]
       53 MOVE                             R21 R6
       54 CALL                             R19 2 1
       55 SETTABLEKS                       R19 R18 K19 ["Size"]
       57 DUPTABLE                         R19 K31 [{"LeftButton", "RightButton"}]
       58 DUPTABLE                         R22 K41 [{"Icon", "Hovered", "Selected", "LayoutOrder", "BackgroundImage", "BorderImage", "TooltipText", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
       59 SETTABLEKS                       R8 R22 K32 ["Icon"]
       61 SETTABLEKS                       R3 R22 K33 ["Hovered"]
       63 NOT                              R23 R14
       64 SETTABLEKS                       R23 R22 K34 ["Selected"]
       66 NAMECALL                         R23 R15 K42 ["getNextOrder"]
       68 CALL                             R23 1 1
       69 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
       71 GETTABLEKS                       R23 R5 K43 ["BackgroundImageLeft"]
       73 SETTABLEKS                       R23 R22 K35 ["BackgroundImage"]
       75 GETTABLEKS                       R23 R5 K44 ["BorderImageLeft"]
       77 SETTABLEKS                       R23 R22 K36 ["BorderImage"]
       79 SETTABLEKS                       R10 R22 K37 ["TooltipText"]
       81 SETTABLEKS                       R12 R22 K38 ["OnClick"]
       83 GETTABLEKS                       R23 R0 K45 ["mouseEnterLeft"]
       85 SETTABLEKS                       R23 R22 K39 ["OnMouseEnter"]
       87 GETTABLEKS                       R23 R0 K46 ["mouseLeaveLeft"]
       89 SETTABLEKS                       R23 R22 K40 ["OnMouseLeave"]
       91 NAMECALL                         R20 R0 K47 ["renderSide"]
       93 CALL                             R20 2 1
       94 SETTABLEKS                       R20 R19 K29 ["LeftButton"]
       96 DUPTABLE                         R22 K41 [{"Icon", "Hovered", "Selected", "LayoutOrder", "BackgroundImage", "BorderImage", "TooltipText", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
       97 SETTABLEKS                       R9 R22 K32 ["Icon"]
       99 SETTABLEKS                       R4 R22 K33 ["Hovered"]
      101 SETTABLEKS                       R14 R22 K34 ["Selected"]
      103 NAMECALL                         R23 R15 K42 ["getNextOrder"]
      105 CALL                             R23 1 1
      106 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      108 GETTABLEKS                       R23 R5 K48 ["BackgroundImageRight"]
      110 SETTABLEKS                       R23 R22 K35 ["BackgroundImage"]
      112 GETTABLEKS                       R23 R5 K49 ["BorderImageRight"]
      114 SETTABLEKS                       R23 R22 K36 ["BorderImage"]
      116 SETTABLEKS                       R11 R22 K37 ["TooltipText"]
      118 SETTABLEKS                       R13 R22 K38 ["OnClick"]
      120 GETTABLEKS                       R23 R0 K50 ["mouseEnterRight"]
      122 SETTABLEKS                       R23 R22 K39 ["OnMouseEnter"]
      124 GETTABLEKS                       R23 R0 K51 ["mouseLeaveRight"]
      126 SETTABLEKS                       R23 R22 K40 ["OnMouseLeave"]
      128 NAMECALL                         R20 R0 K47 ["renderSide"]
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K30 ["RightButton"]
      133 CALL                             R16 3 -1
      134 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K8 ["withContext"]
       23 GETTABLEKS                       R5 R2 K9 ["UI"]
       25 GETTABLEKS                       R6 R5 K10 ["Image"]
       27 GETTABLEKS                       R7 R5 K11 ["Pane"]
       29 GETTABLEKS                       R8 R5 K12 ["Tooltip"]
       31 GETTABLEKS                       R9 R2 K13 ["Util"]
       33 GETTABLEKS                       R10 R9 K14 ["LayoutOrderIterator"]
       35 GETTABLEKS                       R11 R1 K15 ["PureComponent"]
       37 LOADK                            R13 K16 ["SplitToggleButton"]
       38 NAMECALL                         R11 R11 K17 ["extend"]
       40 CALL                             R11 2 1
       41 DUPCLOSURE                       R12 K18 [PROTO_4]
       42 SETTABLEKS                       R12 R11 K19 ["init"]
       44 DUPCLOSURE                       R12 K20 [PROTO_5]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R8
       48 SETTABLEKS                       R12 R11 K21 ["renderSide"]
       50 DUPCLOSURE                       R12 K22 [PROTO_6]
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R12 R11 K23 ["render"]
       56 MOVE                             R12 R4
       57 DUPTABLE                         R13 K25 [{"Stylizer"}]
       58 GETTABLEKS                       R14 R3 K24 ["Stylizer"]
       60 SETTABLEKS                       R14 R13 K24 ["Stylizer"]
       62 CALL                             R12 1 1
       63 MOVE                             R13 R11
       64 CALL                             R12 1 1
       65 MOVE                             R11 R12
       66 RETURN                           R11 1
