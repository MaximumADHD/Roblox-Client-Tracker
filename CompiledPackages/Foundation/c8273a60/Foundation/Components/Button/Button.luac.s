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
      176 GETUPVAL                         R28 15
      177 GETTABLEKS                       R28 R28 K38 ["FoundationButtonFillBehaviorEqualSize"]
      179 JUMPIFNOT                        R28 ; [+7]
      180 GETTABLEKS                       R28 R2 K39 ["fillBehavior"]
      182 GETUPVAL                         R29 16
      183 GETTABLEKS                       R29 R29 K40 ["Fill"]
      185 JUMPIFEQ                         R28 R29 ; [+16]
      187 GETTABLEKS                       R28 R2 K41 ["width"]
      189 GETTABLEKS                       R28 R28 K42 ["Scale"]
      191 JUMPIFNOTEQKN                    R28 K43 [0] ; [+10]
      193 GETTABLEKS                       R28 R2 K41 ["width"]
      195 GETTABLEKS                       R28 R28 K44 ["Offset"]
      197 JUMPIFNOTEQKN                    R28 K43 [0] ; [+4]
      199 GETIMPORT                        R27 K47 [Enum.AutomaticSize.X]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R27
      203 SETTABLEKS                       R27 R26 K24 ["AutomaticSize"]
      205 GETIMPORT                        R27 K50 [UDim.new]
      207 LOADN                            R28 0
      208 GETTABLEKS                       R29 R13 K18 ["container"]
      210 GETTABLEKS                       R29 R29 K19 ["radius"]
      212 CALL                             R27 2 1
      213 SETTABLEKS                       R27 R26 K25 ["cornerRadius"]
      215 GETTABLEKS                       R28 R13 K18 ["container"]
      217 GETTABLEKS                       R28 R28 K11 ["style"]
      219 JUMPIFNOT                        R28 ; [+20]
      220 GETTABLEKS                       R28 R13 K18 ["container"]
      222 GETTABLEKS                       R28 R28 K11 ["style"]
      224 GETTABLEKS                       R28 R28 K12 ["Transparency"]
      226 GETTABLEKS                       R29 R15 K51 ["transparency"]
      228 NEWCLOSURE                       R32 P7
      229 CAPTURE                          VAL R28
      230 NAMECALL                         R30 R29 K52 ["map"]
      232 CALL                             R30 2 1
      233 MOVE                             R27 R30
      234 NEWCLOSURE                       R29 P8
      235 CAPTURE                          VAL R13
      236 NAMECALL                         R27 R27 K52 ["map"]
      238 CALL                             R27 2 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R27
      241 SETTABLEKS                       R27 R26 K26 ["backgroundStyle"]
      243 GETTABLEKS                       R28 R2 K39 ["fillBehavior"]
      245 JUMPIFNOT                        R28 ; [+16]
      246 DUPTABLE                         R27 K54 [{"FlexMode"}]
      247 GETTABLEKS                       R29 R2 K39 ["fillBehavior"]
      249 GETUPVAL                         R30 16
      250 GETTABLEKS                       R30 R30 K40 ["Fill"]
      252 JUMPIFNOTEQ                      R29 R30 ; [+4]
      254 GETIMPORT                        R28 K56 [Enum.UIFlexMode.Fill]
      256 JUMP                             ; [+2]
      257 GETIMPORT                        R28 K58 [Enum.UIFlexMode.Shrink]
      259 SETTABLEKS                       R28 R27 K53 ["FlexMode"]
      261 JUMP                             ; [+1]
      262 LOADNIL                          R27
      263 SETTABLEKS                       R27 R26 K27 ["flexItem"]
      265 GETTABLEKS                       R28 R13 K18 ["container"]
      267 GETTABLEKS                       R28 R28 K28 ["stroke"]
      269 JUMPIFNOT                        R28 ; [+26]
      270 DUPTABLE                         R27 K60 [{"Color", "Transparency"}]
      271 GETTABLEKS                       R28 R13 K18 ["container"]
      273 GETTABLEKS                       R28 R28 K28 ["stroke"]
      275 GETTABLEKS                       R28 R28 K59 ["Color"]
      277 SETTABLEKS                       R28 R27 K59 ["Color"]
      279 GETTABLEKS                       R29 R13 K18 ["container"]
      281 GETTABLEKS                       R29 R29 K28 ["stroke"]
      283 GETTABLEKS                       R29 R29 K12 ["Transparency"]
      285 GETTABLEKS                       R30 R15 K51 ["transparency"]
      287 NEWCLOSURE                       R33 P7
      288 CAPTURE                          VAL R29
      289 NAMECALL                         R31 R30 K52 ["map"]
      291 CALL                             R31 2 1
      292 MOVE                             R28 R31
      293 SETTABLEKS                       R28 R27 K12 ["Transparency"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R27
      297 SETTABLEKS                       R27 R26 K28 ["stroke"]
      299 GETIMPORT                        R27 K62 [UDim2.new]
      301 GETTABLEKS                       R29 R2 K39 ["fillBehavior"]
      303 GETUPVAL                         R30 16
      304 GETTABLEKS                       R30 R30 K40 ["Fill"]
      306 JUMPIFNOTEQ                      R29 R30 ; [+3]
      308 LOADN                            R28 1
      309 JUMP                             ; [+4]
      310 GETTABLEKS                       R28 R2 K41 ["width"]
      312 GETTABLEKS                       R28 R28 K42 ["Scale"]
      314 GETTABLEKS                       R30 R2 K39 ["fillBehavior"]
      316 GETUPVAL                         R31 16
      317 GETTABLEKS                       R31 R31 K40 ["Fill"]
      319 JUMPIFNOTEQ                      R30 R31 ; [+3]
      321 LOADN                            R29 0
      322 JUMP                             ; [+4]
      323 GETTABLEKS                       R29 R2 K41 ["width"]
      325 GETTABLEKS                       R29 R29 K44 ["Offset"]
      327 LOADN                            R30 0
      328 GETTABLEKS                       R31 R13 K18 ["container"]
      330 GETTABLEKS                       R31 R31 K63 ["height"]
      332 CALL                             R27 4 1
      333 SETTABLEKS                       R27 R26 K29 ["Size"]
      335 DUPTABLE                         R27 K69 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      336 GETTABLEKS                       R29 R2 K16 ["isDisabled"]
      338 JUMPIFNOT                        R29 ; [+2]
      339 LOADB                            R28 0
      340 JUMP                             ; [+2]
      341 GETTABLEKS                       R28 R2 K64 ["Selectable"]
      343 SETTABLEKS                       R28 R27 K64 ["Selectable"]
      345 GETTABLEKS                       R28 R2 K65 ["NextSelectionUp"]
      347 SETTABLEKS                       R28 R27 K65 ["NextSelectionUp"]
      349 GETTABLEKS                       R28 R2 K66 ["NextSelectionDown"]
      351 SETTABLEKS                       R28 R27 K66 ["NextSelectionDown"]
      353 GETTABLEKS                       R28 R2 K67 ["NextSelectionLeft"]
      355 SETTABLEKS                       R28 R27 K67 ["NextSelectionLeft"]
      357 GETTABLEKS                       R28 R2 K68 ["NextSelectionRight"]
      359 SETTABLEKS                       R28 R27 K68 ["NextSelectionRight"]
      361 SETTABLEKS                       R27 R26 K30 ["selection"]
      363 SETTABLEKS                       R19 R26 K31 ["cursor"]
      365 GETTABLEKS                       R27 R2 K32 ["onActivated"]
      367 SETTABLEKS                       R27 R26 K32 ["onActivated"]
      369 SETTABLEKS                       R5 R26 K33 ["onStateChanged"]
      371 GETTABLEKS                       R27 R2 K16 ["isDisabled"]
      373 JUMPIF                           R27 ; [+4]
      374 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      376 JUMPIF                           R27 ; [+1]
      377 MOVE                             R27 R6
      378 SETTABLEKS                       R27 R26 K16 ["isDisabled"]
      380 GETTABLEKS                       R27 R13 K18 ["container"]
      382 GETTABLEKS                       R27 R27 K34 ["stateLayer"]
      384 SETTABLEKS                       R27 R26 K34 ["stateLayer"]
      386 GETTABLEKS                       R27 R13 K18 ["container"]
      388 GETTABLEKS                       R27 R27 K35 ["tag"]
      390 SETTABLEKS                       R27 R26 K35 ["tag"]
      392 SETTABLEKS                       R1 R26 K36 ["ref"]
      394 CALL                             R24 2 1
      395 DUPTABLE                         R25 K74 [{"Loading", "IconWrapper", "Text", "Gradient"}]
      396 GETTABLEKS                       R27 R2 K15 ["isLoading"]
      398 JUMPIFNOT                        R27 ; [+73]
      399 GETUPVAL                         R26 2
      400 GETTABLEKS                       R26 R26 K23 ["createElement"]
      402 LOADK                            R27 K75 ["Folder"]
      403 NEWTABLE                         R28 0 0
      405 DUPTABLE                         R29 K77 [{"PresenceWrapper"}]
      406 GETUPVAL                         R30 2
      407 GETTABLEKS                       R30 R30 K23 ["createElement"]
      409 GETUPVAL                         R31 17
      410 NEWTABLE                         R32 0 0
      412 DUPTABLE                         R33 K79 [{"Spinner"}]
      413 GETUPVAL                         R34 2
      414 GETTABLEKS                       R34 R34 K23 ["createElement"]
      416 GETUPVAL                         R35 18
      417 DUPTABLE                         R36 K81 [{"Size", "style", "testId"}]
      418 GETTABLEKS                       R38 R13 K5 ["icon"]
      420 GETTABLEKS                       R38 R38 K7 ["size"]
      422 GETUPVAL                         R40 15
      423 GETTABLEKS                       R40 R40 K82 ["FoundationUsePath2DSpinner"]
      425 JUMPIFNOT                        R40 ; [+12]
      426 GETIMPORT                        R39 K84 [UDim2.fromOffset]
      428 GETTABLEKS                       R40 R11 K85 ["Padding"]
      430 GETTABLEKS                       R40 R40 K86 ["XSmall"]
      432 GETTABLEKS                       R41 R11 K85 ["Padding"]
      434 GETTABLEKS                       R41 R41 K86 ["XSmall"]
      436 CALL                             R39 2 1
      437 JUMP                             ; [+5]
      438 GETIMPORT                        R39 K84 [UDim2.fromOffset]
      440 LOADN                            R40 0
      441 LOADN                            R41 0
      442 CALL                             R39 2 1
      443 SUB                              R37 R38 R39
      444 SETTABLEKS                       R37 R36 K29 ["Size"]
      446 GETTABLEKS                       R37 R15 K51 ["transparency"]
      448 NEWCLOSURE                       R39 P9
      449 CAPTURE                          VAL R13
      450 NAMECALL                         R37 R37 K52 ["map"]
      452 CALL                             R37 2 1
      453 SETTABLEKS                       R37 R36 K11 ["style"]
      455 LOADK                            R38 K87 ["%*--spinner"]
      456 GETTABLEKS                       R40 R2 K80 ["testId"]
      458 NAMECALL                         R38 R38 K88 ["format"]
      460 CALL                             R38 2 1
      461 MOVE                             R37 R38
      462 SETTABLEKS                       R37 R36 K80 ["testId"]
      464 CALL                             R34 2 1
      465 SETTABLEKS                       R34 R33 K78 ["Spinner"]
      467 CALL                             R30 3 1
      468 SETTABLEKS                       R30 R29 K76 ["PresenceWrapper"]
      470 CALL                             R26 3 1
      471 JUMP                             ; [+1]
      472 LOADNIL                          R26
      473 SETTABLEKS                       R26 R25 K70 ["Loading"]
      475 GETTABLEKS                       R27 R2 K5 ["icon"]
      477 JUMPIFNOT                        R27 ; [+80]
      478 GETUPVAL                         R26 2
      479 GETTABLEKS                       R26 R26 K23 ["createElement"]
      481 GETUPVAL                         R27 13
      482 DUPTABLE                         R28 K90 [{"Size", "LayoutOrder", "testId"}]
      483 GETTABLEKS                       R30 R2 K5 ["icon"]
      485 JUMPIFNOT                        R30 ; [+5]
      486 GETTABLEKS                       R29 R13 K5 ["icon"]
      488 GETTABLEKS                       R29 R29 K7 ["size"]
      490 JUMP                             ; [+1]
      491 LOADNIL                          R29
      492 SETTABLEKS                       R29 R28 K29 ["Size"]
      494 GETTABLEKS                       R30 R2 K5 ["icon"]
      496 JUMPIFNOT                        R30 ; [+5]
      497 JUMPIFNOT                        R10 ; [+2]
      498 LOADN                            R29 3
      499 JUMP                             ; [+3]
      500 LOADN                            R29 1
      501 JUMP                             ; [+1]
      502 LOADNIL                          R29
      503 SETTABLEKS                       R29 R28 K89 ["LayoutOrder"]
      505 GETTABLEKS                       R30 R2 K5 ["icon"]
      507 JUMPIFNOT                        R30 ; [+8]
      508 LOADK                            R30 K91 ["%*--icon-wrapper"]
      509 GETTABLEKS                       R32 R2 K80 ["testId"]
      511 NAMECALL                         R30 R30 K88 ["format"]
      513 CALL                             R30 2 1
      514 MOVE                             R29 R30
      515 JUMP                             ; [+1]
      516 LOADNIL                          R29
      517 SETTABLEKS                       R29 R28 K80 ["testId"]
      519 DUPTABLE                         R29 K93 [{"Icon"}]
      520 GETUPVAL                         R30 2
      521 GETTABLEKS                       R30 R30 K23 ["createElement"]
      523 GETUPVAL                         R31 19
      524 DUPTABLE                         R32 K96 [{"icon", "isLoading", "variant", "size", "disabledTransparencyBinding", "textTransparencyBinding", "testId"}]
      525 GETTABLEKS                       R33 R2 K5 ["icon"]
      527 SETTABLEKS                       R33 R32 K5 ["icon"]
      529 GETTABLEKS                       R33 R2 K15 ["isLoading"]
      531 SETTABLEKS                       R33 R32 K15 ["isLoading"]
      533 GETTABLEKS                       R33 R2 K8 ["variant"]
      535 SETTABLEKS                       R33 R32 K8 ["variant"]
      537 GETTABLEKS                       R33 R2 K7 ["size"]
      539 SETTABLEKS                       R33 R32 K7 ["size"]
      541 GETTABLEKS                       R33 R15 K51 ["transparency"]
      543 SETTABLEKS                       R33 R32 K94 ["disabledTransparencyBinding"]
      545 GETTABLEKS                       R33 R17 K97 ["textTransparency"]
      547 SETTABLEKS                       R33 R32 K95 ["textTransparencyBinding"]
      549 GETTABLEKS                       R33 R2 K80 ["testId"]
      551 SETTABLEKS                       R33 R32 K80 ["testId"]
      553 CALL                             R30 2 1
      554 SETTABLEKS                       R30 R29 K92 ["Icon"]
      556 CALL                             R26 3 1
      557 JUMP                             ; [+1]
      558 LOADNIL                          R26
      559 SETTABLEKS                       R26 R25 K71 ["IconWrapper"]
      561 JUMPIFNOT                        R20 ; [+61]
      562 GETUPVAL                         R26 2
      563 GETTABLEKS                       R26 R26 K23 ["createElement"]
      565 GETUPVAL                         R27 20
      566 DUPTABLE                         R28 K100 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      567 MOVE                             R31 R21
      568 NAMECALL                         R29 R4 K52 ["map"]
      570 CALL                             R29 2 1
      571 SETTABLEKS                       R29 R28 K72 ["Text"]
      573 GETUPVAL                         R31 12
      574 GETTABLEKS                       R32 R2 K8 ["variant"]
      576 GETTABLE                         R30 R31 R32
      577 JUMPIFEQKNIL                     R30 ; [+3]
      579 LOADB                            R29 1
      580 JUMP                             ; [+1]
      581 LOADB                            R29 0
      582 SETTABLEKS                       R29 R28 K98 ["RichText"]
      584 GETTABLEKS                       R29 R13 K20 ["text"]
      586 GETTABLEKS                       R29 R29 K35 ["tag"]
      588 SETTABLEKS                       R29 R28 K35 ["tag"]
      590 GETUPVAL                         R29 2
      591 GETTABLEKS                       R29 R29 K101 ["joinBindings"]
      593 NEWTABLE                         R30 0 2
      595 GETTABLEKS                       R31 R15 K51 ["transparency"]
      597 GETTABLEKS                       R32 R17 K97 ["textTransparency"]
      599 SETLIST                          R30 R31 2 [1]
      601 CALL                             R29 1 1
      602 NEWCLOSURE                       R31 P10
      603 CAPTURE                          VAL R13
      604 NAMECALL                         R29 R29 K52 ["map"]
      606 CALL                             R29 2 1
      607 SETTABLEKS                       R29 R28 K99 ["textStyle"]
      609 LOADN                            R29 2
      610 SETTABLEKS                       R29 R28 K89 ["LayoutOrder"]
      612 LOADK                            R30 K102 ["%*--text"]
      613 GETTABLEKS                       R32 R2 K80 ["testId"]
      615 NAMECALL                         R30 R30 K88 ["format"]
      617 CALL                             R30 2 1
      618 MOVE                             R29 R30
      619 SETTABLEKS                       R29 R28 K80 ["testId"]
      621 CALL                             R26 2 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R26
      624 SETTABLEKS                       R26 R25 K72 ["Text"]
      626 JUMPIFNOT                        R6 ; [+13]
      627 GETUPVAL                         R26 2
      628 GETTABLEKS                       R26 R26 K23 ["createElement"]
      630 LOADK                            R27 K103 ["UIGradient"]
      631 DUPTABLE                         R28 K104 [{"Transparency"}]
      632 GETUPVAL                         R31 21
      633 NAMECALL                         R29 R8 K52 ["map"]
      635 CALL                             R29 2 1
      636 SETTABLEKS                       R29 R28 K12 ["Transparency"]
      638 CALL                             R26 2 1
      639 JUMP                             ; [+1]
      640 LOADNIL                          R26
      641 SETTABLEKS                       R26 R25 K73 ["Gradient"]
      643 CALL                             R22 3 -1
      644 RETURN                           R22 -1

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
       62 GETTABLEKS                       R12 R0 K12 ["Enums"]
       64 GETTABLEKS                       R12 R12 K17 ["FillBehavior"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETTABLEKS                       R13 R0 K12 ["Enums"]
       71 GETTABLEKS                       R13 R13 K18 ["ControlState"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R14 R14 K4 ["Parent"]
       80 GETTABLEKS                       R14 R14 K19 ["ButtonIcon"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETTABLEKS                       R15 R0 K20 ["Components"]
       87 GETTABLEKS                       R15 R15 K21 ["Text"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K6 [require]
       92 GETTABLEKS                       R16 R0 K20 ["Components"]
       94 GETTABLEKS                       R16 R16 K22 ["Types"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K6 [require]
       99 GETTABLEKS                       R17 R0 K20 ["Components"]
      101 GETTABLEKS                       R17 R17 K23 ["View"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K6 [require]
      106 GETTABLEKS                       R18 R0 K24 ["Constants"]
      108 CALL                             R17 1 1
      109 GETIMPORT                        R18 K6 [require]
      111 GETTABLEKS                       R19 R0 K25 ["Utility"]
      113 GETTABLEKS                       R19 R19 K26 ["Flags"]
      115 CALL                             R18 1 1
      116 GETIMPORT                        R19 K6 [require]
      118 GETTABLEKS                       R20 R0 K25 ["Utility"]
      120 GETTABLEKS                       R20 R20 K27 ["withDefaults"]
      122 CALL                             R19 1 1
      123 GETIMPORT                        R20 K6 [require]
      125 GETTABLEKS                       R21 R0 K25 ["Utility"]
      127 GETTABLEKS                       R21 R21 K28 ["withCommonProps"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K6 [require]
      132 GETIMPORT                        R22 K1 [script]
      134 GETTABLEKS                       R22 R22 K4 ["Parent"]
      136 GETTABLEKS                       R22 R22 K29 ["useButtonMotionStates"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K6 [require]
      141 GETIMPORT                        R23 K1 [script]
      143 GETTABLEKS                       R23 R23 K4 ["Parent"]
      145 GETTABLEKS                       R23 R23 K30 ["useButtonVariants"]
      147 CALL                             R22 1 1
      148 GETIMPORT                        R23 K6 [require]
      150 GETTABLEKS                       R24 R0 K31 ["Providers"]
      152 GETTABLEKS                       R24 R24 K32 ["Style"]
      154 GETTABLEKS                       R24 R24 K33 ["useTokens"]
      156 CALL                             R23 1 1
      157 GETIMPORT                        R24 K6 [require]
      159 GETTABLEKS                       R25 R0 K31 ["Providers"]
      161 GETTABLEKS                       R25 R25 K32 ["Style"]
      163 GETTABLEKS                       R25 R25 K34 ["PresentationContext"]
      165 CALL                             R24 1 1
      166 GETTABLEKS                       R24 R24 K35 ["usePresentationContext"]
      168 NEWTABLE                         R25 1 0
      170 GETTABLEKS                       R26 R10 K36 ["Link"]
      172 DUPTABLE                         R27 K39 [{"format", "controlState"}]
      173 LOADK                            R28 K40 ["<u>%s</u>"]
      174 SETTABLEKS                       R28 R27 K37 ["format"]
      176 NEWTABLE                         R28 0 2
      178 GETTABLEKS                       R29 R12 K41 ["Hover"]
      180 GETTABLEKS                       R30 R12 K42 ["Pressed"]
      182 SETLIST                          R28 R29 2 [1]
      184 SETTABLEKS                       R28 R27 K38 ["controlState"]
      186 SETTABLE                         R27 R25 R26
      187 DUPCLOSURE                       R26 K43 [PROTO_0]
      188 CAPTURE                          VAL R17
      189 DUPCLOSURE                       R27 K44 [PROTO_2]
      190 DUPTABLE                         R28 K52 [{"isDisabled", "isLoading", "variant", "size", "width", "inputDelay", "testId"}]
      191 LOADB                            R29 0
      192 SETTABLEKS                       R29 R28 K45 ["isDisabled"]
      194 LOADB                            R29 0
      195 SETTABLEKS                       R29 R28 K46 ["isLoading"]
      197 GETTABLEKS                       R29 R10 K53 ["Standard"]
      199 SETTABLEKS                       R29 R28 K47 ["variant"]
      201 GETTABLEKS                       R29 R7 K54 ["Medium"]
      203 SETTABLEKS                       R29 R28 K48 ["size"]
      205 GETIMPORT                        R29 K57 [UDim.new]
      207 LOADN                            R30 0
      208 LOADN                            R31 0
      209 CALL                             R29 2 1
      210 SETTABLEKS                       R29 R28 K49 ["width"]
      212 LOADN                            R29 0
      213 SETTABLEKS                       R29 R28 K50 ["inputDelay"]
      215 LOADK                            R29 K58 ["--foundation-button"]
      216 SETTABLEKS                       R29 R28 K51 ["testId"]
      218 DUPCLOSURE                       R29 K59 [PROTO_13]
      219 CAPTURE                          VAL R19
      220 CAPTURE                          VAL R28
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R12
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R23
      226 CAPTURE                          VAL R24
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R21
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R20
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R11
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R26
      241 GETTABLEKS                       R30 R5 K60 ["memo"]
      243 GETTABLEKS                       R31 R5 K61 ["forwardRef"]
      245 MOVE                             R32 R29
      246 CALL                             R31 1 -1
      247 CALL                             R30 -1 -1
      248 RETURN                           R30 -1
