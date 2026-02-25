PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+21]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["props"]
        9 GETTABLEKS                       R2 R3 K2 ["FocusChanged"]
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K2 ["FocusChanged"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 0
       21 DUPTABLE                         R4 K4 [{"Focused"}]
       22 SETTABLEKS                       R0 R4 K3 ["Focused"]
       24 NAMECALL                         R2 R2 K5 ["setState"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+40]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["onEnter"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K3 ["Mouse"]
       15 LOADK                            R3 K4 ["IBeam"]
       16 CALL                             R1 2 0
       17 JUMP                             ; [+9]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K5 ["onLeave"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["props"]
       24 GETTABLEKS                       R2 R3 K3 ["Mouse"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R2 R3 K6 ["state"]
       30 GETTABLEKS                       R1 R2 K7 ["Focused"]
       32 JUMPIFNOT                        R1 ; [+13]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K0 ["props"]
       36 GETTABLEKS                       R1 R2 K8 ["HoverChanged"]
       38 JUMPIFNOT                        R1 ; [+7]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R2 R3 K0 ["props"]
       42 GETTABLEKS                       R1 R2 K8 ["HoverChanged"]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"Focused"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Focused"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["focusChanged"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R1 R0 K4 ["mouseHoverChanged"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["ShowToolTip"]
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K1 ["ShowToolTip"]
       12 RETURN                           R0 1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["state"]
        8 GETTABLEKS                       R1 R2 K3 ["Focused"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["Multiline"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["props"]
       18 GETTABLEKS                       R4 R5 K5 ["Text"]
       20 FASTCALL1                        STRING_LEN R4 ; [+2]
       21 GETIMPORT                        R3 K8 [string.len]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["props"]
       27 GETTABLEKS                       R4 R5 K9 ["ErrorMessage"]
       29 JUMPIF                           R4 ; [+9]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K0 ["props"]
       33 GETTABLEKS                       R5 R6 K10 ["MaxLength"]
       35 JUMPIFLT                         R5 R3 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 GETUPVAL                         R5 1
       40 GETUPVAL                         R6 0
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K21 [{"BackgroundTransparency", "Image", "ImageTransparency", "ImageColor3", "ScaleType", "SliceCenter", "Position", "AnchorPoint", "Size", "LayoutOrder"}]
       43 LOADN                            R7 1
       44 SETTABLEKS                       R7 R6 K11 ["BackgroundTransparency"]
       46 GETUPVAL                         R8 2
       47 GETTABLEKS                       R7 R8 K22 ["ROUNDED_BACKGROUND_IMAGE"]
       49 SETTABLEKS                       R7 R6 K12 ["Image"]
       51 LOADN                            R7 0
       52 SETTABLEKS                       R7 R6 K13 ["ImageTransparency"]
       54 JUMPIFNOT                        R0 ; [+3]
       55 GETTABLEKS                       R7 R5 K23 ["BackgroundColor"]
       57 JUMPIF                           R7 ; [+2]
       58 GETTABLEKS                       R7 R5 K24 ["DisabledColor"]
       60 SETTABLEKS                       R7 R6 K14 ["ImageColor3"]
       62 GETIMPORT                        R7 K27 [Enum.ScaleType.Slice]
       64 SETTABLEKS                       R7 R6 K15 ["ScaleType"]
       66 GETUPVAL                         R8 2
       67 GETTABLEKS                       R7 R8 K28 ["ROUNDED_FRAME_SLICE"]
       69 SETTABLEKS                       R7 R6 K16 ["SliceCenter"]
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R8 R9 K0 ["props"]
       74 GETTABLEKS                       R7 R8 K17 ["Position"]
       76 JUMPIF                           R7 ; [+7]
       77 GETIMPORT                        R7 K31 [UDim2.new]
       79 LOADN                            R8 0
       80 LOADN                            R9 0
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 CALL                             R7 4 1
       84 SETTABLEKS                       R7 R6 K17 ["Position"]
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R8 R9 K0 ["props"]
       89 GETTABLEKS                       R7 R8 K18 ["AnchorPoint"]
       91 SETTABLEKS                       R7 R6 K18 ["AnchorPoint"]
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R9 R10 K0 ["props"]
       96 GETTABLEKS                       R8 R9 K32 ["Width"]
       98 JUMPIFNOT                        R8 ; [+17]
       99 GETIMPORT                        R7 K31 [UDim2.new]
      101 LOADN                            R8 0
      102 GETUPVAL                         R11 0
      103 GETTABLEKS                       R10 R11 K0 ["props"]
      105 GETTABLEKS                       R9 R10 K32 ["Width"]
      107 LOADN                            R10 0
      108 GETUPVAL                         R14 0
      109 GETTABLEKS                       R13 R14 K0 ["props"]
      111 GETTABLEKS                       R12 R13 K34 ["Height"]
      113 ORK                              R11 R12 K33 [42]
      114 CALL                             R7 4 1
      115 JUMPIF                           R7 ; [+12]
      116 GETIMPORT                        R7 K31 [UDim2.new]
      118 LOADN                            R8 1
      119 LOADN                            R9 0
      120 LOADN                            R10 0
      121 GETUPVAL                         R14 0
      122 GETTABLEKS                       R13 R14 K0 ["props"]
      124 GETTABLEKS                       R12 R13 K34 ["Height"]
      126 ORK                              R11 R12 K33 [42]
      127 CALL                             R7 4 1
      128 SETTABLEKS                       R7 R6 K19 ["Size"]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R9 R10 K0 ["props"]
      133 GETTABLEKS                       R8 R9 K20 ["LayoutOrder"]
      135 ORK                              R7 R8 K35 [1]
      136 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
      138 GETUPVAL                         R10 0
      139 GETTABLEKS                       R9 R10 K0 ["props"]
      141 GETTABLEKS                       R8 R9 K36 ["ShowToolTip"]
      143 JUMPIFEQKNIL                     R8 ; [+7]
      145 GETUPVAL                         R9 0
      146 GETTABLEKS                       R8 R9 K0 ["props"]
      148 GETTABLEKS                       R7 R8 K36 ["ShowToolTip"]
      150 JUMP                             ; [+2]
      151 LOADB                            R7 1
      152 JUMP                             ; [0]
      153 LOADNIL                          R8
      154 JUMPIFNOT                        R0 ; [+27]
      155 JUMPIFNOT                        R4 ; [+12]
      156 GETUPVAL                         R11 0
      157 GETTABLEKS                       R10 R11 K0 ["props"]
      159 GETTABLEKS                       R9 R10 K9 ["ErrorMessage"]
      161 JUMPIFNOT                        R9 ; [+6]
      162 GETUPVAL                         R10 0
      163 GETTABLEKS                       R9 R10 K0 ["props"]
      165 GETTABLEKS                       R8 R9 K9 ["ErrorMessage"]
      167 JUMP                             ; [+15]
      168 JUMPIF                           R7 ; [+1]
      169 JUMPIFNOT                        R4 ; [+9]
      170 MOVE                             R10 R3
      171 LOADK                            R11 K37 ["/"]
      172 GETUPVAL                         R14 0
      173 GETTABLEKS                       R13 R14 K0 ["props"]
      175 GETTABLEKS                       R12 R13 K10 ["MaxLength"]
      177 CONCAT                           R9 R10 R12
      178 JUMPIF                           R9 ; [+1]
      179 LOADK                            R9 K38 [""]
      180 MOVE                             R8 R9
      181 JUMP                             ; [+1]
      182 LOADK                            R8 K38 [""]
      183 LOADNIL                          R9
      184 JUMPIFNOT                        R0 ; [+10]
      185 JUMPIFNOT                        R4 ; [+2]
      186 GETUPVAL                         R9 3
      187 JUMP                             ; [+9]
      188 JUMPIFNOT                        R1 ; [+3]
      189 GETTABLEKS                       R9 R5 K39 ["BorderHoverColor"]
      191 JUMP                             ; [+5]
      192 GETTABLEKS                       R9 R5 K40 ["BorderDefaultColor"]
      194 JUMP                             ; [+2]
      195 GETTABLEKS                       R9 R5 K40 ["BorderDefaultColor"]
      197 DUPTABLE                         R10 K48 [{"Visible", "Enabled", "Text", "FocusChanged", "HoverChanged", "SetText", "TextColor3", "HorizontalAlignment", "PlaceholderText"}]
      198 GETUPVAL                         R13 0
      199 GETTABLEKS                       R12 R13 K0 ["props"]
      201 GETTABLEKS                       R11 R12 K1 ["Enabled"]
      203 JUMPIF                           R11 ; [+7]
      204 GETUPVAL                         R13 0
      205 GETTABLEKS                       R12 R13 K0 ["props"]
      207 GETTABLEKS                       R11 R12 K49 ["ShowTextWhenDisabled"]
      209 JUMPIF                           R11 ; [+1]
      210 LOADB                            R11 0
      211 SETTABLEKS                       R11 R10 K41 ["Visible"]
      213 GETUPVAL                         R13 0
      214 GETTABLEKS                       R12 R13 K0 ["props"]
      216 GETTABLEKS                       R11 R12 K1 ["Enabled"]
      218 SETTABLEKS                       R11 R10 K1 ["Enabled"]
      220 GETUPVAL                         R13 0
      221 GETTABLEKS                       R12 R13 K0 ["props"]
      223 GETTABLEKS                       R11 R12 K5 ["Text"]
      225 SETTABLEKS                       R11 R10 K5 ["Text"]
      227 GETUPVAL                         R12 0
      228 GETTABLEKS                       R11 R12 K50 ["focusChanged"]
      230 SETTABLEKS                       R11 R10 K42 ["FocusChanged"]
      232 GETUPVAL                         R12 0
      233 GETTABLEKS                       R11 R12 K51 ["mouseHoverChanged"]
      235 SETTABLEKS                       R11 R10 K43 ["HoverChanged"]
      237 GETUPVAL                         R13 0
      238 GETTABLEKS                       R12 R13 K0 ["props"]
      240 GETTABLEKS                       R11 R12 K44 ["SetText"]
      242 SETTABLEKS                       R11 R10 K44 ["SetText"]
      244 GETTABLEKS                       R11 R5 K52 ["TextColor"]
      246 SETTABLEKS                       R11 R10 K45 ["TextColor3"]
      248 GETUPVAL                         R13 0
      249 GETTABLEKS                       R12 R13 K0 ["props"]
      251 GETTABLEKS                       R11 R12 K46 ["HorizontalAlignment"]
      253 SETTABLEKS                       R11 R10 K46 ["HorizontalAlignment"]
      255 GETUPVAL                         R13 0
      256 GETTABLEKS                       R12 R13 K0 ["props"]
      258 GETTABLEKS                       R11 R12 K47 ["PlaceholderText"]
      260 SETTABLEKS                       R11 R10 K47 ["PlaceholderText"]
      262 LOADNIL                          R11
      263 JUMPIFNOT                        R2 ; [+8]
      264 GETUPVAL                         R13 4
      265 GETTABLEKS                       R12 R13 K53 ["createElement"]
      267 GETUPVAL                         R13 5
      268 MOVE                             R14 R10
      269 CALL                             R12 2 1
      270 MOVE                             R11 R12
      271 JUMP                             ; [+7]
      272 GETUPVAL                         R13 4
      273 GETTABLEKS                       R12 R13 K53 ["createElement"]
      275 GETUPVAL                         R13 6
      276 MOVE                             R14 R10
      277 CALL                             R12 2 1
      278 MOVE                             R11 R12
      279 GETUPVAL                         R13 4
      280 GETTABLEKS                       R12 R13 K53 ["createElement"]
      282 LOADK                            R13 K54 ["ImageLabel"]
      283 MOVE                             R14 R6
      284 DUPTABLE                         R15 K57 [{"Tooltip", "Border"}]
      285 GETUPVAL                         R17 4
      286 GETTABLEKS                       R16 R17 K53 ["createElement"]
      288 LOADK                            R17 K58 ["TextLabel"]
      289 DUPTABLE                         R18 K63 [{"BackgroundTransparency", "Position", "Size", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text", "Visible"}]
      290 LOADN                            R19 1
      291 SETTABLEKS                       R19 R18 K11 ["BackgroundTransparency"]
      293 GETIMPORT                        R19 K31 [UDim2.new]
      295 LOADN                            R20 0
      296 LOADN                            R21 2
      297 LOADN                            R22 1
      298 LOADN                            R23 2
      299 CALL                             R19 4 1
      300 SETTABLEKS                       R19 R18 K17 ["Position"]
      302 GETIMPORT                        R19 K31 [UDim2.new]
      304 LOADN                            R20 1
      305 LOADN                            R21 0
      306 LOADN                            R22 0
      307 LOADN                            R23 10
      308 CALL                             R19 4 1
      309 SETTABLEKS                       R19 R18 K19 ["Size"]
      311 GETIMPORT                        R19 K65 [Enum.Font.SourceSans]
      313 SETTABLEKS                       R19 R18 K59 ["Font"]
      315 LOADN                            R19 16
      316 SETTABLEKS                       R19 R18 K60 ["TextSize"]
      318 GETIMPORT                        R19 K67 [Enum.TextXAlignment.Left]
      320 SETTABLEKS                       R19 R18 K61 ["TextXAlignment"]
      322 GETIMPORT                        R19 K69 [Enum.TextYAlignment.Top]
      324 SETTABLEKS                       R19 R18 K62 ["TextYAlignment"]
      326 JUMPIFNOT                        R0 ; [+3]
      327 JUMPIFNOT                        R4 ; [+2]
      328 GETUPVAL                         R19 3
      329 JUMPIF                           R19 ; [+2]
      330 GETTABLEKS                       R19 R5 K70 ["TooltipColor"]
      332 SETTABLEKS                       R19 R18 K45 ["TextColor3"]
      334 SETTABLEKS                       R8 R18 K5 ["Text"]
      336 MOVE                             R19 R7
      337 JUMPIF                           R19 ; [+4]
      338 JUMPIFNOTEQKNIL                  R4 ; [+2]
      340 LOADB                            R19 0 +1
      341 LOADB                            R19 1
      342 SETTABLEKS                       R19 R18 K41 ["Visible"]
      344 CALL                             R16 2 1
      345 SETTABLEKS                       R16 R15 K55 ["Tooltip"]
      347 GETUPVAL                         R17 4
      348 GETTABLEKS                       R16 R17 K53 ["createElement"]
      350 LOADK                            R17 K54 ["ImageLabel"]
      351 DUPTABLE                         R18 K71 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter"}]
      352 GETIMPORT                        R19 K31 [UDim2.new]
      354 LOADN                            R20 1
      355 LOADN                            R21 0
      356 LOADN                            R22 1
      357 LOADN                            R23 0
      358 CALL                             R19 4 1
      359 SETTABLEKS                       R19 R18 K19 ["Size"]
      361 LOADN                            R19 1
      362 SETTABLEKS                       R19 R18 K11 ["BackgroundTransparency"]
      364 GETUPVAL                         R20 2
      365 GETTABLEKS                       R19 R20 K72 ["ROUNDED_BORDER_IMAGE"]
      367 SETTABLEKS                       R19 R18 K12 ["Image"]
      369 SETTABLEKS                       R9 R18 K14 ["ImageColor3"]
      371 GETIMPORT                        R19 K27 [Enum.ScaleType.Slice]
      373 SETTABLEKS                       R19 R18 K15 ["ScaleType"]
      375 GETUPVAL                         R20 2
      376 GETTABLEKS                       R19 R20 K28 ["ROUNDED_FRAME_SLICE"]
      378 SETTABLEKS                       R19 R18 K16 ["SliceCenter"]
      380 DUPTABLE                         R19 K74 [{"Padding", "Text"}]
      381 GETUPVAL                         R21 4
      382 GETTABLEKS                       R20 R21 K53 ["createElement"]
      384 LOADK                            R21 K75 ["UIPadding"]
      385 DUPTABLE                         R22 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      386 GETUPVAL                         R25 0
      387 GETTABLEKS                       R24 R25 K0 ["props"]
      389 GETTABLEKS                       R23 R24 K76 ["PaddingLeft"]
      391 JUMPIF                           R23 ; [+1]
      392 GETUPVAL                         R23 7
      393 SETTABLEKS                       R23 R22 K76 ["PaddingLeft"]
      395 GETUPVAL                         R25 0
      396 GETTABLEKS                       R24 R25 K0 ["props"]
      398 GETTABLEKS                       R23 R24 K77 ["PaddingRight"]
      400 JUMPIF                           R23 ; [+1]
      401 GETUPVAL                         R23 7
      402 SETTABLEKS                       R23 R22 K77 ["PaddingRight"]
      404 GETUPVAL                         R25 0
      405 GETTABLEKS                       R24 R25 K0 ["props"]
      407 GETTABLEKS                       R23 R24 K78 ["PaddingTop"]
      409 JUMPIF                           R23 ; [+1]
      410 GETUPVAL                         R23 7
      411 SETTABLEKS                       R23 R22 K78 ["PaddingTop"]
      413 GETUPVAL                         R25 0
      414 GETTABLEKS                       R24 R25 K0 ["props"]
      416 GETTABLEKS                       R23 R24 K79 ["PaddingBottom"]
      418 JUMPIF                           R23 ; [+1]
      419 GETUPVAL                         R23 7
      420 SETTABLEKS                       R23 R22 K79 ["PaddingBottom"]
      422 CALL                             R20 2 1
      423 SETTABLEKS                       R20 R19 K73 ["Padding"]
      425 SETTABLEKS                       R11 R19 K5 ["Text"]
      427 CALL                             R16 3 1
      428 SETTABLEKS                       R16 R15 K56 ["Border"]
      430 CALL                             R12 3 -1
      431 RETURN                           R12 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R2 R3 K0 ["createElement"]
       12 GETUPVAL                         R3 7
       13 DUPTABLE                         R4 K2 [{"render"}]
       14 SETTABLEKS                       R1 R4 K1 ["render"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["getBorderHoverColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["BorderHoverColor"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K2 ["getBorderDefaultColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["BorderDefaultColor"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K4 ["getMainTextColor"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K5 ["TextColor"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K6 ["getTextDescriptionColor"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K7 ["TooltipColor"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K8 ["getBackgroundColor"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K9 ["BackgroundColor"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K10 ["getDisabledColor"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R1 K11 ["DisabledColor"]
       38 NEWTABLE                         R2 0 0
       40 GETIMPORT                        R3 K13 [pairs]
       42 MOVE                             R4 R1
       43 CALL                             R3 1 3
       44 FORGPREP_NEXT                    R3
       45 GETTABLEKS                       R10 R0 K14 ["props"]
       47 GETTABLEKS                       R9 R10 K15 ["Style"]
       49 JUMPIFNOT                        R9 ; [+6]
       50 GETTABLEKS                       R10 R0 K14 ["props"]
       52 GETTABLEKS                       R9 R10 K15 ["Style"]
       54 GETTABLE                         R8 R9 R6
       55 JUMPIF                           R8 ; [+1]
       56 MOVE                             R8 R7
       57 SETTABLE                         R8 R2 R6
       58 FORGLOOP                         R3 2 ; [-14]
       60 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [UDim.new]
        3 LOADN                            R1 0
        4 LOADN                            R2 10
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K4 [require]
        8 GETIMPORT                        R5 K6 [script]
       10 GETTABLEKS                       R4 R5 K7 ["Parent"]
       12 GETTABLEKS                       R3 R4 K8 ["Internal"]
       14 GETTABLEKS                       R2 R3 K9 ["RequireRoact"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K4 [require]
       19 GETIMPORT                        R6 K6 [script]
       21 GETTABLEKS                       R5 R6 K7 ["Parent"]
       23 GETTABLEKS                       R4 R5 K8 ["Internal"]
       25 GETTABLEKS                       R3 R4 K10 ["Constants"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K4 [require]
       30 GETIMPORT                        R7 K6 [script]
       32 GETTABLEKS                       R6 R7 K7 ["Parent"]
       34 GETTABLEKS                       R5 R6 K8 ["Internal"]
       36 GETTABLEKS                       R4 R5 K11 ["ThemeChangeListener"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K4 [require]
       41 GETIMPORT                        R8 K6 [script]
       43 GETTABLEKS                       R7 R8 K7 ["Parent"]
       45 GETTABLEKS                       R6 R7 K8 ["Internal"]
       47 GETTABLEKS                       R5 R6 K12 ["Theme"]
       49 CALL                             R4 1 1
       50 GETIMPORT                        R5 K4 [require]
       52 GETIMPORT                        R9 K6 [script]
       54 GETTABLEKS                       R8 R9 K7 ["Parent"]
       56 GETTABLEKS                       R7 R8 K8 ["Internal"]
       58 GETTABLEKS                       R6 R7 K13 ["Mouse"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K4 [require]
       63 GETIMPORT                        R9 K6 [script]
       65 GETTABLEKS                       R8 R9 K7 ["Parent"]
       67 GETTABLEKS                       R7 R8 K14 ["TextEntry"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K4 [require]
       72 GETIMPORT                        R10 K6 [script]
       74 GETTABLEKS                       R9 R10 K7 ["Parent"]
       76 GETTABLEKS                       R8 R9 K15 ["MultilineTextEntry"]
       78 CALL                             R7 1 1
       79 GETIMPORT                        R8 K17 [Color3.new]
       81 LOADN                            R9 1
       82 LOADK                            R10 K18 [0.266]
       83 LOADK                            R11 K18 [0.266]
       84 CALL                             R8 3 1
       85 LOADNIL                          R9
       86 GETTABLEKS                       R10 R1 K19 ["PureComponent"]
       88 LOADK                            R12 K20 ["RoundTextBox"]
       89 NAMECALL                         R10 R10 K21 ["extend"]
       91 CALL                             R10 2 1
       92 DUPCLOSURE                       R11 K22 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R11 R10 K23 ["init"]
       96 NEWCLOSURE                       R11 P1
       97 CAPTURE                          REF R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R3
      105 SETTABLEKS                       R11 R10 K24 ["render"]
      107 DUPCLOSURE                       R9 K25 [PROTO_6]
      108 CAPTURE                          VAL R4
      109 CLOSEUPVALS                      R9
      110 RETURN                           R10 1
