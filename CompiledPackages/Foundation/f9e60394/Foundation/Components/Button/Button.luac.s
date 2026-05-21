PROTO_0:
        0 GETIMPORT                        R1 K2 [NumberSequence.new]
        2 NEWTABLE                         R2 0 4
        4 GETIMPORT                        R3 K4 [NumberSequenceKeypoint.new]
        6 LOADN                            R4 0
        7 LOADN                            R5 0
        8 CALL                             R3 2 1
        9 GETIMPORT                        R4 K4 [NumberSequenceKeypoint.new]
       11 LOADN                            R6 0
       12 SUBK                             R7 R0 K5 [0.0001]
       13 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       15 GETIMPORT                        R5 K8 [math.max]
       17 CALL                             R5 2 1
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 GETIMPORT                        R5 K4 [NumberSequenceKeypoint.new]
       22 LOADN                            R7 1
       23 ADDK                             R8 R0 K5 [0.0001]
       24 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       26 GETIMPORT                        R6 K10 [math.min]
       28 CALL                             R6 2 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K11 ["DISABLED_TRANSPARENCY"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K4 [NumberSequenceKeypoint.new]
       35 LOADN                            R7 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K11 ["DISABLED_TRANSPARENCY"]
       39 CALL                             R6 2 -1
       40 SETLIST                          R2 R3 -1 [1]
       42 CALL                             R1 1 -1
       43 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+7]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R5 0
        5 SUBRK                            R4 R0 K5 [NULL]
        6 MUL                              R3 R4 R0
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1
        9 RETURN                           R0 1

