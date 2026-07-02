PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Enabled"]
        5 JUMPIFNOT                        R2 ; [+21]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K2 ["FocusChanged"]
       11 JUMPIFNOT                        R2 ; [+8]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K2 ["FocusChanged"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+40]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["onEnter"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K3 ["Mouse"]
       15 LOADK                            R3 K4 ["IBeam"]
       16 CALL                             R1 2 0
       17 JUMP                             ; [+9]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K5 ["onLeave"]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K3 ["Mouse"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K6 ["state"]
       30 GETTABLEKS                       R1 R1 K7 ["Focused"]
       32 JUMPIFNOT                        R1 ; [+13]
       33 GETUPVAL                         R1 0
       34 GETTABLEKS                       R1 R1 K0 ["props"]
       36 GETTABLEKS                       R1 R1 K8 ["HoverChanged"]
       38 JUMPIFNOT                        R1 ; [+7]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K0 ["props"]
       42 GETTABLEKS                       R1 R1 K8 ["HoverChanged"]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["focusChanged"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R1 R0 K5 ["mouseHoverChanged"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ShowToolTip"]
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K1 ["ShowToolTip"]
       12 RETURN                           R0 1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["state"]
        8 GETTABLEKS                       R1 R1 K3 ["Focused"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["Multiline"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["props"]
       18 GETTABLEKS                       R4 R4 K5 ["Text"]
       20 FASTCALL1                        STRING_LEN R4 ; [+2]
       21 GETIMPORT                        R3 K8 [string.len]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["props"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorMessage"]
       29 JUMPIF                           R4 ; [+9]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["props"]
       33 GETTABLEKS                       R5 R5 K10 ["MaxLength"]
       35 JUMPIFLT                         R5 R3 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 GETUPVAL                         R5 1
       40 GETUPVAL                         R6 0
       41 CALL                             R5 1 1
       42 DUPTABLE                         R6 K23 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageTransparency"] = 0, ["ImageColor3"], ["ScaleType"], ["SliceCenter"], ["Position"], ["AnchorPoint"], ["Size"], ["LayoutOrder"]}]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K24 ["ROUNDED_BACKGROUND_IMAGE"]
       46 SETTABLEKS                       R7 R6 K13 ["Image"]
       48 JUMPIFNOT                        R0 ; [+3]
       49 GETTABLEKS                       R7 R5 K25 ["BackgroundColor"]
       51 JUMPIF                           R7 ; [+2]
       52 GETTABLEKS                       R7 R5 K26 ["DisabledColor"]
       54 SETTABLEKS                       R7 R6 K16 ["ImageColor3"]
       56 GETIMPORT                        R7 K29 [Enum.ScaleType.Slice]
       58 SETTABLEKS                       R7 R6 K17 ["ScaleType"]
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R7 R7 K30 ["ROUNDED_FRAME_SLICE"]
       63 SETTABLEKS                       R7 R6 K18 ["SliceCenter"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K0 ["props"]
       68 GETTABLEKS                       R7 R7 K19 ["Position"]
       70 JUMPIF                           R7 ; [+7]
       71 GETIMPORT                        R7 K33 [UDim2.new]
       73 LOADN                            R8 0
       74 LOADN                            R9 0
       75 LOADN                            R10 0
       76 LOADN                            R11 0
       77 CALL                             R7 4 1
       78 SETTABLEKS                       R7 R6 K19 ["Position"]
       80 GETUPVAL                         R7 0
       81 GETTABLEKS                       R7 R7 K0 ["props"]
       83 GETTABLEKS                       R7 R7 K20 ["AnchorPoint"]
       85 SETTABLEKS                       R7 R6 K20 ["AnchorPoint"]
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K0 ["props"]
       90 GETTABLEKS                       R8 R8 K34 ["Width"]
       92 JUMPIFNOT                        R8 ; [+17]
       93 GETIMPORT                        R7 K33 [UDim2.new]
       95 LOADN                            R8 0
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K0 ["props"]
       99 GETTABLEKS                       R9 R9 K34 ["Width"]
      101 LOADN                            R10 0
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K0 ["props"]
      105 GETTABLEKS                       R12 R12 K36 ["Height"]
      107 ORK                              R11 R12 K35 [42]
      108 CALL                             R7 4 1
      109 JUMPIF                           R7 ; [+12]
      110 GETIMPORT                        R7 K33 [UDim2.new]
      112 LOADN                            R8 1
      113 LOADN                            R9 0
      114 LOADN                            R10 0
      115 GETUPVAL                         R12 0
      116 GETTABLEKS                       R12 R12 K0 ["props"]
      118 GETTABLEKS                       R12 R12 K36 ["Height"]
      120 ORK                              R11 R12 K35 [42]
      121 CALL                             R7 4 1
      122 SETTABLEKS                       R7 R6 K21 ["Size"]
      124 GETUPVAL                         R8 0
      125 GETTABLEKS                       R8 R8 K0 ["props"]
      127 GETTABLEKS                       R8 R8 K22 ["LayoutOrder"]
      129 ORK                              R7 R8 K12 [1]
      130 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
      132 GETUPVAL                         R8 0
      133 GETTABLEKS                       R8 R8 K0 ["props"]
      135 GETTABLEKS                       R8 R8 K37 ["ShowToolTip"]
      137 JUMPIFEQKNIL                     R8 ; [+7]
      139 GETUPVAL                         R7 0
      140 GETTABLEKS                       R7 R7 K0 ["props"]
      142 GETTABLEKS                       R7 R7 K37 ["ShowToolTip"]
      144 JUMP                             ; [+1]
      145 LOADB                            R7 1
      146 LOADNIL                          R8
      147 JUMPIFNOT                        R0 ; [+27]
      148 JUMPIFNOT                        R4 ; [+12]
      149 GETUPVAL                         R9 0
      150 GETTABLEKS                       R9 R9 K0 ["props"]
      152 GETTABLEKS                       R9 R9 K9 ["ErrorMessage"]
      154 JUMPIFNOT                        R9 ; [+6]
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R9 R9 K0 ["props"]
      158 GETTABLEKS                       R8 R9 K9 ["ErrorMessage"]
      160 JUMP                             ; [+15]
      161 JUMPIF                           R7 ; [+1]
      162 JUMPIFNOT                        R4 ; [+9]
      163 MOVE                             R10 R3
      164 LOADK                            R11 K38 ["/"]
      165 GETUPVAL                         R12 0
      166 GETTABLEKS                       R12 R12 K0 ["props"]
      168 GETTABLEKS                       R12 R12 K10 ["MaxLength"]
      170 CONCAT                           R9 R10 R12
      171 JUMPIF                           R9 ; [+1]
      172 LOADK                            R9 K39 [""]
      173 MOVE                             R8 R9
      174 JUMP                             ; [+1]
      175 LOADK                            R8 K39 [""]
      176 LOADNIL                          R9
      177 JUMPIFNOT                        R0 ; [+10]
      178 JUMPIFNOT                        R4 ; [+2]
      179 GETUPVAL                         R9 3
      180 JUMP                             ; [+9]
      181 JUMPIFNOT                        R1 ; [+3]
      182 GETTABLEKS                       R9 R5 K40 ["BorderHoverColor"]
      184 JUMP                             ; [+5]
      185 GETTABLEKS                       R9 R5 K41 ["BorderDefaultColor"]
      187 JUMP                             ; [+2]
      188 GETTABLEKS                       R9 R5 K41 ["BorderDefaultColor"]
      190 DUPTABLE                         R10 K49 [{"Visible", "Enabled", "Text", "FocusChanged", "HoverChanged", "SetText", "TextColor3", "HorizontalAlignment", "PlaceholderText"}]
      191 GETUPVAL                         R11 0
      192 GETTABLEKS                       R11 R11 K0 ["props"]
      194 GETTABLEKS                       R11 R11 K1 ["Enabled"]
      196 JUMPIF                           R11 ; [+7]
      197 GETUPVAL                         R11 0
      198 GETTABLEKS                       R11 R11 K0 ["props"]
      200 GETTABLEKS                       R11 R11 K50 ["ShowTextWhenDisabled"]
      202 JUMPIF                           R11 ; [+1]
      203 LOADB                            R11 0
      204 SETTABLEKS                       R11 R10 K42 ["Visible"]
      206 GETUPVAL                         R11 0
      207 GETTABLEKS                       R11 R11 K0 ["props"]
      209 GETTABLEKS                       R11 R11 K1 ["Enabled"]
      211 SETTABLEKS                       R11 R10 K1 ["Enabled"]
      213 GETUPVAL                         R11 0
      214 GETTABLEKS                       R11 R11 K0 ["props"]
      216 GETTABLEKS                       R11 R11 K5 ["Text"]
      218 SETTABLEKS                       R11 R10 K5 ["Text"]
      220 GETUPVAL                         R11 0
      221 GETTABLEKS                       R11 R11 K51 ["focusChanged"]
      223 SETTABLEKS                       R11 R10 K43 ["FocusChanged"]
      225 GETUPVAL                         R11 0
      226 GETTABLEKS                       R11 R11 K52 ["mouseHoverChanged"]
      228 SETTABLEKS                       R11 R10 K44 ["HoverChanged"]
      230 GETUPVAL                         R11 0
      231 GETTABLEKS                       R11 R11 K0 ["props"]
      233 GETTABLEKS                       R11 R11 K45 ["SetText"]
      235 SETTABLEKS                       R11 R10 K45 ["SetText"]
      237 GETTABLEKS                       R11 R5 K53 ["TextColor"]
      239 SETTABLEKS                       R11 R10 K46 ["TextColor3"]
      241 GETUPVAL                         R11 0
      242 GETTABLEKS                       R11 R11 K0 ["props"]
      244 GETTABLEKS                       R11 R11 K47 ["HorizontalAlignment"]
      246 SETTABLEKS                       R11 R10 K47 ["HorizontalAlignment"]
      248 GETUPVAL                         R11 0
      249 GETTABLEKS                       R11 R11 K0 ["props"]
      251 GETTABLEKS                       R11 R11 K48 ["PlaceholderText"]
      253 SETTABLEKS                       R11 R10 K48 ["PlaceholderText"]
      255 LOADNIL                          R11
      256 JUMPIFNOT                        R2 ; [+8]
      257 GETUPVAL                         R12 4
      258 GETTABLEKS                       R12 R12 K54 ["createElement"]
      260 GETUPVAL                         R13 5
      261 MOVE                             R14 R10
      262 CALL                             R12 2 1
      263 MOVE                             R11 R12
      264 JUMP                             ; [+7]
      265 GETUPVAL                         R12 4
      266 GETTABLEKS                       R12 R12 K54 ["createElement"]
      268 GETUPVAL                         R13 6
      269 MOVE                             R14 R10
      270 CALL                             R12 2 1
      271 MOVE                             R11 R12
      272 GETUPVAL                         R12 4
      273 GETTABLEKS                       R12 R12 K54 ["createElement"]
      275 LOADK                            R13 K55 ["ImageLabel"]
      276 MOVE                             R14 R6
      277 DUPTABLE                         R15 K58 [{"Tooltip", "Border"}]
      278 GETUPVAL                         R16 4
      279 GETTABLEKS                       R16 R16 K54 ["createElement"]
      281 LOADK                            R17 K59 ["TextLabel"]
      282 DUPTABLE                         R18 K65 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Font"], ["TextSize"] = 16, ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Text"], ["Visible"]}]
      283 GETIMPORT                        R19 K33 [UDim2.new]
      285 LOADN                            R20 0
      286 LOADN                            R21 2
      287 LOADN                            R22 1
      288 LOADN                            R23 2
      289 CALL                             R19 4 1
      290 SETTABLEKS                       R19 R18 K19 ["Position"]
      292 GETIMPORT                        R19 K33 [UDim2.new]
      294 LOADN                            R20 1
      295 LOADN                            R21 0
      296 LOADN                            R22 0
      297 LOADN                            R23 10
      298 CALL                             R19 4 1
      299 SETTABLEKS                       R19 R18 K21 ["Size"]
      301 GETIMPORT                        R19 K67 [Enum.Font.SourceSans]
      303 SETTABLEKS                       R19 R18 K60 ["Font"]
      305 GETIMPORT                        R19 K69 [Enum.TextXAlignment.Left]
      307 SETTABLEKS                       R19 R18 K63 ["TextXAlignment"]
      309 GETIMPORT                        R19 K71 [Enum.TextYAlignment.Top]
      311 SETTABLEKS                       R19 R18 K64 ["TextYAlignment"]
      313 JUMPIFNOT                        R0 ; [+3]
      314 JUMPIFNOT                        R4 ; [+2]
      315 GETUPVAL                         R19 3
      316 JUMPIF                           R19 ; [+2]
      317 GETTABLEKS                       R19 R5 K72 ["TooltipColor"]
      319 SETTABLEKS                       R19 R18 K46 ["TextColor3"]
      321 SETTABLEKS                       R8 R18 K5 ["Text"]
      323 MOVE                             R19 R7
      324 JUMPIF                           R19 ; [+4]
      325 JUMPIFNOTEQKNIL                  R4 ; [+2]
      327 LOADB                            R19 0 +1
      328 LOADB                            R19 1
      329 SETTABLEKS                       R19 R18 K42 ["Visible"]
      331 CALL                             R16 2 1
      332 SETTABLEKS                       R16 R15 K56 ["Tooltip"]
      334 GETUPVAL                         R16 4
      335 GETTABLEKS                       R16 R16 K54 ["createElement"]
      337 LOADK                            R17 K55 ["ImageLabel"]
      338 DUPTABLE                         R18 K73 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["ScaleType"], ["SliceCenter"]}]
      339 GETIMPORT                        R19 K33 [UDim2.new]
      341 LOADN                            R20 1
      342 LOADN                            R21 0
      343 LOADN                            R22 1
      344 LOADN                            R23 0
      345 CALL                             R19 4 1
      346 SETTABLEKS                       R19 R18 K21 ["Size"]
      348 GETUPVAL                         R19 2
      349 GETTABLEKS                       R19 R19 K74 ["ROUNDED_BORDER_IMAGE"]
      351 SETTABLEKS                       R19 R18 K13 ["Image"]
      353 SETTABLEKS                       R9 R18 K16 ["ImageColor3"]
      355 GETIMPORT                        R19 K29 [Enum.ScaleType.Slice]
      357 SETTABLEKS                       R19 R18 K17 ["ScaleType"]
      359 GETUPVAL                         R19 2
      360 GETTABLEKS                       R19 R19 K30 ["ROUNDED_FRAME_SLICE"]
      362 SETTABLEKS                       R19 R18 K18 ["SliceCenter"]
      364 DUPTABLE                         R19 K76 [{"Padding", "Text"}]
      365 GETUPVAL                         R20 4
      366 GETTABLEKS                       R20 R20 K54 ["createElement"]
      368 LOADK                            R21 K77 ["UIPadding"]
      369 DUPTABLE                         R22 K82 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      370 GETUPVAL                         R23 0
      371 GETTABLEKS                       R23 R23 K0 ["props"]
      373 GETTABLEKS                       R23 R23 K78 ["PaddingLeft"]
      375 JUMPIF                           R23 ; [+1]
      376 GETUPVAL                         R23 7
      377 SETTABLEKS                       R23 R22 K78 ["PaddingLeft"]
      379 GETUPVAL                         R23 0
      380 GETTABLEKS                       R23 R23 K0 ["props"]
      382 GETTABLEKS                       R23 R23 K79 ["PaddingRight"]
      384 JUMPIF                           R23 ; [+1]
      385 GETUPVAL                         R23 7
      386 SETTABLEKS                       R23 R22 K79 ["PaddingRight"]
      388 GETUPVAL                         R23 0
      389 GETTABLEKS                       R23 R23 K0 ["props"]
      391 GETTABLEKS                       R23 R23 K80 ["PaddingTop"]
      393 JUMPIF                           R23 ; [+1]
      394 GETUPVAL                         R23 7
      395 SETTABLEKS                       R23 R22 K80 ["PaddingTop"]
      397 GETUPVAL                         R23 0
      398 GETTABLEKS                       R23 R23 K0 ["props"]
      400 GETTABLEKS                       R23 R23 K81 ["PaddingBottom"]
      402 JUMPIF                           R23 ; [+1]
      403 GETUPVAL                         R23 7
      404 SETTABLEKS                       R23 R22 K81 ["PaddingBottom"]
      406 CALL                             R20 2 1
      407 SETTABLEKS                       R20 R19 K75 ["Padding"]
      409 SETTABLEKS                       R11 R19 K5 ["Text"]
      411 CALL                             R16 3 1
      412 SETTABLEKS                       R16 R15 K57 ["Border"]
      414 CALL                             R12 3 -1
      415 RETURN                           R12 -1

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
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K0 ["createElement"]
       12 GETUPVAL                         R3 7
       13 DUPTABLE                         R4 K2 [{"render"}]
       14 SETTABLEKS                       R1 R4 K1 ["render"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getBorderHoverColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["BorderHoverColor"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["getBorderDefaultColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["BorderDefaultColor"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["getMainTextColor"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K5 ["TextColor"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K6 ["getTextDescriptionColor"]
       23 CALL                             R2 0 1
       24 SETTABLEKS                       R2 R1 K7 ["TooltipColor"]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["getBackgroundColor"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K9 ["BackgroundColor"]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K10 ["getDisabledColor"]
       35 CALL                             R2 0 1
       36 SETTABLEKS                       R2 R1 K11 ["DisabledColor"]
       38 NEWTABLE                         R2 0 0
       40 GETIMPORT                        R3 K13 [pairs]
       42 MOVE                             R4 R1
       43 CALL                             R3 1 3
       44 FORGPREP_NEXT                    R3
       45 GETTABLEKS                       R9 R0 K14 ["props"]
       47 GETTABLEKS                       R9 R9 K15 ["Style"]
       49 JUMPIFNOT                        R9 ; [+6]
       50 GETTABLEKS                       R9 R0 K14 ["props"]
       52 GETTABLEKS                       R9 R9 K15 ["Style"]
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
        8 GETIMPORT                        R2 K6 [script]
       10 GETTABLEKS                       R2 R2 K7 ["Parent"]
       12 GETTABLEKS                       R2 R2 K8 ["Internal"]
       14 GETTABLEKS                       R2 R2 K9 ["RequireRoact"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K4 [require]
       19 GETIMPORT                        R3 K6 [script]
       21 GETTABLEKS                       R3 R3 K7 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Internal"]
       25 GETTABLEKS                       R3 R3 K10 ["Constants"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K4 [require]
       30 GETIMPORT                        R4 K6 [script]
       32 GETTABLEKS                       R4 R4 K7 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["Internal"]
       36 GETTABLEKS                       R4 R4 K11 ["ThemeChangeListener"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K4 [require]
       41 GETIMPORT                        R5 K6 [script]
       43 GETTABLEKS                       R5 R5 K7 ["Parent"]
       45 GETTABLEKS                       R5 R5 K8 ["Internal"]
       47 GETTABLEKS                       R5 R5 K12 ["Theme"]
       49 CALL                             R4 1 1
       50 GETIMPORT                        R5 K4 [require]
       52 GETIMPORT                        R6 K6 [script]
       54 GETTABLEKS                       R6 R6 K7 ["Parent"]
       56 GETTABLEKS                       R6 R6 K8 ["Internal"]
       58 GETTABLEKS                       R6 R6 K13 ["Mouse"]
       60 CALL                             R5 1 1
       61 GETIMPORT                        R6 K4 [require]
       63 GETIMPORT                        R7 K6 [script]
       65 GETTABLEKS                       R7 R7 K7 ["Parent"]
       67 GETTABLEKS                       R7 R7 K14 ["TextEntry"]
       69 CALL                             R6 1 1
       70 GETIMPORT                        R7 K4 [require]
       72 GETIMPORT                        R8 K6 [script]
       74 GETTABLEKS                       R8 R8 K7 ["Parent"]
       76 GETTABLEKS                       R8 R8 K15 ["MultilineTextEntry"]
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
