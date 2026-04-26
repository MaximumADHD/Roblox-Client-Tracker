PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["isFocused"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["Selected"]
        8 JUMP                             ; [+11]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["isHover"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K3 ["Hover"]
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R0 R1 K4 ["None"]
       20 GETUPVAL                         R1 0
       21 DUPTABLE                         R3 K6 [{"StyleModifier"}]
       22 SETTABLEKS                       R0 R3 K5 ["StyleModifier"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["TextFits"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["TextXAlignment"]
        8 JUMPIF                           R1 ; [+2]
        9 GETIMPORT                        R1 K5 [Enum.TextXAlignment.Left]
       11 SETTABLEKS                       R1 R0 K2 ["TextXAlignment"]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["props"]
       17 GETTABLEKS                       R1 R2 K2 ["TextXAlignment"]
       19 JUMPIF                           R1 ; [+2]
       20 GETIMPORT                        R1 K7 [Enum.TextXAlignment.Right]
       22 SETTABLEKS                       R1 R0 K2 ["TextXAlignment"]
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textBoxRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["MultiLine"]
       12 JUMPIF                           R1 ; [+83]
       13 GETUPVAL                         R1 1
       14 JUMPIFNOT                        R1 ; [+6]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K4 ["refit"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 JUMP                             ; [+24]
       21 GETTABLEKS                       R1 R0 K5 ["TextFits"]
       23 JUMPIFNOT                        R1 ; [+11]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K2 ["props"]
       27 GETTABLEKS                       R1 R2 K6 ["TextXAlignment"]
       29 JUMPIF                           R1 ; [+2]
       30 GETIMPORT                        R1 K9 [Enum.TextXAlignment.Left]
       32 SETTABLEKS                       R1 R0 K6 ["TextXAlignment"]
       34 JUMP                             ; [+10]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K2 ["props"]
       38 GETTABLEKS                       R1 R2 K6 ["TextXAlignment"]
       40 JUMPIF                           R1 ; [+2]
       41 GETIMPORT                        R1 K11 [Enum.TextXAlignment.Right]
       43 SETTABLEKS                       R1 R0 K6 ["TextXAlignment"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K2 ["props"]
       48 GETTABLEKS                       R1 R2 K12 ["ForceOnTextChange"]
       50 JUMPIFNOT                        R1 ; [+15]
       51 GETIMPORT                        R1 K15 [string.gsub]
       53 GETTABLEKS                       R2 R0 K16 ["Text"]
       55 LOADK                            R3 K17 ["[\n\r]"]
       56 LOADK                            R4 K18 [" "]
       57 CALL                             R1 3 1
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K2 ["props"]
       61 GETTABLEKS                       R2 R3 K19 ["OnTextChanged"]
       63 MOVE                             R3 R1
       64 CALL                             R2 1 0
       65 RETURN                           R0 0
       66 GETTABLEKS                       R1 R0 K16 ["Text"]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K2 ["props"]
       71 GETTABLEKS                       R2 R3 K16 ["Text"]
       73 JUMPIFEQ                         R1 R2 ; [+39]
       75 GETIMPORT                        R1 K15 [string.gsub]
       77 GETTABLEKS                       R2 R0 K16 ["Text"]
       79 LOADK                            R3 K17 ["[\n\r]"]
       80 LOADK                            R4 K18 [" "]
       81 CALL                             R1 3 1
       82 GETUPVAL                         R4 0
       83 GETTABLEKS                       R3 R4 K2 ["props"]
       85 GETTABLEKS                       R2 R3 K19 ["OnTextChanged"]
       87 JUMPIFNOT                        R2 ; [+25]
       88 GETUPVAL                         R4 0
       89 GETTABLEKS                       R3 R4 K2 ["props"]
       91 GETTABLEKS                       R2 R3 K19 ["OnTextChanged"]
       93 MOVE                             R3 R1
       94 CALL                             R2 1 0
       95 RETURN                           R0 0
       96 GETTABLEKS                       R1 R0 K16 ["Text"]
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R3 R4 K2 ["props"]
      101 GETTABLEKS                       R2 R3 K16 ["Text"]
      103 JUMPIFEQ                         R1 R2 ; [+9]
      105 GETUPVAL                         R3 0
      106 GETTABLEKS                       R2 R3 K2 ["props"]
      108 GETTABLEKS                       R1 R2 K19 ["OnTextChanged"]
      110 GETTABLEKS                       R2 R0 K16 ["Text"]
      112 CALL                             R1 1 0
      113 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["isFocused"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["setStyleModifier"]
        7 CALL                             R2 0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["OnFocusGained"]
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["props"]
       17 GETTABLEKS                       R2 R3 K3 ["OnFocusGained"]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["textBoxRef"]
        3 GETTABLEKS                       R2 R3 K1 ["current"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["isFocused"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["setStyleModifier"]
       14 CALL                             R2 0 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K0 ["textBoxRef"]
       18 GETTABLEKS                       R2 R3 K1 ["current"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K4 ["props"]
       23 GETTABLEKS                       R3 R4 K5 ["TextXAlignment"]
       25 JUMPIF                           R3 ; [+2]
       26 GETIMPORT                        R3 K8 [Enum.TextXAlignment.Left]
       28 SETTABLEKS                       R3 R2 K5 ["TextXAlignment"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K4 ["props"]
       33 GETTABLEKS                       R3 R4 K9 ["OnFocusLost"]
       35 JUMPIFNOT                        R3 ; [+8]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K4 ["props"]
       39 GETTABLEKS                       R3 R4 K9 ["OnFocusLost"]
       41 MOVE                             R4 R1
       42 MOVE                             R5 R0
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isHover"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["setStyleModifier"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isHover"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["setStyleModifier"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["ForwardRef"]
        4 JUMPIF                           R1 ; [+4]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["createRef"]
        8 CALL                             R1 0 1
        9 SETTABLEKS                       R1 R0 K3 ["textBoxRef"]
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K4 ["isHover"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K5 ["isFocused"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K6 ["setStyleModifier"]
       23 GETUPVAL                         R1 2
       24 JUMPIFNOT                        R1 ; [+4]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K7 ["refit"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 SETTABLEKS                       R1 R0 K8 ["onTextChanged"]
       34 NEWCLOSURE                       R1 P3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K9 ["onFocusGained"]
       38 NEWCLOSURE                       R1 P4
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K10 ["onFocusLost"]
       42 NEWCLOSURE                       R1 P5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K11 ["mouseEnter"]
       46 NEWCLOSURE                       R1 P6
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K12 ["mouseLeave"]
       50 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["ShouldFocus"]
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETTABLEKS                       R2 R1 K1 ["ShouldFocus"]
        7 JUMPIF                           R2 ; [+12]
        8 GETTABLEKS                       R3 R0 K2 ["textBoxRef"]
       10 GETTABLEKS                       R2 R3 K3 ["current"]
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETTABLEKS                       R3 R0 K2 ["textBoxRef"]
       15 GETTABLEKS                       R2 R3 K3 ["current"]
       17 NAMECALL                         R2 R2 K4 ["CaptureFocus"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Enabled"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADB                            R2 1
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R2 R1 K1 ["Enabled"]
       10 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
       12 ORK                              R3 R4 K2 [0]
       13 GETTABLEKS                       R4 R1 K4 ["MultiLine"]
       15 GETTABLEKS                       R5 R1 K5 ["PlaceholderText"]
       17 GETTABLEKS                       R6 R1 K6 ["Position"]
       19 GETTABLEKS                       R7 R1 K7 ["Size"]
       21 JUMPIF                           R7 ; [+7]
       22 GETIMPORT                        R7 K10 [UDim2.new]
       24 LOADN                            R8 1
       25 LOADN                            R9 0
       26 LOADN                            R10 1
       27 LOADN                            R11 0
       28 CALL                             R7 4 1
       29 GETTABLEKS                       R9 R1 K12 ["Text"]
       31 ORK                              R8 R9 K11 [""]
       32 GETTABLEKS                       R9 R1 K13 ["TextWrapped"]
       34 GETTABLEKS                       R11 R0 K0 ["props"]
       36 GETTABLEKS                       R10 R11 K14 ["OnInputBegan"]
       38 GETTABLEKS                       R12 R0 K0 ["props"]
       40 GETTABLEKS                       R11 R12 K15 ["OnInputEnded"]
       42 GETTABLEKS                       R12 R1 K16 ["Stylizer"]
       44 GETUPVAL                         R13 0
       45 GETTABLEKS                       R14 R1 K17 ["Font"]
       47 GETTABLEKS                       R15 R12 K17 ["Font"]
       49 CALL                             R13 2 1
       50 GETUPVAL                         R14 0
       51 GETTABLEKS                       R15 R1 K18 ["TextSize"]
       53 GETTABLEKS                       R16 R12 K18 ["TextSize"]
       55 CALL                             R14 2 1
       56 GETTABLEKS                       R15 R12 K19 ["TextColor"]
       58 GETTABLEKS                       R16 R12 K20 ["PlaceholderTextColor"]
       60 GETUPVAL                         R18 1
       61 GETTABLEKS                       R17 R18 K21 ["createElement"]
       63 LOADK                            R18 K22 ["TextBox"]
       64 NEWTABLE                         R19 32 0
       66 GETTABLEKS                       R21 R0 K0 ["props"]
       68 GETTABLEKS                       R20 R21 K23 ["Visible"]
       70 SETTABLEKS                       R20 R19 K23 ["Visible"]
       72 GETIMPORT                        R20 K10 [UDim2.new]
       74 LOADN                            R21 1
       75 LOADN                            R22 0
       76 LOADN                            R23 1
       77 LOADN                            R24 0
       78 CALL                             R20 4 1
       79 SETTABLEKS                       R20 R19 K7 ["Size"]
       81 LOADN                            R20 1
       82 SETTABLEKS                       R20 R19 K24 ["BackgroundTransparency"]
       84 LOADN                            R20 0
       85 SETTABLEKS                       R20 R19 K25 ["BorderSizePixel"]
       87 LOADB                            R20 0
       88 SETTABLEKS                       R20 R19 K26 ["ClearTextOnFocus"]
       90 SETTABLEKS                       R5 R19 K5 ["PlaceholderText"]
       92 SETTABLEKS                       R16 R19 K27 ["PlaceholderColor3"]
       94 SETTABLEKS                       R13 R19 K17 ["Font"]
       96 SETTABLEKS                       R4 R19 K4 ["MultiLine"]
       98 SETTABLEKS                       R14 R19 K18 ["TextSize"]
      100 SETTABLEKS                       R15 R19 K28 ["TextColor3"]
      102 SETTABLEKS                       R8 R19 K12 ["Text"]
      104 GETTABLEKS                       R20 R1 K29 ["TextXAlignment"]
      106 JUMPIF                           R20 ; [+2]
      107 GETIMPORT                        R20 K32 [Enum.TextXAlignment.Left]
      109 SETTABLEKS                       R20 R19 K29 ["TextXAlignment"]
      111 GETTABLEKS                       R21 R1 K34 ["TextYAlignment"]
      113 ORK                              R20 R21 K33 []
      114 SETTABLEKS                       R20 R19 K34 ["TextYAlignment"]
      116 SETTABLEKS                       R2 R19 K35 ["TextEditable"]
      118 SETTABLEKS                       R9 R19 K13 ["TextWrapped"]
      120 GETUPVAL                         R21 1
      121 GETTABLEKS                       R20 R21 K36 ["Ref"]
      123 GETTABLEKS                       R21 R0 K37 ["textBoxRef"]
      125 SETTABLE                         R21 R19 R20
      126 GETUPVAL                         R22 1
      127 GETTABLEKS                       R21 R22 K38 ["Event"]
      129 GETTABLEKS                       R20 R21 K39 ["Focused"]
      131 GETTABLEKS                       R21 R0 K40 ["onFocusGained"]
      133 SETTABLE                         R21 R19 R20
      134 GETUPVAL                         R22 1
      135 GETTABLEKS                       R21 R22 K38 ["Event"]
      137 GETTABLEKS                       R20 R21 K41 ["FocusLost"]
      139 GETTABLEKS                       R21 R0 K42 ["onFocusLost"]
      141 SETTABLE                         R21 R19 R20
      142 GETUPVAL                         R22 1
      143 GETTABLEKS                       R21 R22 K43 ["Change"]
      145 GETTABLEKS                       R20 R21 K12 ["Text"]
      147 GETTABLEKS                       R21 R0 K44 ["onTextChanged"]
      149 SETTABLE                         R21 R19 R20
      150 GETUPVAL                         R22 1
      151 GETTABLEKS                       R21 R22 K43 ["Change"]
      153 GETTABLEKS                       R20 R21 K45 ["TextFits"]
      155 GETUPVAL                         R22 2
      156 JUMPIFNOT                        R22 ; [+3]
      157 GETTABLEKS                       R21 R0 K46 ["refit"]
      159 JUMP                             ; [+1]
      160 LOADNIL                          R21
      161 SETTABLE                         R21 R19 R20
      162 GETUPVAL                         R22 1
      163 GETTABLEKS                       R21 R22 K38 ["Event"]
      165 GETTABLEKS                       R20 R21 K47 ["MouseEnter"]
      167 GETTABLEKS                       R21 R0 K48 ["mouseEnter"]
      169 SETTABLE                         R21 R19 R20
      170 GETUPVAL                         R22 1
      171 GETTABLEKS                       R21 R22 K38 ["Event"]
      173 GETTABLEKS                       R20 R21 K49 ["MouseLeave"]
      175 GETTABLEKS                       R21 R0 K50 ["mouseLeave"]
      177 SETTABLE                         R21 R19 R20
      178 GETUPVAL                         R22 1
      179 GETTABLEKS                       R21 R22 K38 ["Event"]
      181 GETTABLEKS                       R20 R21 K51 ["InputBegan"]
      183 SETTABLE                         R10 R19 R20
      184 GETUPVAL                         R22 1
      185 GETTABLEKS                       R21 R22 K38 ["Event"]
      187 GETTABLEKS                       R20 R21 K52 ["InputEnded"]
      189 SETTABLE                         R11 R19 R20
      190 CALL                             R17 2 1
      191 GETTABLEKS                       R18 R12 K53 ["BackgroundStyle"]
      193 GETTABLEKS                       R19 R12 K54 ["Padding"]
      195 GETTABLEKS                       R21 R12 K55 ["useRoundBox"]
      197 JUMPIFNOT                        R21 ; [+2]
      198 GETUPVAL                         R20 3
      199 JUMPIF                           R20 ; [+1]
      200 LOADNIL                          R20
      201 GETUPVAL                         R22 1
      202 GETTABLEKS                       R21 R22 K21 ["createElement"]
      204 GETUPVAL                         R22 4
      205 DUPTABLE                         R23 K59 [{"AnchorPoint", "ClipsDescendants", "Position", "Padding", "Size", "Background", "BackgroundStyle", "LayoutOrder"}]
      206 GETTABLEKS                       R24 R1 K56 ["AnchorPoint"]
      208 SETTABLEKS                       R24 R23 K56 ["AnchorPoint"]
      210 LOADB                            R24 1
      211 SETTABLEKS                       R24 R23 K57 ["ClipsDescendants"]
      213 SETTABLEKS                       R6 R23 K6 ["Position"]
      215 SETTABLEKS                       R19 R23 K54 ["Padding"]
      217 SETTABLEKS                       R7 R23 K7 ["Size"]
      219 SETTABLEKS                       R20 R23 K58 ["Background"]
      221 SETTABLEKS                       R18 R23 K53 ["BackgroundStyle"]
      223 SETTABLEKS                       R3 R23 K3 ["LayoutOrder"]
      225 DUPTABLE                         R24 K60 [{"TextBox"}]
      226 SETTABLEKS                       R17 R24 K22 ["TextBox"]
      228 CALL                             R21 3 -1
      229 RETURN                           R21 -1

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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["prioritize"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R7 K12 ["Typecheck"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Wrappers"]
       43 GETTABLEKS                       R7 R8 K14 ["withForwardRef"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETTABLEKS                       R9 R10 K15 ["Components"]
       52 GETTABLEKS                       R8 R9 K16 ["Container"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R11 R0 K2 ["UI"]
       59 GETTABLEKS                       R10 R11 K15 ["Components"]
       61 GETTABLEKS                       R9 R10 K17 ["RoundBox"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R11 R0 K10 ["Util"]
       68 GETTABLEKS                       R10 R11 K18 ["StyleModifier"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R1 K19 ["PureComponent"]
       73 LOADK                            R12 K20 ["DEPRECATED_TextInput"]
       74 NAMECALL                         R10 R10 K21 ["extend"]
       76 CALL                             R10 2 1
       77 GETTABLEKS                       R11 R5 K22 ["wrap"]
       79 MOVE                             R12 R10
       80 GETIMPORT                        R13 K1 [script]
       82 CALL                             R11 2 0
       83 GETIMPORT                        R11 K24 [game]
       85 LOADK                            R13 K25 ["DevFrameworkFixTextInputFits"]
       86 LOADB                            R14 0
       87 NAMECALL                         R11 R11 K26 ["DefineFastFlag"]
       89 CALL                             R11 3 1
       90 DUPCLOSURE                       R12 K27 [PROTO_7]
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R11
       94 SETTABLEKS                       R12 R10 K28 ["init"]
       96 DUPCLOSURE                       R12 K29 [PROTO_8]
       97 SETTABLEKS                       R12 R10 K30 ["didUpdate"]
       99 DUPCLOSURE                       R12 K31 [PROTO_9]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R12 R10 K32 ["render"]
      107 MOVE                             R12 R3
      108 DUPTABLE                         R13 K34 [{"Stylizer"}]
      109 GETTABLEKS                       R14 R2 K33 ["Stylizer"]
      111 SETTABLEKS                       R14 R13 K33 ["Stylizer"]
      113 CALL                             R12 1 1
      114 MOVE                             R13 R10
      115 CALL                             R12 1 1
      116 MOVE                             R10 R12
      117 MOVE                             R12 R6
      118 MOVE                             R13 R10
      119 CALL                             R12 1 -1
      120 RETURN                           R12 -1
