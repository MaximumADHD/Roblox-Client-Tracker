PROTO_0:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 RETURN                           R3 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Error"]
        9 RETURN                           R3 1
       10 MOVE                             R3 R2
       11 JUMPIF                           R3 ; [+3]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["None"]
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"isHovered", "StyleModifier"}]
        2 SETTABLEKS                       R0 R3 K0 ["isHovered"]
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+2]
        6 LOADNIL                          R4
        7 JUMP                             ; [+12]
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["props"]
       13 GETTABLEKS                       R7 R7 K4 ["ErrorText"]
       15 JUMPIFNOTEQKNIL                  R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K1 ["StyleModifier"]
       22 NAMECALL                         R1 R1 K5 ["setState"]
       24 CALL                             R1 2 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["StyleModifier"]}]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADNIL                          R3
        5 JUMP                             ; [+12]
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 1
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["props"]
       11 GETTABLEKS                       R6 R6 K5 ["ErrorText"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = False, ["StyleModifier"]}]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+2]
        4 LOADNIL                          R3
        5 JUMP                             ; [+12]
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 0
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["props"]
       11 GETTABLEKS                       R6 R6 K5 ["ErrorText"]
       13 JUMPIFNOTEQKNIL                  R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K2 ["StyleModifier"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["Enabled"]
        9 JUMPIFNOTEQKB                    R3 TRUE ; [+6]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K4 [{["isOpen"] = True}]
       13 NAMECALL                         R3 R3 K5 ["setState"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+6]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["isOpen"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setState"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["isHovered"] = False}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 GETUPVAL                         R2 0
        8 JUMPIF                           R2 ; [+12]
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R2 R0 K5 ["mouseEnter"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R2 R0 K6 ["mouseLeave"]
       21 NEWCLOSURE                       R2 P3
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K7 ["onInputBegan"]
       26 NEWCLOSURE                       R2 P4
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K8 ["focusLost"]
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["isHovered"]
        3 GETTABLEKS                       R5 R0 K1 ["ErrorText"]
        5 JUMPIFNOTEQKNIL                  R5 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETTABLEKS                       R5 R0 K2 ["StyleModifier"]
       11 CALL                             R2 3 1
       12 GETTABLEKS                       R4 R1 K3 ["styleModifier"]
       14 JUMPIFNOTEQ                      R2 R4 ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 DUPTABLE                         R3 K4 [{"StyleModifier"}]
       19 SETTABLEKS                       R2 R3 K2 ["StyleModifier"]
       21 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOT                        R4 ; [+6]
        6 GETTABLEKS                       R3 R1 K2 ["Style"]
        8 JUMPIF                           R3 ; [+5]
        9 NEWTABLE                         R3 0 0
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
       14 GETTABLEKS                       R4 R1 K4 ["Items"]
       16 GETTABLEKS                       R5 R1 K5 ["Icons"]
       18 GETTABLEKS                       R6 R1 K6 ["TextWrapped"]
       20 GETTABLEKS                       R7 R1 K7 ["TextTruncate"]
       22 GETTABLEKS                       R9 R1 K8 ["Variant"]
       24 JUMPIFEQKS                       R9 K9 ["modern"] ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 GETTABLEKS                       R9 R2 K10 ["isOpen"]
       30 GETUPVAL                         R11 0
       31 JUMPIFNOT                        R11 ; [+13]
       32 LOADB                            R10 1
       33 GETTABLEKS                       R11 R1 K11 ["ErrorText"]
       35 JUMPIFNOTEQKNIL                  R11 ; [+15]
       37 GETUPVAL                         R10 1
       38 GETUPVAL                         R12 2
       39 GETTABLEKS                       R12 R12 K12 ["Tag"]
       41 GETTABLE                         R11 R1 R12
       42 LOADK                            R12 K13 ["Error"]
       43 CALL                             R10 2 1
       44 JUMP                             ; [+6]
       45 GETTABLEKS                       R11 R1 K11 ["ErrorText"]
       47 JUMPIFNOTEQKNIL                  R11 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 GETUPVAL                         R12 0
       52 JUMPIFNOT                        R12 ; [+3]
       53 GETTABLEKS                       R11 R1 K14 ["Size"]
       55 JUMP                             ; [+13]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R12 R1 K14 ["Size"]
       59 GETTABLEKS                       R13 R3 K14 ["Size"]
       61 GETIMPORT                        R14 K17 [UDim2.new]
       63 LOADN                            R15 1
       64 LOADN                            R16 0
       65 LOADN                            R17 1
       66 LOADN                            R18 0
       67 CALL                             R14 4 -1
       68 CALL                             R11 -1 1
       69 GETTABLEKS                       R12 R1 K18 ["Width"]
       71 JUMPIFNOT                        R12 ; [+46]
       72 GETUPVAL                         R12 0
       73 JUMPIFNOT                        R12 ; [+29]
       74 JUMPIFNOT                        R11 ; [+16]
       75 GETIMPORT                        R12 K17 [UDim2.new]
       77 LOADN                            R13 0
       78 GETTABLEKS                       R14 R1 K18 ["Width"]
       80 GETTABLEKS                       R15 R11 K19 ["Y"]
       82 GETTABLEKS                       R15 R15 K20 ["Scale"]
       84 GETTABLEKS                       R16 R11 K19 ["Y"]
       86 GETTABLEKS                       R16 R16 K21 ["Offset"]
       88 CALL                             R12 4 1
       89 MOVE                             R11 R12
       90 JUMP                             ; [+27]
       91 GETIMPORT                        R12 K23 [UDim2.fromOffset]
       93 GETTABLEKS                       R13 R1 K18 ["Width"]
       95 GETUPVAL                         R14 4
       96 LOADK                            R16 K24 ["Height"]
       97 NAMECALL                         R14 R14 K25 ["GetAttribute"]
       99 CALL                             R14 2 -1
      100 CALL                             R12 -1 1
      101 MOVE                             R11 R12
      102 JUMP                             ; [+15]
      103 GETIMPORT                        R12 K17 [UDim2.new]
      105 LOADN                            R13 0
      106 GETTABLEKS                       R14 R1 K18 ["Width"]
      108 GETTABLEKS                       R15 R11 K19 ["Y"]
      110 GETTABLEKS                       R15 R15 K20 ["Scale"]
      112 GETTABLEKS                       R16 R11 K19 ["Y"]
      114 GETTABLEKS                       R16 R16 K21 ["Offset"]
      116 CALL                             R12 4 1
      117 MOVE                             R11 R12
      118 GETTABLEKS                       R12 R1 K26 ["SelectedIndex"]
      120 GETTABLEKS                       R13 R1 K27 ["SelectedId"]
      122 JUMPIFEQKNIL                     R13 ; [+23]
      124 GETIMPORT                        R13 K29 [ipairs]
      126 MOVE                             R14 R4
      127 CALL                             R13 1 3
      128 FORGPREP_INEXT                   R13
      129 FASTCALL1                        TYPEOF R17 ; [+3]
      130 MOVE                             R19 R17
      131 GETIMPORT                        R18 K31 [typeof]
      133 CALL                             R18 1 1
      134 JUMPIFNOTEQKS                    R18 K32 ["table"] ; [+9]
      136 GETTABLEKS                       R18 R17 K33 ["Id"]
      138 GETTABLEKS                       R19 R1 K27 ["SelectedId"]
      140 JUMPIFNOTEQ                      R18 R19 ; [+3]
      142 MOVE                             R12 R16
      143 JUMP                             ; [+2]
      144 FORGLOOP                         R13 2 [inext] ; [-16]
      146 GETTABLEKS                       R13 R1 K34 ["HideIcon"]
      148 LOADNIL                          R14
      149 JUMPIF                           R13 ; [+8]
      150 JUMPIFNOT                        R5 ; [+7]
      151 JUMPIFNOT                        R12 ; [+5]
      152 GETTABLE                         R15 R5 R12
      153 JUMPIFEQKS                       R15 K35 [""] ; [+3]
      155 GETTABLE                         R14 R5 R12
      156 JUMP                             ; [+1]
      157 LOADNIL                          R14
      158 JUMPIF                           R14 ; [+10]
      159 GETUPVAL                         R16 0
      160 JUMPIFNOT                        R16 ; [+58]
      161 GETUPVAL                         R16 1
      162 GETUPVAL                         R18 2
      163 GETTABLEKS                       R18 R18 K12 ["Tag"]
      165 GETTABLE                         R17 R1 R18
      166 LOADK                            R18 K36 ["HasIcon"]
      167 CALL                             R16 2 1
      168 JUMPIFNOT                        R16 ; [+50]
      169 GETUPVAL                         R15 5
      170 GETTABLEKS                       R15 R15 K37 ["createElement"]
      172 GETUPVAL                         R17 0
      173 JUMPIFNOT                        R17 ; [+2]
      174 GETUPVAL                         R16 6
      175 JUMP                             ; [+1]
      176 LOADK                            R16 K38 ["ImageLabel"]
      177 GETUPVAL                         R18 0
      178 JUMPIFNOT                        R18 ; [+10]
      179 NEWTABLE                         R17 2 0
      181 SETTABLEKS                       R14 R17 K39 ["Image"]
      183 GETUPVAL                         R18 2
      184 GETTABLEKS                       R18 R18 K12 ["Tag"]
      186 LOADK                            R19 K40 ["Icon16 Primary"]
      187 SETTABLE                         R19 R17 R18
      188 JUMP                             ; [+28]
      189 DUPTABLE                         R17 K46 [{["AnchorPoint"], ["Position"], ["Size"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      190 GETIMPORT                        R18 K48 [Vector2.new]
      192 LOADN                            R19 0
      193 LOADK                            R20 K49 [0.5]
      194 CALL                             R18 2 1
      195 SETTABLEKS                       R18 R17 K41 ["AnchorPoint"]
      197 GETIMPORT                        R18 K17 [UDim2.new]
      199 LOADN                            R19 0
      200 GETTABLEKS                       R20 R3 K50 ["IconOffset"]
      202 LOADK                            R21 K49 [0.5]
      203 LOADN                            R22 0
      204 CALL                             R18 4 1
      205 SETTABLEKS                       R18 R17 K42 ["Position"]
      207 GETTABLEKS                       R18 R3 K51 ["IconSize"]
      209 SETTABLEKS                       R18 R17 K14 ["Size"]
      211 SETTABLEKS                       R14 R17 K39 ["Image"]
      213 GETTABLEKS                       R18 R3 K52 ["ArrowColor"]
      215 SETTABLEKS                       R18 R17 K43 ["ImageColor3"]
      217 CALL                             R15 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R15
      220 GETTABLEKS                       R16 R1 K53 ["HideText"]
      222 GETTABLEKS                       R17 R3 K54 ["BackgroundStyle"]
      224 LOADNIL                          R18
      225 JUMPIF                           R16 ; [+19]
      226 JUMPIFNOT                        R12 ; [+2]
      227 GETTABLE                         R19 R4 R12
      228 JUMP                             ; [+1]
      229 LOADNIL                          R19
      230 JUMPIFNOT                        R19 ; [+12]
      231 FASTCALL1                        TYPE R19 ; [+3]
      232 MOVE                             R21 R19
      233 GETIMPORT                        R20 K56 [type]
      235 CALL                             R20 1 1
      236 JUMPIFNOTEQKS                    R20 K32 ["table"] ; [+4]
      238 GETTABLEKS                       R18 R19 K57 ["Label"]
      240 JUMP                             ; [+4]
      241 MOVE                             R18 R19
      242 JUMP                             ; [+2]
      243 GETTABLEKS                       R18 R1 K58 ["PlaceholderText"]
      245 GETUPVAL                         R20 0
      246 JUMPIFNOT                        R20 ; [+6]
      247 GETUPVAL                         R19 4
      248 LOADK                            R21 K59 ["ArrowOffset"]
      249 NAMECALL                         R19 R19 K25 ["GetAttribute"]
      251 CALL                             R19 2 1
      252 JUMP                             ; [+9]
      253 GETTABLEKS                       R20 R3 K59 ["ArrowOffset"]
      255 GETTABLEKS                       R21 R3 K60 ["ArrowSize"]
      257 GETTABLEKS                       R21 R21 K61 ["X"]
      259 GETTABLEKS                       R21 R21 K21 ["Offset"]
      261 ADD                              R19 R20 R21
      262 JUMPIFNOT                        R14 ; [+18]
      263 GETUPVAL                         R21 0
      264 JUMPIFNOT                        R21 ; [+6]
      265 GETUPVAL                         R20 4
      266 LOADK                            R22 K50 ["IconOffset"]
      267 NAMECALL                         R20 R20 K25 ["GetAttribute"]
      269 CALL                             R20 2 1
      270 JUMP                             ; [+11]
      271 GETTABLEKS                       R21 R3 K50 ["IconOffset"]
      273 GETTABLEKS                       R22 R3 K51 ["IconSize"]
      275 GETTABLEKS                       R22 R22 K61 ["X"]
      277 GETTABLEKS                       R22 R22 K21 ["Offset"]
      279 ADD                              R20 R21 R22
      280 JUMP                             ; [+1]
      281 LOADN                            R20 0
      282 GETUPVAL                         R22 0
      283 JUMPIFNOT                        R22 ; [+7]
      284 GETUPVAL                         R22 4
      285 LOADK                            R24 K63 ["Padding"]
      286 NAMECALL                         R22 R22 K25 ["GetAttribute"]
      288 CALL                             R22 2 1
      289 ORK                              R21 R22 K62 [0]
      290 JUMP                             ; [+2]
      291 GETTABLEKS                       R21 R3 K63 ["Padding"]
      293 GETIMPORT                        R22 K17 [UDim2.new]
      295 LOADN                            R23 1
      296 ADD                              R26 R20 R19
      297 ADD                              R25 R26 R21
      298 MINUS                            R24 R25
      299 LOADN                            R25 1
      300 LOADN                            R26 -2
      301 CALL                             R22 4 1
      302 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      304 ADD                              R24 R21 R20
      305 LOADN                            R25 0
      306 CALL                             R23 2 1
      307 JUMPIFNOT                        R18 ; [+50]
      308 GETUPVAL                         R24 5
      309 GETTABLEKS                       R24 R24 K37 ["createElement"]
      311 GETUPVAL                         R25 7
      312 GETUPVAL                         R27 0
      313 JUMPIFNOT                        R27 ; [+20]
      314 NEWTABLE                         R26 4 0
      316 SETTABLEKS                       R18 R26 K64 ["Text"]
      318 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      320 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      322 GETUPVAL                         R27 2
      323 GETTABLEKS                       R27 R27 K12 ["Tag"]
      325 GETUPVAL                         R28 8
      326 LOADK                            R29 K65 ["Left"]
      327 JUMPIFNOT                        R8 ; [+2]
      328 LOADK                            R30 K66 ["Muted"]
      329 JUMP                             ; [+1]
      330 LOADK                            R30 K35 [""]
      331 CALL                             R28 2 1
      332 SETTABLE                         R28 R26 R27
      333 JUMP                             ; [+22]
      334 DUPTABLE                         R26 K69 [{"Position", "Size", "Text", "TextColor", "TextTruncate", "TextWrapped", "TextXAlignment"}]
      335 SETTABLEKS                       R23 R26 K42 ["Position"]
      337 SETTABLEKS                       R22 R26 K14 ["Size"]
      339 SETTABLEKS                       R18 R26 K64 ["Text"]
      341 JUMPIF                           R12 ; [+3]
      342 GETTABLEKS                       R27 R3 K70 ["PlaceholderTextColor"]
      344 JUMPIF                           R27 ; [+1]
      345 LOADNIL                          R27
      346 SETTABLEKS                       R27 R26 K67 ["TextColor"]
      348 SETTABLEKS                       R7 R26 K7 ["TextTruncate"]
      350 SETTABLEKS                       R6 R26 K6 ["TextWrapped"]
      352 GETIMPORT                        R27 K72 [Enum.TextXAlignment.Left]
      354 SETTABLEKS                       R27 R26 K68 ["TextXAlignment"]
      356 CALL                             R24 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R24
      359 GETUPVAL                         R25 5
      360 GETTABLEKS                       R25 R25 K37 ["createElement"]
      362 GETUPVAL                         R27 0
      363 JUMPIFNOT                        R27 ; [+2]
      364 GETUPVAL                         R26 6
      365 JUMP                             ; [+1]
      366 LOADK                            R26 K38 ["ImageLabel"]
      367 GETUPVAL                         R28 0
      368 JUMPIFNOT                        R28 ; [+12]
      369 NEWTABLE                         R27 2 0
      371 GETTABLEKS                       R28 R1 K73 ["ExpandIcon"]
      373 SETTABLEKS                       R28 R27 K39 ["Image"]
      375 GETUPVAL                         R28 2
      376 GETTABLEKS                       R28 R28 K12 ["Tag"]
      378 LOADK                            R29 K74 ["ArrowIcon Primary"]
      379 SETTABLE                         R29 R27 R28
      380 JUMP                             ; [+34]
      381 DUPTABLE                         R27 K75 [{["AnchorPoint"], ["Size"], ["Position"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1}]
      382 GETIMPORT                        R28 K48 [Vector2.new]
      384 LOADN                            R29 1
      385 LOADK                            R30 K49 [0.5]
      386 CALL                             R28 2 1
      387 SETTABLEKS                       R28 R27 K41 ["AnchorPoint"]
      389 GETTABLEKS                       R28 R3 K60 ["ArrowSize"]
      391 SETTABLEKS                       R28 R27 K14 ["Size"]
      393 GETIMPORT                        R28 K17 [UDim2.new]
      395 LOADN                            R29 1
      396 GETTABLEKS                       R31 R3 K59 ["ArrowOffset"]
      398 MINUS                            R30 R31
      399 LOADK                            R31 K49 [0.5]
      400 LOADN                            R32 0
      401 CALL                             R28 4 1
      402 SETTABLEKS                       R28 R27 K42 ["Position"]
      404 GETTABLEKS                       R28 R1 K73 ["ExpandIcon"]
      406 JUMPIF                           R28 ; [+2]
      407 GETTABLEKS                       R28 R3 K76 ["ArrowImage"]
      409 SETTABLEKS                       R28 R27 K39 ["Image"]
      411 GETTABLEKS                       R28 R3 K52 ["ArrowColor"]
      413 SETTABLEKS                       R28 R27 K43 ["ImageColor3"]
      415 CALL                             R25 2 1
      416 GETUPVAL                         R26 5
      417 GETTABLEKS                       R26 R26 K37 ["createElement"]
      419 GETUPVAL                         R27 9
      420 DUPTABLE                         R28 K85 [{"Width", "UseAutoWidth", "Hide", "Icons", "ItemHeight", "Items", "OnFocusLost", "OnItemActivated", "OnRenderItem", "OnMouseEnter", "OnMouseLeave", "Style", "TextWrapped", "Variant"}]
      421 GETTABLEKS                       R29 R1 K18 ["Width"]
      423 SETTABLEKS                       R29 R28 K18 ["Width"]
      425 GETTABLEKS                       R29 R1 K77 ["UseAutoWidth"]
      427 SETTABLEKS                       R29 R28 K77 ["UseAutoWidth"]
      429 NOT                              R29 R9
      430 SETTABLEKS                       R29 R28 K78 ["Hide"]
      432 SETTABLEKS                       R5 R28 K5 ["Icons"]
      434 GETTABLEKS                       R29 R1 K79 ["ItemHeight"]
      436 SETTABLEKS                       R29 R28 K79 ["ItemHeight"]
      438 SETTABLEKS                       R4 R28 K4 ["Items"]
      440 GETTABLEKS                       R29 R0 K86 ["focusLost"]
      442 SETTABLEKS                       R29 R28 K80 ["OnFocusLost"]
      444 GETTABLEKS                       R29 R1 K81 ["OnItemActivated"]
      446 SETTABLEKS                       R29 R28 K81 ["OnItemActivated"]
      448 GETTABLEKS                       R29 R1 K82 ["OnRenderItem"]
      450 SETTABLEKS                       R29 R28 K82 ["OnRenderItem"]
      452 GETTABLEKS                       R29 R1 K83 ["OnMouseEnter"]
      454 SETTABLEKS                       R29 R28 K83 ["OnMouseEnter"]
      456 GETTABLEKS                       R29 R1 K84 ["OnMouseLeave"]
      458 SETTABLEKS                       R29 R28 K84 ["OnMouseLeave"]
      460 JUMPIFNOT                        R8 ; [+2]
      461 LOADK                            R29 K87 ["Modern"]
      462 JUMP                             ; [+2]
      463 GETTABLEKS                       R29 R3 K88 ["DropdownMenu"]
      465 SETTABLEKS                       R29 R28 K2 ["Style"]
      467 SETTABLEKS                       R6 R28 K6 ["TextWrapped"]
      469 JUMPIFNOT                        R8 ; [+2]
      470 LOADK                            R29 K9 ["modern"]
      471 JUMP                             ; [+1]
      472 LOADNIL                          R29
      473 SETTABLEKS                       R29 R28 K8 ["Variant"]
      475 CALL                             R26 2 1
      476 NEWTABLE                         R27 8 0
      478 GETUPVAL                         R29 0
      479 JUMPIFNOT                        R29 ; [+2]
      480 LOADNIL                          R28
      481 JUMP                             ; [+1]
      482 LOADN                            R28 1
      483 SETTABLEKS                       R28 R27 K44 ["BackgroundTransparency"]
      485 GETUPVAL                         R29 0
      486 JUMPIFNOT                        R29 ; [+3]
      487 GETTABLEKS                       R28 R1 K14 ["Size"]
      489 JUMP                             ; [+5]
      490 GETIMPORT                        R28 K90 [UDim2.fromScale]
      492 LOADN                            R29 1
      493 LOADN                            R30 1
      494 CALL                             R28 2 1
      495 SETTABLEKS                       R28 R27 K14 ["Size"]
      497 GETUPVAL                         R28 5
      498 GETTABLEKS                       R28 R28 K91 ["Event"]
      500 GETTABLEKS                       R28 R28 K92 ["InputBegan"]
      502 GETTABLEKS                       R29 R0 K93 ["onInputBegan"]
      504 SETTABLE                         R29 R27 R28
      505 GETUPVAL                         R28 5
      506 GETTABLEKS                       R28 R28 K91 ["Event"]
      508 GETTABLEKS                       R28 R28 K94 ["MouseEnter"]
      510 GETTABLEKS                       R29 R0 K95 ["mouseEnter"]
      512 SETTABLE                         R29 R27 R28
      513 GETUPVAL                         R28 5
      514 GETTABLEKS                       R28 R28 K91 ["Event"]
      516 GETTABLEKS                       R28 R28 K96 ["MouseLeave"]
      518 GETTABLEKS                       R29 R0 K97 ["mouseLeave"]
      520 SETTABLE                         R29 R27 R28
      521 LOADNIL                          R28
      522 GETTABLEKS                       R29 R1 K98 ["ShowSelection"]
      524 JUMPIFNOT                        R29 ; [+76]
      525 LOADK                            R29 K35 [""]
      526 SETTABLEKS                       R29 R27 K64 ["Text"]
      528 LOADB                            R29 0
      529 SETTABLEKS                       R29 R27 K99 ["AutoButtonColor"]
      531 GETUPVAL                         R29 0
      532 JUMPIFNOT                        R29 ; [+37]
      533 GETUPVAL                         R29 2
      534 GETTABLEKS                       R29 R29 K12 ["Tag"]
      536 GETUPVAL                         R30 8
      537 JUMPIFNOT                        R14 ; [+2]
      538 LOADK                            R31 K36 ["HasIcon"]
      539 JUMP                             ; [+1]
      540 LOADNIL                          R31
      541 JUMPIF                           R12 ; [+2]
      542 LOADK                            R32 K100 ["Placeholder"]
      543 JUMP                             ; [+1]
      544 LOADNIL                          R32
      545 JUMPIFNOT                        R8 ; [+2]
      546 LOADK                            R33 K101 ["Component-SelectInput-Selection Row"]
      547 JUMP                             ; [+1]
      548 LOADK                            R33 K102 ["X-Input Row"]
      549 GETUPVAL                         R35 2
      550 GETTABLEKS                       R35 R35 K12 ["Tag"]
      552 GETTABLE                         R34 R1 R35
      553 JUMPIFNOT                        R9 ; [+2]
      554 LOADK                            R35 K103 ["X-Focus"]
      555 JUMP                             ; [+1]
      556 LOADNIL                          R35
      557 CALL                             R30 5 1
      558 SETTABLE                         R30 R27 R29
      559 DUPTABLE                         R29 K108 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow", "Menu"}]
      560 SETTABLEKS                       R15 R29 K104 ["SelectedItemIcon"]
      562 SETTABLEKS                       R24 R29 K105 ["SelectedItemText"]
      564 SETTABLEKS                       R25 R29 K106 ["SelectArrow"]
      566 SETTABLEKS                       R26 R29 K107 ["Menu"]
      568 MOVE                             R28 R29
      569 JUMP                             ; [+47]
      570 DUPTABLE                         R29 K110 [{"Input", "Menu"}]
      571 GETUPVAL                         R30 5
      572 GETTABLEKS                       R30 R30 K37 ["createElement"]
      574 GETUPVAL                         R31 10
      575 DUPTABLE                         R32 K113 [{"Background", "BackgroundStyle", "BackgroundStyleModifier"}]
      576 GETUPVAL                         R33 11
      577 SETTABLEKS                       R33 R32 K111 ["Background"]
      579 SETTABLEKS                       R17 R32 K54 ["BackgroundStyle"]
      581 GETTABLEKS                       R33 R0 K1 ["state"]
      583 GETTABLEKS                       R33 R33 K114 ["StyleModifier"]
      585 SETTABLEKS                       R33 R32 K112 ["BackgroundStyleModifier"]
      587 DUPTABLE                         R33 K115 [{"SelectedItemIcon", "SelectedItemText", "SelectArrow"}]
      588 SETTABLEKS                       R15 R33 K104 ["SelectedItemIcon"]
      590 SETTABLEKS                       R24 R33 K105 ["SelectedItemText"]
      592 SETTABLEKS                       R25 R33 K106 ["SelectArrow"]
      594 CALL                             R30 3 1
      595 SETTABLEKS                       R30 R29 K109 ["Input"]
      597 SETTABLEKS                       R26 R29 K107 ["Menu"]
      599 MOVE                             R28 R29
      600 JUMP                             ; [+16]
      601 DUPTABLE                         R29 K116 [{"Menu"}]
      602 SETTABLEKS                       R26 R29 K107 ["Menu"]
      604 MOVE                             R28 R29
      605 GETUPVAL                         R30 0
      606 JUMPIFNOT                        R30 ; [+3]
      607 GETTABLEKS                       R29 R1 K73 ["ExpandIcon"]
      609 JUMP                             ; [+5]
      610 GETTABLEKS                       R29 R1 K73 ["ExpandIcon"]
      612 JUMPIF                           R29 ; [+2]
      613 GETTABLEKS                       R29 R3 K76 ["ArrowImage"]
      615 SETTABLEKS                       R29 R27 K39 ["Image"]
      617 GETTABLEKS                       R30 R1 K117 ["Tooltip"]
      619 JUMPIFNOT                        R30 ; [+11]
      620 GETUPVAL                         R29 5
      621 GETTABLEKS                       R29 R29 K37 ["createElement"]
      623 GETUPVAL                         R30 12
      624 DUPTABLE                         R31 K118 [{"Text"}]
      625 GETTABLEKS                       R32 R1 K117 ["Tooltip"]
      627 SETTABLEKS                       R32 R31 K64 ["Text"]
      629 CALL                             R29 2 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R29
      632 SETTABLEKS                       R29 R28 K117 ["Tooltip"]
      634 GETTABLEKS                       R30 R1 K98 ["ShowSelection"]
      636 JUMPIFNOT                        R30 ; [+2]
      637 LOADK                            R29 K119 ["TextButton"]
      638 JUMP                             ; [+1]
      639 LOADK                            R29 K120 ["ImageButton"]
      640 DUPTABLE                         R30 K122 [{"SelectInput"}]
      641 GETUPVAL                         R31 5
      642 GETTABLEKS                       R31 R31 K37 ["createElement"]
      644 MOVE                             R32 R29
      645 MOVE                             R33 R27
      646 MOVE                             R34 R28
      647 CALL                             R31 3 1
      648 SETTABLEKS                       R31 R30 K121 ["SelectInput"]
      650 GETUPVAL                         R32 0
      651 JUMPIFNOT                        R32 ; [+6]
      652 GETUPVAL                         R31 4
      653 LOADK                            R33 K123 ["ErrorHeight"]
      654 NAMECALL                         R31 R31 K25 ["GetAttribute"]
      656 CALL                             R31 2 1
      657 JUMP                             ; [+4]
      658 GETTABLEKS                       R31 R3 K124 ["ErrorTextStyle"]
      660 GETTABLEKS                       R31 R31 K125 ["TextSize"]
      662 GETTABLEKS                       R32 R1 K11 ["ErrorText"]
      664 JUMPIFEQKNIL                     R32 ; [+95]
      666 GETUPVAL                         R32 0
      667 JUMPIFNOT                        R32 ; [+22]
      668 GETUPVAL                         R32 5
      669 GETTABLEKS                       R32 R32 K37 ["createElement"]
      671 GETUPVAL                         R33 7
      672 NEWTABLE                         R34 4 0
      674 LOADN                            R35 2
      675 SETTABLEKS                       R35 R34 K126 ["LayoutOrder"]
      677 GETTABLEKS                       R35 R1 K11 ["ErrorText"]
      679 SETTABLEKS                       R35 R34 K64 ["Text"]
      681 GETUPVAL                         R35 2
      682 GETTABLEKS                       R35 R35 K12 ["Tag"]
      684 LOADK                            R36 K127 ["Wrap Error X-Fit"]
      685 SETTABLE                         R36 R34 R35
      686 CALL                             R32 2 1
      687 SETTABLEKS                       R32 R30 K11 ["ErrorText"]
      689 JUMP                             ; [+70]
      690 DUPTABLE                         R32 K130 [{"UIListLayout", "Contents", "ErrorText"}]
      691 GETUPVAL                         R33 5
      692 GETTABLEKS                       R33 R33 K37 ["createElement"]
      694 LOADK                            R34 K128 ["UIListLayout"]
      695 DUPTABLE                         R35 K135 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      696 GETIMPORT                        R36 K137 [Enum.FillDirection.Vertical]
      698 SETTABLEKS                       R36 R35 K131 ["FillDirection"]
      700 GETIMPORT                        R36 K138 [Enum.HorizontalAlignment.Left]
      702 SETTABLEKS                       R36 R35 K132 ["HorizontalAlignment"]
      704 GETIMPORT                        R36 K140 [Enum.VerticalAlignment.Top]
      706 SETTABLEKS                       R36 R35 K133 ["VerticalAlignment"]
      708 GETIMPORT                        R36 K141 [Enum.SortOrder.LayoutOrder]
      710 SETTABLEKS                       R36 R35 K134 ["SortOrder"]
      712 CALL                             R33 2 1
      713 SETTABLEKS                       R33 R32 K128 ["UIListLayout"]
      715 GETUPVAL                         R33 5
      716 GETTABLEKS                       R33 R33 K37 ["createElement"]
      718 LOADK                            R34 K142 ["Frame"]
      719 DUPTABLE                         R35 K143 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
      720 GETIMPORT                        R36 K17 [UDim2.new]
      722 LOADN                            R37 1
      723 LOADN                            R38 0
      724 LOADN                            R39 1
      725 MINUS                            R40 R31
      726 CALL                             R36 4 1
      727 SETTABLEKS                       R36 R35 K14 ["Size"]
      729 MOVE                             R36 R30
      730 CALL                             R33 3 1
      731 SETTABLEKS                       R33 R32 K129 ["Contents"]
      733 GETUPVAL                         R33 5
      734 GETTABLEKS                       R33 R33 K37 ["createElement"]
      736 GETUPVAL                         R34 7
      737 DUPTABLE                         R35 K147 [{["AutomaticSize"], ["LayoutOrder"] = 2, ["Style"], ["Text"], ["TextWrapped"] = True}]
      738 GETIMPORT                        R36 K149 [Enum.AutomaticSize.XY]
      740 SETTABLEKS                       R36 R35 K144 ["AutomaticSize"]
      742 GETTABLEKS                       R36 R3 K124 ["ErrorTextStyle"]
      744 SETTABLEKS                       R36 R35 K2 ["Style"]
      746 GETTABLEKS                       R36 R1 K11 ["ErrorText"]
      748 SETTABLEKS                       R36 R35 K64 ["Text"]
      750 CALL                             R33 2 1
      751 SETTABLEKS                       R33 R32 K11 ["ErrorText"]
      753 MOVE                             R30 R32
      754 GETIMPORT                        R32 K23 [UDim2.fromOffset]
      756 LOADN                            R33 0
      757 MOVE                             R34 R31
      758 CALL                             R32 2 1
      759 ADD                              R11 R11 R32
      760 GETUPVAL                         R32 5
      761 GETTABLEKS                       R32 R32 K37 ["createElement"]
      763 GETUPVAL                         R34 0
      764 JUMPIFNOT                        R34 ; [+2]
      765 GETUPVAL                         R33 13
      766 JUMP                             ; [+1]
      767 LOADK                            R33 K142 ["Frame"]
      768 GETUPVAL                         R34 14
      769 DUPTABLE                         R35 K150 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Position"], ["Size"]}]
      770 GETTABLEKS                       R36 R1 K41 ["AnchorPoint"]
      772 SETTABLEKS                       R36 R35 K41 ["AnchorPoint"]
      774 GETTABLEKS                       R36 R1 K126 ["LayoutOrder"]
      776 SETTABLEKS                       R36 R35 K126 ["LayoutOrder"]
      778 GETTABLEKS                       R36 R1 K42 ["Position"]
      780 SETTABLEKS                       R36 R35 K42 ["Position"]
      782 SETTABLEKS                       R11 R35 K14 ["Size"]
      784 GETUPVAL                         R37 0
      785 JUMPIFNOT                        R37 ; [+18]
      786 NEWTABLE                         R36 1 0
      788 GETUPVAL                         R37 2
      789 GETTABLEKS                       R37 R37 K12 ["Tag"]
      791 GETUPVAL                         R38 8
      792 LOADK                            R39 K151 ["Component-SelectInput X-ColumnM"]
      793 JUMPIFNOT                        R10 ; [+2]
      794 LOADK                            R40 K152 ["HasError"]
      795 JUMP                             ; [+1]
      796 LOADNIL                          R40
      797 JUMPIFNOT                        R8 ; [+2]
      798 LOADK                            R41 K9 ["modern"]
      799 JUMP                             ; [+1]
      800 LOADNIL                          R41
      801 CALL                             R38 3 1
      802 SETTABLE                         R38 R36 R37
      803 JUMP                             ; [+1]
      804 LOADNIL                          R36
      805 CALL                             R34 2 1
      806 MOVE                             R35 R30
      807 CALL                             R32 3 -1
      808 RETURN                           R32 -1

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
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K11 ["join"]
       34 GETTABLEKS                       R7 R0 K4 ["Parent"]
       36 LOADK                            R9 K12 ["React"]
       37 NAMECALL                         R7 R7 K13 ["FindFirstChild"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R7 R0 K4 ["Parent"]
       45 GETTABLEKS                       R7 R7 K12 ["React"]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K14 ["Styling"]
       54 GETTABLEKS                       R8 R8 K15 ["supportsStyleSheets"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R0 K2 ["UI"]
       59 GETIMPORT                        R9 K6 [require]
       61 GETTABLEKS                       R10 R8 K16 ["Components"]
       63 GETTABLEKS                       R10 R10 K17 ["Container"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETTABLEKS                       R11 R8 K16 ["Components"]
       70 GETTABLEKS                       R11 R11 K18 ["DropdownMenu"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K6 [require]
       75 GETTABLEKS                       R12 R8 K16 ["Components"]
       77 GETTABLEKS                       R12 R12 K19 ["Image"]
       79 CALL                             R11 1 1
       80 GETIMPORT                        R12 K6 [require]
       82 GETTABLEKS                       R13 R8 K16 ["Components"]
       84 GETTABLEKS                       R13 R13 K20 ["Pane"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K6 [require]
       89 GETTABLEKS                       R14 R8 K16 ["Components"]
       91 GETTABLEKS                       R14 R14 K21 ["RoundBox"]
       93 CALL                             R13 1 1
       94 GETIMPORT                        R14 K6 [require]
       96 GETTABLEKS                       R15 R8 K16 ["Components"]
       98 GETTABLEKS                       R15 R15 K22 ["TextLabel"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K6 [require]
      103 GETTABLEKS                       R16 R8 K16 ["Components"]
      105 GETTABLEKS                       R16 R16 K23 ["Tooltip"]
      107 CALL                             R15 1 1
      108 GETIMPORT                        R16 K6 [require]
      110 GETTABLEKS                       R17 R0 K14 ["Styling"]
      112 GETTABLEKS                       R17 R17 K24 ["hasTag"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K6 [require]
      117 GETTABLEKS                       R18 R0 K14 ["Styling"]
      119 GETTABLEKS                       R18 R18 K25 ["joinTags"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K6 [require]
      124 GETTABLEKS                       R19 R0 K26 ["Util"]
      126 CALL                             R18 1 1
      127 GETTABLEKS                       R19 R18 K27 ["prioritize"]
      129 GETIMPORT                        R20 K6 [require]
      131 GETTABLEKS                       R21 R0 K26 ["Util"]
      133 GETTABLEKS                       R21 R21 K28 ["StyleModifier"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K6 [require]
      138 GETTABLEKS                       R22 R0 K26 ["Util"]
      140 GETTABLEKS                       R22 R22 K29 ["Typecheck"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K6 [require]
      145 GETIMPORT                        R23 K1 [script]
      147 GETTABLEKS                       R23 R23 K30 ["styles"]
      149 CALL                             R22 1 1
      150 GETTABLEKS                       R23 R1 K31 ["PureComponent"]
      152 LOADK                            R25 K32 ["SelectInput"]
      153 NAMECALL                         R23 R23 K33 ["extend"]
      155 CALL                             R23 2 1
      156 GETTABLEKS                       R24 R21 K34 ["wrap"]
      158 MOVE                             R25 R23
      159 GETIMPORT                        R26 K1 [script]
      161 CALL                             R24 2 0
      162 GETTABLEKS                       R24 R18 K35 ["isInputMainPress"]
      164 DUPTABLE                         R25 K39 [{["Enabled"] = True, ["ShowSelection"] = True}]
      165 SETTABLEKS                       R25 R23 K40 ["defaultProps"]
      167 LOADNIL                          R25
      168 JUMPIF                           R7 ; [+3]
      169 DUPCLOSURE                       R25 K41 [PROTO_0]
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R1
      172 NEWCLOSURE                       R26 P1
      173 CAPTURE                          VAL R7
      174 CAPTURE                          REF R25
      175 CAPTURE                          VAL R24
      176 SETTABLEKS                       R26 R23 K42 ["init"]
      178 JUMPIF                           R7 ; [+4]
      179 NEWCLOSURE                       R26 P2
      180 CAPTURE                          REF R25
      181 SETTABLEKS                       R26 R23 K43 ["getDerivedStateFromProps"]
      183 DUPCLOSURE                       R26 K44 [PROTO_8]
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R13
      196 CAPTURE                          VAL R15
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R5
      199 SETTABLEKS                       R26 R23 K45 ["render"]
      201 MOVE                             R26 R3
      202 DUPTABLE                         R27 K48 [{"Focus", "Stylizer"}]
      203 GETTABLEKS                       R28 R2 K46 ["Focus"]
      205 SETTABLEKS                       R28 R27 K46 ["Focus"]
      207 JUMPIFNOT                        R7 ; [+2]
      208 LOADNIL                          R28
      209 JUMP                             ; [+2]
      210 GETTABLEKS                       R28 R2 K47 ["Stylizer"]
      212 SETTABLEKS                       R28 R27 K47 ["Stylizer"]
      214 CALL                             R26 1 1
      215 MOVE                             R27 R23
      216 CALL                             R26 1 1
      217 MOVE                             R23 R26
      218 CLOSEUPVALS                      R25
      219 RETURN                           R23 1
