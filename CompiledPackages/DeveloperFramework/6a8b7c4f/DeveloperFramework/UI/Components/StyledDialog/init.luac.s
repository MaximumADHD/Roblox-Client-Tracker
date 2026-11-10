PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Buttons"]
        5 GETTABLEKS                       R2 R0 K2 ["ButtonWidth"]
        7 GETTABLEKS                       R3 R0 K3 ["ButtonHeight"]
        9 LOADNIL                          R4
       10 JUMPIFNOT                        R1 ; [+28]
       11 LENGTH                           R5 R1
       12 JUMPIFEQKN                       R5 K4 [0] ; [+26]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R6 R0 K5 ["ButtonPadding"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R0 K6 ["ButtonSpacing"]
       20 LENGTH                           R10 R1
       21 MUL                              R9 R10 R2
       22 LENGTH                           R12 R1
       23 SUBK                             R11 R12 K7 [1]
       24 MUL                              R10 R6 R11
       25 ADD                              R8 R9 R10
       26 GETTABLEKS                       R9 R5 K8 ["Horizontal"]
       28 ADD                              R7 R8 R9
       29 GETTABLEKS                       R9 R5 K9 ["Vertical"]
       31 ADD                              R8 R3 R9
       32 GETIMPORT                        R9 K12 [Vector2.new]
       34 MOVE                             R10 R7
       35 MOVE                             R11 R8
       36 CALL                             R9 2 1
       37 MOVE                             R4 R9
       38 JUMP                             ; [+6]
       39 GETIMPORT                        R5 K12 [Vector2.new]
       41 LOADN                            R6 0
       42 LOADN                            R7 0
       43 CALL                             R5 2 1
       44 MOVE                             R4 R5
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["props"]
       48 GETTABLEKS                       R5 R5 K13 ["MinContentSize"]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R7 R0 K14 ["ContentPadding"]
       53 CALL                             R6 1 1
       54 GETTABLEKS                       R9 R5 K15 ["X"]
       56 GETTABLEKS                       R10 R6 K8 ["Horizontal"]
       58 ADD                              R8 R9 R10
       59 GETTABLEKS                       R9 R4 K15 ["X"]
       61 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       63 GETIMPORT                        R7 K18 [math.max]
       65 CALL                             R7 2 1
       66 GETTABLEKS                       R10 R5 K19 ["Y"]
       68 GETTABLEKS                       R11 R6 K9 ["Vertical"]
       70 ADD                              R9 R10 R11
       71 GETTABLEKS                       R10 R4 K19 ["Y"]
       73 ADD                              R8 R9 R10
       74 GETIMPORT                        R9 K12 [Vector2.new]
       76 MOVE                             R10 R7
       77 MOVE                             R11 R8
       78 CALL                             R9 2 1
       79 MOVE                             R10 R9
       80 MOVE                             R11 R4
       81 RETURN                           R10 2

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["OnButtonPressed"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["Buttons"]
       15 GETTABLEKS                       R4 R0 K3 ["Buttons"]
       17 JUMPIF                           R4 ; [+2]
       18 NEWTABLE                         R4 0 0
       20 GETTABLEKS                       R5 R1 K4 ["ButtonWidth"]
       22 GETTABLEKS                       R6 R1 K5 ["ButtonHeight"]
       24 NEWTABLE                         R7 0 0
       26 GETIMPORT                        R8 K7 [ipairs]
       28 MOVE                             R9 R3
       29 CALL                             R8 1 3
       30 FORGPREP_INEXT                   R8
       31 GETTABLEKS                       R15 R12 K8 ["Key"]
       33 JUMPIFNOTEQKNIL                  R15 ; [+2]
       35 LOADB                            R14 0 +1
       36 LOADB                            R14 1
       37 GETIMPORT                        R15 K11 [string.format]
       39 LOADK                            R16 K12 ["Dialog buttons must have keys. Missing at index : %d"]
       40 MOVE                             R17 R11
       41 CALL                             R15 2 -1
       42 FASTCALL                         ASSERT ; [+2]
       43 GETIMPORT                        R13 K14 [assert]
       45 CALL                             R13 -1 0
       46 GETTABLE                         R13 R4 R11
       47 JUMPIF                           R13 ; [+2]
       48 NEWTABLE                         R13 0 0
       50 GETTABLEKS                       R14 R12 K8 ["Key"]
       52 GETUPVAL                         R15 1
       53 GETTABLEKS                       R16 R12 K15 ["Style"]
       55 GETTABLEKS                       R17 R13 K15 ["Style"]
       57 LOADK                            R18 K16 ["Round"]
       58 CALL                             R15 3 1
       59 GETTABLEKS                       R16 R12 K17 ["Text"]
       61 GETTABLEKS                       R17 R12 K18 ["StyleModifier"]
       63 GETTABLEKS                       R18 R12 K19 ["Tooltip"]
       65 FASTCALL1                        TOSTRING R11 ; [+3]
       66 MOVE                             R20 R11
       67 GETIMPORT                        R19 K21 [tostring]
       69 CALL                             R19 1 1
       70 GETUPVAL                         R20 2
       71 GETTABLEKS                       R20 R20 K22 ["createElement"]
       73 GETUPVAL                         R21 3
       74 DUPTABLE                         R22 K26 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text", "Tooltip"}]
       75 SETTABLEKS                       R11 R22 K23 ["LayoutOrder"]
       77 NEWCLOSURE                       R23 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R14
       80 SETTABLEKS                       R23 R22 K24 ["OnClick"]
       82 GETIMPORT                        R23 K29 [UDim2.fromOffset]
       84 MOVE                             R24 R5
       85 MOVE                             R25 R6
       86 CALL                             R23 2 1
       87 SETTABLEKS                       R23 R22 K25 ["Size"]
       89 SETTABLEKS                       R15 R22 K15 ["Style"]
       91 SETTABLEKS                       R17 R22 K18 ["StyleModifier"]
       93 SETTABLEKS                       R16 R22 K17 ["Text"]
       95 SETTABLEKS                       R18 R22 K19 ["Tooltip"]
       97 CALL                             R20 2 1
       98 SETTABLE                         R20 R7 R19
       99 FORGLOOP                         R8 2 [inext] ; [-69]
      101 RETURN                           R7 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["getComputedSizes"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 SETTABLEKS                       R1 R0 K1 ["getButtons"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Design"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["AutomaticSize"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R0 K0 ["props"]
       15 GETTABLEKS                       R5 R5 K4 ["BackgroundColor3"]
       17 GETTABLEKS                       R6 R1 K5 ["Background"]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R6 R0 K0 ["props"]
       23 GETTABLEKS                       R6 R6 K6 ["ButtonHorizontalAlignment"]
       25 GETTABLEKS                       R7 R1 K6 ["ButtonHorizontalAlignment"]
       27 CALL                             R5 2 1
       28 GETTABLEKS                       R6 R0 K0 ["props"]
       30 GETTABLEKS                       R6 R6 K7 ["Enabled"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R8 R0 K0 ["props"]
       35 GETTABLEKS                       R8 R8 K8 ["Modal"]
       37 GETTABLEKS                       R9 R1 K8 ["Modal"]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R9 R0 K0 ["props"]
       43 GETTABLEKS                       R9 R9 K9 ["Resizable"]
       45 GETTABLEKS                       R10 R1 K9 ["Resizable"]
       47 CALL                             R8 2 1
       48 GETTABLEKS                       R9 R0 K0 ["props"]
       50 GETTABLEKS                       R9 R9 K10 ["OnClose"]
       52 GETTABLEKS                       R10 R0 K0 ["props"]
       54 GETTABLEKS                       R10 R10 K11 ["Title"]
       56 GETTABLEKS                       R11 R0 K0 ["props"]
       58 GETTABLEKS                       R11 R11 K12 ["ZIndexBehavior"]
       60 GETTABLEKS                       R12 R0 K13 ["getComputedSizes"]
       62 MOVE                             R13 R1
       63 CALL                             R12 1 2
       64 GETUPVAL                         R14 1
       65 GETTABLEKS                       R14 R14 K14 ["createElement"]
       67 GETUPVAL                         R15 2
       68 DUPTABLE                         R16 K17 [{"Enabled", "Modal", "OnClose", "Resizable", "Size", "MinSize", "Title", "ZIndexBehavior"}]
       69 SETTABLEKS                       R6 R16 K7 ["Enabled"]
       71 SETTABLEKS                       R7 R16 K8 ["Modal"]
       73 SETTABLEKS                       R9 R16 K10 ["OnClose"]
       75 SETTABLEKS                       R8 R16 K9 ["Resizable"]
       77 SETTABLEKS                       R12 R16 K15 ["Size"]
       79 SETTABLEKS                       R12 R16 K16 ["MinSize"]
       81 SETTABLEKS                       R10 R16 K11 ["Title"]
       83 SETTABLEKS                       R11 R16 K12 ["ZIndexBehavior"]
       85 DUPTABLE                         R17 K20 [{"SolidBackground", "StyleLink"}]
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K14 ["createElement"]
       89 GETUPVAL                         R19 3
       90 DUPTABLE                         R20 K25 [{"BackgroundColor", "Layout", "VerticalAlignment", "Padding"}]
       91 SETTABLEKS                       R4 R20 K21 ["BackgroundColor"]
       93 GETIMPORT                        R21 K29 [Enum.FillDirection.Vertical]
       95 SETTABLEKS                       R21 R20 K22 ["Layout"]
       97 GETIMPORT                        R21 K31 [Enum.VerticalAlignment.Top]
       99 SETTABLEKS                       R21 R20 K23 ["VerticalAlignment"]
      101 GETTABLEKS                       R21 R1 K32 ["ContentPadding"]
      103 SETTABLEKS                       R21 R20 K24 ["Padding"]
      105 DUPTABLE                         R21 K35 [{"Contents", "ButtonContainer"}]
      106 GETUPVAL                         R22 1
      107 GETTABLEKS                       R22 R22 K14 ["createElement"]
      109 GETUPVAL                         R23 3
      110 DUPTABLE                         R24 K38 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"]}]
      111 SETTABLEKS                       R3 R24 K3 ["AutomaticSize"]
      113 GETIMPORT                        R25 K41 [UDim2.new]
      115 LOADN                            R26 1
      116 LOADN                            R27 0
      117 LOADN                            R28 1
      118 GETTABLEKS                       R30 R13 K42 ["Y"]
      120 MINUS                            R29 R30
      121 CALL                             R25 4 1
      122 SETTABLEKS                       R25 R24 K15 ["Size"]
      124 GETTABLEKS                       R26 R0 K0 ["props"]
      126 GETUPVAL                         R27 1
      127 GETTABLEKS                       R27 R27 K43 ["Children"]
      129 GETTABLE                         R25 R26 R27
      130 CALL                             R22 3 1
      131 SETTABLEKS                       R22 R21 K33 ["Contents"]
      133 GETUPVAL                         R22 1
      134 GETTABLEKS                       R22 R22 K14 ["createElement"]
      136 GETUPVAL                         R23 3
      137 DUPTABLE                         R24 K47 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Padding"], ["Size"], ["Spacing"]}]
      138 SETTABLEKS                       R5 R24 K44 ["HorizontalAlignment"]
      140 GETIMPORT                        R25 K49 [Enum.FillDirection.Horizontal]
      142 SETTABLEKS                       R25 R24 K22 ["Layout"]
      144 GETTABLEKS                       R25 R1 K50 ["ButtonPadding"]
      146 SETTABLEKS                       R25 R24 K24 ["Padding"]
      148 GETIMPORT                        R25 K41 [UDim2.new]
      150 LOADN                            R26 1
      151 LOADN                            R27 0
      152 LOADN                            R28 0
      153 GETTABLEKS                       R29 R13 K42 ["Y"]
      155 CALL                             R25 4 1
      156 SETTABLEKS                       R25 R24 K15 ["Size"]
      158 GETTABLEKS                       R25 R1 K51 ["ButtonSpacing"]
      160 SETTABLEKS                       R25 R24 K46 ["Spacing"]
      162 GETTABLEKS                       R25 R0 K52 ["getButtons"]
      164 MOVE                             R26 R1
      165 CALL                             R25 1 -1
      166 CALL                             R22 -1 1
      167 SETTABLEKS                       R22 R21 K34 ["ButtonContainer"]
      169 CALL                             R18 3 1
      170 SETTABLEKS                       R18 R17 K18 ["SolidBackground"]
      172 GETUPVAL                         R19 4
      173 JUMPIFNOT                        R19 ; [+12]
      174 GETUPVAL                         R18 1
      175 GETTABLEKS                       R18 R18 K14 ["createElement"]
      177 LOADK                            R19 K19 ["StyleLink"]
      178 DUPTABLE                         R20 K54 [{"StyleSheet"}]
      179 NAMECALL                         R21 R2 K55 ["get"]
      181 CALL                             R21 1 1
      182 SETTABLEKS                       R21 R20 K53 ["StyleSheet"]
      184 CALL                             R18 2 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R18
      187 SETTABLEKS                       R18 R17 K19 ["StyleLink"]
      189 CALL                             R14 3 -1
      190 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Style"]
       29 GETTABLEKS                       R5 R5 K11 ["Padding"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Util"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K13 ["prioritize"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K12 ["Util"]
       43 GETTABLEKS                       R8 R8 K14 ["Typecheck"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K2 ["UI"]
       50 GETTABLEKS                       R9 R9 K15 ["Components"]
       52 GETTABLEKS                       R9 R9 K16 ["DEPRECATED_Button"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K6 [require]
       57 GETTABLEKS                       R10 R0 K2 ["UI"]
       59 GETTABLEKS                       R10 R10 K15 ["Components"]
       61 GETTABLEKS                       R10 R10 K17 ["Pane"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K2 ["UI"]
       68 GETTABLEKS                       R11 R11 K15 ["Components"]
       70 GETTABLEKS                       R11 R11 K18 ["Dialog"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K6 [require]
       75 GETTABLEKS                       R12 R0 K19 ["Styling"]
       77 GETTABLEKS                       R12 R12 K20 ["supportsStyleSheets"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R3 K21 ["PureComponent"]
       82 LOADK                            R14 K22 ["StyledDialog"]
       83 NAMECALL                         R12 R12 K23 ["extend"]
       85 CALL                             R12 2 1
       86 DUPTABLE                         R13 K26 [{["Enabled"] = True}]
       87 SETTABLEKS                       R13 R12 K27 ["defaultProps"]
       89 DUPCLOSURE                       R13 K28 [PROTO_3]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R13 R12 K29 ["init"]
       96 DUPCLOSURE                       R13 K30 [PROTO_4]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R11
      102 SETTABLEKS                       R13 R12 K31 ["render"]
      104 MOVE                             R13 R2
      105 DUPTABLE                         R14 K34 [{"Stylizer", "Design"}]
      106 GETTABLEKS                       R15 R1 K32 ["Stylizer"]
      108 SETTABLEKS                       R15 R14 K32 ["Stylizer"]
      110 JUMPIFNOT                        R11 ; [+3]
      111 GETTABLEKS                       R15 R1 K33 ["Design"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R15
      115 SETTABLEKS                       R15 R14 K33 ["Design"]
      117 CALL                             R13 1 1
      118 MOVE                             R14 R12
      119 CALL                             R13 1 1
      120 MOVE                             R12 R13
      121 GETTABLEKS                       R13 R7 K35 ["wrap"]
      123 MOVE                             R14 R12
      124 GETIMPORT                        R15 K1 [script]
      126 CALL                             R13 2 0
      127 RETURN                           R12 1
