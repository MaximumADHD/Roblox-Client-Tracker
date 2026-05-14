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
       42 DUPTABLE                         R6 K21 [{"BackgroundTransparency", "Image", "ImageTransparency", "ImageColor3", "ScaleType", "SliceCenter", "Position", "AnchorPoint", "Size", "LayoutOrder"}]
       43 LOADN                            R7 1
       44 SETTABLEKS                       R7 R6 K11 ["BackgroundTransparency"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K22 ["ROUNDED_BACKGROUND_IMAGE"]
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
       66 GETUPVAL                         R7 2
       67 GETTABLEKS                       R7 R7 K28 ["ROUNDED_FRAME_SLICE"]
       69 SETTABLEKS                       R7 R6 K16 ["SliceCenter"]
       71 GETUPVAL                         R7 0
       72 GETTABLEKS                       R7 R7 K0 ["props"]
       74 GETTABLEKS                       R7 R7 K17 ["Position"]
       76 JUMPIF                           R7 ; [+7]
       77 GETIMPORT                        R7 K31 [UDim2.new]
       79 LOADN                            R8 0
       80 LOADN                            R9 0
       81 LOADN                            R10 0
       82 LOADN                            R11 0
       83 CALL                             R7 4 1
       84 SETTABLEKS                       R7 R6 K17 ["Position"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K0 ["props"]
       89 GETTABLEKS                       R7 R7 K18 ["AnchorPoint"]
       91 SETTABLEKS                       R7 R6 K18 ["AnchorPoint"]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K0 ["props"]
       96 GETTABLEKS                       R8 R8 K32 ["Width"]
       98 JUMPIFNOT                        R8 ; [+17]
       99 GETIMPORT                        R7 K31 [UDim2.new]
      101 LOADN                            R8 0
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K0 ["props"]
      105 GETTABLEKS                       R9 R9 K32 ["Width"]
      107 LOADN                            R10 0
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R12 R12 K0 ["props"]
      111 GETTABLEKS                       R12 R12 K34 ["Height"]
      113 ORK                              R11 R12 K33 [42]
      114 CALL                             R7 4 1
      115 JUMPIF                           R7 ; [+12]
      116 GETIMPORT                        R7 K31 [UDim2.new]
      118 LOADN                            R8 1
      119 LOADN                            R9 0
      120 LOADN                            R10 0
      121 GETUPVAL                         R12 0
      122 GETTABLEKS                       R12 R12 K0 ["props"]
      124 GETTABLEKS                       R12 R12 K34 ["Height"]
      126 ORK                              R11 R12 K33 [42]
      127 CALL                             R7 4 1
      128 SETTABLEKS                       R7 R6 K19 ["Size"]
      130 GETUPVAL                         R8 0
      131 GETTABLEKS                       R8 R8 K0 ["props"]
      133 GETTABLEKS                       R8 R8 K20 ["LayoutOrder"]
      135 ORK                              R7 R8 K35 [1]
      136 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
      138 GETUPVAL                         R8 0
      139 GETTABLEKS                       R8 R8 K0 ["props"]
      141 GETTABLEKS                       R8 R8 K36 ["ShowToolTip"]
      143 JUMPIFEQKNIL                     R8 ; [+7]
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R7 R7 K0 ["props"]
      148 GETTABLEKS                       R7 R7 K36 ["ShowToolTip"]
      150 JUMP                             ; [+1]
      151 LOADB                            R7 1
      152 LOADNIL                          R8
      153 JUMPIFNOT                        R0 ; [+27]
      154 JUMPIFNOT                        R4 ; [+12]
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R9 R9 K0 ["props"]
      158 GETTABLEKS                       R9 R9 K9 ["ErrorMessage"]
      160 JUMPIFNOT                        R9 ; [+6]
      161 GETUPVAL                         R9 0
      162 GETTABLEKS                       R9 R9 K0 ["props"]
      164 GETTABLEKS                       R8 R9 K9 ["ErrorMessage"]
      166 JUMP                             ; [+15]
      167 JUMPIF                           R7 ; [+1]
      168 JUMPIFNOT                        R4 ; [+9]
      169 MOVE                             R10 R3
      170 LOADK                            R11 K37 ["/"]
      171 GETUPVAL                         R12 0
      172 GETTABLEKS                       R12 R12 K0 ["props"]
      174 GETTABLEKS                       R12 R12 K10 ["MaxLength"]
      176 CONCAT                           R9 R10 R12
      177 JUMPIF                           R9 ; [+1]
      178 LOADK                            R9 K38 [""]
      179 MOVE                             R8 R9
      180 JUMP                             ; [+1]
      181 LOADK                            R8 K38 [""]
      182 LOADNIL                          R9
      183 JUMPIFNOT                        R0 ; [+10]
      184 JUMPIFNOT                        R4 ; [+2]
      185 GETUPVAL                         R9 3
      186 JUMP                             ; [+9]
      187 JUMPIFNOT                        R1 ; [+3]
      188 GETTABLEKS                       R9 R5 K39 ["BorderHoverColor"]
      190 JUMP                             ; [+5]
      191 GETTABLEKS                       R9 R5 K40 ["BorderDefaultColor"]
      193 JUMP                             ; [+2]
      194 GETTABLEKS                       R9 R5 K40 ["BorderDefaultColor"]
      196 DUPTABLE                         R10 K48 [{"Visible", "Enabled", "Text", "FocusChanged", "HoverChanged", "SetText", "TextColor3", "HorizontalAlignment", "PlaceholderText"}]
      197 GETUPVAL                         R11 0
      198 GETTABLEKS                       R11 R11 K0 ["props"]
      200 GETTABLEKS                       R11 R11 K1 ["Enabled"]
      202 JUMPIF                           R11 ; [+7]
      203 GETUPVAL                         R11 0
      204 GETTABLEKS                       R11 R11 K0 ["props"]
      206 GETTABLEKS                       R11 R11 K49 ["ShowTextWhenDisabled"]
      208 JUMPIF                           R11 ; [+1]
      209 LOADB                            R11 0
      210 SETTABLEKS                       R11 R10 K41 ["Visible"]
      212 GETUPVAL                         R11 0
      213 GETTABLEKS                       R11 R11 K0 ["props"]
      215 GETTABLEKS                       R11 R11 K1 ["Enabled"]
      217 SETTABLEKS                       R11 R10 K1 ["Enabled"]
      219 GETUPVAL                         R11 0
      220 GETTABLEKS                       R11 R11 K0 ["props"]
      222 GETTABLEKS                       R11 R11 K5 ["Text"]
      224 SETTABLEKS                       R11 R10 K5 ["Text"]
      226 GETUPVAL                         R11 0
      227 GETTABLEKS                       R11 R11 K50 ["focusChanged"]
      229 SETTABLEKS                       R11 R10 K42 ["FocusChanged"]
      231 GETUPVAL                         R11 0
      232 GETTABLEKS                       R11 R11 K51 ["mouseHoverChanged"]
      234 SETTABLEKS                       R11 R10 K43 ["HoverChanged"]
      236 GETUPVAL                         R11 0
      237 GETTABLEKS                       R11 R11 K0 ["props"]
      239 GETTABLEKS                       R11 R11 K44 ["SetText"]
      241 SETTABLEKS                       R11 R10 K44 ["SetText"]
      243 GETTABLEKS                       R11 R5 K52 ["TextColor"]
      245 SETTABLEKS                       R11 R10 K45 ["TextColor3"]
      247 GETUPVAL                         R11 0
      248 GETTABLEKS                       R11 R11 K0 ["props"]
      250 GETTABLEKS                       R11 R11 K46 ["HorizontalAlignment"]
      252 SETTABLEKS                       R11 R10 K46 ["HorizontalAlignment"]
      254 GETUPVAL                         R11 0
      255 GETTABLEKS                       R11 R11 K0 ["props"]
      257 GETTABLEKS                       R11 R11 K47 ["PlaceholderText"]
      259 SETTABLEKS                       R11 R10 K47 ["PlaceholderText"]
      261 LOADNIL                          R11
      262 JUMPIFNOT                        R2 ; [+8]
      263 GETUPVAL                         R12 4
      264 GETTABLEKS                       R12 R12 K53 ["createElement"]
      266 GETUPVAL                         R13 5
      267 MOVE                             R14 R10
      268 CALL                             R12 2 1
      269 MOVE                             R11 R12
      270 JUMP                             ; [+7]
      271 GETUPVAL                         R12 4
      272 GETTABLEKS                       R12 R12 K53 ["createElement"]
      274 GETUPVAL                         R13 6
      275 MOVE                             R14 R10
      276 CALL                             R12 2 1
      277 MOVE                             R11 R12
      278 GETUPVAL                         R12 4
      279 GETTABLEKS                       R12 R12 K53 ["createElement"]
      281 LOADK                            R13 K54 ["ImageLabel"]
      282 MOVE                             R14 R6
      283 DUPTABLE                         R15 K57 [{"Tooltip", "Border"}]
      284 GETUPVAL                         R16 4
      285 GETTABLEKS                       R16 R16 K53 ["createElement"]
      287 LOADK                            R17 K58 ["TextLabel"]
      288 DUPTABLE                         R18 K63 [{"BackgroundTransparency", "Position", "Size", "Font", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3", "Text", "Visible"}]
      289 LOADN                            R19 1
      290 SETTABLEKS                       R19 R18 K11 ["BackgroundTransparency"]
      292 GETIMPORT                        R19 K31 [UDim2.new]
      294 LOADN                            R20 0
      295 LOADN                            R21 2
      296 LOADN                            R22 1
      297 LOADN                            R23 2
      298 CALL                             R19 4 1
      299 SETTABLEKS                       R19 R18 K17 ["Position"]
      301 GETIMPORT                        R19 K31 [UDim2.new]
      303 LOADN                            R20 1
      304 LOADN                            R21 0
      305 LOADN                            R22 0
      306 LOADN                            R23 10
      307 CALL                             R19 4 1
      308 SETTABLEKS                       R19 R18 K19 ["Size"]
      310 GETIMPORT                        R19 K65 [Enum.Font.SourceSans]
      312 SETTABLEKS                       R19 R18 K59 ["Font"]
      314 LOADN                            R19 16
      315 SETTABLEKS                       R19 R18 K60 ["TextSize"]
      317 GETIMPORT                        R19 K67 [Enum.TextXAlignment.Left]
      319 SETTABLEKS                       R19 R18 K61 ["TextXAlignment"]
      321 GETIMPORT                        R19 K69 [Enum.TextYAlignment.Top]
      323 SETTABLEKS                       R19 R18 K62 ["TextYAlignment"]
      325 JUMPIFNOT                        R0 ; [+3]
      326 JUMPIFNOT                        R4 ; [+2]
      327 GETUPVAL                         R19 3
      328 JUMPIF                           R19 ; [+2]
      329 GETTABLEKS                       R19 R5 K70 ["TooltipColor"]
      331 SETTABLEKS                       R19 R18 K45 ["TextColor3"]
      333 SETTABLEKS                       R8 R18 K5 ["Text"]
      335 MOVE                             R19 R7
      336 JUMPIF                           R19 ; [+4]
      337 JUMPIFNOTEQKNIL                  R4 ; [+2]
      339 LOADB                            R19 0 +1
      340 LOADB                            R19 1
      341 SETTABLEKS                       R19 R18 K41 ["Visible"]
      343 CALL                             R16 2 1
      344 SETTABLEKS                       R16 R15 K55 ["Tooltip"]
      346 GETUPVAL                         R16 4
      347 GETTABLEKS                       R16 R16 K53 ["createElement"]
      349 LOADK                            R17 K54 ["ImageLabel"]
      350 DUPTABLE                         R18 K71 [{"Size", "BackgroundTransparency", "Image", "ImageColor3", "ScaleType", "SliceCenter"}]
      351 GETIMPORT                        R19 K31 [UDim2.new]
      353 LOADN                            R20 1
      354 LOADN                            R21 0
      355 LOADN                            R22 1
      356 LOADN                            R23 0
      357 CALL                             R19 4 1
      358 SETTABLEKS                       R19 R18 K19 ["Size"]
      360 LOADN                            R19 1
      361 SETTABLEKS                       R19 R18 K11 ["BackgroundTransparency"]
      363 GETUPVAL                         R19 2
      364 GETTABLEKS                       R19 R19 K72 ["ROUNDED_BORDER_IMAGE"]
      366 SETTABLEKS                       R19 R18 K12 ["Image"]
      368 SETTABLEKS                       R9 R18 K14 ["ImageColor3"]
      370 GETIMPORT                        R19 K27 [Enum.ScaleType.Slice]
      372 SETTABLEKS                       R19 R18 K15 ["ScaleType"]
      374 GETUPVAL                         R19 2
      375 GETTABLEKS                       R19 R19 K28 ["ROUNDED_FRAME_SLICE"]
      377 SETTABLEKS                       R19 R18 K16 ["SliceCenter"]
      379 DUPTABLE                         R19 K74 [{"Padding", "Text"}]
      380 GETUPVAL                         R20 4
      381 GETTABLEKS                       R20 R20 K53 ["createElement"]
      383 LOADK                            R21 K75 ["UIPadding"]
      384 DUPTABLE                         R22 K80 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      385 GETUPVAL                         R23 0
      386 GETTABLEKS                       R23 R23 K0 ["props"]
      388 GETTABLEKS                       R23 R23 K76 ["PaddingLeft"]
      390 JUMPIF                           R23 ; [+1]
      391 GETUPVAL                         R23 7
      392 SETTABLEKS                       R23 R22 K76 ["PaddingLeft"]
      394 GETUPVAL                         R23 0
      395 GETTABLEKS                       R23 R23 K0 ["props"]
      397 GETTABLEKS                       R23 R23 K77 ["PaddingRight"]
      399 JUMPIF                           R23 ; [+1]
      400 GETUPVAL                         R23 7
      401 SETTABLEKS                       R23 R22 K77 ["PaddingRight"]
      403 GETUPVAL                         R23 0
      404 GETTABLEKS                       R23 R23 K0 ["props"]
      406 GETTABLEKS                       R23 R23 K78 ["PaddingTop"]
      408 JUMPIF                           R23 ; [+1]
      409 GETUPVAL                         R23 7
      410 SETTABLEKS                       R23 R22 K78 ["PaddingTop"]
      412 GETUPVAL                         R23 0
      413 GETTABLEKS                       R23 R23 K0 ["props"]
      415 GETTABLEKS                       R23 R23 K79 ["PaddingBottom"]
      417 JUMPIF                           R23 ; [+1]
      418 GETUPVAL                         R23 7
      419 SETTABLEKS                       R23 R22 K79 ["PaddingBottom"]
      421 CALL                             R20 2 1
      422 SETTABLEKS                       R20 R19 K73 ["Padding"]
      424 SETTABLEKS                       R11 R19 K5 ["Text"]
      426 CALL                             R16 3 1
      427 SETTABLEKS                       R16 R15 K56 ["Border"]
      429 CALL                             R12 3 -1
      430 RETURN                           R12 -1

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
