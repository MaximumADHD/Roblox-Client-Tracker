PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R4 R0 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["TextInput"]
        6 GETTABLEN                        R3 R4 1
        7 GETTABLEKS                       R5 R0 K0 ["props"]
        9 GETTABLEKS                       R5 R5 K1 ["TextInput"]
       11 GETTABLEN                        R4 R5 2
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETTABLEKS                       R5 R3 K2 ["Text"]
       15 JUMPIFNOT                        R5 ; [+3]
       16 GETTABLEKS                       R1 R3 K2 ["Text"]
       18 JUMP                             ; [+1]
       19 LOADK                            R1 K3 [""]
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETTABLEKS                       R5 R4 K2 ["Text"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R2 R4 K2 ["Text"]
       26 JUMP                             ; [+1]
       27 LOADK                            R2 K3 [""]
       28 DUPTABLE                         R5 K6 [{"text", "additionalText"}]
       29 SETTABLEKS                       R1 R5 K4 ["text"]
       31 SETTABLEKS                       R2 R5 K5 ["additionalText"]
       33 SETTABLEKS                       R5 R0 K7 ["state"]
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["state"]
        7 GETTABLEKS                       R3 R3 K1 ["text"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["state"]
       12 GETTABLEKS                       R4 R4 K2 ["additionalText"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 MOVE                             R2 R0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K0 ["state"]
       21 GETTABLEKS                       R3 R3 K1 ["text"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["text"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K0 ["state"]
       11 GETTABLEKS                       R2 R2 K2 ["additionalText"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K0 ["state"]
       19 GETTABLEKS                       R1 R1 K1 ["text"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"text"}]
        2 SETTABLEKS                       R0 R3 K0 ["text"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"additionalText"}]
        2 SETTABLEKS                       R0 R3 K0 ["additionalText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R1 K3 ["Header"]
       10 GETTABLEKS                       R5 R1 K4 ["Body"]
       12 GETTABLEKS                       R6 R1 K5 ["Buttons"]
       14 GETTABLEKS                       R7 R1 K6 ["Description"]
       16 GETTABLEKS                       R9 R1 K7 ["TextInput"]
       18 GETTABLEN                        R8 R9 1
       19 GETTABLEKS                       R11 R1 K7 ["TextInput"]
       21 GETTABLEN                        R10 R11 2
       22 ORK                              R9 R10 K8 []
       23 GETTABLEKS                       R10 R0 K9 ["state"]
       25 GETTABLEKS                       R10 R10 K10 ["text"]
       27 GETTABLEKS                       R11 R0 K9 ["state"]
       29 GETTABLEKS                       R11 R11 K11 ["additionalText"]
       31 GETTABLEKS                       R12 R1 K12 ["Title"]
       33 GETTABLEKS                       R13 R1 K13 ["Size"]
       35 JUMPIF                           R13 ; [+11]
       36 GETIMPORT                        R13 K15 [Vector2.new]
       38 GETTABLEKS                       R14 R2 K13 ["Size"]
       40 GETTABLEKS                       R14 R14 K16 ["X"]
       42 GETTABLEKS                       R15 R2 K13 ["Size"]
       44 GETTABLEKS                       R15 R15 K17 ["Y"]
       46 CALL                             R13 2 1
       47 GETTABLEKS                       R14 R1 K18 ["Enabled"]
       49 GETTABLEKS                       R15 R1 K19 ["OnButtonPressed"]
       51 GETTABLEKS                       R16 R1 K20 ["OnClose"]
       53 GETUPVAL                         R17 1
       54 GETTABLEKS                       R17 R17 K21 ["createElement"]
       56 GETUPVAL                         R18 2
       57 DUPTABLE                         R19 K29 [{["Buttons"], ["Title"], ["MinContentSize"], ["OnButtonPressed"], ["OnClose"], ["Modal"] = True, ["Resizable"] = False, ["Enabled"], ["Style"] = "AcceptCancel"}]
       58 SETTABLEKS                       R6 R19 K5 ["Buttons"]
       60 SETTABLEKS                       R12 R19 K12 ["Title"]
       62 SETTABLEKS                       R13 R19 K22 ["MinContentSize"]
       64 NEWCLOSURE                       R20 P0
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R15
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R20 R19 K19 ["OnButtonPressed"]
       70 NEWCLOSURE                       R20 P1
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R16
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R20 R19 K20 ["OnClose"]
       76 SETTABLEKS                       R14 R19 K18 ["Enabled"]
       78 DUPTABLE                         R20 K32 [{"Layout", "Pane"}]
       79 GETUPVAL                         R21 1
       80 GETTABLEKS                       R21 R21 K21 ["createElement"]
       82 LOADK                            R22 K33 ["UIListLayout"]
       83 DUPTABLE                         R23 K37 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
       84 GETIMPORT                        R24 K40 [Enum.SortOrder.LayoutOrder]
       86 SETTABLEKS                       R24 R23 K34 ["SortOrder"]
       88 GETIMPORT                        R24 K42 [Enum.FillDirection.Vertical]
       90 SETTABLEKS                       R24 R23 K35 ["FillDirection"]
       92 GETIMPORT                        R24 K44 [Enum.HorizontalAlignment.Center]
       94 SETTABLEKS                       R24 R23 K36 ["HorizontalAlignment"]
       96 CALL                             R21 2 1
       97 SETTABLEKS                       R21 R20 K30 ["Layout"]
       99 GETUPVAL                         R21 1
      100 GETTABLEKS                       R21 R21 K21 ["createElement"]
      102 GETUPVAL                         R22 3
      103 DUPTABLE                         R23 K48 [{["Style"] = "Box", ["Padding"], ["Spacing"], ["Layout"]}]
      104 GETTABLEKS                       R24 R2 K46 ["Padding"]
      106 SETTABLEKS                       R24 R23 K46 ["Padding"]
      108 GETTABLEKS                       R24 R2 K47 ["Spacing"]
      110 SETTABLEKS                       R24 R23 K47 ["Spacing"]
      112 GETIMPORT                        R24 K42 [Enum.FillDirection.Vertical]
      114 SETTABLEKS                       R24 R23 K30 ["Layout"]
      116 DUPTABLE                         R24 K50 [{"Header", "Body", "Description", "TextInput", "AdditionalTextInput"}]
      117 JUMPIFNOT                        R4 ; [+31]
      118 GETUPVAL                         R25 1
      119 GETTABLEKS                       R25 R25 K21 ["createElement"]
      121 GETUPVAL                         R26 4
      122 DUPTABLE                         R27 K56 [{["TextSize"], ["Text"], ["Style"] = "Semibold", ["AutomaticSize"], ["TextWrapped"] = True, ["LayoutOrder"], ["Size"]}]
      123 GETTABLEKS                       R28 R2 K51 ["TextSize"]
      125 SETTABLEKS                       R28 R27 K51 ["TextSize"]
      127 SETTABLEKS                       R4 R27 K52 ["Text"]
      129 GETIMPORT                        R28 K58 [Enum.AutomaticSize.XY]
      131 SETTABLEKS                       R28 R27 K54 ["AutomaticSize"]
      133 NAMECALL                         R28 R3 K59 ["getNextOrder"]
      135 CALL                             R28 1 1
      136 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      138 GETIMPORT                        R28 K61 [UDim2.new]
      140 LOADN                            R29 1
      141 LOADN                            R30 0
      142 LOADN                            R31 0
      143 LOADN                            R32 0
      144 CALL                             R28 4 1
      145 SETTABLEKS                       R28 R27 K13 ["Size"]
      147 CALL                             R25 2 1
      148 JUMPIF                           R25 ; [+1]
      149 LOADNIL                          R25
      150 SETTABLEKS                       R25 R24 K3 ["Header"]
      152 GETUPVAL                         R25 1
      153 GETTABLEKS                       R25 R25 K21 ["createElement"]
      155 GETUPVAL                         R26 4
      156 DUPTABLE                         R27 K62 [{["Text"], ["Style"] = "Semibold", ["AutomaticSize"], ["TextWrapped"] = True, ["LayoutOrder"], ["Size"]}]
      157 SETTABLEKS                       R5 R27 K52 ["Text"]
      159 GETIMPORT                        R28 K58 [Enum.AutomaticSize.XY]
      161 SETTABLEKS                       R28 R27 K54 ["AutomaticSize"]
      163 NAMECALL                         R28 R3 K59 ["getNextOrder"]
      165 CALL                             R28 1 1
      166 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      168 GETIMPORT                        R28 K61 [UDim2.new]
      170 LOADN                            R29 1
      171 LOADN                            R30 0
      172 LOADN                            R31 0
      173 LOADN                            R32 0
      174 CALL                             R28 4 1
      175 SETTABLEKS                       R28 R27 K13 ["Size"]
      177 CALL                             R25 2 1
      178 SETTABLEKS                       R25 R24 K4 ["Body"]
      180 JUMPIFNOT                        R7 ; [+27]
      181 GETUPVAL                         R25 1
      182 GETTABLEKS                       R25 R25 K21 ["createElement"]
      184 GETUPVAL                         R26 4
      185 DUPTABLE                         R27 K64 [{["Text"], ["Style"] = "Normal", ["AutomaticSize"], ["TextWrapped"] = True, ["LayoutOrder"], ["Size"]}]
      186 SETTABLEKS                       R7 R27 K52 ["Text"]
      188 GETIMPORT                        R28 K58 [Enum.AutomaticSize.XY]
      190 SETTABLEKS                       R28 R27 K54 ["AutomaticSize"]
      192 NAMECALL                         R28 R3 K59 ["getNextOrder"]
      194 CALL                             R28 1 1
      195 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      197 GETIMPORT                        R28 K61 [UDim2.new]
      199 LOADN                            R29 1
      200 LOADN                            R30 0
      201 LOADN                            R31 0
      202 LOADN                            R32 0
      203 CALL                             R28 4 1
      204 SETTABLEKS                       R28 R27 K13 ["Size"]
      206 CALL                             R25 2 1
      207 JUMPIF                           R25 ; [+1]
      208 LOADNIL                          R25
      209 SETTABLEKS                       R25 R24 K6 ["Description"]
      211 GETUPVAL                         R25 1
      212 GETTABLEKS                       R25 R25 K21 ["createElement"]
      214 GETUPVAL                         R26 5
      215 DUPTABLE                         R27 K70 [{["LayoutOrder"], ["BottomText"], ["OnTextChanged"], ["PlaceholderText"], ["ShouldFocus"] = True, ["StyleModifier"], ["Text"]}]
      216 NAMECALL                         R28 R3 K59 ["getNextOrder"]
      218 CALL                             R28 1 1
      219 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      221 GETTABLEKS                       R29 R8 K65 ["BottomText"]
      223 ORK                              R28 R29 K71 [""]
      224 SETTABLEKS                       R28 R27 K65 ["BottomText"]
      226 NEWCLOSURE                       R28 P2
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R28 R27 K66 ["OnTextChanged"]
      230 GETTABLEKS                       R28 R8 K67 ["PlaceholderText"]
      232 SETTABLEKS                       R28 R27 K67 ["PlaceholderText"]
      234 GETTABLEKS                       R29 R8 K65 ["BottomText"]
      236 JUMPIFEQKS                       R29 K71 [""] ; [+9]
      238 GETTABLEKS                       R29 R8 K65 ["BottomText"]
      240 JUMPIFEQKNIL                     R29 ; [+5]
      242 GETUPVAL                         R28 6
      243 GETTABLEKS                       R28 R28 K72 ["Error"]
      245 JUMP                             ; [+1]
      246 LOADNIL                          R28
      247 SETTABLEKS                       R28 R27 K69 ["StyleModifier"]
      249 SETTABLEKS                       R10 R27 K52 ["Text"]
      251 CALL                             R25 2 1
      252 SETTABLEKS                       R25 R24 K7 ["TextInput"]
      254 JUMPIFNOT                        R9 ; [+43]
      255 GETUPVAL                         R25 1
      256 GETTABLEKS                       R25 R25 K21 ["createElement"]
      258 GETUPVAL                         R26 5
      259 DUPTABLE                         R27 K73 [{"LayoutOrder", "BottomText", "OnTextChanged", "PlaceholderText", "StyleModifier", "Text"}]
      260 NAMECALL                         R28 R3 K59 ["getNextOrder"]
      262 CALL                             R28 1 1
      263 SETTABLEKS                       R28 R27 K39 ["LayoutOrder"]
      265 GETTABLEKS                       R29 R9 K65 ["BottomText"]
      267 ORK                              R28 R29 K71 [""]
      268 SETTABLEKS                       R28 R27 K65 ["BottomText"]
      270 NEWCLOSURE                       R28 P3
      271 CAPTURE                          VAL R0
      272 SETTABLEKS                       R28 R27 K66 ["OnTextChanged"]
      274 GETTABLEKS                       R29 R9 K67 ["PlaceholderText"]
      276 ORK                              R28 R29 K71 [""]
      277 SETTABLEKS                       R28 R27 K67 ["PlaceholderText"]
      279 GETTABLEKS                       R29 R9 K65 ["BottomText"]
      281 JUMPIFEQKS                       R29 K71 [""] ; [+9]
      283 GETTABLEKS                       R29 R9 K65 ["BottomText"]
      285 JUMPIFEQKNIL                     R29 ; [+5]
      287 GETUPVAL                         R28 6
      288 GETTABLEKS                       R28 R28 K72 ["Error"]
      290 JUMP                             ; [+1]
      291 LOADNIL                          R28
      292 SETTABLEKS                       R28 R27 K69 ["StyleModifier"]
      294 SETTABLEKS                       R11 R27 K52 ["Text"]
      296 CALL                             R25 2 1
      297 JUMPIF                           R25 ; [+1]
      298 LOADNIL                          R25
      299 SETTABLEKS                       R25 R24 K49 ["AdditionalTextInput"]
      301 CALL                             R21 3 1
      302 SETTABLEKS                       R21 R20 K31 ["Pane"]
      304 CALL                             R17 3 -1
      305 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["Pane"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R6 K10 ["Components"]
       40 GETTABLEKS                       R6 R6 K12 ["TextLabel"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R7 K10 ["Components"]
       49 GETTABLEKS                       R7 R7 K13 ["TextInput"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R8 R0 K2 ["UI"]
       56 GETTABLEKS                       R8 R8 K10 ["Components"]
       58 GETTABLEKS                       R8 R8 K14 ["StyledDialog"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K15 ["Util"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K16 ["LayoutOrderIterator"]
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R11 R0 K15 ["Util"]
       72 GETTABLEKS                       R11 R11 K17 ["StyleModifier"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R12 R0 K15 ["Util"]
       79 GETTABLEKS                       R12 R12 K18 ["Typecheck"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       84 LOADK                            R14 K20 ["TextInputDialog"]
       85 NAMECALL                         R12 R12 K21 ["extend"]
       87 CALL                             R12 2 1
       88 GETTABLEKS                       R13 R11 K22 ["wrap"]
       90 MOVE                             R14 R12
       91 GETIMPORT                        R15 K1 [script]
       93 CALL                             R13 2 0
       94 DUPTABLE                         R13 K27 [{["Enabled"] = True, ["TextInput"], ["Title"] = ""}]
       95 NEWTABLE                         R14 0 1
       97 DUPTABLE                         R15 K31 [{["Text"] = "", ["PlaceholderText"] = "", ["BottomText"] = ""}]
       98 SETLIST                          R14 R15 1 [1]
      100 SETTABLEKS                       R14 R13 K13 ["TextInput"]
      102 SETTABLEKS                       R13 R12 K32 ["defaultProps"]
      104 DUPCLOSURE                       R13 K33 [PROTO_0]
      105 SETTABLEKS                       R13 R12 K34 ["init"]
      107 DUPCLOSURE                       R13 K35 [PROTO_5]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R10
      115 SETTABLEKS                       R13 R12 K36 ["render"]
      117 MOVE                             R13 R3
      118 DUPTABLE                         R14 K38 [{"Stylizer"}]
      119 GETTABLEKS                       R15 R2 K37 ["Stylizer"]
      121 SETTABLEKS                       R15 R14 K37 ["Stylizer"]
      123 CALL                             R13 1 1
      124 MOVE                             R14 R12
      125 CALL                             R13 1 1
      126 MOVE                             R12 R13
      127 RETURN                           R12 1
