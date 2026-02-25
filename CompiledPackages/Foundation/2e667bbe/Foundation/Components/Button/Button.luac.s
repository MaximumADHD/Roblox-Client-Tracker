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
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["content"]
        4 GETTABLEKS                       R3 R4 K4 ["style"]
        6 GETTABLEKS                       R2 R3 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["icon"]
        3 GETTABLEKS                       R4 R5 K1 ["size"]
        5 GETTABLEKS                       R3 R4 K2 ["Y"]
        7 GETTABLEKS                       R2 R3 K3 ["Offset"]
        9 MUL                              R1 R0 R2
       10 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["content"]
        4 GETTABLEKS                       R3 R4 K4 ["style"]
        6 GETTABLEKS                       R2 R3 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MUL                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K3 ["content"]
        6 GETTABLEKS                       R5 R6 K4 ["style"]
        8 GETTABLEKS                       R4 R5 K0 ["Color3"]
       10 SETTABLEKS                       R4 R3 K0 ["Color3"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K5 ["icon"]
       15 JUMPIFNOT                        R5 ; [+2]
       16 MOVE                             R4 R1
       17 JUMP                             ; [+1]
       18 ADD                              R4 R2 R1
       19 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       21 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R2 K0 ["inputDelay"]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R5 R2 K1 ["icon"]
        9 GETTABLEKS                       R6 R2 K2 ["size"]
       11 CALL                             R4 2 2
       12 GETUPVAL                         R6 3
       13 CALL                             R6 0 1
       14 GETUPVAL                         R8 4
       15 GETTABLEKS                       R7 R8 K3 ["useBinding"]
       17 GETUPVAL                         R9 5
       18 GETTABLEKS                       R8 R9 K4 ["Initialize"]
       20 CALL                             R7 1 2
       21 GETUPVAL                         R10 4
       22 GETTABLEKS                       R9 R10 K5 ["useState"]
       24 LOADN                            R11 0
       25 JUMPIFLT                         R11 R3 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 CALL                             R9 1 2
       30 GETUPVAL                         R12 6
       31 GETTABLEKS                       R11 R12 K6 ["useAnimatedBinding"]
       33 LOADN                            R12 0
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R10
       36 CALL                             R11 2 2
       37 GETUPVAL                         R14 4
       38 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       40 NEWCLOSURE                       R14 P1
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R12
       43 CAPTURE                          UPVAL U6
       44 NEWTABLE                         R15 0 1
       46 MOVE                             R16 R9
       47 SETLIST                          R15 R16 1 [1]
       49 CALL                             R13 2 0
       50 GETUPVAL                         R14 4
       51 GETTABLEKS                       R13 R14 K7 ["useEffect"]
       53 NEWCLOSURE                       R14 P2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R12
       58 CAPTURE                          UPVAL U6
       59 NEWTABLE                         R15 0 1
       61 MOVE                             R16 R3
       62 SETLIST                          R15 R16 1 [1]
       64 CALL                             R13 2 0
       65 GETUPVAL                         R13 7
       66 CALL                             R13 0 1
       67 GETUPVAL                         R14 8
       68 CALL                             R14 0 1
       69 GETUPVAL                         R15 9
       70 MOVE                             R16 R13
       71 GETTABLEKS                       R17 R2 K2 ["size"]
       73 GETTABLEKS                       R18 R2 K8 ["variant"]
       75 MOVE                             R19 R14
       76 JUMPIFNOT                        R19 ; [+2]
       77 GETTABLEKS                       R19 R14 K9 ["isInverse"]
       79 CALL                             R15 4 1
       80 GETUPVAL                         R16 10
       81 GETTABLEKS                       R19 R15 K10 ["content"]
       83 GETTABLEKS                       R18 R19 K11 ["style"]
       85 GETTABLEKS                       R17 R18 K12 ["Transparency"]
       87 GETUPVAL                         R19 11
       88 GETTABLEKS                       R18 R19 K13 ["DISABLED_TRANSPARENCY"]
       90 CALL                             R16 2 1
       91 GETUPVAL                         R17 12
       92 GETTABLEKS                       R18 R16 K14 ["Default"]
       94 CALL                             R17 1 2
       95 GETUPVAL                         R19 12
       96 GETTABLEKS                       R20 R16 K14 ["Default"]
       98 CALL                             R19 1 2
       99 GETUPVAL                         R22 4
      100 GETTABLEKS                       R21 R22 K7 ["useEffect"]
      102 NEWCLOSURE                       R22 P3
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R20
      105 CAPTURE                          VAL R16
      106 NEWTABLE                         R23 0 1
      108 GETTABLEKS                       R24 R2 K15 ["isLoading"]
      110 SETLIST                          R23 R24 1 [1]
      112 CALL                             R21 2 0
      113 GETUPVAL                         R22 4
      114 GETTABLEKS                       R21 R22 K7 ["useEffect"]
      116 NEWCLOSURE                       R22 P4
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R16
      120 NEWTABLE                         R23 0 1
      122 GETTABLEKS                       R24 R2 K16 ["isDisabled"]
      124 SETLIST                          R23 R24 1 [1]
      126 CALL                             R21 2 0
      127 GETUPVAL                         R22 4
      128 GETTABLEKS                       R21 R22 K17 ["useMemo"]
      130 NEWCLOSURE                       R22 P5
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R13
      133 NEWTABLE                         R23 0 2
      135 MOVE                             R24 R13
      136 GETTABLEKS                       R26 R15 K18 ["container"]
      138 GETTABLEKS                       R25 R26 K19 ["radius"]
      140 SETLIST                          R23 R24 2 [1]
      142 CALL                             R21 2 1
      143 GETTABLEKS                       R22 R2 K20 ["text"]
      145 JUMPIFNOT                        R22 ; [+6]
      146 GETTABLEKS                       R23 R2 K20 ["text"]
      148 JUMPIFNOTEQKS                    R23 K21 [""] ; [+2]
      150 LOADB                            R22 0 +1
      151 LOADB                            R22 1
      152 GETUPVAL                         R24 4
      153 GETTABLEKS                       R23 R24 K22 ["useCallback"]
      155 NEWCLOSURE                       R24 P6
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R22
      159 NEWTABLE                         R25 0 3
      161 GETTABLEKS                       R26 R2 K20 ["text"]
      163 GETTABLEKS                       R27 R2 K8 ["variant"]
      165 MOVE                             R28 R22
      166 SETLIST                          R25 R26 3 [1]
      168 CALL                             R23 2 1
      169 GETUPVAL                         R25 4
      170 GETTABLEKS                       R24 R25 K23 ["createElement"]
      172 GETUPVAL                         R25 14
      173 GETUPVAL                         R26 15
      174 MOVE                             R27 R2
      175 DUPTABLE                         R28 K37 [{"AutomaticSize", "cornerRadius", "backgroundStyle", "flexItem", "stroke", "Size", "selection", "cursor", "onActivated", "onStateChanged", "isDisabled", "stateLayer", "tag", "ref"}]
      176 GETTABLEKS                       R31 R2 K38 ["width"]
      178 GETTABLEKS                       R30 R31 K39 ["Scale"]
      180 JUMPIFNOTEQKN                    R30 K40 [0] ; [+4]
      182 GETIMPORT                        R29 K43 [Enum.AutomaticSize.X]
      184 JUMP                             ; [+1]
      185 LOADNIL                          R29
      186 SETTABLEKS                       R29 R28 K24 ["AutomaticSize"]
      188 GETIMPORT                        R29 K46 [UDim.new]
      190 LOADN                            R30 0
      191 GETTABLEKS                       R32 R15 K18 ["container"]
      193 GETTABLEKS                       R31 R32 K19 ["radius"]
      195 CALL                             R29 2 1
      196 SETTABLEKS                       R29 R28 K25 ["cornerRadius"]
      198 GETTABLEKS                       R31 R15 K18 ["container"]
      200 GETTABLEKS                       R30 R31 K11 ["style"]
      202 JUMPIFNOT                        R30 ; [+20]
      203 GETTABLEKS                       R32 R15 K18 ["container"]
      205 GETTABLEKS                       R31 R32 K11 ["style"]
      207 GETTABLEKS                       R30 R31 K12 ["Transparency"]
      209 GETTABLEKS                       R31 R17 K47 ["transparency"]
      211 NEWCLOSURE                       R34 P7
      212 CAPTURE                          VAL R30
      213 NAMECALL                         R32 R31 K48 ["map"]
      215 CALL                             R32 2 1
      216 MOVE                             R29 R32
      217 NEWCLOSURE                       R31 P8
      218 CAPTURE                          VAL R15
      219 NAMECALL                         R29 R29 K48 ["map"]
      221 CALL                             R29 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R29
      224 SETTABLEKS                       R29 R28 K26 ["backgroundStyle"]
      226 GETTABLEKS                       R30 R2 K49 ["fillBehavior"]
      228 JUMPIFNOT                        R30 ; [+16]
      229 DUPTABLE                         R29 K51 [{"FlexMode"}]
      230 GETTABLEKS                       R31 R2 K49 ["fillBehavior"]
      232 GETUPVAL                         R33 16
      233 GETTABLEKS                       R32 R33 K52 ["Fill"]
      235 JUMPIFNOTEQ                      R31 R32 ; [+4]
      237 GETIMPORT                        R30 K54 [Enum.UIFlexMode.Fill]
      239 JUMP                             ; [+2]
      240 GETIMPORT                        R30 K56 [Enum.UIFlexMode.Shrink]
      242 SETTABLEKS                       R30 R29 K50 ["FlexMode"]
      244 JUMP                             ; [+1]
      245 LOADNIL                          R29
      246 SETTABLEKS                       R29 R28 K27 ["flexItem"]
      248 GETTABLEKS                       R31 R15 K18 ["container"]
      250 GETTABLEKS                       R30 R31 K28 ["stroke"]
      252 JUMPIFNOT                        R30 ; [+26]
      253 DUPTABLE                         R29 K58 [{"Color", "Transparency"}]
      254 GETTABLEKS                       R32 R15 K18 ["container"]
      256 GETTABLEKS                       R31 R32 K28 ["stroke"]
      258 GETTABLEKS                       R30 R31 K57 ["Color"]
      260 SETTABLEKS                       R30 R29 K57 ["Color"]
      262 GETTABLEKS                       R33 R15 K18 ["container"]
      264 GETTABLEKS                       R32 R33 K28 ["stroke"]
      266 GETTABLEKS                       R31 R32 K12 ["Transparency"]
      268 GETTABLEKS                       R32 R17 K47 ["transparency"]
      270 NEWCLOSURE                       R35 P7
      271 CAPTURE                          VAL R31
      272 NAMECALL                         R33 R32 K48 ["map"]
      274 CALL                             R33 2 1
      275 MOVE                             R30 R33
      276 SETTABLEKS                       R30 R29 K12 ["Transparency"]
      278 JUMP                             ; [+1]
      279 LOADNIL                          R29
      280 SETTABLEKS                       R29 R28 K28 ["stroke"]
      282 GETIMPORT                        R29 K60 [UDim2.new]
      284 GETTABLEKS                       R31 R2 K49 ["fillBehavior"]
      286 GETUPVAL                         R33 16
      287 GETTABLEKS                       R32 R33 K52 ["Fill"]
      289 JUMPIFNOTEQ                      R31 R32 ; [+3]
      291 LOADN                            R30 1
      292 JUMP                             ; [+4]
      293 GETTABLEKS                       R31 R2 K38 ["width"]
      295 GETTABLEKS                       R30 R31 K39 ["Scale"]
      297 GETTABLEKS                       R32 R2 K49 ["fillBehavior"]
      299 GETUPVAL                         R34 16
      300 GETTABLEKS                       R33 R34 K52 ["Fill"]
      302 JUMPIFNOTEQ                      R32 R33 ; [+3]
      304 LOADN                            R31 0
      305 JUMP                             ; [+4]
      306 GETTABLEKS                       R32 R2 K38 ["width"]
      308 GETTABLEKS                       R31 R32 K61 ["Offset"]
      310 LOADN                            R32 0
      311 GETTABLEKS                       R34 R15 K18 ["container"]
      313 GETTABLEKS                       R33 R34 K62 ["height"]
      315 CALL                             R29 4 1
      316 SETTABLEKS                       R29 R28 K29 ["Size"]
      318 DUPTABLE                         R29 K68 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      319 GETTABLEKS                       R31 R2 K16 ["isDisabled"]
      321 JUMPIFNOT                        R31 ; [+2]
      322 LOADB                            R30 0
      323 JUMP                             ; [+2]
      324 GETTABLEKS                       R30 R2 K63 ["Selectable"]
      326 SETTABLEKS                       R30 R29 K63 ["Selectable"]
      328 GETTABLEKS                       R30 R2 K64 ["NextSelectionUp"]
      330 SETTABLEKS                       R30 R29 K64 ["NextSelectionUp"]
      332 GETTABLEKS                       R30 R2 K65 ["NextSelectionDown"]
      334 SETTABLEKS                       R30 R29 K65 ["NextSelectionDown"]
      336 GETTABLEKS                       R30 R2 K66 ["NextSelectionLeft"]
      338 SETTABLEKS                       R30 R29 K66 ["NextSelectionLeft"]
      340 GETTABLEKS                       R30 R2 K67 ["NextSelectionRight"]
      342 SETTABLEKS                       R30 R29 K67 ["NextSelectionRight"]
      344 SETTABLEKS                       R29 R28 K30 ["selection"]
      346 SETTABLEKS                       R21 R28 K31 ["cursor"]
      348 GETTABLEKS                       R29 R2 K32 ["onActivated"]
      350 SETTABLEKS                       R29 R28 K32 ["onActivated"]
      352 SETTABLEKS                       R8 R28 K33 ["onStateChanged"]
      354 GETTABLEKS                       R29 R2 K16 ["isDisabled"]
      356 JUMPIF                           R29 ; [+4]
      357 GETTABLEKS                       R29 R2 K15 ["isLoading"]
      359 JUMPIF                           R29 ; [+1]
      360 MOVE                             R29 R9
      361 SETTABLEKS                       R29 R28 K16 ["isDisabled"]
      363 GETTABLEKS                       R30 R15 K18 ["container"]
      365 GETTABLEKS                       R29 R30 K34 ["stateLayer"]
      367 SETTABLEKS                       R29 R28 K34 ["stateLayer"]
      369 GETTABLEKS                       R30 R15 K18 ["container"]
      371 GETTABLEKS                       R29 R30 K35 ["tag"]
      373 SETTABLEKS                       R29 R28 K35 ["tag"]
      375 SETTABLEKS                       R1 R28 K36 ["ref"]
      377 CALL                             R26 2 1
      378 DUPTABLE                         R27 K72 [{"IconWrapper", "Text", "Gradient"}]
      379 GETTABLEKS                       R29 R2 K1 ["icon"]
      381 JUMPIF                           R29 ; [+3]
      382 GETTABLEKS                       R29 R2 K15 ["isLoading"]
      384 JUMPIFNOT                        R29 ; [+258]
      385 GETUPVAL                         R29 4
      386 GETTABLEKS                       R28 R29 K23 ["createElement"]
      388 GETTABLEKS                       R30 R2 K1 ["icon"]
      390 JUMPIFNOT                        R30 ; [+2]
      391 GETUPVAL                         R29 14
      392 JUMP                             ; [+1]
      393 LOADK                            R29 K73 ["Folder"]
      394 DUPTABLE                         R30 K74 [{"Size"}]
      395 GETTABLEKS                       R32 R2 K1 ["icon"]
      397 JUMPIFNOT                        R32 ; [+5]
      398 GETTABLEKS                       R32 R15 K1 ["icon"]
      400 GETTABLEKS                       R31 R32 K2 ["size"]
      402 JUMP                             ; [+1]
      403 LOADNIL                          R31
      404 SETTABLEKS                       R31 R30 K29 ["Size"]
      406 DUPTABLE                         R31 K76 [{"PresenceWrapper"}]
      407 GETUPVAL                         R33 4
      408 GETTABLEKS                       R32 R33 K23 ["createElement"]
      410 GETUPVAL                         R33 17
      411 NEWTABLE                         R34 0 0
      413 DUPTABLE                         R35 K79 [{"Spinner", "Icon"}]
      414 GETTABLEKS                       R37 R2 K15 ["isLoading"]
      416 JUMPIFNOT                        R37 ; [+53]
      417 GETUPVAL                         R37 4
      418 GETTABLEKS                       R36 R37 K23 ["createElement"]
      420 GETUPVAL                         R37 18
      421 DUPTABLE                         R38 K81 [{"Size", "style", "testId"}]
      422 GETTABLEKS                       R41 R15 K1 ["icon"]
      424 GETTABLEKS                       R40 R41 K2 ["size"]
      426 GETUPVAL                         R43 19
      427 GETTABLEKS                       R42 R43 K82 ["FoundationUsePath2DSpinner"]
      429 JUMPIFNOT                        R42 ; [+12]
      430 GETIMPORT                        R41 K84 [UDim2.fromOffset]
      432 GETTABLEKS                       R43 R13 K85 ["Padding"]
      434 GETTABLEKS                       R42 R43 K86 ["XSmall"]
      436 GETTABLEKS                       R44 R13 K85 ["Padding"]
      438 GETTABLEKS                       R43 R44 K86 ["XSmall"]
      440 CALL                             R41 2 1
      441 JUMP                             ; [+5]
      442 GETIMPORT                        R41 K84 [UDim2.fromOffset]
      444 LOADN                            R42 0
      445 LOADN                            R43 0
      446 CALL                             R41 2 1
      447 SUB                              R39 R40 R41
      448 SETTABLEKS                       R39 R38 K29 ["Size"]
      450 GETTABLEKS                       R39 R17 K47 ["transparency"]
      452 NEWCLOSURE                       R41 P9
      453 CAPTURE                          VAL R15
      454 NAMECALL                         R39 R39 K48 ["map"]
      456 CALL                             R39 2 1
      457 SETTABLEKS                       R39 R38 K11 ["style"]
      459 LOADK                            R40 K87 ["%*--spinner"]
      460 GETTABLEKS                       R42 R2 K80 ["testId"]
      462 NAMECALL                         R40 R40 K88 ["format"]
      464 CALL                             R40 2 1
      465 MOVE                             R39 R40
      466 SETTABLEKS                       R39 R38 K80 ["testId"]
      468 CALL                             R36 2 1
      469 JUMP                             ; [+1]
      470 LOADNIL                          R36
      471 SETTABLEKS                       R36 R35 K77 ["Spinner"]
      473 GETTABLEKS                       R37 R2 K15 ["isLoading"]
      475 JUMPIF                           R37 ; [+159]
      476 GETTABLEKS                       R37 R2 K1 ["icon"]
      478 JUMPIFNOT                        R37 ; [+156]
      479 GETUPVAL                         R37 20
      480 GETTABLEKS                       R38 R2 K1 ["icon"]
      482 CALL                             R37 1 1
      483 JUMPIFNOT                        R37 ; [+104]
      484 GETUPVAL                         R37 4
      485 GETTABLEKS                       R36 R37 K23 ["createElement"]
      487 GETUPVAL                         R37 21
      488 DUPTABLE                         R38 K92 [{"Text", "fontStyle", "tag", "Size", "textStyle", "scale"}]
      489 GETUPVAL                         R40 22
      490 GETTABLEKS                       R41 R2 K1 ["icon"]
      492 CALL                             R40 1 1
      493 JUMPIFNOT                        R40 ; [+7]
      494 GETUPVAL                         R41 23
      495 GETTABLEKS                       R42 R2 K1 ["icon"]
      497 GETTABLE                         R40 R41 R42
      498 GETTABLEKS                       R39 R40 K93 ["name"]
      500 JUMP                             ; [+2]
      501 GETTABLEKS                       R39 R2 K1 ["icon"]
      503 SETTABLEKS                       R39 R38 K70 ["Text"]
      505 DUPTABLE                         R39 K96 [{"Font", "FontSize"}]
      506 GETUPVAL                         R42 24
      507 GETTABLEKS                       R41 R42 K94 ["Font"]
      509 GETUPVAL                         R43 22
      510 GETTABLEKS                       R44 R2 K1 ["icon"]
      512 CALL                             R43 1 1
      513 JUMPIFNOT                        R43 ; [+7]
      514 GETUPVAL                         R44 23
      515 GETTABLEKS                       R45 R2 K1 ["icon"]
      517 GETTABLE                         R43 R44 R45
      518 GETTABLEKS                       R42 R43 K8 ["variant"]
      520 JUMP                             ; [+5]
      521 GETUPVAL                         R44 24
      522 GETTABLEKS                       R43 R44 K97 ["IconVariant"]
      524 GETTABLEKS                       R42 R43 K98 ["Regular"]
      526 GETTABLE                         R40 R41 R42
      527 SETTABLEKS                       R40 R39 K94 ["Font"]
      529 GETTABLEKS                       R43 R15 K1 ["icon"]
      531 GETTABLEKS                       R42 R43 K2 ["size"]
      533 GETTABLEKS                       R41 R42 K99 ["Y"]
      535 GETTABLEKS                       R40 R41 K61 ["Offset"]
      537 SETTABLEKS                       R40 R39 K95 ["FontSize"]
      539 SETTABLEKS                       R39 R38 K89 ["fontStyle"]
      541 LOADK                            R39 K100 ["anchor-center-center position-center-center"]
      542 SETTABLEKS                       R39 R38 K35 ["tag"]
      544 GETTABLEKS                       R40 R15 K1 ["icon"]
      546 GETTABLEKS                       R39 R40 K2 ["size"]
      548 SETTABLEKS                       R39 R38 K29 ["Size"]
      550 GETTABLEKS                       R39 R17 K47 ["transparency"]
      552 NEWCLOSURE                       R41 P10
      553 CAPTURE                          VAL R15
      554 NAMECALL                         R39 R39 K48 ["map"]
      556 CALL                             R39 2 1
      557 SETTABLEKS                       R39 R38 K90 ["textStyle"]
      559 GETTABLEKS                       R39 R19 K101 ["iconScale"]
      561 SETTABLEKS                       R39 R38 K91 ["scale"]
      563 DUPTABLE                         R39 K103 [{"UITextSizeConstraint"}]
      564 LOADN                            R41 0
      565 JUMPIFNOTLT                      R41 R6 ; [+17]
      567 GETUPVAL                         R41 4
      568 GETTABLEKS                       R40 R41 K23 ["createElement"]
      570 LOADK                            R41 K102 ["UITextSizeConstraint"]
      571 DUPTABLE                         R42 K105 [{"MaxTextSize"}]
      572 GETTABLEKS                       R43 R19 K101 ["iconScale"]
      574 NEWCLOSURE                       R45 P11
      575 CAPTURE                          VAL R15
      576 NAMECALL                         R43 R43 K48 ["map"]
      578 CALL                             R43 2 1
      579 SETTABLEKS                       R43 R42 K104 ["MaxTextSize"]
      581 CALL                             R40 2 1
      582 JUMP                             ; [+1]
      583 LOADNIL                          R40
      584 SETTABLEKS                       R40 R39 K102 ["UITextSizeConstraint"]
      586 CALL                             R36 3 1
      587 JUMP                             ; [+48]
      588 GETUPVAL                         R37 4
      589 GETTABLEKS                       R36 R37 K23 ["createElement"]
      591 GETUPVAL                         R37 25
      592 DUPTABLE                         R38 K108 [{"tag", "Image", "Size", "imageStyle", "scale"}]
      593 LOADK                            R39 K100 ["anchor-center-center position-center-center"]
      594 SETTABLEKS                       R39 R38 K35 ["tag"]
      596 GETTABLEKS                       R39 R2 K1 ["icon"]
      598 SETTABLEKS                       R39 R38 K106 ["Image"]
      600 JUMPIFNOT                        R4 ; [+8]
      601 GETIMPORT                        R39 K84 [UDim2.fromOffset]
      603 GETTABLEKS                       R40 R4 K42 ["X"]
      605 GETTABLEKS                       R41 R4 K99 ["Y"]
      607 CALL                             R39 2 1
      608 JUMP                             ; [+4]
      609 GETTABLEKS                       R40 R15 K1 ["icon"]
      611 GETTABLEKS                       R39 R40 K2 ["size"]
      613 SETTABLEKS                       R39 R38 K29 ["Size"]
      615 GETTABLEKS                       R39 R17 K47 ["transparency"]
      617 NEWCLOSURE                       R41 P12
      618 CAPTURE                          VAL R15
      619 NAMECALL                         R39 R39 K48 ["map"]
      621 CALL                             R39 2 1
      622 SETTABLEKS                       R39 R38 K107 ["imageStyle"]
      624 GETTABLEKS                       R39 R19 K101 ["iconScale"]
      626 NEWCLOSURE                       R41 P13
      627 CAPTURE                          VAL R5
      628 NAMECALL                         R39 R39 K48 ["map"]
      630 CALL                             R39 2 1
      631 SETTABLEKS                       R39 R38 K91 ["scale"]
      633 CALL                             R36 2 1
      634 JUMP                             ; [+1]
      635 LOADNIL                          R36
      636 SETTABLEKS                       R36 R35 K78 ["Icon"]
      638 CALL                             R32 3 1
      639 SETTABLEKS                       R32 R31 K75 ["PresenceWrapper"]
      641 CALL                             R28 3 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R28
      644 SETTABLEKS                       R28 R27 K69 ["IconWrapper"]
      646 JUMPIFNOT                        R22 ; [+62]
      647 GETUPVAL                         R29 4
      648 GETTABLEKS                       R28 R29 K23 ["createElement"]
      650 GETUPVAL                         R29 21
      651 DUPTABLE                         R30 K111 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      652 MOVE                             R33 R23
      653 NAMECALL                         R31 R7 K48 ["map"]
      655 CALL                             R31 2 1
      656 SETTABLEKS                       R31 R30 K70 ["Text"]
      658 GETUPVAL                         R33 13
      659 GETTABLEKS                       R34 R2 K8 ["variant"]
      661 GETTABLE                         R32 R33 R34
      662 JUMPIFEQKNIL                     R32 ; [+3]
      664 LOADB                            R31 1
      665 JUMP                             ; [+1]
      666 LOADB                            R31 0
      667 SETTABLEKS                       R31 R30 K109 ["RichText"]
      669 GETTABLEKS                       R32 R15 K20 ["text"]
      671 GETTABLEKS                       R31 R32 K35 ["tag"]
      673 SETTABLEKS                       R31 R30 K35 ["tag"]
      675 GETUPVAL                         R32 4
      676 GETTABLEKS                       R31 R32 K112 ["joinBindings"]
      678 NEWTABLE                         R32 0 2
      680 GETTABLEKS                       R33 R17 K47 ["transparency"]
      682 GETTABLEKS                       R34 R19 K113 ["textTransparency"]
      684 SETLIST                          R32 R33 2 [1]
      686 CALL                             R31 1 1
      687 NEWCLOSURE                       R33 P14
      688 CAPTURE                          VAL R15
      689 CAPTURE                          VAL R2
      690 NAMECALL                         R31 R31 K48 ["map"]
      692 CALL                             R31 2 1
      693 SETTABLEKS                       R31 R30 K90 ["textStyle"]
      695 LOADN                            R31 2
      696 SETTABLEKS                       R31 R30 K110 ["LayoutOrder"]
      698 LOADK                            R32 K114 ["%*--text"]
      699 GETTABLEKS                       R34 R2 K80 ["testId"]
      701 NAMECALL                         R32 R32 K88 ["format"]
      703 CALL                             R32 2 1
      704 MOVE                             R31 R32
      705 SETTABLEKS                       R31 R30 K80 ["testId"]
      707 CALL                             R28 2 1
      708 JUMP                             ; [+1]
      709 LOADNIL                          R28
      710 SETTABLEKS                       R28 R27 K70 ["Text"]
      712 JUMPIFNOT                        R9 ; [+13]
      713 GETUPVAL                         R29 4
      714 GETTABLEKS                       R28 R29 K23 ["createElement"]
      716 LOADK                            R29 K115 ["UIGradient"]
      717 DUPTABLE                         R30 K116 [{"Transparency"}]
      718 GETUPVAL                         R33 26
      719 NAMECALL                         R31 R11 K48 ["map"]
      721 CALL                             R31 2 1
      722 SETTABLEKS                       R31 R30 K12 ["Transparency"]
      724 CALL                             R28 2 1
      725 JUMP                             ; [+1]
      726 LOADNIL                          R28
      727 SETTABLEKS                       R28 R27 K71 ["Gradient"]
      729 CALL                             R24 3 -1
      730 RETURN                           R24 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K9 ["Migration"]
       16 GETTABLEKS                       R3 R4 K8 ["uiblox"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R1 K10 ["Motion"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R5 R4 K11 ["useMotion"]
       25 GETTABLEKS                       R6 R4 K12 ["AnimatePresence"]
       27 GETIMPORT                        R7 K6 [require]
       29 GETTABLEKS                       R8 R1 K13 ["React"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R9 R1 K14 ["ReactOtter"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K6 [require]
       39 GETIMPORT                        R12 K1 [script]
       41 GETTABLEKS                       R11 R12 K4 ["Parent"]
       43 GETTABLEKS                       R10 R11 K15 ["Spinner"]
       45 CALL                             R9 1 1
       46 GETIMPORT                        R10 K6 [require]
       48 GETTABLEKS                       R12 R0 K16 ["Enums"]
       50 GETTABLEKS                       R11 R12 K17 ["InputSize"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETTABLEKS                       R13 R0 K16 ["Enums"]
       57 GETTABLEKS                       R12 R13 K18 ["ButtonVariant"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K6 [require]
       62 GETTABLEKS                       R14 R0 K16 ["Enums"]
       64 GETTABLEKS                       R13 R14 K19 ["FillBehavior"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K6 [require]
       69 GETTABLEKS                       R15 R0 K16 ["Enums"]
       71 GETTABLEKS                       R14 R15 K20 ["ControlState"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K6 [require]
       76 GETTABLEKS                       R16 R0 K21 ["Components"]
       78 GETTABLEKS                       R15 R16 K22 ["Types"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K6 [require]
       83 GETTABLEKS                       R17 R0 K21 ["Components"]
       85 GETTABLEKS                       R16 R17 K23 ["Image"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K6 [require]
       90 GETTABLEKS                       R18 R0 K21 ["Components"]
       92 GETTABLEKS                       R17 R18 K24 ["View"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K6 [require]
       97 GETTABLEKS                       R19 R0 K21 ["Components"]
       99 GETTABLEKS                       R18 R19 K25 ["Text"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K6 [require]
      104 GETTABLEKS                       R19 R0 K26 ["Constants"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K6 [require]
      109 GETTABLEKS                       R21 R0 K27 ["Utility"]
      111 GETTABLEKS                       R20 R21 K28 ["Flags"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K6 [require]
      116 GETTABLEKS                       R22 R0 K27 ["Utility"]
      118 GETTABLEKS                       R21 R22 K29 ["getIconScale"]
      120 CALL                             R20 1 1
      121 GETIMPORT                        R21 K6 [require]
      123 GETTABLEKS                       R23 R0 K27 ["Utility"]
      125 GETTABLEKS                       R22 R23 K30 ["withDefaults"]
      127 CALL                             R21 1 1
      128 GETIMPORT                        R22 K6 [require]
      130 GETTABLEKS                       R24 R0 K27 ["Utility"]
      132 GETTABLEKS                       R23 R24 K31 ["withCommonProps"]
      134 CALL                             R22 1 1
      135 GETIMPORT                        R23 K6 [require]
      137 GETTABLEKS                       R25 R0 K27 ["Utility"]
      139 GETTABLEKS                       R24 R25 K32 ["iconMigrationUtils"]
      141 CALL                             R23 1 1
      142 GETTABLEKS                       R24 R23 K33 ["isMigrated"]
      144 GETTABLEKS                       R25 R23 K34 ["isBuilderOrMigratedIcon"]
      146 GETIMPORT                        R26 K6 [require]
      148 GETIMPORT                        R29 K1 [script]
      150 GETTABLEKS                       R28 R29 K4 ["Parent"]
      152 GETTABLEKS                       R27 R28 K35 ["useButtonVariants"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K6 [require]
      157 GETIMPORT                        R30 K1 [script]
      159 GETTABLEKS                       R29 R30 K4 ["Parent"]
      161 GETTABLEKS                       R28 R29 K36 ["useButtonMotionStates"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K6 [require]
      166 GETTABLEKS                       R31 R0 K37 ["Providers"]
      168 GETTABLEKS                       R30 R31 K38 ["Style"]
      170 GETTABLEKS                       R29 R30 K39 ["useTokens"]
      172 CALL                             R28 1 1
      173 GETIMPORT                        R29 K6 [require]
      175 GETTABLEKS                       R32 R0 K37 ["Providers"]
      177 GETTABLEKS                       R31 R32 K38 ["Style"]
      179 GETTABLEKS                       R30 R31 K40 ["useTextSizeOffset"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R31 K6 [require]
      184 GETTABLEKS                       R34 R0 K37 ["Providers"]
      186 GETTABLEKS                       R33 R34 K38 ["Style"]
      188 GETTABLEKS                       R32 R33 K41 ["PresentationContext"]
      190 CALL                             R31 1 1
      191 GETTABLEKS                       R30 R31 K42 ["usePresentationContext"]
      193 NEWTABLE                         R31 1 0
      195 GETTABLEKS                       R32 R11 K43 ["Link"]
      197 DUPTABLE                         R33 K46 [{"format", "controlState"}]
      198 LOADK                            R34 K47 ["<u>%s</u>"]
      199 SETTABLEKS                       R34 R33 K44 ["format"]
      201 NEWTABLE                         R34 0 2
      203 GETTABLEKS                       R35 R13 K48 ["Hover"]
      205 GETTABLEKS                       R36 R13 K49 ["Pressed"]
      207 SETLIST                          R34 R35 2 [1]
      209 SETTABLEKS                       R34 R33 K45 ["controlState"]
      211 SETTABLE                         R33 R31 R32
      212 DUPCLOSURE                       R32 K50 [PROTO_0]
      213 CAPTURE                          VAL R18
      214 DUPCLOSURE                       R33 K51 [PROTO_2]
      215 DUPTABLE                         R34 K59 [{"isDisabled", "isLoading", "variant", "size", "width", "inputDelay", "testId"}]
      216 LOADB                            R35 0
      217 SETTABLEKS                       R35 R34 K52 ["isDisabled"]
      219 LOADB                            R35 0
      220 SETTABLEKS                       R35 R34 K53 ["isLoading"]
      222 GETTABLEKS                       R35 R11 K60 ["Standard"]
      224 SETTABLEKS                       R35 R34 K54 ["variant"]
      226 GETTABLEKS                       R35 R10 K61 ["Medium"]
      228 SETTABLEKS                       R35 R34 K55 ["size"]
      230 GETIMPORT                        R35 K64 [UDim.new]
      232 LOADN                            R36 0
      233 LOADN                            R37 0
      234 CALL                             R35 2 1
      235 SETTABLEKS                       R35 R34 K56 ["width"]
      237 LOADN                            R35 0
      238 SETTABLEKS                       R35 R34 K57 ["inputDelay"]
      240 LOADK                            R35 K65 ["--foundation-button"]
      241 SETTABLEKS                       R35 R34 K58 ["testId"]
      243 DUPCLOSURE                       R35 K66 [PROTO_17]
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R34
      246 CAPTURE                          VAL R20
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R13
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R30
      253 CAPTURE                          VAL R26
      254 CAPTURE                          VAL R27
      255 CAPTURE                          VAL R18
      256 CAPTURE                          VAL R5
      257 CAPTURE                          VAL R31
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R6
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R25
      265 CAPTURE                          VAL R17
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R2
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R32
      271 GETTABLEKS                       R36 R7 K67 ["memo"]
      273 GETTABLEKS                       R37 R7 K68 ["forwardRef"]
      275 MOVE                             R38 R35
      276 CALL                             R37 1 -1
      277 CALL                             R36 -1 -1
      278 RETURN                           R36 -1
