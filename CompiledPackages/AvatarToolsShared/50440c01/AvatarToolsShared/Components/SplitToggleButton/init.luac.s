PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["HoveringRight"] = False}]
        1 SETTABLEKS                       R2 R0 K4 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K5 ["mouseEnterLeft"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K6 ["mouseLeaveLeft"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K7 ["mouseEnterRight"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K8 ["mouseLeaveRight"]
       19 RETURN                           R0 0

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
       89 DUPTABLE                         R24 K41 [{["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"], ["ScaleType"], ["SliceCenter"]}]
       90 GETIMPORT                        R25 K43 [UDim2.new]
       92 LOADN                            R26 1
       93 LOADN                            R27 0
       94 LOADN                            R28 1
       95 LOADN                            R29 0
       96 CALL                             R25 4 1
       97 SETTABLEKS                       R25 R24 K24 ["Size"]
       99 SETTABLEKS                       R17 R24 K38 ["ImageColor3"]
      101 SETTABLEKS                       R13 R24 K39 ["Image"]
      103 GETIMPORT                        R25 K46 [Enum.ScaleType.Slice]
      105 SETTABLEKS                       R25 R24 K40 ["ScaleType"]
      107 SETTABLEKS                       R15 R24 K13 ["SliceCenter"]
      109 DUPTABLE                         R25 K48 [{"Border"}]
      110 GETUPVAL                         R26 0
      111 GETTABLEKS                       R26 R26 K18 ["createElement"]
      113 LOADK                            R27 K36 ["ImageLabel"]
      114 DUPTABLE                         R28 K41 [{["Size"], ["BackgroundTransparency"] = 1, ["ImageColor3"], ["Image"], ["ScaleType"], ["SliceCenter"]}]
      115 GETIMPORT                        R29 K43 [UDim2.new]
      117 LOADN                            R30 1
      118 LOADN                            R31 0
      119 LOADN                            R32 1
      120 LOADN                            R33 0
      121 CALL                             R29 4 1
      122 SETTABLEKS                       R29 R28 K24 ["Size"]
      124 SETTABLEKS                       R16 R28 K38 ["ImageColor3"]
      126 SETTABLEKS                       R14 R28 K39 ["Image"]
      128 GETIMPORT                        R29 K46 [Enum.ScaleType.Slice]
      130 SETTABLEKS                       R29 R28 K40 ["ScaleType"]
      132 SETTABLEKS                       R15 R28 K13 ["SliceCenter"]
      134 DUPTABLE                         R29 K49 [{"Icon"}]
      135 GETUPVAL                         R30 0
      136 GETTABLEKS                       R30 R30 K18 ["createElement"]
      138 GETUPVAL                         R31 1
      139 DUPTABLE                         R32 K50 [{"Image"}]
      140 SETTABLEKS                       R5 R32 K39 ["Image"]
      142 CALL                             R30 2 1
      143 SETTABLEKS                       R30 R29 K3 ["Icon"]
      145 CALL                             R26 3 1
      146 SETTABLEKS                       R26 R25 K47 ["Border"]
      148 CALL                             R22 3 1
      149 SETTABLEKS                       R22 R21 K33 ["Container"]
      151 MOVE                             R22 R10
      152 JUMPIFNOT                        R22 ; [+8]
      153 GETUPVAL                         R22 0
      154 GETTABLEKS                       R22 R22 K18 ["createElement"]
      156 GETUPVAL                         R23 2
      157 DUPTABLE                         R24 K51 [{"Text"}]
      158 SETTABLEKS                       R10 R24 K26 ["Text"]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K34 ["Tooltip"]
      163 CALL                             R18 3 -1
      164 RETURN                           R18 -1

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
       36 DUPTABLE                         R18 K21 [{["Layout"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       37 GETIMPORT                        R19 K25 [Enum.FillDirection.Horizontal]
       39 SETTABLEKS                       R19 R18 K16 ["Layout"]
       41 GETTABLEKS                       R19 R1 K17 ["AutomaticSize"]
       43 SETTABLEKS                       R19 R18 K17 ["AutomaticSize"]
       45 SETTABLEKS                       R7 R18 K6 ["LayoutOrder"]
       47 GETIMPORT                        R19 K28 [UDim2.fromOffset]
       49 MULK                             R20 R6 K29 [2]
       50 MOVE                             R21 R6
       51 CALL                             R19 2 1
       52 SETTABLEKS                       R19 R18 K20 ["Size"]
       54 DUPTABLE                         R19 K32 [{"LeftButton", "RightButton"}]
       55 DUPTABLE                         R22 K42 [{"Icon", "Hovered", "Selected", "LayoutOrder", "BackgroundImage", "BorderImage", "TooltipText", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
       56 SETTABLEKS                       R8 R22 K33 ["Icon"]
       58 SETTABLEKS                       R3 R22 K34 ["Hovered"]
       60 NOT                              R23 R14
       61 SETTABLEKS                       R23 R22 K35 ["Selected"]
       63 NAMECALL                         R23 R15 K43 ["getNextOrder"]
       65 CALL                             R23 1 1
       66 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
       68 GETTABLEKS                       R23 R5 K44 ["BackgroundImageLeft"]
       70 SETTABLEKS                       R23 R22 K36 ["BackgroundImage"]
       72 GETTABLEKS                       R23 R5 K45 ["BorderImageLeft"]
       74 SETTABLEKS                       R23 R22 K37 ["BorderImage"]
       76 SETTABLEKS                       R10 R22 K38 ["TooltipText"]
       78 SETTABLEKS                       R12 R22 K39 ["OnClick"]
       80 GETTABLEKS                       R23 R0 K46 ["mouseEnterLeft"]
       82 SETTABLEKS                       R23 R22 K40 ["OnMouseEnter"]
       84 GETTABLEKS                       R23 R0 K47 ["mouseLeaveLeft"]
       86 SETTABLEKS                       R23 R22 K41 ["OnMouseLeave"]
       88 NAMECALL                         R20 R0 K48 ["renderSide"]
       90 CALL                             R20 2 1
       91 SETTABLEKS                       R20 R19 K30 ["LeftButton"]
       93 DUPTABLE                         R22 K42 [{"Icon", "Hovered", "Selected", "LayoutOrder", "BackgroundImage", "BorderImage", "TooltipText", "OnClick", "OnMouseEnter", "OnMouseLeave"}]
       94 SETTABLEKS                       R9 R22 K33 ["Icon"]
       96 SETTABLEKS                       R4 R22 K34 ["Hovered"]
       98 SETTABLEKS                       R14 R22 K35 ["Selected"]
      100 NAMECALL                         R23 R15 K43 ["getNextOrder"]
      102 CALL                             R23 1 1
      103 SETTABLEKS                       R23 R22 K6 ["LayoutOrder"]
      105 GETTABLEKS                       R23 R5 K49 ["BackgroundImageRight"]
      107 SETTABLEKS                       R23 R22 K36 ["BackgroundImage"]
      109 GETTABLEKS                       R23 R5 K50 ["BorderImageRight"]
      111 SETTABLEKS                       R23 R22 K37 ["BorderImage"]
      113 SETTABLEKS                       R11 R22 K38 ["TooltipText"]
      115 SETTABLEKS                       R13 R22 K39 ["OnClick"]
      117 GETTABLEKS                       R23 R0 K51 ["mouseEnterRight"]
      119 SETTABLEKS                       R23 R22 K40 ["OnMouseEnter"]
      121 GETTABLEKS                       R23 R0 K52 ["mouseLeaveRight"]
      123 SETTABLEKS                       R23 R22 K41 ["OnMouseLeave"]
      125 NAMECALL                         R20 R0 K48 ["renderSide"]
      127 CALL                             R20 2 1
      128 SETTABLEKS                       R20 R19 K31 ["RightButton"]
      130 CALL                             R16 3 -1
      131 RETURN                           R16 -1

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
