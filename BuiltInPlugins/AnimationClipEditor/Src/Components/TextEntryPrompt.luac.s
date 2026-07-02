PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentText"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+26]
        1 GETTABLEKS                       R3 R0 K0 ["Text"]
        3 LOADNIL                          R4
        4 JUMPIFNOT                        R2 ; [+10]
        5 JUMPIFEQKS                       R3 K1 [""] ; [+9]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["props"]
       10 GETTABLEKS                       R5 R5 K3 ["OnTextSubmitted"]
       12 MOVE                             R6 R3
       13 CALL                             R5 1 1
       14 MOVE                             R4 R5
       15 JUMPIFNOTEQKB                    R4 TRUE ; [+6]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K4 ["onClose"]
       20 CALL                             R5 0 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K5 ["setCurrentText"]
       25 MOVE                             R6 R3
       26 CALL                             R5 1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["OnClose"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"currentText"}]
        1 GETTABLEKS                       R4 R1 K3 ["Text"]
        3 ORK                              R3 R4 K2 [""]
        4 SETTABLEKS                       R3 R2 K0 ["currentText"]
        6 SETTABLEKS                       R2 R0 K4 ["state"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K5 ["setCurrentText"]
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K6 ["onFocusChanged"]
       16 NEWCLOSURE                       R2 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["onClose"]
       20 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+7]
        7 GETUPVAL                         R1 0
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 JUMPIFNOT                        R0 ; [+13]
       14 GETUPVAL                         R1 1
       15 JUMPIFEQKS                       R1 K3 [""] ; [+15]
       17 GETUPVAL                         R1 2
       18 GETUPVAL                         R2 1
       19 CALL                             R1 1 1
       20 JUMPIFEQKB                       R1 FALSE ; [+10]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K4 ["onClose"]
       25 CALL                             R2 0 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K4 ["onClose"]
       30 CALL                             R1 0 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["dialogTheme"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R5 R1 K4 ["PromptText"]
       10 GETTABLEKS                       R6 R1 K5 ["InputText"]
       12 GETTABLEKS                       R7 R1 K6 ["NoticeText"]
       14 GETTABLEKS                       R8 R1 K7 ["HasError"]
       16 GETTABLEKS                       R9 R1 K8 ["Buttons"]
       18 GETTABLEKS                       R10 R1 K9 ["OnButtonClicked"]
       20 GETTABLEKS                       R11 R1 K10 ["OnTextSubmitted"]
       22 GETTABLEKS                       R12 R4 K11 ["currentText"]
       24 JUMPIFNOT                        R6 ; [+10]
       25 GETUPVAL                         R13 0
       26 GETTABLEKS                       R13 R13 K12 ["getTextWidth"]
       28 MOVE                             R14 R6
       29 GETTABLEKS                       R15 R3 K13 ["textSize"]
       31 GETTABLEKS                       R16 R2 K14 ["font"]
       33 CALL                             R13 3 1
       34 JUMPIF                           R13 ; [+1]
       35 LOADN                            R13 0
       36 JUMPIFNOT                        R7 ; [+13]
       37 GETUPVAL                         R14 1
       38 MOVE                             R16 R7
       39 GETTABLEKS                       R17 R3 K15 ["subTextSize"]
       41 GETTABLEKS                       R18 R2 K14 ["font"]
       43 GETUPVAL                         R19 2
       44 NAMECALL                         R14 R14 K16 ["GetTextSize"]
       46 CALL                             R14 5 1
       47 GETTABLEKS                       R14 R14 K17 ["Y"]
       49 JUMPIF                           R14 ; [+1]
       50 LOADN                            R14 0
       51 GETUPVAL                         R20 3
       52 GETTABLEKS                       R20 R20 K20 ["PROMPT_VERTICAL_PADDING"]
       54 MULK                             R19 R20 K19 [3]
       55 ADDK                             R18 R19 K18 [16]
       56 GETUPVAL                         R20 3
       57 GETTABLEKS                       R20 R20 K22 ["TRACK_HEIGHT"]
       59 MULK                             R19 R20 K21 [2]
       60 ADD                              R17 R18 R19
       61 ADD                              R16 R17 R14
       62 GETUPVAL                         R17 3
       63 GETTABLEKS                       R17 R17 K23 ["PROMPT_BUTTON_SIZE"]
       65 GETTABLEKS                       R17 R17 K17 ["Y"]
       67 ADD                              R15 R16 R17
       68 GETUPVAL                         R16 4
       69 GETTABLEKS                       R16 R16 K24 ["createElement"]
       71 GETUPVAL                         R17 5
       72 DUPTABLE                         R18 K27 [{"Size", "Buttons", "OnButtonClicked", "OnClose"}]
       73 GETIMPORT                        R19 K30 [UDim2.new]
       75 LOADN                            R20 0
       76 LOADN                            R21 380
       77 LOADN                            R22 0
       78 MOVE                             R23 R15
       79 CALL                             R19 4 1
       80 SETTABLEKS                       R19 R18 K25 ["Size"]
       82 SETTABLEKS                       R9 R18 K8 ["Buttons"]
       84 NEWCLOSURE                       R19 P0
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R19 R18 K9 ["OnButtonClicked"]
       91 GETTABLEKS                       R19 R0 K31 ["onClose"]
       93 SETTABLEKS                       R19 R18 K26 ["OnClose"]
       95 DUPTABLE                         R19 K34 [{"Layout", "PromptText", "Center", "NoticeText"}]
       96 GETUPVAL                         R20 4
       97 GETTABLEKS                       R20 R20 K24 ["createElement"]
       99 LOADK                            R21 K35 ["UIListLayout"]
      100 DUPTABLE                         R22 K39 [{"SortOrder", "FillDirection", "Padding"}]
      101 GETIMPORT                        R23 K42 [Enum.SortOrder.LayoutOrder]
      103 SETTABLEKS                       R23 R22 K36 ["SortOrder"]
      105 GETIMPORT                        R23 K44 [Enum.FillDirection.Vertical]
      107 SETTABLEKS                       R23 R22 K37 ["FillDirection"]
      109 GETIMPORT                        R23 K46 [UDim.new]
      111 LOADN                            R24 0
      112 LOADN                            R25 8
      113 CALL                             R23 2 1
      114 SETTABLEKS                       R23 R22 K38 ["Padding"]
      116 CALL                             R20 2 1
      117 SETTABLEKS                       R20 R19 K32 ["Layout"]
      119 MOVE                             R20 R5
      120 JUMPIFNOT                        R20 ; [+35]
      121 GETUPVAL                         R20 4
      122 GETTABLEKS                       R20 R20 K24 ["createElement"]
      124 LOADK                            R21 K47 ["TextLabel"]
      125 DUPTABLE                         R22 K55 [{["Size"], ["BackgroundTransparency"] = 1, ["TextSize"], ["TextColor3"], ["Font"], ["Text"], ["TextTruncate"], ["LayoutOrder"] = 1}]
      126 GETIMPORT                        R23 K30 [UDim2.new]
      128 LOADN                            R24 1
      129 LOADN                            R25 0
      130 LOADN                            R26 0
      131 GETUPVAL                         R27 3
      132 GETTABLEKS                       R27 R27 K22 ["TRACK_HEIGHT"]
      134 CALL                             R23 4 1
      135 SETTABLEKS                       R23 R22 K25 ["Size"]
      137 GETTABLEKS                       R23 R3 K13 ["textSize"]
      139 SETTABLEKS                       R23 R22 K50 ["TextSize"]
      141 GETTABLEKS                       R23 R3 K56 ["textColor"]
      143 SETTABLEKS                       R23 R22 K51 ["TextColor3"]
      145 GETTABLEKS                       R23 R2 K14 ["font"]
      147 SETTABLEKS                       R23 R22 K52 ["Font"]
      149 SETTABLEKS                       R5 R22 K53 ["Text"]
      151 GETIMPORT                        R23 K58 [Enum.TextTruncate.AtEnd]
      153 SETTABLEKS                       R23 R22 K54 ["TextTruncate"]
      155 CALL                             R20 2 1
      156 SETTABLEKS                       R20 R19 K4 ["PromptText"]
      158 GETUPVAL                         R20 4
      159 GETTABLEKS                       R20 R20 K24 ["createElement"]
      161 LOADK                            R21 K59 ["Frame"]
      162 DUPTABLE                         R22 K60 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      163 GETIMPORT                        R23 K30 [UDim2.new]
      165 LOADN                            R24 1
      166 LOADN                            R25 0
      167 LOADN                            R26 0
      168 GETUPVAL                         R27 3
      169 GETTABLEKS                       R27 R27 K22 ["TRACK_HEIGHT"]
      171 CALL                             R23 4 1
      172 SETTABLEKS                       R23 R22 K25 ["Size"]
      174 DUPTABLE                         R23 K62 [{"Layout", "InputText", "TextBox"}]
      175 GETUPVAL                         R24 4
      176 GETTABLEKS                       R24 R24 K24 ["createElement"]
      178 LOADK                            R25 K35 ["UIListLayout"]
      179 DUPTABLE                         R26 K39 [{"SortOrder", "FillDirection", "Padding"}]
      180 GETIMPORT                        R27 K42 [Enum.SortOrder.LayoutOrder]
      182 SETTABLEKS                       R27 R26 K36 ["SortOrder"]
      184 GETIMPORT                        R27 K64 [Enum.FillDirection.Horizontal]
      186 SETTABLEKS                       R27 R26 K37 ["FillDirection"]
      188 GETIMPORT                        R27 K46 [UDim.new]
      190 LOADN                            R28 0
      191 LOADN                            R29 8
      192 CALL                             R27 2 1
      193 SETTABLEKS                       R27 R26 K38 ["Padding"]
      195 CALL                             R24 2 1
      196 SETTABLEKS                       R24 R23 K32 ["Layout"]
      198 MOVE                             R24 R6
      199 JUMPIFNOT                        R24 ; [+33]
      200 GETUPVAL                         R24 4
      201 GETTABLEKS                       R24 R24 K24 ["createElement"]
      203 LOADK                            R25 K47 ["TextLabel"]
      204 DUPTABLE                         R26 K67 [{["LayoutOrder"] = -1, ["Size"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["Text"], ["TextSize"], ["TextColor3"], ["Font"]}]
      205 GETIMPORT                        R27 K30 [UDim2.new]
      207 LOADN                            R28 0
      208 MOVE                             R29 R13
      209 LOADN                            R30 1
      210 LOADN                            R31 0
      211 CALL                             R27 4 1
      212 SETTABLEKS                       R27 R26 K25 ["Size"]
      214 GETIMPORT                        R27 K69 [Enum.TextXAlignment.Left]
      216 SETTABLEKS                       R27 R26 K66 ["TextXAlignment"]
      218 SETTABLEKS                       R6 R26 K53 ["Text"]
      220 GETTABLEKS                       R27 R3 K13 ["textSize"]
      222 SETTABLEKS                       R27 R26 K50 ["TextSize"]
      224 GETTABLEKS                       R27 R3 K56 ["textColor"]
      226 SETTABLEKS                       R27 R26 K51 ["TextColor3"]
      228 GETTABLEKS                       R27 R2 K14 ["font"]
      230 SETTABLEKS                       R27 R26 K52 ["Font"]
      232 CALL                             R24 2 1
      233 SETTABLEKS                       R24 R23 K5 ["InputText"]
      235 GETUPVAL                         R24 4
      236 GETTABLEKS                       R24 R24 K24 ["createElement"]
      238 GETUPVAL                         R25 6
      239 DUPTABLE                         R26 K75 [{["Size"], ["ClearTextOnFocus"] = False, ["CaptureFocus"] = True, ["FocusChanged"], ["TextXAlignment"], ["Text"]}]
      240 GETIMPORT                        R27 K30 [UDim2.new]
      242 LOADN                            R28 1
      243 JUMPIFNOT                        R6 ; [+3]
      244 MINUS                            R30 R13
      245 SUBK                             R29 R30 K76 [8]
      246 JUMPIF                           R29 ; [+1]
      247 LOADN                            R29 0
      248 LOADN                            R30 1
      249 LOADN                            R31 0
      250 CALL                             R27 4 1
      251 SETTABLEKS                       R27 R26 K25 ["Size"]
      253 GETTABLEKS                       R27 R0 K77 ["onFocusChanged"]
      255 SETTABLEKS                       R27 R26 K74 ["FocusChanged"]
      257 GETIMPORT                        R27 K69 [Enum.TextXAlignment.Left]
      259 SETTABLEKS                       R27 R26 K66 ["TextXAlignment"]
      261 SETTABLEKS                       R12 R26 K53 ["Text"]
      263 CALL                             R24 2 1
      264 SETTABLEKS                       R24 R23 K61 ["TextBox"]
      266 CALL                             R20 3 1
      267 SETTABLEKS                       R20 R19 K33 ["Center"]
      269 MOVE                             R20 R7
      270 JUMPIFNOT                        R20 ; [+41]
      271 GETUPVAL                         R20 4
      272 GETTABLEKS                       R20 R20 K24 ["createElement"]
      274 LOADK                            R21 K47 ["TextLabel"]
      275 DUPTABLE                         R22 K80 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3, ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextSize"], ["TextColor3"], ["TextWrapped"] = True, ["Font"]}]
      276 GETIMPORT                        R23 K30 [UDim2.new]
      278 LOADN                            R24 1
      279 LOADN                            R25 0
      280 LOADN                            R26 0
      281 MOVE                             R27 R14
      282 CALL                             R23 4 1
      283 SETTABLEKS                       R23 R22 K25 ["Size"]
      285 GETIMPORT                        R23 K69 [Enum.TextXAlignment.Left]
      287 SETTABLEKS                       R23 R22 K66 ["TextXAlignment"]
      289 GETIMPORT                        R23 K82 [Enum.TextYAlignment.Top]
      291 SETTABLEKS                       R23 R22 K78 ["TextYAlignment"]
      293 SETTABLEKS                       R7 R22 K53 ["Text"]
      295 GETTABLEKS                       R23 R3 K15 ["subTextSize"]
      297 SETTABLEKS                       R23 R22 K50 ["TextSize"]
      299 JUMPIFNOT                        R8 ; [+3]
      300 GETTABLEKS                       R23 R3 K83 ["errorTextColor"]
      302 JUMPIF                           R23 ; [+2]
      303 GETTABLEKS                       R23 R3 K84 ["subTextColor"]
      305 SETTABLEKS                       R23 R22 K51 ["TextColor3"]
      307 GETTABLEKS                       R23 R2 K14 ["font"]
      309 SETTABLEKS                       R23 R22 K52 ["Font"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K6 ["NoticeText"]
      314 CALL                             R16 3 -1
      315 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Vector2.new]
        9 LOADN                            R2 340
       10 LOADK                            R3 K7 [100000]
       11 CALL                             R1 2 1
       12 GETIMPORT                        R2 K9 [script]
       14 LOADK                            R4 K10 ["AnimationClipEditor"]
       15 NAMECALL                         R2 R2 K11 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K13 [require]
       20 GETTABLEKS                       R4 R2 K14 ["Packages"]
       22 GETTABLEKS                       R4 R4 K15 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K13 [require]
       27 GETTABLEKS                       R5 R2 K16 ["Src"]
       29 GETTABLEKS                       R5 R5 K17 ["Util"]
       31 GETTABLEKS                       R5 R5 K18 ["Constants"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K13 [require]
       36 GETTABLEKS                       R6 R2 K16 ["Src"]
       38 GETTABLEKS                       R6 R6 K17 ["Util"]
       40 GETTABLEKS                       R6 R6 K19 ["StringUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K13 [require]
       45 GETTABLEKS                       R7 R2 K14 ["Packages"]
       47 GETTABLEKS                       R7 R7 K20 ["Framework"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K21 ["ContextServices"]
       52 GETTABLEKS                       R8 R7 K22 ["withContext"]
       54 GETIMPORT                        R9 K13 [require]
       56 GETTABLEKS                       R10 R2 K16 ["Src"]
       58 GETTABLEKS                       R10 R10 K23 ["Components"]
       60 GETTABLEKS                       R10 R10 K24 ["EditEventsDialog"]
       62 GETTABLEKS                       R10 R10 K25 ["FocusedPrompt"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K13 [require]
       67 GETTABLEKS                       R11 R2 K16 ["Src"]
       69 GETTABLEKS                       R11 R11 K23 ["Components"]
       71 GETTABLEKS                       R11 R11 K26 ["TextBox"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R3 K27 ["PureComponent"]
       76 LOADK                            R13 K28 ["TextEntryPrompt"]
       77 NAMECALL                         R11 R11 K29 ["extend"]
       79 CALL                             R11 2 1
       80 DUPCLOSURE                       R12 K30 [PROTO_3]
       81 SETTABLEKS                       R12 R11 K31 ["init"]
       83 DUPCLOSURE                       R12 K32 [PROTO_5]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 SETTABLEKS                       R12 R11 K33 ["render"]
       93 MOVE                             R12 R8
       94 DUPTABLE                         R13 K35 [{"Stylizer"}]
       95 GETTABLEKS                       R14 R7 K34 ["Stylizer"]
       97 SETTABLEKS                       R14 R13 K34 ["Stylizer"]
       99 CALL                             R12 1 1
      100 MOVE                             R13 R11
      101 CALL                             R12 1 1
      102 MOVE                             R11 R12
      103 RETURN                           R11 1
