PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["OnSelect"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["props"]
       14 GETTABLEKS                       R3 R4 K6 ["Index"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnToggle"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Row"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"isHovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onInputBegan"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K6 ["onToggle"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R4 R1 K3 ["IsSelected"]
        8 GETTABLEKS                       R5 R1 K4 ["IsExpanded"]
       10 GETTABLEKS                       R6 R2 K5 ["isHovering"]
       12 GETTABLEKS                       R7 R1 K6 ["Row"]
       14 GETTABLEKS                       R8 R7 K7 ["item"]
       16 GETTABLEKS                       R9 R8 K8 ["Children"]
       18 JUMPIFNOT                        R9 ; [+4]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R10 R8 K8 ["Children"]
       22 CALL                             R9 1 1
       23 GETTABLEKS                       R10 R8 K9 ["IsHeading"]
       25 JUMPIFNOT                        R10 ; [+3]
       26 GETTABLEKS                       R11 R3 K10 ["HeadingColor"]
       28 JUMPIF                           R11 ; [+10]
       29 JUMPIFNOT                        R4 ; [+3]
       30 GETTABLEKS                       R11 R3 K11 ["SelectedColor"]
       32 JUMPIF                           R11 ; [+6]
       33 JUMPIFNOT                        R6 ; [+3]
       34 GETTABLEKS                       R11 R3 K12 ["HoverColor"]
       36 JUMPIF                           R11 ; [+2]
       37 GETTABLEKS                       R11 R3 K13 ["BackgroundColor"]
       39 JUMPIFNOT                        R10 ; [+2]
       40 LOADN                            R12 0
       41 JUMP                             ; [+5]
       42 GETTABLEKS                       R13 R7 K14 ["depth"]
       44 GETTABLEKS                       R14 R3 K15 ["Indent"]
       46 MUL                              R12 R13 R14
       47 JUMPIFNOT                        R10 ; [+6]
       48 GETIMPORT                        R13 K18 [UDim2.fromScale]
       50 LOADN                            R14 1
       51 LOADN                            R15 1
       52 CALL                             R13 2 1
       53 JUMPIF                           R13 ; [+7]
       54 GETIMPORT                        R13 K20 [UDim2.new]
       56 LOADK                            R14 K21 [0.35]
       57 LOADN                            R15 0
       58 LOADN                            R16 1
       59 LOADN                            R17 0
       60 CALL                             R13 4 1
       61 GETTABLEKS                       R15 R3 K22 ["Arrow"]
       63 GETTABLEKS                       R14 R15 K23 ["Size"]
       65 LOADN                            R17 5
       66 ADD                              R16 R17 R12
       67 JUMPIFNOT                        R9 ; [+2]
       68 ADDK                             R17 R14 K24 [5]
       69 JUMPIF                           R17 ; [+1]
       70 LOADN                            R17 0
       71 ADD                              R15 R16 R17
       72 GETUPVAL                         R17 1
       73 GETTABLEKS                       R16 R17 K25 ["createElement"]
       75 LOADK                            R17 K26 ["Frame"]
       76 NEWTABLE                         R18 8 0
       78 GETUPVAL                         R21 1
       79 GETTABLEKS                       R20 R21 K27 ["Event"]
       81 GETTABLEKS                       R19 R20 K28 ["MouseEnter"]
       83 GETTABLEKS                       R20 R0 K29 ["onMouseEnter"]
       85 SETTABLE                         R20 R18 R19
       86 GETUPVAL                         R21 1
       87 GETTABLEKS                       R20 R21 K27 ["Event"]
       89 GETTABLEKS                       R19 R20 K30 ["MouseLeave"]
       91 GETTABLEKS                       R20 R0 K31 ["onMouseLeave"]
       93 SETTABLE                         R20 R18 R19
       94 GETUPVAL                         R21 1
       95 GETTABLEKS                       R20 R21 K27 ["Event"]
       97 GETTABLEKS                       R19 R20 K32 ["InputBegan"]
       99 GETTABLEKS                       R20 R0 K33 ["onInputBegan"]
      101 SETTABLE                         R20 R18 R19
      102 GETTABLEKS                       R19 R1 K34 ["Index"]
      104 SETTABLEKS                       R19 R18 K35 ["LayoutOrder"]
      106 LOADN                            R19 1
      107 SETTABLEKS                       R19 R18 K36 ["BackgroundTransparency"]
      109 GETTABLEKS                       R19 R1 K37 ["Position"]
      111 SETTABLEKS                       R19 R18 K37 ["Position"]
      113 GETTABLEKS                       R19 R1 K23 ["Size"]
      115 SETTABLEKS                       R19 R18 K23 ["Size"]
      117 DUPTABLE                         R19 K40 [{"NameCell", "SummaryCell"}]
      118 GETUPVAL                         R21 1
      119 GETTABLEKS                       R20 R21 K25 ["createElement"]
      121 LOADK                            R21 K26 ["Frame"]
      122 DUPTABLE                         R22 K43 [{"Size", "BackgroundColor3", "BorderColor3"}]
      123 SETTABLEKS                       R13 R22 K23 ["Size"]
      125 SETTABLEKS                       R11 R22 K41 ["BackgroundColor3"]
      127 GETTABLEKS                       R23 R3 K44 ["BorderColor"]
      129 SETTABLEKS                       R23 R22 K42 ["BorderColor3"]
      131 DUPTABLE                         R23 K47 [{"Toggle", "NameLabel"}]
      132 JUMPIFNOT                        R9 ; [+75]
      133 GETUPVAL                         R25 1
      134 GETTABLEKS                       R24 R25 K25 ["createElement"]
      136 LOADK                            R25 K48 ["ImageButton"]
      137 NEWTABLE                         R26 16 0
      139 GETIMPORT                        R27 K20 [UDim2.new]
      141 LOADN                            R28 0
      142 ADDK                             R29 R12 K24 [5]
      143 LOADK                            R30 K49 [0.5]
      144 LOADN                            R31 0
      145 CALL                             R27 4 1
      146 SETTABLEKS                       R27 R26 K37 ["Position"]
      148 GETIMPORT                        R27 K51 [Vector2.new]
      150 LOADN                            R28 0
      151 LOADK                            R29 K49 [0.5]
      152 CALL                             R27 2 1
      153 SETTABLEKS                       R27 R26 K52 ["AnchorPoint"]
      155 GETIMPORT                        R27 K20 [UDim2.new]
      157 LOADN                            R28 0
      158 MOVE                             R29 R14
      159 LOADN                            R30 0
      160 MOVE                             R31 R14
      161 CALL                             R27 4 1
      162 SETTABLEKS                       R27 R26 K23 ["Size"]
      164 LOADN                            R27 1
      165 SETTABLEKS                       R27 R26 K36 ["BackgroundTransparency"]
      167 GETTABLEKS                       R28 R3 K22 ["Arrow"]
      169 GETTABLEKS                       R27 R28 K53 ["Image"]
      171 SETTABLEKS                       R27 R26 K53 ["Image"]
      173 GETTABLEKS                       R28 R3 K22 ["Arrow"]
      175 GETTABLEKS                       R27 R28 K54 ["Color"]
      177 SETTABLEKS                       R27 R26 K55 ["ImageColor3"]
      179 GETIMPORT                        R27 K51 [Vector2.new]
      181 MOVE                             R28 R14
      182 MOVE                             R29 R14
      183 CALL                             R27 2 1
      184 SETTABLEKS                       R27 R26 K56 ["ImageRectSize"]
      186 JUMPIFNOT                        R5 ; [+5]
      187 GETTABLEKS                       R28 R3 K22 ["Arrow"]
      189 GETTABLEKS                       R27 R28 K57 ["ExpandedOffset"]
      191 JUMPIF                           R27 ; [+4]
      192 GETTABLEKS                       R28 R3 K22 ["Arrow"]
      194 GETTABLEKS                       R27 R28 K58 ["CollapsedOffset"]
      196 SETTABLEKS                       R27 R26 K59 ["ImageRectOffset"]
      198 GETUPVAL                         R29 1
      199 GETTABLEKS                       R28 R29 K27 ["Event"]
      201 GETTABLEKS                       R27 R28 K60 ["Activated"]
      203 GETTABLEKS                       R28 R0 K61 ["onToggle"]
      205 SETTABLE                         R28 R26 R27
      206 CALL                             R24 2 1
      207 JUMPIF                           R24 ; [+1]
      208 LOADNIL                          R24
      209 SETTABLEKS                       R24 R23 K45 ["Toggle"]
      211 GETUPVAL                         R25 1
      212 GETTABLEKS                       R24 R25 K25 ["createElement"]
      214 GETUPVAL                         R25 2
      215 DUPTABLE                         R26 K66 [{"Text", "Font", "TextXAlignment", "Position", "Size", "TextTruncate"}]
      216 GETTABLEKS                       R28 R8 K67 ["Name"]
      218 FASTCALL1                        TOSTRING R28 ; [+2]
      219 GETIMPORT                        R27 K69 [tostring]
      221 CALL                             R27 1 1
      222 SETTABLEKS                       R27 R26 K62 ["Text"]
      224 JUMPIFNOT                        R10 ; [+3]
      225 GETIMPORT                        R27 K72 [Enum.Font.SourceSansBold]
      227 JUMPIF                           R27 ; [+1]
      228 LOADNIL                          R27
      229 SETTABLEKS                       R27 R26 K63 ["Font"]
      231 GETIMPORT                        R27 K74 [Enum.TextXAlignment.Left]
      233 SETTABLEKS                       R27 R26 K64 ["TextXAlignment"]
      235 GETIMPORT                        R27 K20 [UDim2.new]
      237 LOADN                            R28 0
      238 MOVE                             R29 R15
      239 LOADN                            R30 0
      240 LOADN                            R31 2
      241 CALL                             R27 4 1
      242 SETTABLEKS                       R27 R26 K37 ["Position"]
      244 GETIMPORT                        R27 K20 [UDim2.new]
      246 LOADN                            R28 1
      247 SUBRK                            R29 R75 K15 ["Indent"]
      248 LOADN                            R30 1
      249 LOADN                            R31 252
      250 CALL                             R27 4 1
      251 SETTABLEKS                       R27 R26 K23 ["Size"]
      253 GETIMPORT                        R27 K77 [Enum.TextTruncate.AtEnd]
      255 SETTABLEKS                       R27 R26 K65 ["TextTruncate"]
      257 CALL                             R24 2 1
      258 SETTABLEKS                       R24 R23 K46 ["NameLabel"]
      260 CALL                             R20 3 1
      261 SETTABLEKS                       R20 R19 K38 ["NameCell"]
      263 NOT                              R20 R10
      264 JUMPIFNOT                        R20 ; [+80]
      265 GETUPVAL                         R21 1
      266 GETTABLEKS                       R20 R21 K25 ["createElement"]
      268 LOADK                            R21 K26 ["Frame"]
      269 DUPTABLE                         R22 K78 [{"Size", "Position", "BackgroundColor3", "BorderColor3"}]
      270 GETIMPORT                        R23 K20 [UDim2.new]
      272 LOADK                            R24 K79 [0.65]
      273 LOADN                            R25 0
      274 LOADN                            R26 1
      275 LOADN                            R27 0
      276 CALL                             R23 4 1
      277 SETTABLEKS                       R23 R22 K23 ["Size"]
      279 GETIMPORT                        R23 K20 [UDim2.new]
      281 LOADK                            R24 K21 [0.35]
      282 LOADN                            R25 0
      283 LOADN                            R26 0
      284 LOADN                            R27 0
      285 CALL                             R23 4 1
      286 SETTABLEKS                       R23 R22 K37 ["Position"]
      288 SETTABLEKS                       R11 R22 K41 ["BackgroundColor3"]
      290 GETTABLEKS                       R23 R3 K44 ["BorderColor"]
      292 SETTABLEKS                       R23 R22 K42 ["BorderColor3"]
      294 DUPTABLE                         R23 K81 [{"SummaryLabel"}]
      295 GETUPVAL                         R25 1
      296 GETTABLEKS                       R24 R25 K25 ["createElement"]
      298 GETUPVAL                         R25 2
      299 DUPTABLE                         R26 K66 [{"Text", "Font", "TextXAlignment", "Position", "Size", "TextTruncate"}]
      300 GETTABLEKS                       R28 R8 K82 ["Summary"]
      302 FASTCALL1                        TOSTRING R28 ; [+2]
      303 GETIMPORT                        R27 K69 [tostring]
      305 CALL                             R27 1 1
      306 SETTABLEKS                       R27 R26 K62 ["Text"]
      308 JUMPIFNOT                        R10 ; [+3]
      309 GETIMPORT                        R27 K72 [Enum.Font.SourceSansBold]
      311 JUMPIF                           R27 ; [+1]
      312 LOADNIL                          R27
      313 SETTABLEKS                       R27 R26 K63 ["Font"]
      315 GETIMPORT                        R27 K74 [Enum.TextXAlignment.Left]
      317 SETTABLEKS                       R27 R26 K64 ["TextXAlignment"]
      319 GETIMPORT                        R27 K20 [UDim2.new]
      321 LOADN                            R28 0
      322 LOADN                            R29 5
      323 LOADN                            R30 0
      324 LOADN                            R31 2
      325 CALL                             R27 4 1
      326 SETTABLEKS                       R27 R26 K37 ["Position"]
      328 GETIMPORT                        R27 K20 [UDim2.new]
      330 LOADN                            R28 1
      331 LOADN                            R29 246
      332 LOADN                            R30 1
      333 LOADN                            R31 252
      334 CALL                             R27 4 1
      335 SETTABLEKS                       R27 R26 K23 ["Size"]
      337 GETIMPORT                        R27 K77 [Enum.TextTruncate.AtEnd]
      339 SETTABLEKS                       R27 R26 K65 ["TextTruncate"]
      341 CALL                             R24 2 1
      342 SETTABLEKS                       R24 R23 K80 ["SummaryLabel"]
      344 CALL                             R20 3 1
      345 SETTABLEKS                       R20 R19 K39 ["SummaryCell"]
      347 CALL                             R16 3 -1
      348 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["mapOne"]
       34 GETTABLEKS                       R5 R2 K10 ["PureComponent"]
       36 LOADK                            R7 K11 ["FieldTreeRow"]
       37 NAMECALL                         R5 R5 K12 ["extend"]
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R6 R1 K13 ["UI"]
       42 GETTABLEKS                       R7 R6 K14 ["TextLabel"]
       44 DUPCLOSURE                       R8 K15 [PROTO_4]
       45 SETTABLEKS                       R8 R5 K16 ["init"]
       47 DUPCLOSURE                       R8 K17 [PROTO_5]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R8 R5 K18 ["render"]
       53 RETURN                           R5 1
