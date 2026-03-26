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
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K11 ["DISABLED_TRANSPARENCY"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K4 [NumberSequenceKeypoint.new]
       35 LOADN                            R7 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K11 ["DISABLED_TRANSPARENCY"]
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
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R1 R2 K0 ["instant"]
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
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R1 R2 K0 ["ease"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isLoading"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Loading"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isDisabled"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R1 R2 K1 ["Disabled"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["Default"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K3 [{"radius", "offset", "borderWidth"}]
        1 GETIMPORT                        R1 K6 [UDim.new]
        3 LOADN                            R2 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K7 ["container"]
        7 GETTABLEKS                       R3 R4 K0 ["radius"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["radius"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K8 ["Size"]
       15 GETTABLEKS                       R1 R2 K9 ["Size_200"]
       17 SETTABLEKS                       R1 R0 K1 ["offset"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K10 ["Stroke"]
       22 GETTABLEKS                       R1 R2 K11 ["Thicker"]
       24 SETTABLEKS                       R1 R0 K2 ["borderWidth"]
       26 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["variant"]
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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K6 ["text"]
       20 NAMECALL                         R2 R2 K5 ["format"]
       22 CALL                             R2 2 1
       23 RETURN                           R2 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K6 ["text"]
       27 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["container"]
        4 GETTABLEKS                       R3 R4 K4 ["style"]
        6 GETTABLEKS                       R2 R3 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["content"]
        4 GETTABLEKS                       R3 R4 K4 ["style"]
        6 GETTABLEKS                       R2 R3 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_12:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["content"]
        6 GETTABLEKS                       R5 R6 K4 ["style"]
        8 GETTABLEKS                       R4 R5 K0 ["Color3"]
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
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["useBinding"]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K2 ["Initialize"]
       12 CALL                             R4 1 2
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K3 ["useState"]
       16 LOADN                            R8 0
       17 JUMPIFLT                         R8 R3 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 CALL                             R6 1 2
       22 GETUPVAL                         R9 4
       23 GETTABLEKS                       R8 R9 K4 ["useAnimatedBinding"]
       25 LOADN                            R9 0
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R7
       28 CALL                             R8 2 2
       29 GETTABLEKS                       R10 R2 K5 ["icon"]
       31 JUMPIFNOT                        R10 ; [+4]
       32 GETUPVAL                         R11 5
       33 GETTABLEKS                       R12 R2 K5 ["icon"]
       35 GETTABLE                         R10 R11 R12
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       39 NEWCLOSURE                       R12 P1
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R9
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R13 0 1
       45 MOVE                             R14 R6
       46 SETLIST                          R13 R14 1 [1]
       48 CALL                             R11 2 0
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K6 ["useEffect"]
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
       81 GETTABLEKS                       R17 R13 K10 ["content"]
       83 GETTABLEKS                       R16 R17 K11 ["style"]
       85 GETTABLEKS                       R15 R16 K12 ["Transparency"]
       87 GETUPVAL                         R17 10
       88 GETTABLEKS                       R16 R17 K13 ["DISABLED_TRANSPARENCY"]
       90 CALL                             R14 2 1
       91 GETUPVAL                         R15 11
       92 GETTABLEKS                       R16 R14 K14 ["Default"]
       94 CALL                             R15 1 2
       95 GETUPVAL                         R17 11
       96 GETTABLEKS                       R18 R14 K14 ["Default"]
       98 CALL                             R17 1 2
       99 GETUPVAL                         R20 2
      100 GETTABLEKS                       R19 R20 K6 ["useEffect"]
      102 NEWCLOSURE                       R20 P3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R14
      106 NEWTABLE                         R21 0 1
      108 GETTABLEKS                       R22 R2 K15 ["isLoading"]
      110 SETLIST                          R21 R22 1 [1]
      112 CALL                             R19 2 0
      113 GETUPVAL                         R20 2
      114 GETTABLEKS                       R19 R20 K6 ["useEffect"]
      116 NEWCLOSURE                       R20 P4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R14
      120 NEWTABLE                         R21 0 1
      122 GETTABLEKS                       R22 R2 K16 ["isDisabled"]
      124 SETLIST                          R21 R22 1 [1]
      126 CALL                             R19 2 0
      127 GETUPVAL                         R20 2
      128 GETTABLEKS                       R19 R20 K17 ["useMemo"]
      130 NEWCLOSURE                       R20 P5
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R11
      133 NEWTABLE                         R21 0 2
      135 MOVE                             R22 R11
      136 GETTABLEKS                       R24 R13 K18 ["container"]
      138 GETTABLEKS                       R23 R24 K19 ["radius"]
      140 SETLIST                          R21 R22 2 [1]
      142 CALL                             R19 2 1
      143 GETTABLEKS                       R20 R2 K20 ["text"]
      145 JUMPIFNOT                        R20 ; [+6]
      146 GETTABLEKS                       R21 R2 K20 ["text"]
      148 JUMPIFNOTEQKS                    R21 K21 [""] ; [+2]
      150 LOADB                            R20 0 +1
      151 LOADB                            R20 1
      152 GETUPVAL                         R22 2
      153 GETTABLEKS                       R21 R22 K22 ["useCallback"]
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
      169 GETUPVAL                         R23 2
      170 GETTABLEKS                       R22 R23 K23 ["createElement"]
      172 GETUPVAL                         R23 13
      173 GETUPVAL                         R24 14
      174 MOVE                             R25 R2
      175 DUPTABLE                         R26 K37 [{"AutomaticSize", "cornerRadius", "backgroundStyle", "flexItem", "stroke", "Size", "selection", "cursor", "onActivated", "onStateChanged", "isDisabled", "stateLayer", "tag", "ref"}]
      176 GETUPVAL                         R29 15
      177 GETTABLEKS                       R28 R29 K38 ["FoundationButtonWidthAutoSize"]
      179 JUMPIFNOT                        R28 ; [+17]
      180 GETTABLEKS                       R29 R2 K39 ["width"]
      182 GETTABLEKS                       R28 R29 K40 ["Scale"]
      184 JUMPIFNOTEQKN                    R28 K41 [0] ; [+10]
      186 GETTABLEKS                       R29 R2 K39 ["width"]
      188 GETTABLEKS                       R28 R29 K42 ["Offset"]
      190 JUMPIFNOTEQKN                    R28 K41 [0] ; [+4]
      192 GETIMPORT                        R27 K45 [Enum.AutomaticSize.X]
      194 JUMP                             ; [+12]
      195 LOADNIL                          R27
      196 JUMP                             ; [+10]
      197 GETTABLEKS                       R29 R2 K39 ["width"]
      199 GETTABLEKS                       R28 R29 K40 ["Scale"]
      201 JUMPIFNOTEQKN                    R28 K41 [0] ; [+4]
      203 GETIMPORT                        R27 K45 [Enum.AutomaticSize.X]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R27
      207 SETTABLEKS                       R27 R26 K24 ["AutomaticSize"]
      209 GETIMPORT                        R27 K48 [UDim.new]
      211 LOADN                            R28 0
      212 GETTABLEKS                       R30 R13 K18 ["container"]
      214 GETTABLEKS                       R29 R30 K19 ["radius"]
      216 CALL                             R27 2 1
      217 SETTABLEKS                       R27 R26 K25 ["cornerRadius"]
      219 GETTABLEKS                       R29 R13 K18 ["container"]
      221 GETTABLEKS                       R28 R29 K11 ["style"]
      223 JUMPIFNOT                        R28 ; [+20]
      224 GETTABLEKS                       R30 R13 K18 ["container"]
      226 GETTABLEKS                       R29 R30 K11 ["style"]
      228 GETTABLEKS                       R28 R29 K12 ["Transparency"]
      230 GETTABLEKS                       R29 R15 K49 ["transparency"]
      232 NEWCLOSURE                       R32 P7
      233 CAPTURE                          VAL R28
      234 NAMECALL                         R30 R29 K50 ["map"]
      236 CALL                             R30 2 1
      237 MOVE                             R27 R30
      238 NEWCLOSURE                       R29 P8
      239 CAPTURE                          VAL R13
      240 NAMECALL                         R27 R27 K50 ["map"]
      242 CALL                             R27 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R27
      245 SETTABLEKS                       R27 R26 K26 ["backgroundStyle"]
      247 GETTABLEKS                       R28 R2 K51 ["fillBehavior"]
      249 JUMPIFNOT                        R28 ; [+16]
      250 DUPTABLE                         R27 K53 [{"FlexMode"}]
      251 GETTABLEKS                       R29 R2 K51 ["fillBehavior"]
      253 GETUPVAL                         R31 16
      254 GETTABLEKS                       R30 R31 K54 ["Fill"]
      256 JUMPIFNOTEQ                      R29 R30 ; [+4]
      258 GETIMPORT                        R28 K56 [Enum.UIFlexMode.Fill]
      260 JUMP                             ; [+2]
      261 GETIMPORT                        R28 K58 [Enum.UIFlexMode.Shrink]
      263 SETTABLEKS                       R28 R27 K52 ["FlexMode"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R27
      267 SETTABLEKS                       R27 R26 K27 ["flexItem"]
      269 GETTABLEKS                       R29 R13 K18 ["container"]
      271 GETTABLEKS                       R28 R29 K28 ["stroke"]
      273 JUMPIFNOT                        R28 ; [+26]
      274 DUPTABLE                         R27 K60 [{"Color", "Transparency"}]
      275 GETTABLEKS                       R30 R13 K18 ["container"]
      277 GETTABLEKS                       R29 R30 K28 ["stroke"]
      279 GETTABLEKS                       R28 R29 K59 ["Color"]
      281 SETTABLEKS                       R28 R27 K59 ["Color"]
      283 GETTABLEKS                       R31 R13 K18 ["container"]
      285 GETTABLEKS                       R30 R31 K28 ["stroke"]
      287 GETTABLEKS                       R29 R30 K12 ["Transparency"]
      289 GETTABLEKS                       R30 R15 K49 ["transparency"]
      291 NEWCLOSURE                       R33 P7
      292 CAPTURE                          VAL R29
      293 NAMECALL                         R31 R30 K50 ["map"]
      295 CALL                             R31 2 1
      296 MOVE                             R28 R31
      297 SETTABLEKS                       R28 R27 K12 ["Transparency"]
      299 JUMP                             ; [+1]
      300 LOADNIL                          R27
      301 SETTABLEKS                       R27 R26 K28 ["stroke"]
      303 GETIMPORT                        R27 K62 [UDim2.new]
      305 GETTABLEKS                       R29 R2 K51 ["fillBehavior"]
      307 GETUPVAL                         R31 16
      308 GETTABLEKS                       R30 R31 K54 ["Fill"]
      310 JUMPIFNOTEQ                      R29 R30 ; [+3]
      312 LOADN                            R28 1
      313 JUMP                             ; [+4]
      314 GETTABLEKS                       R29 R2 K39 ["width"]
      316 GETTABLEKS                       R28 R29 K40 ["Scale"]
      318 GETTABLEKS                       R30 R2 K51 ["fillBehavior"]
      320 GETUPVAL                         R32 16
      321 GETTABLEKS                       R31 R32 K54 ["Fill"]
      323 JUMPIFNOTEQ                      R30 R31 ; [+3]
      325 LOADN                            R29 0
      326 JUMP                             ; [+4]
      327 GETTABLEKS                       R30 R2 K39 ["width"]
      329 GETTABLEKS                       R29 R30 K42 ["Offset"]
      331 LOADN                            R30 0
      332 GETTABLEKS                       R32 R13 K18 ["container"]
      334 GETTABLEKS                       R31 R32 K63 ["height"]
      336 CALL                             R27 4 1
      337 SETTABLEKS                       R27 R26 K29 ["Size"]
      339 DUPTABLE                         R27 K69 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      340 GETTABLEKS                       R29 R2 K16 ["isDisabled"]
      342 JUMPIFNOT                        R29 ; [+2]
      343 LOADB                            R28 0
      344 JUMP                             ; [+2]
      345 GETTABLEKS                       R28 R2 K64 ["Selectable"]
      347 SETTABLEKS                       R28 R27 K64 ["Selectable"]
      349 GETTABLEKS                       R28 R2 K65 ["NextSelectionUp"]
      351 SETTABLEKS                       R28 R27 K65 ["NextSelectionUp"]
      353 GETTABLEKS                       R28 R2 K66 ["NextSelectionDown"]
      355 SETTABLEKS                       R28 R27 K66 ["NextSelectionDown"]
      357 GETTABLEKS                       R28 R2 K67 ["NextSelectionLeft"]
      359 SETTABLEKS                       R28 R27 K67 ["NextSelectionLeft"]
      361 GETTABLEKS                       R28 R2 K68 ["NextSelectionRight"]
      363 SETTABLEKS                       R28 R27 K68 ["NextSelectionRight"]
      365 SETTABLEKS                       R27 R26 K30 ["selection"]
      367 SETTABLEKS                       R19 R26 K31 ["cursor"]
      369 GETTABLEKS                       R27 R2 K32 ["onActivated"]
      371 SETTABLEKS                       R27 R26 K32 ["onActivated"]
      373 SETTABLEKS                       R5 R26 K33 ["onStateChanged"]
      375 GETTABLEKS                       R27 R2 K16 ["isDisabled"]
      377 JUMPIF                           R27 ; [+4]
      378 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      380 JUMPIF                           R27 ; [+1]
      381 MOVE                             R27 R6
      382 SETTABLEKS                       R27 R26 K16 ["isDisabled"]
      384 GETTABLEKS                       R28 R13 K18 ["container"]
      386 GETTABLEKS                       R27 R28 K34 ["stateLayer"]
      388 SETTABLEKS                       R27 R26 K34 ["stateLayer"]
      390 GETTABLEKS                       R28 R13 K18 ["container"]
      392 GETTABLEKS                       R27 R28 K35 ["tag"]
      394 SETTABLEKS                       R27 R26 K35 ["tag"]
      396 SETTABLEKS                       R1 R26 K36 ["ref"]
      398 CALL                             R24 2 1
      399 DUPTABLE                         R25 K74 [{"Loading", "IconWrapper", "Text", "Gradient"}]
      400 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      402 JUMPIFNOT                        R27 ; [+73]
      403 GETUPVAL                         R27 2
      404 GETTABLEKS                       R26 R27 K23 ["createElement"]
      406 LOADK                            R27 K75 ["Folder"]
      407 NEWTABLE                         R28 0 0
      409 DUPTABLE                         R29 K77 [{"PresenceWrapper"}]
      410 GETUPVAL                         R31 2
      411 GETTABLEKS                       R30 R31 K23 ["createElement"]
      413 GETUPVAL                         R31 17
      414 NEWTABLE                         R32 0 0
      416 DUPTABLE                         R33 K79 [{"Spinner"}]
      417 GETUPVAL                         R35 2
      418 GETTABLEKS                       R34 R35 K23 ["createElement"]
      420 GETUPVAL                         R35 18
      421 DUPTABLE                         R36 K81 [{"Size", "style", "testId"}]
      422 GETTABLEKS                       R39 R13 K5 ["icon"]
      424 GETTABLEKS                       R38 R39 K7 ["size"]
      426 GETUPVAL                         R41 15
      427 GETTABLEKS                       R40 R41 K82 ["FoundationUsePath2DSpinner"]
      429 JUMPIFNOT                        R40 ; [+12]
      430 GETIMPORT                        R39 K84 [UDim2.fromOffset]
      432 GETTABLEKS                       R41 R11 K85 ["Padding"]
      434 GETTABLEKS                       R40 R41 K86 ["XSmall"]
      436 GETTABLEKS                       R42 R11 K85 ["Padding"]
      438 GETTABLEKS                       R41 R42 K86 ["XSmall"]
      440 CALL                             R39 2 1
      441 JUMP                             ; [+5]
      442 GETIMPORT                        R39 K84 [UDim2.fromOffset]
      444 LOADN                            R40 0
      445 LOADN                            R41 0
      446 CALL                             R39 2 1
      447 SUB                              R37 R38 R39
      448 SETTABLEKS                       R37 R36 K29 ["Size"]
      450 GETTABLEKS                       R37 R15 K49 ["transparency"]
      452 NEWCLOSURE                       R39 P9
      453 CAPTURE                          VAL R13
      454 NAMECALL                         R37 R37 K50 ["map"]
      456 CALL                             R37 2 1
      457 SETTABLEKS                       R37 R36 K11 ["style"]
      459 LOADK                            R38 K87 ["%*--spinner"]
      460 GETTABLEKS                       R40 R2 K80 ["testId"]
      462 NAMECALL                         R38 R38 K88 ["format"]
      464 CALL                             R38 2 1
      465 MOVE                             R37 R38
      466 SETTABLEKS                       R37 R36 K80 ["testId"]
      468 CALL                             R34 2 1
      469 SETTABLEKS                       R34 R33 K78 ["Spinner"]
      471 CALL                             R30 3 1
      472 SETTABLEKS                       R30 R29 K76 ["PresenceWrapper"]
      474 CALL                             R26 3 1
      475 JUMP                             ; [+1]
      476 LOADNIL                          R26
      477 SETTABLEKS                       R26 R25 K70 ["Loading"]
      479 GETTABLEKS                       R27 R2 K5 ["icon"]
      481 JUMPIFNOT                        R27 ; [+80]
      482 GETUPVAL                         R27 2
      483 GETTABLEKS                       R26 R27 K23 ["createElement"]
      485 GETUPVAL                         R27 13
      486 DUPTABLE                         R28 K90 [{"Size", "LayoutOrder", "testId"}]
      487 GETTABLEKS                       R30 R2 K5 ["icon"]
      489 JUMPIFNOT                        R30 ; [+5]
      490 GETTABLEKS                       R30 R13 K5 ["icon"]
      492 GETTABLEKS                       R29 R30 K7 ["size"]
      494 JUMP                             ; [+1]
      495 LOADNIL                          R29
      496 SETTABLEKS                       R29 R28 K29 ["Size"]
      498 GETTABLEKS                       R30 R2 K5 ["icon"]
      500 JUMPIFNOT                        R30 ; [+5]
      501 JUMPIFNOT                        R10 ; [+2]
      502 LOADN                            R29 3
      503 JUMP                             ; [+3]
      504 LOADN                            R29 1
      505 JUMP                             ; [+1]
      506 LOADNIL                          R29
      507 SETTABLEKS                       R29 R28 K89 ["LayoutOrder"]
      509 GETTABLEKS                       R30 R2 K5 ["icon"]
      511 JUMPIFNOT                        R30 ; [+8]
      512 LOADK                            R30 K91 ["%*--icon-wrapper"]
      513 GETTABLEKS                       R32 R2 K80 ["testId"]
      515 NAMECALL                         R30 R30 K88 ["format"]
      517 CALL                             R30 2 1
      518 MOVE                             R29 R30
      519 JUMP                             ; [+1]
      520 LOADNIL                          R29
      521 SETTABLEKS                       R29 R28 K80 ["testId"]
      523 DUPTABLE                         R29 K93 [{"Icon"}]
      524 GETUPVAL                         R31 2
      525 GETTABLEKS                       R30 R31 K23 ["createElement"]
      527 GETUPVAL                         R31 19
      528 DUPTABLE                         R32 K96 [{"icon", "isLoading", "variant", "size", "disabledTransparencyBinding", "textTransparencyBinding", "testId"}]
      529 GETTABLEKS                       R33 R2 K5 ["icon"]
      531 SETTABLEKS                       R33 R32 K5 ["icon"]
      533 GETTABLEKS                       R33 R2 K15 ["isLoading"]
      535 SETTABLEKS                       R33 R32 K15 ["isLoading"]
      537 GETTABLEKS                       R33 R2 K8 ["variant"]
      539 SETTABLEKS                       R33 R32 K8 ["variant"]
      541 GETTABLEKS                       R33 R2 K7 ["size"]
      543 SETTABLEKS                       R33 R32 K7 ["size"]
      545 GETTABLEKS                       R33 R15 K49 ["transparency"]
      547 SETTABLEKS                       R33 R32 K94 ["disabledTransparencyBinding"]
      549 GETTABLEKS                       R33 R17 K97 ["textTransparency"]
      551 SETTABLEKS                       R33 R32 K95 ["textTransparencyBinding"]
      553 GETTABLEKS                       R33 R2 K80 ["testId"]
      555 SETTABLEKS                       R33 R32 K80 ["testId"]
      557 CALL                             R30 2 1
      558 SETTABLEKS                       R30 R29 K92 ["Icon"]
      560 CALL                             R26 3 1
      561 JUMP                             ; [+1]
      562 LOADNIL                          R26
      563 SETTABLEKS                       R26 R25 K71 ["IconWrapper"]
      565 JUMPIFNOT                        R20 ; [+61]
      566 GETUPVAL                         R27 2
      567 GETTABLEKS                       R26 R27 K23 ["createElement"]
      569 GETUPVAL                         R27 20
      570 DUPTABLE                         R28 K100 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      571 MOVE                             R31 R21
      572 NAMECALL                         R29 R4 K50 ["map"]
      574 CALL                             R29 2 1
      575 SETTABLEKS                       R29 R28 K72 ["Text"]
      577 GETUPVAL                         R31 12
      578 GETTABLEKS                       R32 R2 K8 ["variant"]
      580 GETTABLE                         R30 R31 R32
      581 JUMPIFEQKNIL                     R30 ; [+3]
      583 LOADB                            R29 1
      584 JUMP                             ; [+1]
      585 LOADB                            R29 0
      586 SETTABLEKS                       R29 R28 K98 ["RichText"]
      588 GETTABLEKS                       R30 R13 K20 ["text"]
      590 GETTABLEKS                       R29 R30 K35 ["tag"]
      592 SETTABLEKS                       R29 R28 K35 ["tag"]
      594 GETUPVAL                         R30 2
      595 GETTABLEKS                       R29 R30 K101 ["joinBindings"]
      597 NEWTABLE                         R30 0 2
      599 GETTABLEKS                       R31 R15 K49 ["transparency"]
      601 GETTABLEKS                       R32 R17 K97 ["textTransparency"]
      603 SETLIST                          R30 R31 2 [1]
      605 CALL                             R29 1 1
      606 NEWCLOSURE                       R31 P10
      607 CAPTURE                          VAL R13
      608 NAMECALL                         R29 R29 K50 ["map"]
      610 CALL                             R29 2 1
      611 SETTABLEKS                       R29 R28 K99 ["textStyle"]
      613 LOADN                            R29 2
      614 SETTABLEKS                       R29 R28 K89 ["LayoutOrder"]
      616 LOADK                            R30 K102 ["%*--text"]
      617 GETTABLEKS                       R32 R2 K80 ["testId"]
      619 NAMECALL                         R30 R30 K88 ["format"]
      621 CALL                             R30 2 1
      622 MOVE                             R29 R30
      623 SETTABLEKS                       R29 R28 K80 ["testId"]
      625 CALL                             R26 2 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R26
      628 SETTABLEKS                       R26 R25 K72 ["Text"]
      630 JUMPIFNOT                        R6 ; [+13]
      631 GETUPVAL                         R27 2
      632 GETTABLEKS                       R26 R27 K23 ["createElement"]
      634 LOADK                            R27 K103 ["UIGradient"]
      635 DUPTABLE                         R28 K104 [{"Transparency"}]
      636 GETUPVAL                         R31 21
      637 NAMECALL                         R29 R8 K50 ["map"]
      639 CALL                             R29 2 1
      640 SETTABLEKS                       R29 R28 K12 ["Transparency"]
      642 CALL                             R26 2 1
      643 JUMP                             ; [+1]
      644 LOADNIL                          R26
      645 SETTABLEKS                       R26 R25 K73 ["Gradient"]
      647 CALL                             R22 3 -1
      648 RETURN                           R22 -1

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
       30 GETTABLEKS                       R9 R0 K12 ["Enums"]
       32 GETTABLEKS                       R8 R9 K13 ["InputSize"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K6 [require]
       37 GETIMPORT                        R11 K1 [script]
       39 GETTABLEKS                       R10 R11 K4 ["Parent"]
       41 GETTABLEKS                       R9 R10 K14 ["Spinner"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K6 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R11 R12 K4 ["Parent"]
       50 GETTABLEKS                       R10 R11 K15 ["endAlignedIcons"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K6 [require]
       55 GETTABLEKS                       R12 R0 K12 ["Enums"]
       57 GETTABLEKS                       R11 R12 K16 ["ButtonVariant"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K6 [require]
       62 GETIMPORT                        R14 K1 [script]
       64 GETTABLEKS                       R13 R14 K4 ["Parent"]
       66 GETTABLEKS                       R12 R13 K17 ["Types"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R14 R0 K12 ["Enums"]
       73 GETTABLEKS                       R13 R14 K18 ["FillBehavior"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K6 [require]
       78 GETTABLEKS                       R15 R0 K12 ["Enums"]
       80 GETTABLEKS                       R14 R15 K19 ["ControlState"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETIMPORT                        R17 K1 [script]
       87 GETTABLEKS                       R16 R17 K4 ["Parent"]
       89 GETTABLEKS                       R15 R16 K20 ["ButtonIcon"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R17 R0 K21 ["Components"]
       96 GETTABLEKS                       R16 R17 K22 ["Text"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R18 R0 K21 ["Components"]
      103 GETTABLEKS                       R17 R18 K17 ["Types"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R19 R0 K21 ["Components"]
      110 GETTABLEKS                       R18 R19 K23 ["View"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R19 R0 K24 ["Constants"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K6 [require]
      120 GETTABLEKS                       R21 R0 K25 ["Utility"]
      122 GETTABLEKS                       R20 R21 K26 ["Flags"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K6 [require]
      127 GETTABLEKS                       R22 R0 K25 ["Utility"]
      129 GETTABLEKS                       R21 R22 K27 ["withDefaults"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K6 [require]
      134 GETTABLEKS                       R23 R0 K25 ["Utility"]
      136 GETTABLEKS                       R22 R23 K28 ["withCommonProps"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K6 [require]
      141 GETIMPORT                        R25 K1 [script]
      143 GETTABLEKS                       R24 R25 K4 ["Parent"]
      145 GETTABLEKS                       R23 R24 K29 ["useButtonMotionStates"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K6 [require]
      150 GETIMPORT                        R26 K1 [script]
      152 GETTABLEKS                       R25 R26 K4 ["Parent"]
      154 GETTABLEKS                       R24 R25 K30 ["useButtonVariants"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K6 [require]
      159 GETTABLEKS                       R27 R0 K31 ["Providers"]
      161 GETTABLEKS                       R26 R27 K32 ["Style"]
      163 GETTABLEKS                       R25 R26 K33 ["useTokens"]
      165 CALL                             R24 1 1
      166 GETIMPORT                        R26 K6 [require]
      168 GETTABLEKS                       R29 R0 K31 ["Providers"]
      170 GETTABLEKS                       R28 R29 K32 ["Style"]
      172 GETTABLEKS                       R27 R28 K34 ["PresentationContext"]
      174 CALL                             R26 1 1
      175 GETTABLEKS                       R25 R26 K35 ["usePresentationContext"]
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
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R8
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R27
      250 GETTABLEKS                       R31 R5 K60 ["memo"]
      252 GETTABLEKS                       R32 R5 K61 ["forwardRef"]
      254 MOVE                             R33 R30
      255 CALL                             R32 1 -1
      256 CALL                             R31 -1 -1
      257 RETURN                           R31 -1