PROTO_2:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 NAMECALL                         R2 R1 K0 ["map"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+8]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["instant"]
        7 LOADN                            R2 0
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+19]
        9 GETUPVAL                         R0 1
       10 LOADB                            R1 1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K0 ["ease"]
       16 LOADN                            R2 1
       17 DUPTABLE                         R3 K3 [{"duration", "easingStyle"}]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K1 ["duration"]
       21 GETIMPORT                        R4 K7 [Enum.EasingStyle.Quad]
       23 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       25 CALL                             R1 2 1
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isLoading"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Loading"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Disabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K7 ["container"]
        7 GETTABLEKS                       R3 R3 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K8 ["Size"]
       15 GETTABLEKS                       R1 R1 K9 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K10 ["Stroke"]
       22 GETTABLEKS                       R1 R1 K11 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["variant"]
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 JUMPIFNOT                        R2 ; [+17]
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETIMPORT                        R2 K3 [table.find]
       10 GETTABLEKS                       R3 R1 K4 ["controlState"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+9]
       15 GETTABLEKS                       R2 R1 K5 ["format"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["text"]
       20 NAMECALL                         R2 R2 K5 ["format"]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K6 ["text"]
       27 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["container"]
        4 GETTABLEKS                       R2 R2 K4 ["style"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["content"]
        4 GETTABLEKS                       R2 R2 K4 ["style"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_12:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["content"]
        6 GETTABLEKS                       R4 R4 K4 ["style"]
        8 GETTABLEKS                       R4 R4 K0 ["Color3"]
       10 SETTABLEKS                       R4 R3 K0 ["Color3"]
       12 ADD                              R4 R2 R1
       13 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       15 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["inputDelay"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["useBinding"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R5 R5 K2 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K3 ["useState"]
       16 LOADN                            R8 0
       17 JUMPIFLT                         R8 R3 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R8 R8 K4 ["useAnimatedBinding"]
       25 LOADN                            R9 0
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R7
       28 CALL                             R8 2 2
       29 GETTABLEKS                       R10 R2 K5 ["icon"]
       31 JUMPIFNOT                        R10 ; [+4]
       32 GETUPVAL                         R11 5
       33 GETTABLEKS                       R12 R2 K5 ["icon"]
       35 GETTABLE                         R10 R11 R12
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       39 NEWCLOSURE                       R12 P1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R9
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R13 0 1
       45 MOVE                             R14 R6
       46 SETLIST                          R13 R14 1 [1]
       48 CALL                             R11 2 0
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K6 ["useEffect"]
       52 NEWCLOSURE                       R12 P2
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R9
       57 CAPTURE                          UPVAL U4
       58 NEWTABLE                         R13 0 1
       60 MOVE                             R14 R3
       61 SETLIST                          R13 R14 1 [1]
       63 CALL                             R11 2 0
       64 GETUPVAL                         R11 6
       65 CALL                             R11 0 1
       66 GETUPVAL                         R12 7
       67 CALL                             R12 0 1
       68 GETUPVAL                         R13 8
       69 MOVE                             R14 R11
       70 GETTABLEKS                       R15 R2 K7 ["size"]
       72 GETTABLEKS                       R16 R2 K8 ["variant"]
       74 JUMPIFNOT                        R12 ; [+3]
       75 GETTABLEKS                       R17 R12 K9 ["colorMode"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R17
       79 CALL                             R13 4 1
       80 GETUPVAL                         R14 9
       81 GETTABLEKS                       R15 R13 K10 ["content"]
       83 GETTABLEKS                       R15 R15 K11 ["style"]
       85 GETTABLEKS                       R15 R15 K12 ["Transparency"]
       87 GETUPVAL                         R16 10
       88 GETTABLEKS                       R16 R16 K13 ["DISABLED_TRANSPARENCY"]
       90 CALL                             R14 2 1
       91 GETUPVAL                         R15 11
       92 GETTABLEKS                       R16 R14 K14 ["Default"]
       94 CALL                             R15 1 2
       95 GETUPVAL                         R17 11
       96 GETTABLEKS                       R18 R14 K14 ["Default"]
       98 CALL                             R17 1 2
       99 GETUPVAL                         R19 2
      100 GETTABLEKS                       R19 R19 K6 ["useEffect"]
      102 NEWCLOSURE                       R20 P3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R14
      106 NEWTABLE                         R21 0 1
      108 GETTABLEKS                       R22 R2 K15 ["isLoading"]
      110 SETLIST                          R21 R22 1 [1]
      112 CALL                             R19 2 0
      113 GETUPVAL                         R19 2
      114 GETTABLEKS                       R19 R19 K6 ["useEffect"]
      116 NEWCLOSURE                       R20 P4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R14
      120 NEWTABLE                         R21 0 1
      122 GETTABLEKS                       R22 R2 K16 ["isDisabled"]
      124 SETLIST                          R21 R22 1 [1]
      126 CALL                             R19 2 0
      127 GETUPVAL                         R19 2
      128 GETTABLEKS                       R19 R19 K17 ["useMemo"]
      130 NEWCLOSURE                       R20 P5
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R11
      133 NEWTABLE                         R21 0 2
      135 MOVE                             R22 R11
      136 GETTABLEKS                       R23 R13 K18 ["container"]
      138 GETTABLEKS                       R23 R23 K19 ["radius"]
      140 SETLIST                          R21 R22 2 [1]
      142 CALL                             R19 2 1
      143 GETTABLEKS                       R20 R2 K20 ["text"]
      145 JUMPIFNOT                        R20 ; [+6]
      146 GETTABLEKS                       R21 R2 K20 ["text"]
      148 JUMPIFNOTEQKS                    R21 K21 [""] ; [+2]
      150 LOADB                            R20 0 +1
      151 LOADB                            R20 1
      152 GETUPVAL                         R21 2
      153 GETTABLEKS                       R21 R21 K22 ["useCallback"]
      155 NEWCLOSURE                       R22 P6
      156 CAPTURE                          UPVAL U12
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R20
      159 NEWTABLE                         R23 0 3
      161 GETTABLEKS                       R24 R2 K20 ["text"]
      163 GETTABLEKS                       R25 R2 K8 ["variant"]
      165 MOVE                             R26 R20
      166 SETLIST                          R23 R24 3 [1]
      168 CALL                             R21 2 1
      169 GETUPVAL                         R22 2
      170 GETTABLEKS                       R22 R22 K23 ["createElement"]
      172 GETUPVAL                         R23 13
      173 GETUPVAL                         R24 14
      174 MOVE                             R25 R2
      175 DUPTABLE                         R26 K37 [{"AutomaticSize", "cornerRadius", "backgroundStyle", "flexItem", "stroke", "Size", "selection", "cursor", "onActivated", "onStateChanged", "isDisabled", "stateLayer", "tag", "ref"}]
      176 GETTABLEKS                       R28 R2 K38 ["width"]
      178 GETTABLEKS                       R28 R28 K39 ["Scale"]
      180 JUMPIFNOTEQKN                    R28 K40 [0] ; [+10]
      182 GETTABLEKS                       R28 R2 K38 ["width"]
      184 GETTABLEKS                       R28 R28 K41 ["Offset"]
      186 JUMPIFNOTEQKN                    R28 K40 [0] ; [+4]
      188 GETIMPORT                        R27 K44 [Enum.AutomaticSize.X]
      190 JUMP                             ; [+1]
      191 LOADNIL                          R27
      192 SETTABLEKS                       R27 R26 K24 ["AutomaticSize"]
      194 GETIMPORT                        R27 K47 [UDim.new]
      196 LOADN                            R28 0
      197 GETTABLEKS                       R29 R13 K18 ["container"]
      199 GETTABLEKS                       R29 R29 K19 ["radius"]
      201 CALL                             R27 2 1
      202 SETTABLEKS                       R27 R26 K25 ["cornerRadius"]
      204 GETTABLEKS                       R28 R13 K18 ["container"]
      206 GETTABLEKS                       R28 R28 K11 ["style"]
      208 JUMPIFNOT                        R28 ; [+20]
      209 GETTABLEKS                       R28 R13 K18 ["container"]
      211 GETTABLEKS                       R28 R28 K11 ["style"]
      213 GETTABLEKS                       R28 R28 K12 ["Transparency"]
      215 GETTABLEKS                       R29 R15 K48 ["transparency"]
      217 NEWCLOSURE                       R32 P7
      218 CAPTURE                          VAL R28
      219 NAMECALL                         R30 R29 K49 ["map"]
      221 CALL                             R30 2 1
      222 MOVE                             R27 R30
      223 NEWCLOSURE                       R29 P8
      224 CAPTURE                          VAL R13
      225 NAMECALL                         R27 R27 K49 ["map"]
      227 CALL                             R27 2 1
      228 JUMP                             ; [+1]
      229 LOADNIL                          R27
      230 SETTABLEKS                       R27 R26 K26 ["backgroundStyle"]
      232 GETTABLEKS                       R28 R2 K50 ["fillBehavior"]
      234 JUMPIFNOT                        R28 ; [+16]
      235 DUPTABLE                         R27 K52 [{"FlexMode"}]
      236 GETTABLEKS                       R29 R2 K50 ["fillBehavior"]
      238 GETUPVAL                         R30 15
      239 GETTABLEKS                       R30 R30 K53 ["Fill"]
      241 JUMPIFNOTEQ                      R29 R30 ; [+4]
      243 GETIMPORT                        R28 K55 [Enum.UIFlexMode.Fill]
      245 JUMP                             ; [+2]
      246 GETIMPORT                        R28 K57 [Enum.UIFlexMode.Shrink]
      248 SETTABLEKS                       R28 R27 K51 ["FlexMode"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R27
      252 SETTABLEKS                       R27 R26 K27 ["flexItem"]
      254 GETTABLEKS                       R28 R13 K18 ["container"]
      256 GETTABLEKS                       R28 R28 K28 ["stroke"]
      258 JUMPIFNOT                        R28 ; [+26]
      259 DUPTABLE                         R27 K59 [{"Color", "Transparency"}]
      260 GETTABLEKS                       R28 R13 K18 ["container"]
      262 GETTABLEKS                       R28 R28 K28 ["stroke"]
      264 GETTABLEKS                       R28 R28 K58 ["Color"]
      266 SETTABLEKS                       R28 R27 K58 ["Color"]
      268 GETTABLEKS                       R29 R13 K18 ["container"]
      270 GETTABLEKS                       R29 R29 K28 ["stroke"]
      272 GETTABLEKS                       R29 R29 K12 ["Transparency"]
      274 GETTABLEKS                       R30 R15 K48 ["transparency"]
      276 NEWCLOSURE                       R33 P7
      277 CAPTURE                          VAL R29
      278 NAMECALL                         R31 R30 K49 ["map"]
      280 CALL                             R31 2 1
      281 MOVE                             R28 R31
      282 SETTABLEKS                       R28 R27 K12 ["Transparency"]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R27
      286 SETTABLEKS                       R27 R26 K28 ["stroke"]
      288 GETIMPORT                        R27 K61 [UDim2.new]
      290 GETTABLEKS                       R29 R2 K50 ["fillBehavior"]
      292 GETUPVAL                         R30 15
      293 GETTABLEKS                       R30 R30 K53 ["Fill"]
      295 JUMPIFNOTEQ                      R29 R30 ; [+3]
      297 LOADN                            R28 1
      298 JUMP                             ; [+4]
      299 GETTABLEKS                       R28 R2 K38 ["width"]
      301 GETTABLEKS                       R28 R28 K39 ["Scale"]
      303 GETTABLEKS                       R30 R2 K50 ["fillBehavior"]
      305 GETUPVAL                         R31 15
      306 GETTABLEKS                       R31 R31 K53 ["Fill"]
      308 JUMPIFNOTEQ                      R30 R31 ; [+3]
      310 LOADN                            R29 0
      311 JUMP                             ; [+4]
      312 GETTABLEKS                       R29 R2 K38 ["width"]
      314 GETTABLEKS                       R29 R29 K41 ["Offset"]
      316 LOADN                            R30 0
      317 GETTABLEKS                       R31 R13 K18 ["container"]
      319 GETTABLEKS                       R31 R31 K62 ["height"]
      321 CALL                             R27 4 1
      322 SETTABLEKS                       R27 R26 K29 ["Size"]
      324 DUPTABLE                         R27 K68 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      325 GETTABLEKS                       R29 R2 K16 ["isDisabled"]
      327 JUMPIFNOT                        R29 ; [+2]
      328 LOADB                            R28 0
      329 JUMP                             ; [+2]
      330 GETTABLEKS                       R28 R2 K63 ["Selectable"]
      332 SETTABLEKS                       R28 R27 K63 ["Selectable"]
      334 GETTABLEKS                       R28 R2 K64 ["NextSelectionUp"]
      336 SETTABLEKS                       R28 R27 K64 ["NextSelectionUp"]
      338 GETTABLEKS                       R28 R2 K65 ["NextSelectionDown"]
      340 SETTABLEKS                       R28 R27 K65 ["NextSelectionDown"]
      342 GETTABLEKS                       R28 R2 K66 ["NextSelectionLeft"]
      344 SETTABLEKS                       R28 R27 K66 ["NextSelectionLeft"]
      346 GETTABLEKS                       R28 R2 K67 ["NextSelectionRight"]
      348 SETTABLEKS                       R28 R27 K67 ["NextSelectionRight"]
      350 SETTABLEKS                       R27 R26 K30 ["selection"]
      352 SETTABLEKS                       R19 R26 K31 ["cursor"]
      354 GETTABLEKS                       R27 R2 K32 ["onActivated"]
      356 SETTABLEKS                       R27 R26 K32 ["onActivated"]
      358 SETTABLEKS                       R5 R26 K33 ["onStateChanged"]
      360 GETTABLEKS                       R27 R2 K16 ["isDisabled"]
      362 JUMPIF                           R27 ; [+4]
      363 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      365 JUMPIF                           R27 ; [+1]
      366 MOVE                             R27 R6
      367 SETTABLEKS                       R27 R26 K16 ["isDisabled"]
      369 GETTABLEKS                       R27 R13 K18 ["container"]
      371 GETTABLEKS                       R27 R27 K34 ["stateLayer"]
      373 SETTABLEKS                       R27 R26 K34 ["stateLayer"]
      375 GETTABLEKS                       R27 R13 K18 ["container"]
      377 GETTABLEKS                       R27 R27 K35 ["tag"]
      379 SETTABLEKS                       R27 R26 K35 ["tag"]
      381 SETTABLEKS                       R1 R26 K36 ["ref"]
      383 CALL                             R24 2 1
      384 DUPTABLE                         R25 K73 [{"Loading", "IconWrapper", "Text", "Gradient"}]
      385 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      387 JUMPIFNOT                        R27 ; [+73]
      388 GETUPVAL                         R26 2
      389 GETTABLEKS                       R26 R26 K23 ["createElement"]
      391 LOADK                            R27 K74 ["Folder"]
      392 NEWTABLE                         R28 0 0
      394 DUPTABLE                         R29 K76 [{"PresenceWrapper"}]
      395 GETUPVAL                         R30 2
      396 GETTABLEKS                       R30 R30 K23 ["createElement"]
      398 GETUPVAL                         R31 16
      399 NEWTABLE                         R32 0 0
      401 DUPTABLE                         R33 K78 [{"Spinner"}]
      402 GETUPVAL                         R34 2
      403 GETTABLEKS                       R34 R34 K23 ["createElement"]
      405 GETUPVAL                         R35 17
      406 DUPTABLE                         R36 K80 [{"Size", "style", "testId"}]
      407 GETTABLEKS                       R38 R13 K5 ["icon"]
      409 GETTABLEKS                       R38 R38 K7 ["size"]
      411 GETUPVAL                         R40 18
      412 GETTABLEKS                       R40 R40 K81 ["FoundationUsePath2DSpinner"]
      414 JUMPIFNOT                        R40 ; [+12]
      415 GETIMPORT                        R39 K83 [UDim2.fromOffset]
      417 GETTABLEKS                       R40 R11 K84 ["Padding"]
      419 GETTABLEKS                       R40 R40 K85 ["XSmall"]
      421 GETTABLEKS                       R41 R11 K84 ["Padding"]
      423 GETTABLEKS                       R41 R41 K85 ["XSmall"]
      425 CALL                             R39 2 1
      426 JUMP                             ; [+5]
      427 GETIMPORT                        R39 K83 [UDim2.fromOffset]
      429 LOADN                            R40 0
      430 LOADN                            R41 0
      431 CALL                             R39 2 1
      432 SUB                              R37 R38 R39
      433 SETTABLEKS                       R37 R36 K29 ["Size"]
      435 GETTABLEKS                       R37 R15 K48 ["transparency"]
      437 NEWCLOSURE                       R39 P9
      438 CAPTURE                          VAL R13
      439 NAMECALL                         R37 R37 K49 ["map"]
      441 CALL                             R37 2 1
      442 SETTABLEKS                       R37 R36 K11 ["style"]
      444 LOADK                            R38 K86 ["%*--spinner"]
      445 GETTABLEKS                       R40 R2 K79 ["testId"]
      447 NAMECALL                         R38 R38 K87 ["format"]
      449 CALL                             R38 2 1
      450 MOVE                             R37 R38
      451 SETTABLEKS                       R37 R36 K79 ["testId"]
      453 CALL                             R34 2 1
      454 SETTABLEKS                       R34 R33 K77 ["Spinner"]
      456 CALL                             R30 3 1
      457 SETTABLEKS                       R30 R29 K75 ["PresenceWrapper"]
      459 CALL                             R26 3 1
      460 JUMP                             ; [+1]
      461 LOADNIL                          R26
      462 SETTABLEKS                       R26 R25 K69 ["Loading"]
      464 GETTABLEKS                       R27 R2 K5 ["icon"]
      466 JUMPIFNOT                        R27 ; [+80]
      467 GETUPVAL                         R26 2
      468 GETTABLEKS                       R26 R26 K23 ["createElement"]
      470 GETUPVAL                         R27 13
      471 DUPTABLE                         R28 K89 [{"Size", "LayoutOrder", "testId"}]
      472 GETTABLEKS                       R30 R2 K5 ["icon"]
      474 JUMPIFNOT                        R30 ; [+5]
      475 GETTABLEKS                       R29 R13 K5 ["icon"]
      477 GETTABLEKS                       R29 R29 K7 ["size"]
      479 JUMP                             ; [+1]
      480 LOADNIL                          R29
      481 SETTABLEKS                       R29 R28 K29 ["Size"]
      483 GETTABLEKS                       R30 R2 K5 ["icon"]
      485 JUMPIFNOT                        R30 ; [+5]
      486 JUMPIFNOT                        R10 ; [+2]
      487 LOADN                            R29 3
      488 JUMP                             ; [+3]
      489 LOADN                            R29 1
      490 JUMP                             ; [+1]
      491 LOADNIL                          R29
      492 SETTABLEKS                       R29 R28 K88 ["LayoutOrder"]
      494 GETTABLEKS                       R30 R2 K5 ["icon"]
      496 JUMPIFNOT                        R30 ; [+8]
      497 LOADK                            R30 K90 ["%*--icon-wrapper"]
      498 GETTABLEKS                       R32 R2 K79 ["testId"]
      500 NAMECALL                         R30 R30 K87 ["format"]
      502 CALL                             R30 2 1
      503 MOVE                             R29 R30
      504 JUMP                             ; [+1]
      505 LOADNIL                          R29
      506 SETTABLEKS                       R29 R28 K79 ["testId"]
      508 DUPTABLE                         R29 K92 [{"Icon"}]
      509 GETUPVAL                         R30 2
      510 GETTABLEKS                       R30 R30 K23 ["createElement"]
      512 GETUPVAL                         R31 19
      513 DUPTABLE                         R32 K95 [{"icon", "isLoading", "variant", "size", "disabledTransparencyBinding", "textTransparencyBinding", "testId"}]
      514 GETTABLEKS                       R33 R2 K5 ["icon"]
      516 SETTABLEKS                       R33 R32 K5 ["icon"]
      518 GETTABLEKS                       R33 R2 K15 ["isLoading"]
      520 SETTABLEKS                       R33 R32 K15 ["isLoading"]
      522 GETTABLEKS                       R33 R2 K8 ["variant"]
      524 SETTABLEKS                       R33 R32 K8 ["variant"]
      526 GETTABLEKS                       R33 R2 K7 ["size"]
      528 SETTABLEKS                       R33 R32 K7 ["size"]
      530 GETTABLEKS                       R33 R15 K48 ["transparency"]
      532 SETTABLEKS                       R33 R32 K93 ["disabledTransparencyBinding"]
      534 GETTABLEKS                       R33 R17 K96 ["textTransparency"]
      536 SETTABLEKS                       R33 R32 K94 ["textTransparencyBinding"]
      538 GETTABLEKS                       R33 R2 K79 ["testId"]
      540 SETTABLEKS                       R33 R32 K79 ["testId"]
      542 CALL                             R30 2 1
      543 SETTABLEKS                       R30 R29 K91 ["Icon"]
      545 CALL                             R26 3 1
      546 JUMP                             ; [+1]
      547 LOADNIL                          R26
      548 SETTABLEKS                       R26 R25 K70 ["IconWrapper"]
      550 JUMPIFNOT                        R20 ; [+61]
      551 GETUPVAL                         R26 2
      552 GETTABLEKS                       R26 R26 K23 ["createElement"]
      554 GETUPVAL                         R27 20
      555 DUPTABLE                         R28 K99 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      556 MOVE                             R31 R21
      557 NAMECALL                         R29 R4 K49 ["map"]
      559 CALL                             R29 2 1
      560 SETTABLEKS                       R29 R28 K71 ["Text"]
      562 GETUPVAL                         R31 12
      563 GETTABLEKS                       R32 R2 K8 ["variant"]
      565 GETTABLE                         R30 R31 R32
      566 JUMPIFEQKNIL                     R30 ; [+3]
      568 LOADB                            R29 1
      569 JUMP                             ; [+1]
      570 LOADB                            R29 0
      571 SETTABLEKS                       R29 R28 K97 ["RichText"]
      573 GETTABLEKS                       R29 R13 K20 ["text"]
      575 GETTABLEKS                       R29 R29 K35 ["tag"]
      577 SETTABLEKS                       R29 R28 K35 ["tag"]
      579 GETUPVAL                         R29 2
      580 GETTABLEKS                       R29 R29 K100 ["joinBindings"]
      582 NEWTABLE                         R30 0 2
      584 GETTABLEKS                       R31 R15 K48 ["transparency"]
      586 GETTABLEKS                       R32 R17 K96 ["textTransparency"]
      588 SETLIST                          R30 R31 2 [1]
      590 CALL                             R29 1 1
      591 NEWCLOSURE                       R31 P10
      592 CAPTURE                          VAL R13
      593 NAMECALL                         R29 R29 K49 ["map"]
      595 CALL                             R29 2 1
      596 SETTABLEKS                       R29 R28 K98 ["textStyle"]
      598 LOADN                            R29 2
      599 SETTABLEKS                       R29 R28 K88 ["LayoutOrder"]
      601 LOADK                            R30 K101 ["%*--text"]
      602 GETTABLEKS                       R32 R2 K79 ["testId"]
      604 NAMECALL                         R30 R30 K87 ["format"]
      606 CALL                             R30 2 1
      607 MOVE                             R29 R30
      608 SETTABLEKS                       R29 R28 K79 ["testId"]
      610 CALL                             R26 2 1
      611 JUMP                             ; [+1]
      612 LOADNIL                          R26
      613 SETTABLEKS                       R26 R25 K71 ["Text"]
      615 JUMPIFNOT                        R6 ; [+13]
      616 GETUPVAL                         R26 2
      617 GETTABLEKS                       R26 R26 K23 ["createElement"]
      619 LOADK                            R27 K102 ["UIGradient"]
      620 DUPTABLE                         R28 K103 [{"Transparency"}]
      621 GETUPVAL                         R31 21
      622 NAMECALL                         R29 R8 K49 ["map"]
      624 CALL                             R29 2 1
      625 SETTABLEKS                       R29 R28 K12 ["Transparency"]
      627 CALL                             R26 2 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R26
      630 SETTABLEKS                       R26 R25 K72 ["Gradient"]
      632 CALL                             R22 3 -1
      633 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Motion"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["useMotion"]
       16 GETTABLEKS                       R4 R2 K9 ["AnimatePresence"]
       18 GETIMPORT                        R5 K6 [require]
       20 GETTABLEKS                       R6 R1 K10 ["React"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R1 K11 ["ReactOtter"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K6 [require]
       30 GETTABLEKS                       R8 R0 K12 ["Enums"]
       32 GETTABLEKS                       R8 R8 K13 ["InputSize"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R9 R9 K4 ["Parent"]
       41 GETTABLEKS                       R9 R9 K14 ["Spinner"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K6 [require]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R10 R10 K4 ["Parent"]
       50 GETTABLEKS                       R10 R10 K15 ["endAlignedIcons"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R11 R0 K12 ["Enums"]
       57 GETTABLEKS                       R11 R11 K16 ["ButtonVariant"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETIMPORT                        R12 K1 [script]
       64 GETTABLEKS                       R12 R12 K4 ["Parent"]
       66 GETTABLEKS                       R12 R12 K17 ["Types"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R13 R0 K12 ["Enums"]
       73 GETTABLEKS                       R13 R13 K18 ["FillBehavior"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K6 [require]
       78 GETTABLEKS                       R14 R0 K12 ["Enums"]
       80 GETTABLEKS                       R14 R14 K19 ["ControlState"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETIMPORT                        R15 K1 [script]
       87 GETTABLEKS                       R15 R15 K4 ["Parent"]
       89 GETTABLEKS                       R15 R15 K20 ["ButtonIcon"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K21 ["Components"]
       96 GETTABLEKS                       R16 R16 K22 ["Text"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R17 R0 K21 ["Components"]
      103 GETTABLEKS                       R17 R17 K17 ["Types"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R18 R0 K21 ["Components"]
      110 GETTABLEKS                       R18 R18 K23 ["View"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R19 R0 K24 ["Constants"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K6 [require]
      120 GETTABLEKS                       R20 R0 K25 ["Utility"]
      122 GETTABLEKS                       R20 R20 K26 ["Flags"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K6 [require]
      127 GETTABLEKS                       R21 R0 K25 ["Utility"]
      129 GETTABLEKS                       R21 R21 K27 ["withDefaults"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K6 [require]
      134 GETTABLEKS                       R22 R0 K25 ["Utility"]
      136 GETTABLEKS                       R22 R22 K28 ["withCommonProps"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K6 [require]
      141 GETIMPORT                        R23 K1 [script]
      143 GETTABLEKS                       R23 R23 K4 ["Parent"]
      145 GETTABLEKS                       R23 R23 K29 ["useButtonMotionStates"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K6 [require]
      150 GETIMPORT                        R24 K1 [script]
      152 GETTABLEKS                       R24 R24 K4 ["Parent"]
      154 GETTABLEKS                       R24 R24 K30 ["useButtonVariants"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K6 [require]
      159 GETTABLEKS                       R25 R0 K31 ["Providers"]
      161 GETTABLEKS                       R25 R25 K32 ["Style"]
      163 GETTABLEKS                       R25 R25 K33 ["useTokens"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R25 K6 [require]
      168 GETTABLEKS                       R26 R0 K31 ["Providers"]
      170 GETTABLEKS                       R26 R26 K32 ["Style"]
      172 GETTABLEKS                       R26 R26 K34 ["PresentationContext"]
      174 CALL                             R25 1 1
      175 GETTABLEKS                       R25 R25 K35 ["usePresentationContext"]
      177 NEWTABLE                         R26 1 0
      179 GETTABLEKS                       R27 R10 K36 ["Link"]
      181 DUPTABLE                         R28 K39 [{"format", "controlState"}]
      182 LOADK                            R29 K40 ["<u>%s</u>"]
      183 SETTABLEKS                       R29 R28 K37 ["format"]
      185 NEWTABLE                         R29 0 2
      187 GETTABLEKS                       R30 R13 K41 ["Hover"]
      189 GETTABLEKS                       R31 R13 K42 ["Pressed"]
      191 SETLIST                          R29 R30 2 [1]
      193 SETTABLEKS                       R29 R28 K38 ["controlState"]
      195 SETTABLE                         R28 R26 R27
      196 DUPCLOSURE                       R27 K43 [PROTO_0]
      197 CAPTURE                          VAL R18
      198 DUPCLOSURE                       R28 K44 [PROTO_2]
      199 DUPTABLE                         R29 K52 [{"isDisabled", "isLoading", "variant", "size", "width", "inputDelay", "testId"}]
      200 LOADB                            R30 0
      201 SETTABLEKS                       R30 R29 K45 ["isDisabled"]
      203 LOADB                            R30 0
      204 SETTABLEKS                       R30 R29 K46 ["isLoading"]
      206 GETTABLEKS                       R30 R10 K53 ["Standard"]
      208 SETTABLEKS                       R30 R29 K47 ["variant"]
      210 GETTABLEKS                       R30 R7 K54 ["Medium"]
      212 SETTABLEKS                       R30 R29 K48 ["size"]
      214 GETIMPORT                        R30 K57 [UDim.new]
      216 LOADN                            R31 0
      217 LOADN                            R32 0
      218 CALL                             R30 2 1
      219 SETTABLEKS                       R30 R29 K49 ["width"]
      221 LOADN                            R30 0
      222 SETTABLEKS                       R30 R29 K50 ["inputDelay"]
      224 LOADK                            R30 K58 ["--foundation-button"]
      225 SETTABLEKS                       R30 R29 K51 ["testId"]
      227 DUPCLOSURE                       R30 K59 [PROTO_13]
      228 CAPTURE                          VAL R20
      229 CAPTURE                          VAL R29
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R13
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R9
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R25
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R22
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R26
      241 CAPTURE                          VAL R17
      242 CAPTURE                          VAL R21
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R27
      250 GETTABLEKS                       R31 R5 K60 ["memo"]
      252 GETTABLEKS                       R32 R5 K61 ["forwardRef"]
      254 MOVE                             R33 R30
      255 CALL                             R32 1 -1
      256 CALL                             R31 -1 -1
      257 RETURN                           R31 -1
