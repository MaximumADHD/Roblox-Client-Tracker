PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETTABLEKS                       R5 R0 K0 ["props"]
        4 GETTABLEKS                       R4 R5 K1 ["TextInput"]
        6 GETTABLEN                        R3 R4 1
        7 GETTABLEKS                       R6 R0 K0 ["props"]
        9 GETTABLEKS                       R5 R6 K1 ["TextInput"]
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
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["state"]
        7 GETTABLEKS                       R3 R4 K1 ["text"]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K0 ["state"]
       12 GETTABLEKS                       R4 R5 K2 ["additionalText"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 MOVE                             R2 R0
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K0 ["state"]
       21 GETTABLEKS                       R3 R4 K1 ["text"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R2 R3 K0 ["state"]
        6 GETTABLEKS                       R1 R2 K1 ["text"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["state"]
       11 GETTABLEKS                       R2 R3 K2 ["additionalText"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K0 ["state"]
       19 GETTABLEKS                       R1 R2 K1 ["text"]
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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
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
       23 GETTABLEKS                       R11 R0 K9 ["state"]
       25 GETTABLEKS                       R10 R11 K10 ["text"]
       27 GETTABLEKS                       R12 R0 K9 ["state"]
       29 GETTABLEKS                       R11 R12 K11 ["additionalText"]
       31 GETTABLEKS                       R12 R1 K12 ["Title"]
       33 GETTABLEKS                       R13 R1 K13 ["Size"]
       35 JUMPIF                           R13 ; [+11]
       36 GETIMPORT                        R13 K15 [Vector2.new]
       38 GETTABLEKS                       R15 R2 K13 ["Size"]
       40 GETTABLEKS                       R14 R15 K16 ["X"]
       42 GETTABLEKS                       R16 R2 K13 ["Size"]
       44 GETTABLEKS                       R15 R16 K17 ["Y"]
       46 CALL                             R13 2 1
       47 GETTABLEKS                       R14 R1 K18 ["Enabled"]
       49 GETTABLEKS                       R15 R1 K19 ["OnButtonPressed"]
       51 GETTABLEKS                       R16 R1 K20 ["OnClose"]
       53 GETUPVAL                         R18 1
       54 GETTABLEKS                       R17 R18 K21 ["createElement"]
       56 GETUPVAL                         R18 2
       57 DUPTABLE                         R19 K26 [{"Buttons", "Title", "MinContentSize", "OnButtonPressed", "OnClose", "Modal", "Resizable", "Enabled", "Style"}]
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
       76 LOADB                            R20 1
       77 SETTABLEKS                       R20 R19 K23 ["Modal"]
       79 LOADB                            R20 0
       80 SETTABLEKS                       R20 R19 K24 ["Resizable"]
       82 SETTABLEKS                       R14 R19 K18 ["Enabled"]
       84 LOADK                            R20 K27 ["AcceptCancel"]
       85 SETTABLEKS                       R20 R19 K25 ["Style"]
       87 DUPTABLE                         R20 K30 [{"Layout", "Pane"}]
       88 GETUPVAL                         R22 1
       89 GETTABLEKS                       R21 R22 K21 ["createElement"]
       91 LOADK                            R22 K31 ["UIListLayout"]
       92 DUPTABLE                         R23 K35 [{"SortOrder", "FillDirection", "HorizontalAlignment"}]
       93 GETIMPORT                        R24 K38 [Enum.SortOrder.LayoutOrder]
       95 SETTABLEKS                       R24 R23 K32 ["SortOrder"]
       97 GETIMPORT                        R24 K40 [Enum.FillDirection.Vertical]
       99 SETTABLEKS                       R24 R23 K33 ["FillDirection"]
      101 GETIMPORT                        R24 K42 [Enum.HorizontalAlignment.Center]
      103 SETTABLEKS                       R24 R23 K34 ["HorizontalAlignment"]
      105 CALL                             R21 2 1
      106 SETTABLEKS                       R21 R20 K28 ["Layout"]
      108 GETUPVAL                         R22 1
      109 GETTABLEKS                       R21 R22 K21 ["createElement"]
      111 GETUPVAL                         R22 3
      112 DUPTABLE                         R23 K45 [{"Style", "Padding", "Spacing", "Layout"}]
      113 LOADK                            R24 K46 ["Box"]
      114 SETTABLEKS                       R24 R23 K25 ["Style"]
      116 GETTABLEKS                       R24 R2 K43 ["Padding"]
      118 SETTABLEKS                       R24 R23 K43 ["Padding"]
      120 GETTABLEKS                       R24 R2 K44 ["Spacing"]
      122 SETTABLEKS                       R24 R23 K44 ["Spacing"]
      124 GETIMPORT                        R24 K40 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R24 R23 K28 ["Layout"]
      128 DUPTABLE                         R24 K48 [{"Header", "Body", "Description", "TextInput", "AdditionalTextInput"}]
      129 JUMPIFNOT                        R4 ; [+37]
      130 GETUPVAL                         R26 1
      131 GETTABLEKS                       R25 R26 K21 ["createElement"]
      133 GETUPVAL                         R26 4
      134 DUPTABLE                         R27 K53 [{"TextSize", "Text", "Style", "AutomaticSize", "TextWrapped", "LayoutOrder", "Size"}]
      135 GETTABLEKS                       R28 R2 K49 ["TextSize"]
      137 SETTABLEKS                       R28 R27 K49 ["TextSize"]
      139 SETTABLEKS                       R4 R27 K50 ["Text"]
      141 LOADK                            R28 K54 ["Semibold"]
      142 SETTABLEKS                       R28 R27 K25 ["Style"]
      144 GETIMPORT                        R28 K56 [Enum.AutomaticSize.XY]
      146 SETTABLEKS                       R28 R27 K51 ["AutomaticSize"]
      148 LOADB                            R28 1
      149 SETTABLEKS                       R28 R27 K52 ["TextWrapped"]
      151 NAMECALL                         R28 R3 K57 ["getNextOrder"]
      153 CALL                             R28 1 1
      154 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      156 GETIMPORT                        R28 K59 [UDim2.new]
      158 LOADN                            R29 1
      159 LOADN                            R30 0
      160 LOADN                            R31 0
      161 LOADN                            R32 0
      162 CALL                             R28 4 1
      163 SETTABLEKS                       R28 R27 K13 ["Size"]
      165 CALL                             R25 2 1
      166 JUMPIF                           R25 ; [+1]
      167 LOADNIL                          R25
      168 SETTABLEKS                       R25 R24 K3 ["Header"]
      170 GETUPVAL                         R26 1
      171 GETTABLEKS                       R25 R26 K21 ["createElement"]
      173 GETUPVAL                         R26 4
      174 DUPTABLE                         R27 K60 [{"Text", "Style", "AutomaticSize", "TextWrapped", "LayoutOrder", "Size"}]
      175 SETTABLEKS                       R5 R27 K50 ["Text"]
      177 LOADK                            R28 K54 ["Semibold"]
      178 SETTABLEKS                       R28 R27 K25 ["Style"]
      180 GETIMPORT                        R28 K56 [Enum.AutomaticSize.XY]
      182 SETTABLEKS                       R28 R27 K51 ["AutomaticSize"]
      184 LOADB                            R28 1
      185 SETTABLEKS                       R28 R27 K52 ["TextWrapped"]
      187 NAMECALL                         R28 R3 K57 ["getNextOrder"]
      189 CALL                             R28 1 1
      190 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      192 GETIMPORT                        R28 K59 [UDim2.new]
      194 LOADN                            R29 1
      195 LOADN                            R30 0
      196 LOADN                            R31 0
      197 LOADN                            R32 0
      198 CALL                             R28 4 1
      199 SETTABLEKS                       R28 R27 K13 ["Size"]
      201 CALL                             R25 2 1
      202 SETTABLEKS                       R25 R24 K4 ["Body"]
      204 JUMPIFNOT                        R7 ; [+33]
      205 GETUPVAL                         R26 1
      206 GETTABLEKS                       R25 R26 K21 ["createElement"]
      208 GETUPVAL                         R26 4
      209 DUPTABLE                         R27 K60 [{"Text", "Style", "AutomaticSize", "TextWrapped", "LayoutOrder", "Size"}]
      210 SETTABLEKS                       R7 R27 K50 ["Text"]
      212 LOADK                            R28 K61 ["Normal"]
      213 SETTABLEKS                       R28 R27 K25 ["Style"]
      215 GETIMPORT                        R28 K56 [Enum.AutomaticSize.XY]
      217 SETTABLEKS                       R28 R27 K51 ["AutomaticSize"]
      219 LOADB                            R28 1
      220 SETTABLEKS                       R28 R27 K52 ["TextWrapped"]
      222 NAMECALL                         R28 R3 K57 ["getNextOrder"]
      224 CALL                             R28 1 1
      225 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      227 GETIMPORT                        R28 K59 [UDim2.new]
      229 LOADN                            R29 1
      230 LOADN                            R30 0
      231 LOADN                            R31 0
      232 LOADN                            R32 0
      233 CALL                             R28 4 1
      234 SETTABLEKS                       R28 R27 K13 ["Size"]
      236 CALL                             R25 2 1
      237 JUMPIF                           R25 ; [+1]
      238 LOADNIL                          R25
      239 SETTABLEKS                       R25 R24 K6 ["Description"]
      241 GETUPVAL                         R26 1
      242 GETTABLEKS                       R25 R26 K21 ["createElement"]
      244 GETUPVAL                         R26 5
      245 DUPTABLE                         R27 K67 [{"LayoutOrder", "BottomText", "OnTextChanged", "PlaceholderText", "ShouldFocus", "StyleModifier", "Text"}]
      246 NAMECALL                         R28 R3 K57 ["getNextOrder"]
      248 CALL                             R28 1 1
      249 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      251 GETTABLEKS                       R29 R8 K62 ["BottomText"]
      253 ORK                              R28 R29 K68 [""]
      254 SETTABLEKS                       R28 R27 K62 ["BottomText"]
      256 NEWCLOSURE                       R28 P2
      257 CAPTURE                          VAL R0
      258 SETTABLEKS                       R28 R27 K63 ["OnTextChanged"]
      260 GETTABLEKS                       R28 R8 K64 ["PlaceholderText"]
      262 SETTABLEKS                       R28 R27 K64 ["PlaceholderText"]
      264 LOADB                            R28 1
      265 SETTABLEKS                       R28 R27 K65 ["ShouldFocus"]
      267 GETTABLEKS                       R29 R8 K62 ["BottomText"]
      269 JUMPIFEQKS                       R29 K68 [""] ; [+9]
      271 GETTABLEKS                       R29 R8 K62 ["BottomText"]
      273 JUMPIFEQKNIL                     R29 ; [+5]
      275 GETUPVAL                         R29 6
      276 GETTABLEKS                       R28 R29 K69 ["Error"]
      278 JUMP                             ; [+1]
      279 LOADNIL                          R28
      280 SETTABLEKS                       R28 R27 K66 ["StyleModifier"]
      282 SETTABLEKS                       R10 R27 K50 ["Text"]
      284 CALL                             R25 2 1
      285 SETTABLEKS                       R25 R24 K7 ["TextInput"]
      287 JUMPIFNOT                        R9 ; [+43]
      288 GETUPVAL                         R26 1
      289 GETTABLEKS                       R25 R26 K21 ["createElement"]
      291 GETUPVAL                         R26 5
      292 DUPTABLE                         R27 K70 [{"LayoutOrder", "BottomText", "OnTextChanged", "PlaceholderText", "StyleModifier", "Text"}]
      293 NAMECALL                         R28 R3 K57 ["getNextOrder"]
      295 CALL                             R28 1 1
      296 SETTABLEKS                       R28 R27 K37 ["LayoutOrder"]
      298 GETTABLEKS                       R29 R9 K62 ["BottomText"]
      300 ORK                              R28 R29 K68 [""]
      301 SETTABLEKS                       R28 R27 K62 ["BottomText"]
      303 NEWCLOSURE                       R28 P3
      304 CAPTURE                          VAL R0
      305 SETTABLEKS                       R28 R27 K63 ["OnTextChanged"]
      307 GETTABLEKS                       R29 R9 K64 ["PlaceholderText"]
      309 ORK                              R28 R29 K68 [""]
      310 SETTABLEKS                       R28 R27 K64 ["PlaceholderText"]
      312 GETTABLEKS                       R29 R9 K62 ["BottomText"]
      314 JUMPIFEQKS                       R29 K68 [""] ; [+9]
      316 GETTABLEKS                       R29 R9 K62 ["BottomText"]
      318 JUMPIFEQKNIL                     R29 ; [+5]
      320 GETUPVAL                         R29 6
      321 GETTABLEKS                       R28 R29 K69 ["Error"]
      323 JUMP                             ; [+1]
      324 LOADNIL                          R28
      325 SETTABLEKS                       R28 R27 K66 ["StyleModifier"]
      327 SETTABLEKS                       R11 R27 K50 ["Text"]
      329 CALL                             R25 2 1
      330 JUMPIF                           R25 ; [+1]
      331 LOADNIL                          R25
      332 SETTABLEKS                       R25 R24 K47 ["AdditionalTextInput"]
      334 CALL                             R21 3 1
      335 SETTABLEKS                       R21 R20 K29 ["Pane"]
      337 CALL                             R17 3 -1
      338 RETURN                           R17 -1

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
       27 GETTABLEKS                       R7 R0 K2 ["UI"]
       29 GETTABLEKS                       R6 R7 K10 ["Components"]
       31 GETTABLEKS                       R5 R6 K11 ["Pane"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R8 R0 K2 ["UI"]
       38 GETTABLEKS                       R7 R8 K10 ["Components"]
       40 GETTABLEKS                       R6 R7 K12 ["TextLabel"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R9 R0 K2 ["UI"]
       47 GETTABLEKS                       R8 R9 K10 ["Components"]
       49 GETTABLEKS                       R7 R8 K13 ["TextInput"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K6 [require]
       54 GETTABLEKS                       R10 R0 K2 ["UI"]
       56 GETTABLEKS                       R9 R10 K10 ["Components"]
       58 GETTABLEKS                       R8 R9 K14 ["StyledDialog"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K6 [require]
       63 GETTABLEKS                       R9 R0 K15 ["Util"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R8 K16 ["LayoutOrderIterator"]
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R12 R0 K15 ["Util"]
       72 GETTABLEKS                       R11 R12 K17 ["StyleModifier"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K6 [require]
       77 GETTABLEKS                       R13 R0 K15 ["Util"]
       79 GETTABLEKS                       R12 R13 K18 ["Typecheck"]
       81 CALL                             R11 1 1
       82 GETTABLEKS                       R12 R1 K19 ["PureComponent"]
       84 LOADK                            R14 K20 ["TextInputDialog"]
       85 NAMECALL                         R12 R12 K21 ["extend"]
       87 CALL                             R12 2 1
       88 GETTABLEKS                       R13 R11 K22 ["wrap"]
       90 MOVE                             R14 R12
       91 GETIMPORT                        R15 K1 [script]
       93 CALL                             R13 2 0
       94 DUPTABLE                         R13 K25 [{"Enabled", "TextInput", "Title"}]
       95 LOADB                            R14 1
       96 SETTABLEKS                       R14 R13 K23 ["Enabled"]
       98 NEWTABLE                         R14 0 1
      100 DUPTABLE                         R15 K29 [{"Text", "PlaceholderText", "BottomText"}]
      101 LOADK                            R16 K30 [""]
      102 SETTABLEKS                       R16 R15 K26 ["Text"]
      104 LOADK                            R16 K30 [""]
      105 SETTABLEKS                       R16 R15 K27 ["PlaceholderText"]
      107 LOADK                            R16 K30 [""]
      108 SETTABLEKS                       R16 R15 K28 ["BottomText"]
      110 SETLIST                          R14 R15 1 [1]
      112 SETTABLEKS                       R14 R13 K13 ["TextInput"]
      114 LOADK                            R14 K30 [""]
      115 SETTABLEKS                       R14 R13 K24 ["Title"]
      117 SETTABLEKS                       R13 R12 K31 ["defaultProps"]
      119 DUPCLOSURE                       R13 K32 [PROTO_0]
      120 SETTABLEKS                       R13 R12 K33 ["init"]
      122 DUPCLOSURE                       R13 K34 [PROTO_5]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R10
      130 SETTABLEKS                       R13 R12 K35 ["render"]
      132 MOVE                             R13 R3
      133 DUPTABLE                         R14 K37 [{"Stylizer"}]
      134 GETTABLEKS                       R15 R2 K36 ["Stylizer"]
      136 SETTABLEKS                       R15 R14 K36 ["Stylizer"]
      138 CALL                             R13 1 1
      139 MOVE                             R14 R12
      140 CALL                             R13 1 1
      141 MOVE                             R12 R13
      142 RETURN                           R12 1
