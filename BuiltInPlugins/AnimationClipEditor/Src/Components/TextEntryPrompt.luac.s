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
       76 LOADN                            R21 124
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
      120 JUMPIFNOT                        R20 ; [+41]
      121 GETUPVAL                         R20 4
      122 GETTABLEKS                       R20 R20 K24 ["createElement"]
      124 LOADK                            R21 K47 ["TextLabel"]
      125 DUPTABLE                         R22 K54 [{"Size", "BackgroundTransparency", "TextSize", "TextColor3", "Font", "Text", "TextTruncate", "LayoutOrder"}]
      126 GETIMPORT                        R23 K30 [UDim2.new]
      128 LOADN                            R24 1
      129 LOADN                            R25 0
      130 LOADN                            R26 0
      131 GETUPVAL                         R27 3
      132 GETTABLEKS                       R27 R27 K22 ["TRACK_HEIGHT"]
      134 CALL                             R23 4 1
      135 SETTABLEKS                       R23 R22 K25 ["Size"]
      137 LOADN                            R23 1
      138 SETTABLEKS                       R23 R22 K48 ["BackgroundTransparency"]
      140 GETTABLEKS                       R23 R3 K13 ["textSize"]
      142 SETTABLEKS                       R23 R22 K49 ["TextSize"]
      144 GETTABLEKS                       R23 R3 K55 ["textColor"]
      146 SETTABLEKS                       R23 R22 K50 ["TextColor3"]
      148 GETTABLEKS                       R23 R2 K14 ["font"]
      150 SETTABLEKS                       R23 R22 K51 ["Font"]
      152 SETTABLEKS                       R5 R22 K52 ["Text"]
      154 GETIMPORT                        R23 K57 [Enum.TextTruncate.AtEnd]
      156 SETTABLEKS                       R23 R22 K53 ["TextTruncate"]
      158 LOADN                            R23 1
      159 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      161 CALL                             R20 2 1
      162 SETTABLEKS                       R20 R19 K4 ["PromptText"]
      164 GETUPVAL                         R20 4
      165 GETTABLEKS                       R20 R20 K24 ["createElement"]
      167 LOADK                            R21 K58 ["Frame"]
      168 DUPTABLE                         R22 K59 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      169 GETIMPORT                        R23 K30 [UDim2.new]
      171 LOADN                            R24 1
      172 LOADN                            R25 0
      173 LOADN                            R26 0
      174 GETUPVAL                         R27 3
      175 GETTABLEKS                       R27 R27 K22 ["TRACK_HEIGHT"]
      177 CALL                             R23 4 1
      178 SETTABLEKS                       R23 R22 K25 ["Size"]
      180 LOADN                            R23 1
      181 SETTABLEKS                       R23 R22 K48 ["BackgroundTransparency"]
      183 LOADN                            R23 2
      184 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      186 DUPTABLE                         R23 K61 [{"Layout", "InputText", "TextBox"}]
      187 GETUPVAL                         R24 4
      188 GETTABLEKS                       R24 R24 K24 ["createElement"]
      190 LOADK                            R25 K35 ["UIListLayout"]
      191 DUPTABLE                         R26 K39 [{"SortOrder", "FillDirection", "Padding"}]
      192 GETIMPORT                        R27 K42 [Enum.SortOrder.LayoutOrder]
      194 SETTABLEKS                       R27 R26 K36 ["SortOrder"]
      196 GETIMPORT                        R27 K63 [Enum.FillDirection.Horizontal]
      198 SETTABLEKS                       R27 R26 K37 ["FillDirection"]
      200 GETIMPORT                        R27 K46 [UDim.new]
      202 LOADN                            R28 0
      203 LOADN                            R29 8
      204 CALL                             R27 2 1
      205 SETTABLEKS                       R27 R26 K38 ["Padding"]
      207 CALL                             R24 2 1
      208 SETTABLEKS                       R24 R23 K32 ["Layout"]
      210 MOVE                             R24 R6
      211 JUMPIFNOT                        R24 ; [+39]
      212 GETUPVAL                         R24 4
      213 GETTABLEKS                       R24 R24 K24 ["createElement"]
      215 LOADK                            R25 K47 ["TextLabel"]
      216 DUPTABLE                         R26 K65 [{"LayoutOrder", "Size", "BackgroundTransparency", "TextXAlignment", "Text", "TextSize", "TextColor3", "Font"}]
      217 LOADN                            R27 255
      218 SETTABLEKS                       R27 R26 K41 ["LayoutOrder"]
      220 GETIMPORT                        R27 K30 [UDim2.new]
      222 LOADN                            R28 0
      223 MOVE                             R29 R13
      224 LOADN                            R30 1
      225 LOADN                            R31 0
      226 CALL                             R27 4 1
      227 SETTABLEKS                       R27 R26 K25 ["Size"]
      229 LOADN                            R27 1
      230 SETTABLEKS                       R27 R26 K48 ["BackgroundTransparency"]
      232 GETIMPORT                        R27 K67 [Enum.TextXAlignment.Left]
      234 SETTABLEKS                       R27 R26 K64 ["TextXAlignment"]
      236 SETTABLEKS                       R6 R26 K52 ["Text"]
      238 GETTABLEKS                       R27 R3 K13 ["textSize"]
      240 SETTABLEKS                       R27 R26 K49 ["TextSize"]
      242 GETTABLEKS                       R27 R3 K55 ["textColor"]
      244 SETTABLEKS                       R27 R26 K50 ["TextColor3"]
      246 GETTABLEKS                       R27 R2 K14 ["font"]
      248 SETTABLEKS                       R27 R26 K51 ["Font"]
      250 CALL                             R24 2 1
      251 SETTABLEKS                       R24 R23 K5 ["InputText"]
      253 GETUPVAL                         R24 4
      254 GETTABLEKS                       R24 R24 K24 ["createElement"]
      256 GETUPVAL                         R25 6
      257 DUPTABLE                         R26 K71 [{"Size", "ClearTextOnFocus", "CaptureFocus", "FocusChanged", "TextXAlignment", "Text"}]
      258 GETIMPORT                        R27 K30 [UDim2.new]
      260 LOADN                            R28 1
      261 JUMPIFNOT                        R6 ; [+3]
      262 MINUS                            R30 R13
      263 SUBK                             R29 R30 K72 [8]
      264 JUMPIF                           R29 ; [+1]
      265 LOADN                            R29 0
      266 LOADN                            R30 1
      267 LOADN                            R31 0
      268 CALL                             R27 4 1
      269 SETTABLEKS                       R27 R26 K25 ["Size"]
      271 LOADB                            R27 0
      272 SETTABLEKS                       R27 R26 K68 ["ClearTextOnFocus"]
      274 LOADB                            R27 1
      275 SETTABLEKS                       R27 R26 K69 ["CaptureFocus"]
      277 GETTABLEKS                       R27 R0 K73 ["onFocusChanged"]
      279 SETTABLEKS                       R27 R26 K70 ["FocusChanged"]
      281 GETIMPORT                        R27 K67 [Enum.TextXAlignment.Left]
      283 SETTABLEKS                       R27 R26 K64 ["TextXAlignment"]
      285 SETTABLEKS                       R12 R26 K52 ["Text"]
      287 CALL                             R24 2 1
      288 SETTABLEKS                       R24 R23 K60 ["TextBox"]
      290 CALL                             R20 3 1
      291 SETTABLEKS                       R20 R19 K33 ["Center"]
      293 MOVE                             R20 R7
      294 JUMPIFNOT                        R20 ; [+50]
      295 GETUPVAL                         R20 4
      296 GETTABLEKS                       R20 R20 K24 ["createElement"]
      298 LOADK                            R21 K47 ["TextLabel"]
      299 DUPTABLE                         R22 K76 [{"Size", "BackgroundTransparency", "LayoutOrder", "TextXAlignment", "TextYAlignment", "Text", "TextSize", "TextColor3", "TextWrapped", "Font"}]
      300 GETIMPORT                        R23 K30 [UDim2.new]
      302 LOADN                            R24 1
      303 LOADN                            R25 0
      304 LOADN                            R26 0
      305 MOVE                             R27 R14
      306 CALL                             R23 4 1
      307 SETTABLEKS                       R23 R22 K25 ["Size"]
      309 LOADN                            R23 1
      310 SETTABLEKS                       R23 R22 K48 ["BackgroundTransparency"]
      312 LOADN                            R23 3
      313 SETTABLEKS                       R23 R22 K41 ["LayoutOrder"]
      315 GETIMPORT                        R23 K67 [Enum.TextXAlignment.Left]
      317 SETTABLEKS                       R23 R22 K64 ["TextXAlignment"]
      319 GETIMPORT                        R23 K78 [Enum.TextYAlignment.Top]
      321 SETTABLEKS                       R23 R22 K74 ["TextYAlignment"]
      323 SETTABLEKS                       R7 R22 K52 ["Text"]
      325 GETTABLEKS                       R23 R3 K15 ["subTextSize"]
      327 SETTABLEKS                       R23 R22 K49 ["TextSize"]
      329 JUMPIFNOT                        R8 ; [+3]
      330 GETTABLEKS                       R23 R3 K79 ["errorTextColor"]
      332 JUMPIF                           R23 ; [+2]
      333 GETTABLEKS                       R23 R3 K80 ["subTextColor"]
      335 SETTABLEKS                       R23 R22 K50 ["TextColor3"]
      337 LOADB                            R23 1
      338 SETTABLEKS                       R23 R22 K75 ["TextWrapped"]
      340 GETTABLEKS                       R23 R2 K14 ["font"]
      342 SETTABLEKS                       R23 R22 K51 ["Font"]
      344 CALL                             R20 2 1
      345 SETTABLEKS                       R20 R19 K6 ["NoticeText"]
      347 CALL                             R16 3 -1
      348 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Vector2.new]
        9 LOADN                            R2 84
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
