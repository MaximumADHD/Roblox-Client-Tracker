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
       37 GETTABLEKS                       R13 R2 K1 ["icon"]
       39 JUMPIFNOT                        R13 ; [+4]
       40 GETUPVAL                         R14 7
       41 GETTABLEKS                       R15 R2 K1 ["icon"]
       43 GETTABLE                         R13 R14 R15
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       47 NEWCLOSURE                       R15 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R12
       50 CAPTURE                          UPVAL U6
       51 NEWTABLE                         R16 0 1
       53 MOVE                             R17 R9
       54 SETLIST                          R16 R17 1 [1]
       56 CALL                             R14 2 0
       57 GETUPVAL                         R15 4
       58 GETTABLEKS                       R14 R15 K7 ["useEffect"]
       60 NEWCLOSURE                       R15 P2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R12
       65 CAPTURE                          UPVAL U6
       66 NEWTABLE                         R16 0 1
       68 MOVE                             R17 R3
       69 SETLIST                          R16 R17 1 [1]
       71 CALL                             R14 2 0
       72 GETUPVAL                         R14 8
       73 CALL                             R14 0 1
       74 GETUPVAL                         R15 9
       75 CALL                             R15 0 1
       76 GETUPVAL                         R16 10
       77 MOVE                             R17 R14
       78 GETTABLEKS                       R18 R2 K2 ["size"]
       80 GETTABLEKS                       R19 R2 K8 ["variant"]
       82 JUMPIFNOT                        R15 ; [+3]
       83 GETTABLEKS                       R20 R15 K9 ["colorMode"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R20
       87 CALL                             R16 4 1
       88 GETUPVAL                         R17 11
       89 GETTABLEKS                       R20 R16 K10 ["content"]
       91 GETTABLEKS                       R19 R20 K11 ["style"]
       93 GETTABLEKS                       R18 R19 K12 ["Transparency"]
       95 GETUPVAL                         R20 12
       96 GETTABLEKS                       R19 R20 K13 ["DISABLED_TRANSPARENCY"]
       98 CALL                             R17 2 1
       99 GETUPVAL                         R18 13
      100 GETTABLEKS                       R19 R17 K14 ["Default"]
      102 CALL                             R18 1 2
      103 GETUPVAL                         R20 13
      104 GETTABLEKS                       R21 R17 K14 ["Default"]
      106 CALL                             R20 1 2
      107 GETUPVAL                         R23 4
      108 GETTABLEKS                       R22 R23 K7 ["useEffect"]
      110 NEWCLOSURE                       R23 P3
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R17
      114 NEWTABLE                         R24 0 1
      116 GETTABLEKS                       R25 R2 K15 ["isLoading"]
      118 SETLIST                          R24 R25 1 [1]
      120 CALL                             R22 2 0
      121 GETUPVAL                         R23 4
      122 GETTABLEKS                       R22 R23 K7 ["useEffect"]
      124 NEWCLOSURE                       R23 P4
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R17
      128 NEWTABLE                         R24 0 1
      130 GETTABLEKS                       R25 R2 K16 ["isDisabled"]
      132 SETLIST                          R24 R25 1 [1]
      134 CALL                             R22 2 0
      135 GETUPVAL                         R23 4
      136 GETTABLEKS                       R22 R23 K17 ["useMemo"]
      138 NEWCLOSURE                       R23 P5
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R14
      141 NEWTABLE                         R24 0 2
      143 MOVE                             R25 R14
      144 GETTABLEKS                       R27 R16 K18 ["container"]
      146 GETTABLEKS                       R26 R27 K19 ["radius"]
      148 SETLIST                          R24 R25 2 [1]
      150 CALL                             R22 2 1
      151 GETTABLEKS                       R23 R2 K20 ["text"]
      153 JUMPIFNOT                        R23 ; [+6]
      154 GETTABLEKS                       R24 R2 K20 ["text"]
      156 JUMPIFNOTEQKS                    R24 K21 [""] ; [+2]
      158 LOADB                            R23 0 +1
      159 LOADB                            R23 1
      160 GETUPVAL                         R25 4
      161 GETTABLEKS                       R24 R25 K22 ["useCallback"]
      163 NEWCLOSURE                       R25 P6
      164 CAPTURE                          UPVAL U14
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R23
      167 NEWTABLE                         R26 0 3
      169 GETTABLEKS                       R27 R2 K20 ["text"]
      171 GETTABLEKS                       R28 R2 K8 ["variant"]
      173 MOVE                             R29 R23
      174 SETLIST                          R26 R27 3 [1]
      176 CALL                             R24 2 1
      177 GETUPVAL                         R26 4
      178 GETTABLEKS                       R25 R26 K23 ["createElement"]
      180 GETUPVAL                         R26 15
      181 GETUPVAL                         R27 16
      182 MOVE                             R28 R2
      183 DUPTABLE                         R29 K37 [{"AutomaticSize", "cornerRadius", "backgroundStyle", "flexItem", "stroke", "Size", "selection", "cursor", "onActivated", "onStateChanged", "isDisabled", "stateLayer", "tag", "ref"}]
      184 GETTABLEKS                       R32 R2 K38 ["width"]
      186 GETTABLEKS                       R31 R32 K39 ["Scale"]
      188 JUMPIFNOTEQKN                    R31 K40 [0] ; [+4]
      190 GETIMPORT                        R30 K43 [Enum.AutomaticSize.X]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R30
      194 SETTABLEKS                       R30 R29 K24 ["AutomaticSize"]
      196 GETIMPORT                        R30 K46 [UDim.new]
      198 LOADN                            R31 0
      199 GETTABLEKS                       R33 R16 K18 ["container"]
      201 GETTABLEKS                       R32 R33 K19 ["radius"]
      203 CALL                             R30 2 1
      204 SETTABLEKS                       R30 R29 K25 ["cornerRadius"]
      206 GETTABLEKS                       R32 R16 K18 ["container"]
      208 GETTABLEKS                       R31 R32 K11 ["style"]
      210 JUMPIFNOT                        R31 ; [+20]
      211 GETTABLEKS                       R33 R16 K18 ["container"]
      213 GETTABLEKS                       R32 R33 K11 ["style"]
      215 GETTABLEKS                       R31 R32 K12 ["Transparency"]
      217 GETTABLEKS                       R32 R18 K47 ["transparency"]
      219 NEWCLOSURE                       R35 P7
      220 CAPTURE                          VAL R31
      221 NAMECALL                         R33 R32 K48 ["map"]
      223 CALL                             R33 2 1
      224 MOVE                             R30 R33
      225 NEWCLOSURE                       R32 P8
      226 CAPTURE                          VAL R16
      227 NAMECALL                         R30 R30 K48 ["map"]
      229 CALL                             R30 2 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R30
      232 SETTABLEKS                       R30 R29 K26 ["backgroundStyle"]
      234 GETTABLEKS                       R31 R2 K49 ["fillBehavior"]
      236 JUMPIFNOT                        R31 ; [+16]
      237 DUPTABLE                         R30 K51 [{"FlexMode"}]
      238 GETTABLEKS                       R32 R2 K49 ["fillBehavior"]
      240 GETUPVAL                         R34 17
      241 GETTABLEKS                       R33 R34 K52 ["Fill"]
      243 JUMPIFNOTEQ                      R32 R33 ; [+4]
      245 GETIMPORT                        R31 K54 [Enum.UIFlexMode.Fill]
      247 JUMP                             ; [+2]
      248 GETIMPORT                        R31 K56 [Enum.UIFlexMode.Shrink]
      250 SETTABLEKS                       R31 R30 K50 ["FlexMode"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R30
      254 SETTABLEKS                       R30 R29 K27 ["flexItem"]
      256 GETTABLEKS                       R32 R16 K18 ["container"]
      258 GETTABLEKS                       R31 R32 K28 ["stroke"]
      260 JUMPIFNOT                        R31 ; [+26]
      261 DUPTABLE                         R30 K58 [{"Color", "Transparency"}]
      262 GETTABLEKS                       R33 R16 K18 ["container"]
      264 GETTABLEKS                       R32 R33 K28 ["stroke"]
      266 GETTABLEKS                       R31 R32 K57 ["Color"]
      268 SETTABLEKS                       R31 R30 K57 ["Color"]
      270 GETTABLEKS                       R34 R16 K18 ["container"]
      272 GETTABLEKS                       R33 R34 K28 ["stroke"]
      274 GETTABLEKS                       R32 R33 K12 ["Transparency"]
      276 GETTABLEKS                       R33 R18 K47 ["transparency"]
      278 NEWCLOSURE                       R36 P7
      279 CAPTURE                          VAL R32
      280 NAMECALL                         R34 R33 K48 ["map"]
      282 CALL                             R34 2 1
      283 MOVE                             R31 R34
      284 SETTABLEKS                       R31 R30 K12 ["Transparency"]
      286 JUMP                             ; [+1]
      287 LOADNIL                          R30
      288 SETTABLEKS                       R30 R29 K28 ["stroke"]
      290 GETIMPORT                        R30 K60 [UDim2.new]
      292 GETTABLEKS                       R32 R2 K49 ["fillBehavior"]
      294 GETUPVAL                         R34 17
      295 GETTABLEKS                       R33 R34 K52 ["Fill"]
      297 JUMPIFNOTEQ                      R32 R33 ; [+3]
      299 LOADN                            R31 1
      300 JUMP                             ; [+4]
      301 GETTABLEKS                       R32 R2 K38 ["width"]
      303 GETTABLEKS                       R31 R32 K39 ["Scale"]
      305 GETTABLEKS                       R33 R2 K49 ["fillBehavior"]
      307 GETUPVAL                         R35 17
      308 GETTABLEKS                       R34 R35 K52 ["Fill"]
      310 JUMPIFNOTEQ                      R33 R34 ; [+3]
      312 LOADN                            R32 0
      313 JUMP                             ; [+4]
      314 GETTABLEKS                       R33 R2 K38 ["width"]
      316 GETTABLEKS                       R32 R33 K61 ["Offset"]
      318 LOADN                            R33 0
      319 GETTABLEKS                       R35 R16 K18 ["container"]
      321 GETTABLEKS                       R34 R35 K62 ["height"]
      323 CALL                             R30 4 1
      324 SETTABLEKS                       R30 R29 K29 ["Size"]
      326 DUPTABLE                         R30 K68 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      327 GETTABLEKS                       R32 R2 K16 ["isDisabled"]
      329 JUMPIFNOT                        R32 ; [+2]
      330 LOADB                            R31 0
      331 JUMP                             ; [+2]
      332 GETTABLEKS                       R31 R2 K63 ["Selectable"]
      334 SETTABLEKS                       R31 R30 K63 ["Selectable"]
      336 GETTABLEKS                       R31 R2 K64 ["NextSelectionUp"]
      338 SETTABLEKS                       R31 R30 K64 ["NextSelectionUp"]
      340 GETTABLEKS                       R31 R2 K65 ["NextSelectionDown"]
      342 SETTABLEKS                       R31 R30 K65 ["NextSelectionDown"]
      344 GETTABLEKS                       R31 R2 K66 ["NextSelectionLeft"]
      346 SETTABLEKS                       R31 R30 K66 ["NextSelectionLeft"]
      348 GETTABLEKS                       R31 R2 K67 ["NextSelectionRight"]
      350 SETTABLEKS                       R31 R30 K67 ["NextSelectionRight"]
      352 SETTABLEKS                       R30 R29 K30 ["selection"]
      354 SETTABLEKS                       R22 R29 K31 ["cursor"]
      356 GETTABLEKS                       R30 R2 K32 ["onActivated"]
      358 SETTABLEKS                       R30 R29 K32 ["onActivated"]
      360 SETTABLEKS                       R8 R29 K33 ["onStateChanged"]
      362 GETTABLEKS                       R30 R2 K16 ["isDisabled"]
      364 JUMPIF                           R30 ; [+4]
      365 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      367 JUMPIF                           R30 ; [+1]
      368 MOVE                             R30 R9
      369 SETTABLEKS                       R30 R29 K16 ["isDisabled"]
      371 GETTABLEKS                       R31 R16 K18 ["container"]
      373 GETTABLEKS                       R30 R31 K34 ["stateLayer"]
      375 SETTABLEKS                       R30 R29 K34 ["stateLayer"]
      377 GETTABLEKS                       R31 R16 K18 ["container"]
      379 GETTABLEKS                       R30 R31 K35 ["tag"]
      381 SETTABLEKS                       R30 R29 K35 ["tag"]
      383 SETTABLEKS                       R1 R29 K36 ["ref"]
      385 CALL                             R27 2 1
      386 DUPTABLE                         R28 K72 [{"IconWrapper", "Text", "Gradient"}]
      387 GETTABLEKS                       R30 R2 K1 ["icon"]
      389 JUMPIF                           R30 ; [+3]
      390 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      392 JUMPIFNOT                        R30 ; [+301]
      393 GETUPVAL                         R30 4
      394 GETTABLEKS                       R29 R30 K23 ["createElement"]
      396 GETTABLEKS                       R31 R2 K1 ["icon"]
      398 JUMPIFNOT                        R31 ; [+2]
      399 GETUPVAL                         R30 15
      400 JUMP                             ; [+1]
      401 LOADK                            R30 K73 ["Folder"]
      402 DUPTABLE                         R31 K76 [{"Size", "LayoutOrder", "testId"}]
      403 GETTABLEKS                       R33 R2 K1 ["icon"]
      405 JUMPIFNOT                        R33 ; [+5]
      406 GETTABLEKS                       R33 R16 K1 ["icon"]
      408 GETTABLEKS                       R32 R33 K2 ["size"]
      410 JUMP                             ; [+1]
      411 LOADNIL                          R32
      412 SETTABLEKS                       R32 R31 K29 ["Size"]
      414 GETTABLEKS                       R33 R2 K1 ["icon"]
      416 JUMPIFNOT                        R33 ; [+5]
      417 JUMPIFNOT                        R13 ; [+2]
      418 LOADN                            R32 3
      419 JUMP                             ; [+3]
      420 LOADN                            R32 1
      421 JUMP                             ; [+1]
      422 LOADNIL                          R32
      423 SETTABLEKS                       R32 R31 K74 ["LayoutOrder"]
      425 GETTABLEKS                       R33 R2 K1 ["icon"]
      427 JUMPIFNOT                        R33 ; [+8]
      428 LOADK                            R33 K77 ["%*--icon-wrapper"]
      429 GETTABLEKS                       R35 R2 K75 ["testId"]
      431 NAMECALL                         R33 R33 K78 ["format"]
      433 CALL                             R33 2 1
      434 MOVE                             R32 R33
      435 JUMP                             ; [+1]
      436 LOADNIL                          R32
      437 SETTABLEKS                       R32 R31 K75 ["testId"]
      439 DUPTABLE                         R32 K80 [{"PresenceWrapper"}]
      440 GETUPVAL                         R34 4
      441 GETTABLEKS                       R33 R34 K23 ["createElement"]
      443 GETUPVAL                         R34 18
      444 NEWTABLE                         R35 0 0
      446 DUPTABLE                         R36 K83 [{"Spinner", "Icon"}]
      447 GETTABLEKS                       R38 R2 K15 ["isLoading"]
      449 JUMPIFNOT                        R38 ; [+53]
      450 GETUPVAL                         R38 4
      451 GETTABLEKS                       R37 R38 K23 ["createElement"]
      453 GETUPVAL                         R38 19
      454 DUPTABLE                         R39 K84 [{"Size", "style", "testId"}]
      455 GETTABLEKS                       R42 R16 K1 ["icon"]
      457 GETTABLEKS                       R41 R42 K2 ["size"]
      459 GETUPVAL                         R44 20
      460 GETTABLEKS                       R43 R44 K85 ["FoundationUsePath2DSpinner"]
      462 JUMPIFNOT                        R43 ; [+12]
      463 GETIMPORT                        R42 K87 [UDim2.fromOffset]
      465 GETTABLEKS                       R44 R14 K88 ["Padding"]
      467 GETTABLEKS                       R43 R44 K89 ["XSmall"]
      469 GETTABLEKS                       R45 R14 K88 ["Padding"]
      471 GETTABLEKS                       R44 R45 K89 ["XSmall"]
      473 CALL                             R42 2 1
      474 JUMP                             ; [+5]
      475 GETIMPORT                        R42 K87 [UDim2.fromOffset]
      477 LOADN                            R43 0
      478 LOADN                            R44 0
      479 CALL                             R42 2 1
      480 SUB                              R40 R41 R42
      481 SETTABLEKS                       R40 R39 K29 ["Size"]
      483 GETTABLEKS                       R40 R18 K47 ["transparency"]
      485 NEWCLOSURE                       R42 P9
      486 CAPTURE                          VAL R16
      487 NAMECALL                         R40 R40 K48 ["map"]
      489 CALL                             R40 2 1
      490 SETTABLEKS                       R40 R39 K11 ["style"]
      492 LOADK                            R41 K90 ["%*--spinner"]
      493 GETTABLEKS                       R43 R2 K75 ["testId"]
      495 NAMECALL                         R41 R41 K78 ["format"]
      497 CALL                             R41 2 1
      498 MOVE                             R40 R41
      499 SETTABLEKS                       R40 R39 K75 ["testId"]
      501 CALL                             R37 2 1
      502 JUMP                             ; [+1]
      503 LOADNIL                          R37
      504 SETTABLEKS                       R37 R36 K81 ["Spinner"]
      506 GETTABLEKS                       R38 R2 K15 ["isLoading"]
      508 JUMPIF                           R38 ; [+177]
      509 GETTABLEKS                       R38 R2 K1 ["icon"]
      511 JUMPIFNOT                        R38 ; [+174]
      512 GETUPVAL                         R38 21
      513 GETTABLEKS                       R39 R2 K1 ["icon"]
      515 CALL                             R38 1 1
      516 JUMPIFNOT                        R38 ; [+113]
      517 GETUPVAL                         R38 4
      518 GETTABLEKS                       R37 R38 K23 ["createElement"]
      520 GETUPVAL                         R38 22
      521 DUPTABLE                         R39 K94 [{"Text", "fontStyle", "tag", "Size", "textStyle", "scale", "testId"}]
      522 GETUPVAL                         R41 23
      523 GETTABLEKS                       R42 R2 K1 ["icon"]
      525 CALL                             R41 1 1
      526 JUMPIFNOT                        R41 ; [+7]
      527 GETUPVAL                         R42 24
      528 GETTABLEKS                       R43 R2 K1 ["icon"]
      530 GETTABLE                         R41 R42 R43
      531 GETTABLEKS                       R40 R41 K95 ["name"]
      533 JUMP                             ; [+2]
      534 GETTABLEKS                       R40 R2 K1 ["icon"]
      536 SETTABLEKS                       R40 R39 K70 ["Text"]
      538 DUPTABLE                         R40 K98 [{"Font", "FontSize"}]
      539 GETUPVAL                         R43 25
      540 GETTABLEKS                       R42 R43 K96 ["Font"]
      542 GETUPVAL                         R44 23
      543 GETTABLEKS                       R45 R2 K1 ["icon"]
      545 CALL                             R44 1 1
      546 JUMPIFNOT                        R44 ; [+7]
      547 GETUPVAL                         R45 24
      548 GETTABLEKS                       R46 R2 K1 ["icon"]
      550 GETTABLE                         R44 R45 R46
      551 GETTABLEKS                       R43 R44 K8 ["variant"]
      553 JUMP                             ; [+5]
      554 GETUPVAL                         R45 25
      555 GETTABLEKS                       R44 R45 K99 ["IconVariant"]
      557 GETTABLEKS                       R43 R44 K100 ["Regular"]
      559 GETTABLE                         R41 R42 R43
      560 SETTABLEKS                       R41 R40 K96 ["Font"]
      562 GETTABLEKS                       R44 R16 K1 ["icon"]
      564 GETTABLEKS                       R43 R44 K2 ["size"]
      566 GETTABLEKS                       R42 R43 K101 ["Y"]
      568 GETTABLEKS                       R41 R42 K61 ["Offset"]
      570 SETTABLEKS                       R41 R40 K97 ["FontSize"]
      572 SETTABLEKS                       R40 R39 K91 ["fontStyle"]
      574 LOADK                            R40 K102 ["anchor-center-center position-center-center"]
      575 SETTABLEKS                       R40 R39 K35 ["tag"]
      577 GETTABLEKS                       R41 R16 K1 ["icon"]
      579 GETTABLEKS                       R40 R41 K2 ["size"]
      581 SETTABLEKS                       R40 R39 K29 ["Size"]
      583 GETTABLEKS                       R40 R18 K47 ["transparency"]
      585 NEWCLOSURE                       R42 P10
      586 CAPTURE                          VAL R16
      587 NAMECALL                         R40 R40 K48 ["map"]
      589 CALL                             R40 2 1
      590 SETTABLEKS                       R40 R39 K92 ["textStyle"]
      592 GETTABLEKS                       R40 R20 K103 ["iconScale"]
      594 SETTABLEKS                       R40 R39 K93 ["scale"]
      596 LOADK                            R41 K104 ["%*--icon"]
      597 GETTABLEKS                       R43 R2 K75 ["testId"]
      599 NAMECALL                         R41 R41 K78 ["format"]
      601 CALL                             R41 2 1
      602 MOVE                             R40 R41
      603 SETTABLEKS                       R40 R39 K75 ["testId"]
      605 DUPTABLE                         R40 K106 [{"UITextSizeConstraint"}]
      606 LOADN                            R42 0
      607 JUMPIFNOTLT                      R42 R6 ; [+17]
      609 GETUPVAL                         R42 4
      610 GETTABLEKS                       R41 R42 K23 ["createElement"]
      612 LOADK                            R42 K105 ["UITextSizeConstraint"]
      613 DUPTABLE                         R43 K108 [{"MaxTextSize"}]
      614 GETTABLEKS                       R44 R20 K103 ["iconScale"]
      616 NEWCLOSURE                       R46 P11
      617 CAPTURE                          VAL R16
      618 NAMECALL                         R44 R44 K48 ["map"]
      620 CALL                             R44 2 1
      621 SETTABLEKS                       R44 R43 K107 ["MaxTextSize"]
      623 CALL                             R41 2 1
      624 JUMP                             ; [+1]
      625 LOADNIL                          R41
      626 SETTABLEKS                       R41 R40 K105 ["UITextSizeConstraint"]
      628 CALL                             R37 3 1
      629 JUMP                             ; [+57]
      630 GETUPVAL                         R38 4
      631 GETTABLEKS                       R37 R38 K23 ["createElement"]
      633 GETUPVAL                         R38 26
      634 DUPTABLE                         R39 K111 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      635 LOADK                            R40 K102 ["anchor-center-center position-center-center"]
      636 SETTABLEKS                       R40 R39 K35 ["tag"]
      638 GETTABLEKS                       R40 R2 K1 ["icon"]
      640 SETTABLEKS                       R40 R39 K109 ["Image"]
      642 JUMPIFNOT                        R4 ; [+8]
      643 GETIMPORT                        R40 K87 [UDim2.fromOffset]
      645 GETTABLEKS                       R41 R4 K42 ["X"]
      647 GETTABLEKS                       R42 R4 K101 ["Y"]
      649 CALL                             R40 2 1
      650 JUMP                             ; [+4]
      651 GETTABLEKS                       R41 R16 K1 ["icon"]
      653 GETTABLEKS                       R40 R41 K2 ["size"]
      655 SETTABLEKS                       R40 R39 K29 ["Size"]
      657 GETTABLEKS                       R40 R18 K47 ["transparency"]
      659 NEWCLOSURE                       R42 P12
      660 CAPTURE                          VAL R16
      661 NAMECALL                         R40 R40 K48 ["map"]
      663 CALL                             R40 2 1
      664 SETTABLEKS                       R40 R39 K110 ["imageStyle"]
      666 GETTABLEKS                       R40 R20 K103 ["iconScale"]
      668 NEWCLOSURE                       R42 P13
      669 CAPTURE                          VAL R5
      670 NAMECALL                         R40 R40 K48 ["map"]
      672 CALL                             R40 2 1
      673 SETTABLEKS                       R40 R39 K93 ["scale"]
      675 LOADK                            R41 K104 ["%*--icon"]
      676 GETTABLEKS                       R43 R2 K75 ["testId"]
      678 NAMECALL                         R41 R41 K78 ["format"]
      680 CALL                             R41 2 1
      681 MOVE                             R40 R41
      682 SETTABLEKS                       R40 R39 K75 ["testId"]
      684 CALL                             R37 2 1
      685 JUMP                             ; [+1]
      686 LOADNIL                          R37
      687 SETTABLEKS                       R37 R36 K82 ["Icon"]
      689 CALL                             R33 3 1
      690 SETTABLEKS                       R33 R32 K79 ["PresenceWrapper"]
      692 CALL                             R29 3 1
      693 JUMP                             ; [+1]
      694 LOADNIL                          R29
      695 SETTABLEKS                       R29 R28 K69 ["IconWrapper"]
      697 JUMPIFNOT                        R23 ; [+62]
      698 GETUPVAL                         R30 4
      699 GETTABLEKS                       R29 R30 K23 ["createElement"]
      701 GETUPVAL                         R30 22
      702 DUPTABLE                         R31 K113 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      703 MOVE                             R34 R24
      704 NAMECALL                         R32 R7 K48 ["map"]
      706 CALL                             R32 2 1
      707 SETTABLEKS                       R32 R31 K70 ["Text"]
      709 GETUPVAL                         R34 14
      710 GETTABLEKS                       R35 R2 K8 ["variant"]
      712 GETTABLE                         R33 R34 R35
      713 JUMPIFEQKNIL                     R33 ; [+3]
      715 LOADB                            R32 1
      716 JUMP                             ; [+1]
      717 LOADB                            R32 0
      718 SETTABLEKS                       R32 R31 K112 ["RichText"]
      720 GETTABLEKS                       R33 R16 K20 ["text"]
      722 GETTABLEKS                       R32 R33 K35 ["tag"]
      724 SETTABLEKS                       R32 R31 K35 ["tag"]
      726 GETUPVAL                         R33 4
      727 GETTABLEKS                       R32 R33 K114 ["joinBindings"]
      729 NEWTABLE                         R33 0 2
      731 GETTABLEKS                       R34 R18 K47 ["transparency"]
      733 GETTABLEKS                       R35 R20 K115 ["textTransparency"]
      735 SETLIST                          R33 R34 2 [1]
      737 CALL                             R32 1 1
      738 NEWCLOSURE                       R34 P14
      739 CAPTURE                          VAL R16
      740 CAPTURE                          VAL R2
      741 NAMECALL                         R32 R32 K48 ["map"]
      743 CALL                             R32 2 1
      744 SETTABLEKS                       R32 R31 K92 ["textStyle"]
      746 LOADN                            R32 2
      747 SETTABLEKS                       R32 R31 K74 ["LayoutOrder"]
      749 LOADK                            R33 K116 ["%*--text"]
      750 GETTABLEKS                       R35 R2 K75 ["testId"]
      752 NAMECALL                         R33 R33 K78 ["format"]
      754 CALL                             R33 2 1
      755 MOVE                             R32 R33
      756 SETTABLEKS                       R32 R31 K75 ["testId"]
      758 CALL                             R29 2 1
      759 JUMP                             ; [+1]
      760 LOADNIL                          R29
      761 SETTABLEKS                       R29 R28 K70 ["Text"]
      763 JUMPIFNOT                        R9 ; [+13]
      764 GETUPVAL                         R30 4
      765 GETTABLEKS                       R29 R30 K23 ["createElement"]
      767 LOADK                            R30 K117 ["UIGradient"]
      768 DUPTABLE                         R31 K118 [{"Transparency"}]
      769 GETUPVAL                         R34 27
      770 NAMECALL                         R32 R11 K48 ["map"]
      772 CALL                             R32 2 1
      773 SETTABLEKS                       R32 R31 K12 ["Transparency"]
      775 CALL                             R29 2 1
      776 JUMP                             ; [+1]
      777 LOADNIL                          R29
      778 SETTABLEKS                       R29 R28 K71 ["Gradient"]
      780 CALL                             R25 3 -1
      781 RETURN                           R25 -1

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
       48 GETIMPORT                        R13 K1 [script]
       50 GETTABLEKS                       R12 R13 K4 ["Parent"]
       52 GETTABLEKS                       R11 R12 K16 ["endAlignedIcons"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K17 ["Enums"]
       59 GETTABLEKS                       R12 R13 K18 ["InputSize"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R14 R0 K17 ["Enums"]
       66 GETTABLEKS                       R13 R14 K19 ["ButtonVariant"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R15 R0 K17 ["Enums"]
       73 GETTABLEKS                       R14 R15 K20 ["FillBehavior"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K6 [require]
       78 GETTABLEKS                       R16 R0 K17 ["Enums"]
       80 GETTABLEKS                       R15 R16 K21 ["ControlState"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K6 [require]
       85 GETTABLEKS                       R17 R0 K22 ["Components"]
       87 GETTABLEKS                       R16 R17 K23 ["Types"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K6 [require]
       92 GETTABLEKS                       R18 R0 K22 ["Components"]
       94 GETTABLEKS                       R17 R18 K24 ["Image"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K6 [require]
       99 GETTABLEKS                       R19 R0 K22 ["Components"]
      101 GETTABLEKS                       R18 R19 K25 ["View"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K6 [require]
      106 GETTABLEKS                       R20 R0 K22 ["Components"]
      108 GETTABLEKS                       R19 R20 K26 ["Text"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K6 [require]
      113 GETTABLEKS                       R20 R0 K27 ["Constants"]
      115 CALL                             R19 1 1
      116 GETIMPORT                        R20 K6 [require]
      118 GETTABLEKS                       R22 R0 K28 ["Utility"]
      120 GETTABLEKS                       R21 R22 K29 ["Flags"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K6 [require]
      125 GETTABLEKS                       R23 R0 K28 ["Utility"]
      127 GETTABLEKS                       R22 R23 K30 ["getIconScale"]
      129 CALL                             R21 1 1
      130 GETIMPORT                        R22 K6 [require]
      132 GETTABLEKS                       R24 R0 K28 ["Utility"]
      134 GETTABLEKS                       R23 R24 K31 ["withDefaults"]
      136 CALL                             R22 1 1
      137 GETIMPORT                        R23 K6 [require]
      139 GETTABLEKS                       R25 R0 K28 ["Utility"]
      141 GETTABLEKS                       R24 R25 K32 ["withCommonProps"]
      143 CALL                             R23 1 1
      144 GETIMPORT                        R24 K6 [require]
      146 GETTABLEKS                       R26 R0 K28 ["Utility"]
      148 GETTABLEKS                       R25 R26 K33 ["iconMigrationUtils"]
      150 CALL                             R24 1 1
      151 GETTABLEKS                       R25 R24 K34 ["isMigrated"]
      153 GETTABLEKS                       R26 R24 K35 ["isBuilderOrMigratedIcon"]
      155 GETIMPORT                        R27 K6 [require]
      157 GETIMPORT                        R30 K1 [script]
      159 GETTABLEKS                       R29 R30 K4 ["Parent"]
      161 GETTABLEKS                       R28 R29 K36 ["useButtonVariants"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K6 [require]
      166 GETIMPORT                        R31 K1 [script]
      168 GETTABLEKS                       R30 R31 K4 ["Parent"]
      170 GETTABLEKS                       R29 R30 K37 ["useButtonMotionStates"]
      172 CALL                             R28 1 1
      173 GETIMPORT                        R29 K6 [require]
      175 GETTABLEKS                       R32 R0 K38 ["Providers"]
      177 GETTABLEKS                       R31 R32 K39 ["Style"]
      179 GETTABLEKS                       R30 R31 K40 ["useTokens"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R30 K6 [require]
      184 GETTABLEKS                       R33 R0 K38 ["Providers"]
      186 GETTABLEKS                       R32 R33 K39 ["Style"]
      188 GETTABLEKS                       R31 R32 K41 ["useTextSizeOffset"]
      190 CALL                             R30 1 1
      191 GETIMPORT                        R32 K6 [require]
      193 GETTABLEKS                       R35 R0 K38 ["Providers"]
      195 GETTABLEKS                       R34 R35 K39 ["Style"]
      197 GETTABLEKS                       R33 R34 K42 ["PresentationContext"]
      199 CALL                             R32 1 1
      200 GETTABLEKS                       R31 R32 K43 ["usePresentationContext"]
      202 NEWTABLE                         R32 1 0
      204 GETTABLEKS                       R33 R12 K44 ["Link"]
      206 DUPTABLE                         R34 K47 [{"format", "controlState"}]
      207 LOADK                            R35 K48 ["<u>%s</u>"]
      208 SETTABLEKS                       R35 R34 K45 ["format"]
      210 NEWTABLE                         R35 0 2
      212 GETTABLEKS                       R36 R14 K49 ["Hover"]
      214 GETTABLEKS                       R37 R14 K50 ["Pressed"]
      216 SETLIST                          R35 R36 2 [1]
      218 SETTABLEKS                       R35 R34 K46 ["controlState"]
      220 SETTABLE                         R34 R32 R33
      221 DUPCLOSURE                       R33 K51 [PROTO_0]
      222 CAPTURE                          VAL R19
      223 DUPCLOSURE                       R34 K52 [PROTO_2]
      224 DUPTABLE                         R35 K60 [{"isDisabled", "isLoading", "variant", "size", "width", "inputDelay", "testId"}]
      225 LOADB                            R36 0
      226 SETTABLEKS                       R36 R35 K53 ["isDisabled"]
      228 LOADB                            R36 0
      229 SETTABLEKS                       R36 R35 K54 ["isLoading"]
      231 GETTABLEKS                       R36 R12 K61 ["Standard"]
      233 SETTABLEKS                       R36 R35 K55 ["variant"]
      235 GETTABLEKS                       R36 R11 K62 ["Medium"]
      237 SETTABLEKS                       R36 R35 K56 ["size"]
      239 GETIMPORT                        R36 K65 [UDim.new]
      241 LOADN                            R37 0
      242 LOADN                            R38 0
      243 CALL                             R36 2 1
      244 SETTABLEKS                       R36 R35 K57 ["width"]
      246 LOADN                            R36 0
      247 SETTABLEKS                       R36 R35 K58 ["inputDelay"]
      249 LOADK                            R36 K66 ["--foundation-button"]
      250 SETTABLEKS                       R36 R35 K59 ["testId"]
      252 DUPCLOSURE                       R36 K67 [PROTO_17]
      253 CAPTURE                          VAL R22
      254 CAPTURE                          VAL R35
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R30
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R14
      259 CAPTURE                          VAL R8
      260 CAPTURE                          VAL R10
      261 CAPTURE                          VAL R29
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R27
      264 CAPTURE                          VAL R28
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R32
      268 CAPTURE                          VAL R17
      269 CAPTURE                          VAL R23
      270 CAPTURE                          VAL R13
      271 CAPTURE                          VAL R6
      272 CAPTURE                          VAL R9
      273 CAPTURE                          VAL R20
      274 CAPTURE                          VAL R26
      275 CAPTURE                          VAL R18
      276 CAPTURE                          VAL R25
      277 CAPTURE                          VAL R3
      278 CAPTURE                          VAL R2
      279 CAPTURE                          VAL R16
      280 CAPTURE                          VAL R33
      281 GETTABLEKS                       R37 R7 K68 ["memo"]
      283 GETTABLEKS                       R38 R7 K69 ["forwardRef"]
      285 MOVE                             R39 R36
      286 CALL                             R38 1 -1
      287 CALL                             R37 -1 -1
      288 RETURN                           R37 -1
