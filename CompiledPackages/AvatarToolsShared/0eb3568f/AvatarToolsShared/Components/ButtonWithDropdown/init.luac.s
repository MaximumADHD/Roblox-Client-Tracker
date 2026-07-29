PROTO_0:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{[1] = False}]
        2 NAMECALL                         R2 R2 K3 ["setState"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K4 ["props"]
        8 GETTABLEKS                       R2 R2 K5 ["OnSelectItem"]
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R2 K4 [{[1] = False, ["hoveringArrow"] = False, ["isOpen"] = False}]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K6 ["selectItem"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K7 ["openMenu"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K8 ["closeMenu"]
       15 NEWCLOSURE                       R2 P3
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K9 ["mouseEnterMainButton"]
       19 NEWCLOSURE                       R2 P4
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K10 ["mouseLeaveMainButton"]
       23 NEWCLOSURE                       R2 P5
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K11 ["mouseEnterArrowButton"]
       27 NEWCLOSURE                       R2 P6
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R2 R0 K12 ["mouseLeaveArrowButton"]
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R5 R4 K2 ["hoveringMain"]
        6 GETTABLEKS                       R6 R3 K3 ["ButtonWidth"]
        8 GETTABLEKS                       R7 R3 K4 ["Height"]
       10 GETTABLEKS                       R8 R3 K5 ["ButtonIcon"]
       12 GETTABLEKS                       R9 R3 K6 ["TooltipText"]
       14 GETTABLEKS                       R10 R3 K7 ["OnClick"]
       16 GETTABLEKS                       R11 R3 K8 ["Items"]
       18 GETTABLEKS                       R12 R3 K9 ["ButtonText"]
       20 GETTABLEKS                       R13 R3 K10 ["IconSize"]
       22 GETTABLEKS                       R14 R3 K11 ["Stylizer"]
       24 GETTABLEKS                       R15 R14 K12 ["TextSize"]
       26 GETTABLEKS                       R16 R14 K13 ["ButtonSpacing"]
       28 JUMPIFNOT                        R2 ; [+3]
       29 GETTABLEKS                       R17 R14 K14 ["BackgroundImageFull"]
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R17 R14 K15 ["BackgroundImageLeft"]
       34 JUMPIFNOT                        R2 ; [+3]
       35 GETTABLEKS                       R18 R14 K16 ["SliceCenterFull"]
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R18 R14 K17 ["SliceCenter"]
       40 GETTABLEKS                       R19 R14 K18 ["Color"]
       42 JUMPIFNOT                        R5 ; [+2]
       43 GETTABLEKS                       R19 R14 K19 ["HoverColor"]
       45 GETUPVAL                         R20 0
       46 GETTABLEKS                       R20 R20 K20 ["new"]
       48 CALL                             R20 0 1
       49 GETUPVAL                         R21 1
       50 GETTABLEKS                       R21 R21 K21 ["createElement"]
       52 LOADK                            R22 K22 ["ImageButton"]
       53 NEWTABLE                         R23 16 0
       55 LOADN                            R24 1
       56 SETTABLEKS                       R24 R23 K23 ["BackgroundTransparency"]
       58 GETIMPORT                        R24 K26 [UDim2.fromOffset]
       60 MOVE                             R25 R6
       61 MOVE                             R26 R7
       62 CALL                             R24 2 1
       63 SETTABLEKS                       R24 R23 K27 ["Size"]
       65 SETTABLEKS                       R19 R23 K28 ["ImageColor3"]
       67 SETTABLEKS                       R17 R23 K29 ["Image"]
       69 GETIMPORT                        R24 K33 [Enum.ScaleType.Slice]
       71 SETTABLEKS                       R24 R23 K31 ["ScaleType"]
       73 SETTABLEKS                       R18 R23 K17 ["SliceCenter"]
       75 SETTABLEKS                       R1 R23 K34 ["LayoutOrder"]
       77 GETUPVAL                         R24 1
       78 GETTABLEKS                       R24 R24 K35 ["Event"]
       80 GETTABLEKS                       R24 R24 K36 ["Activated"]
       82 SETTABLE                         R10 R23 R24
       83 GETUPVAL                         R24 1
       84 GETTABLEKS                       R24 R24 K35 ["Event"]
       86 GETTABLEKS                       R24 R24 K37 ["MouseEnter"]
       88 GETTABLEKS                       R25 R0 K38 ["mouseEnterMainButton"]
       90 SETTABLE                         R25 R23 R24
       91 GETUPVAL                         R24 1
       92 GETTABLEKS                       R24 R24 K35 ["Event"]
       94 GETTABLEKS                       R24 R24 K39 ["MouseLeave"]
       96 GETTABLEKS                       R25 R0 K40 ["mouseLeaveMainButton"]
       98 SETTABLE                         R25 R23 R24
       99 DUPTABLE                         R24 K43 [{"Tooltip", "Container"}]
      100 MOVE                             R25 R9
      101 JUMPIFNOT                        R25 ; [+8]
      102 GETUPVAL                         R25 1
      103 GETTABLEKS                       R25 R25 K21 ["createElement"]
      105 GETUPVAL                         R26 2
      106 DUPTABLE                         R27 K45 [{"Text"}]
      107 SETTABLEKS                       R9 R27 K44 ["Text"]
      109 CALL                             R25 2 1
      110 SETTABLEKS                       R25 R24 K41 ["Tooltip"]
      112 GETUPVAL                         R25 1
      113 GETTABLEKS                       R25 R25 K21 ["createElement"]
      115 GETUPVAL                         R26 3
      116 DUPTABLE                         R27 K50 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
      117 GETIMPORT                        R28 K53 [Enum.FillDirection.Horizontal]
      119 SETTABLEKS                       R28 R27 K46 ["Layout"]
      121 GETIMPORT                        R28 K55 [Enum.HorizontalAlignment.Center]
      123 SETTABLEKS                       R28 R27 K47 ["HorizontalAlignment"]
      125 GETIMPORT                        R28 K56 [Enum.VerticalAlignment.Center]
      127 SETTABLEKS                       R28 R27 K48 ["VerticalAlignment"]
      129 SETTABLEKS                       R16 R27 K49 ["Spacing"]
      131 DUPTABLE                         R28 K58 [{"Text", "Icon"}]
      132 GETUPVAL                         R29 1
      133 GETTABLEKS                       R29 R29 K21 ["createElement"]
      135 GETUPVAL                         R30 4
      136 DUPTABLE                         R31 K64 [{["Text"], ["AutomaticSize"], ["TextSize"], ["TextXAlignment"], ["TextYAlignment"], ["Style"] = "Bold", ["LayoutOrder"]}]
      137 SETTABLEKS                       R12 R31 K44 ["Text"]
      139 GETIMPORT                        R32 K66 [Enum.AutomaticSize.XY]
      141 SETTABLEKS                       R32 R31 K59 ["AutomaticSize"]
      143 SETTABLEKS                       R15 R31 K12 ["TextSize"]
      145 GETIMPORT                        R32 K67 [Enum.TextXAlignment.Center]
      147 SETTABLEKS                       R32 R31 K60 ["TextXAlignment"]
      149 GETIMPORT                        R32 K68 [Enum.TextYAlignment.Center]
      151 SETTABLEKS                       R32 R31 K61 ["TextYAlignment"]
      153 NAMECALL                         R32 R20 K69 ["getNextOrder"]
      155 CALL                             R32 1 1
      156 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      158 CALL                             R29 2 1
      159 SETTABLEKS                       R29 R28 K44 ["Text"]
      161 JUMPIFNOT                        R8 ; [+21]
      162 GETUPVAL                         R29 1
      163 GETTABLEKS                       R29 R29 K21 ["createElement"]
      165 GETUPVAL                         R30 5
      166 DUPTABLE                         R31 K70 [{"Image", "Size", "LayoutOrder"}]
      167 SETTABLEKS                       R8 R31 K29 ["Image"]
      169 GETIMPORT                        R32 K26 [UDim2.fromOffset]
      171 MOVE                             R33 R13
      172 MOVE                             R34 R13
      173 CALL                             R32 2 1
      174 SETTABLEKS                       R32 R31 K27 ["Size"]
      176 NAMECALL                         R32 R20 K69 ["getNextOrder"]
      178 CALL                             R32 1 1
      179 SETTABLEKS                       R32 R31 K34 ["LayoutOrder"]
      181 CALL                             R29 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R29
      184 SETTABLEKS                       R29 R28 K57 ["Icon"]
      186 CALL                             R25 3 1
      187 SETTABLEKS                       R25 R24 K42 ["Container"]
      189 CALL                             R21 3 -1
      190 RETURN                           R21 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R3 K2 ["hoveringArrow"]
        6 GETTABLEKS                       R5 R2 K3 ["ArrowWidth"]
        8 GETTABLEKS                       R6 R2 K4 ["Height"]
       10 GETTABLEKS                       R7 R2 K5 ["Stylizer"]
       12 GETTABLEKS                       R8 R7 K6 ["ArrowIcon"]
       14 GETTABLEKS                       R9 R7 K7 ["ArrowSize"]
       16 GETTABLEKS                       R10 R7 K8 ["BackgroundImageRight"]
       18 GETTABLEKS                       R11 R7 K9 ["SliceCenter"]
       20 GETTABLEKS                       R12 R7 K10 ["Color"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 GETTABLEKS                       R12 R7 K11 ["HoverColor"]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K12 ["createElement"]
       28 LOADK                            R14 K13 ["ImageButton"]
       29 NEWTABLE                         R15 16 0
       31 LOADN                            R16 1
       32 SETTABLEKS                       R16 R15 K14 ["BackgroundTransparency"]
       34 GETIMPORT                        R16 K17 [UDim2.fromOffset]
       36 MOVE                             R17 R5
       37 MOVE                             R18 R6
       38 CALL                             R16 2 1
       39 SETTABLEKS                       R16 R15 K18 ["Size"]
       41 SETTABLEKS                       R12 R15 K19 ["ImageColor3"]
       43 SETTABLEKS                       R10 R15 K20 ["Image"]
       45 GETIMPORT                        R16 K24 [Enum.ScaleType.Slice]
       47 SETTABLEKS                       R16 R15 K22 ["ScaleType"]
       49 SETTABLEKS                       R11 R15 K9 ["SliceCenter"]
       51 SETTABLEKS                       R1 R15 K25 ["LayoutOrder"]
       53 GETUPVAL                         R16 0
       54 GETTABLEKS                       R16 R16 K26 ["Event"]
       56 GETTABLEKS                       R16 R16 K27 ["Activated"]
       58 GETTABLEKS                       R17 R0 K28 ["openMenu"]
       60 SETTABLE                         R17 R15 R16
       61 GETUPVAL                         R16 0
       62 GETTABLEKS                       R16 R16 K26 ["Event"]
       64 GETTABLEKS                       R16 R16 K29 ["MouseEnter"]
       66 GETTABLEKS                       R17 R0 K30 ["mouseEnterArrowButton"]
       68 SETTABLE                         R17 R15 R16
       69 GETUPVAL                         R16 0
       70 GETTABLEKS                       R16 R16 K26 ["Event"]
       72 GETTABLEKS                       R16 R16 K31 ["MouseLeave"]
       74 GETTABLEKS                       R17 R0 K32 ["mouseLeaveArrowButton"]
       76 SETTABLE                         R17 R15 R16
       77 DUPTABLE                         R16 K34 [{"Icon"}]
       78 GETUPVAL                         R17 0
       79 GETTABLEKS                       R17 R17 K12 ["createElement"]
       81 GETUPVAL                         R18 1
       82 DUPTABLE                         R19 K37 [{"Image", "Size", "Position", "AnchorPoint"}]
       83 SETTABLEKS                       R8 R19 K20 ["Image"]
       85 GETIMPORT                        R20 K17 [UDim2.fromOffset]
       87 MOVE                             R21 R9
       88 MOVE                             R22 R9
       89 CALL                             R20 2 1
       90 SETTABLEKS                       R20 R19 K18 ["Size"]
       92 GETIMPORT                        R20 K39 [UDim2.fromScale]
       94 LOADK                            R21 K40 [0.5]
       95 LOADK                            R22 K40 [0.5]
       96 CALL                             R20 2 1
       97 SETTABLEKS                       R20 R19 K35 ["Position"]
       99 GETIMPORT                        R20 K43 [Vector2.new]
      101 LOADK                            R21 K40 [0.5]
      102 LOADK                            R22 K40 [0.5]
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K36 ["AnchorPoint"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K33 ["Icon"]
      109 CALL                             R13 3 -1
      110 RETURN                           R13 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["isOpen"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["Items"]
       10 GETTABLEKS                       R6 R1 K5 ["ItemHeight"]
       12 GETTABLEKS                       R7 R1 K6 ["ArrowWidth"]
       14 GETTABLEKS                       R8 R1 K7 ["ButtonWidth"]
       16 GETTABLEKS                       R9 R1 K8 ["Height"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["new"]
       21 CALL                             R10 0 1
       22 LENGTH                           R12 R5
       23 JUMPIFEQKN                       R12 K10 [0] ; [+2]
       25 LOADB                            R11 0 +1
       26 LOADB                            R11 1
       27 MOVE                             R12 R8
       28 JUMPIF                           R11 ; [+2]
       29 ADDK                             R13 R7 K11 [1]
       30 ADD                              R12 R12 R13
       31 GETUPVAL                         R13 1
       32 GETTABLEKS                       R13 R13 K12 ["createElement"]
       34 GETUPVAL                         R14 2
       35 DUPTABLE                         R15 K14 [{"Size", "LayoutOrder"}]
       36 GETIMPORT                        R16 K17 [UDim2.fromOffset]
       38 MOVE                             R17 R12
       39 MOVE                             R18 R9
       40 CALL                             R16 2 1
       41 SETTABLEKS                       R16 R15 K13 ["Size"]
       43 SETTABLEKS                       R4 R15 K3 ["LayoutOrder"]
       45 DUPTABLE                         R16 K20 [{"ButtonWithArrow", "Menu"}]
       46 GETUPVAL                         R17 1
       47 GETTABLEKS                       R17 R17 K12 ["createElement"]
       49 GETUPVAL                         R18 2
       50 DUPTABLE                         R19 K23 [{["Layout"], ["BackgroundTransparency"] = 1}]
       51 GETIMPORT                        R20 K27 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R20 R19 K21 ["Layout"]
       55 DUPTABLE                         R20 K31 [{"MainButton", "Separator", "DropdownArrowButton"}]
       56 NAMECALL                         R23 R10 K32 ["getNextOrder"]
       58 CALL                             R23 1 1
       59 MOVE                             R24 R11
       60 NAMECALL                         R21 R0 K33 ["renderMainButton"]
       62 CALL                             R21 3 1
       63 SETTABLEKS                       R21 R20 K28 ["MainButton"]
       65 JUMPIF                           R11 ; [+16]
       66 GETUPVAL                         R21 1
       67 GETTABLEKS                       R21 R21 K12 ["createElement"]
       69 GETUPVAL                         R22 3
       70 DUPTABLE                         R23 K35 [{"DominantAxis", "LayoutOrder"}]
       71 GETIMPORT                        R24 K36 [Enum.DominantAxis.Height]
       73 SETTABLEKS                       R24 R23 K34 ["DominantAxis"]
       75 NAMECALL                         R24 R10 K32 ["getNextOrder"]
       77 CALL                             R24 1 1
       78 SETTABLEKS                       R24 R23 K3 ["LayoutOrder"]
       80 CALL                             R21 2 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R21
       83 SETTABLEKS                       R21 R20 K29 ["Separator"]
       85 JUMPIF                           R11 ; [+7]
       86 NAMECALL                         R23 R10 K32 ["getNextOrder"]
       88 CALL                             R23 1 -1
       89 NAMECALL                         R21 R0 K37 ["renderDropdownArrow"]
       91 CALL                             R21 -1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R21
       94 SETTABLEKS                       R21 R20 K30 ["DropdownArrowButton"]
       96 CALL                             R17 3 1
       97 SETTABLEKS                       R17 R16 K18 ["ButtonWithArrow"]
       99 JUMPIF                           R11 ; [+22]
      100 GETUPVAL                         R17 1
      101 GETTABLEKS                       R17 R17 K12 ["createElement"]
      103 GETUPVAL                         R18 4
      104 DUPTABLE                         R19 K41 [{"Hide", "Items", "ItemHeight", "OnItemActivated", "OnFocusLost"}]
      105 NOT                              R20 R3
      106 SETTABLEKS                       R20 R19 K38 ["Hide"]
      108 SETTABLEKS                       R5 R19 K4 ["Items"]
      110 SETTABLEKS                       R6 R19 K5 ["ItemHeight"]
      112 GETTABLEKS                       R20 R0 K42 ["selectItem"]
      114 SETTABLEKS                       R20 R19 K39 ["OnItemActivated"]
      116 GETTABLEKS                       R20 R0 K43 ["closeMenu"]
      118 SETTABLEKS                       R20 R19 K40 ["OnFocusLost"]
      120 CALL                             R17 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R17
      123 SETTABLEKS                       R17 R16 K19 ["Menu"]
      125 CALL                             R13 3 -1
      126 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETTABLEKS                       R6 R3 K9 ["UI"]
       25 GETTABLEKS                       R7 R6 K10 ["Image"]
       27 GETTABLEKS                       R8 R6 K11 ["TextLabel"]
       29 GETTABLEKS                       R9 R6 K12 ["DropdownMenu"]
       31 GETTABLEKS                       R10 R6 K13 ["Pane"]
       33 GETTABLEKS                       R11 R6 K14 ["Tooltip"]
       35 GETTABLEKS                       R12 R6 K15 ["Separator"]
       37 GETTABLEKS                       R13 R3 K16 ["Util"]
       39 GETTABLEKS                       R14 R13 K17 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R15 R13 K18 ["Typecheck"]
       43 GETTABLEKS                       R16 R2 K19 ["PureComponent"]
       45 LOADK                            R18 K20 ["ButtonWithDropdown"]
       46 NAMECALL                         R16 R16 K21 ["extend"]
       48 CALL                             R16 2 1
       49 GETTABLEKS                       R17 R15 K22 ["wrap"]
       51 MOVE                             R18 R16
       52 GETIMPORT                        R19 K1 [script]
       54 CALL                             R17 2 0
       55 DUPCLOSURE                       R17 K23 [PROTO_7]
       56 SETTABLEKS                       R17 R16 K24 ["init"]
       58 DUPCLOSURE                       R17 K25 [PROTO_8]
       59 CAPTURE                          VAL R14
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R11
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R17 R16 K26 ["renderMainButton"]
       67 DUPCLOSURE                       R17 K27 [PROTO_9]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 SETTABLEKS                       R17 R16 K28 ["renderDropdownArrow"]
       72 DUPCLOSURE                       R17 K29 [PROTO_10]
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R17 R16 K30 ["render"]
       80 MOVE                             R17 R5
       81 DUPTABLE                         R18 K32 [{"Stylizer"}]
       82 GETTABLEKS                       R19 R4 K31 ["Stylizer"]
       84 SETTABLEKS                       R19 R18 K31 ["Stylizer"]
       86 CALL                             R17 1 1
       87 MOVE                             R18 R16
       88 CALL                             R17 1 1
       89 MOVE                             R16 R17
       90 RETURN                           R16 1
