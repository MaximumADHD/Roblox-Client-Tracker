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
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["content"]
        4 GETTABLEKS                       R2 R2 K4 ["style"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["content"]
        4 GETTABLEKS                       R2 R2 K4 ["style"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["icon"]
        3 GETTABLEKS                       R2 R2 K1 ["size"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 GETTABLEKS                       R2 R2 K3 ["Offset"]
        9 MUL                              R1 R0 R2
       10 RETURN                           R1 1

PROTO_15:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["content"]
        4 GETTABLEKS                       R2 R2 K4 ["style"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 SETTABLEKS                       R0 R1 K1 ["Transparency"]
       12 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MUL                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_17:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["content"]
        6 GETTABLEKS                       R4 R4 K4 ["style"]
        8 GETTABLEKS                       R4 R4 K0 ["Color3"]
       10 SETTABLEKS                       R4 R3 K0 ["Color3"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["FoundationButtonLoadingHideTextWithIcon"]
       15 JUMPIF                           R5 ; [+6]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["icon"]
       19 JUMPIFNOT                        R5 ; [+2]
       20 MOVE                             R4 R1
       21 JUMP                             ; [+1]
       22 ADD                              R4 R2 R1
       23 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       25 RETURN                           R3 1

PROTO_18:
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
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K3 ["useBinding"]
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R8 R8 K4 ["Initialize"]
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 4
       22 GETTABLEKS                       R9 R9 K5 ["useState"]
       24 LOADN                            R11 0
       25 JUMPIFLT                         R11 R3 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 CALL                             R9 1 2
       30 GETUPVAL                         R11 6
       31 GETTABLEKS                       R11 R11 K6 ["useAnimatedBinding"]
       33 LOADN                            R12 0
       34 NEWCLOSURE                       R13 P0
       35 CAPTURE                          VAL R10
       36 CALL                             R11 2 2
       37 GETTABLEKS                       R13 R2 K1 ["icon"]
       39 JUMPIFNOT                        R13 ; [+4]
       40 GETUPVAL                         R14 7
       41 GETTABLEKS                       R15 R2 K1 ["icon"]
       43 GETTABLE                         R13 R14 R15
       44 GETUPVAL                         R14 4
       45 GETTABLEKS                       R14 R14 K7 ["useEffect"]
       47 NEWCLOSURE                       R15 P1
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R12
       50 CAPTURE                          UPVAL U6
       51 NEWTABLE                         R16 0 1
       53 MOVE                             R17 R9
       54 SETLIST                          R16 R17 1 [1]
       56 CALL                             R14 2 0
       57 GETUPVAL                         R14 4
       58 GETTABLEKS                       R14 R14 K7 ["useEffect"]
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
       89 GETTABLEKS                       R18 R16 K10 ["content"]
       91 GETTABLEKS                       R18 R18 K11 ["style"]
       93 GETTABLEKS                       R18 R18 K12 ["Transparency"]
       95 GETUPVAL                         R19 12
       96 GETTABLEKS                       R19 R19 K13 ["DISABLED_TRANSPARENCY"]
       98 CALL                             R17 2 1
       99 GETUPVAL                         R18 13
      100 GETTABLEKS                       R19 R17 K14 ["Default"]
      102 CALL                             R18 1 2
      103 GETUPVAL                         R20 13
      104 GETTABLEKS                       R21 R17 K14 ["Default"]
      106 CALL                             R20 1 2
      107 GETUPVAL                         R22 4
      108 GETTABLEKS                       R22 R22 K7 ["useEffect"]
      110 NEWCLOSURE                       R23 P3
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R21
      113 CAPTURE                          VAL R17
      114 NEWTABLE                         R24 0 1
      116 GETTABLEKS                       R25 R2 K15 ["isLoading"]
      118 SETLIST                          R24 R25 1 [1]
      120 CALL                             R22 2 0
      121 GETUPVAL                         R22 4
      122 GETTABLEKS                       R22 R22 K7 ["useEffect"]
      124 NEWCLOSURE                       R23 P4
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R17
      128 NEWTABLE                         R24 0 1
      130 GETTABLEKS                       R25 R2 K16 ["isDisabled"]
      132 SETLIST                          R24 R25 1 [1]
      134 CALL                             R22 2 0
      135 GETUPVAL                         R22 4
      136 GETTABLEKS                       R22 R22 K17 ["useMemo"]
      138 NEWCLOSURE                       R23 P5
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R14
      141 NEWTABLE                         R24 0 2
      143 MOVE                             R25 R14
      144 GETTABLEKS                       R26 R16 K18 ["container"]
      146 GETTABLEKS                       R26 R26 K19 ["radius"]
      148 SETLIST                          R24 R25 2 [1]
      150 CALL                             R22 2 1
      151 GETTABLEKS                       R23 R2 K20 ["text"]
      153 JUMPIFNOT                        R23 ; [+6]
      154 GETTABLEKS                       R24 R2 K20 ["text"]
      156 JUMPIFNOTEQKS                    R24 K21 [""] ; [+2]
      158 LOADB                            R23 0 +1
      159 LOADB                            R23 1
      160 GETUPVAL                         R24 4
      161 GETTABLEKS                       R24 R24 K22 ["useCallback"]
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
      177 GETUPVAL                         R25 4
      178 GETTABLEKS                       R25 R25 K23 ["createElement"]
      180 GETUPVAL                         R26 15
      181 GETUPVAL                         R27 16
      182 MOVE                             R28 R2
      183 DUPTABLE                         R29 K37 [{"AutomaticSize", "cornerRadius", "backgroundStyle", "flexItem", "stroke", "Size", "selection", "cursor", "onActivated", "onStateChanged", "isDisabled", "stateLayer", "tag", "ref"}]
      184 GETUPVAL                         R31 17
      185 GETTABLEKS                       R31 R31 K38 ["FoundationButtonWidthAutoSize"]
      187 JUMPIFNOT                        R31 ; [+17]
      188 GETTABLEKS                       R31 R2 K39 ["width"]
      190 GETTABLEKS                       R31 R31 K40 ["Scale"]
      192 JUMPIFNOTEQKN                    R31 K41 [0] ; [+10]
      194 GETTABLEKS                       R31 R2 K39 ["width"]
      196 GETTABLEKS                       R31 R31 K42 ["Offset"]
      198 JUMPIFNOTEQKN                    R31 K41 [0] ; [+4]
      200 GETIMPORT                        R30 K45 [Enum.AutomaticSize.X]
      202 JUMP                             ; [+12]
      203 LOADNIL                          R30
      204 JUMP                             ; [+10]
      205 GETTABLEKS                       R31 R2 K39 ["width"]
      207 GETTABLEKS                       R31 R31 K40 ["Scale"]
      209 JUMPIFNOTEQKN                    R31 K41 [0] ; [+4]
      211 GETIMPORT                        R30 K45 [Enum.AutomaticSize.X]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R30
      215 SETTABLEKS                       R30 R29 K24 ["AutomaticSize"]
      217 GETIMPORT                        R30 K48 [UDim.new]
      219 LOADN                            R31 0
      220 GETTABLEKS                       R32 R16 K18 ["container"]
      222 GETTABLEKS                       R32 R32 K19 ["radius"]
      224 CALL                             R30 2 1
      225 SETTABLEKS                       R30 R29 K25 ["cornerRadius"]
      227 GETTABLEKS                       R31 R16 K18 ["container"]
      229 GETTABLEKS                       R31 R31 K11 ["style"]
      231 JUMPIFNOT                        R31 ; [+20]
      232 GETTABLEKS                       R31 R16 K18 ["container"]
      234 GETTABLEKS                       R31 R31 K11 ["style"]
      236 GETTABLEKS                       R31 R31 K12 ["Transparency"]
      238 GETTABLEKS                       R32 R18 K49 ["transparency"]
      240 NEWCLOSURE                       R35 P7
      241 CAPTURE                          VAL R31
      242 NAMECALL                         R33 R32 K50 ["map"]
      244 CALL                             R33 2 1
      245 MOVE                             R30 R33
      246 NEWCLOSURE                       R32 P8
      247 CAPTURE                          VAL R16
      248 NAMECALL                         R30 R30 K50 ["map"]
      250 CALL                             R30 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R30
      253 SETTABLEKS                       R30 R29 K26 ["backgroundStyle"]
      255 GETTABLEKS                       R31 R2 K51 ["fillBehavior"]
      257 JUMPIFNOT                        R31 ; [+16]
      258 DUPTABLE                         R30 K53 [{"FlexMode"}]
      259 GETTABLEKS                       R32 R2 K51 ["fillBehavior"]
      261 GETUPVAL                         R33 18
      262 GETTABLEKS                       R33 R33 K54 ["Fill"]
      264 JUMPIFNOTEQ                      R32 R33 ; [+4]
      266 GETIMPORT                        R31 K56 [Enum.UIFlexMode.Fill]
      268 JUMP                             ; [+2]
      269 GETIMPORT                        R31 K58 [Enum.UIFlexMode.Shrink]
      271 SETTABLEKS                       R31 R30 K52 ["FlexMode"]
      273 JUMP                             ; [+1]
      274 LOADNIL                          R30
      275 SETTABLEKS                       R30 R29 K27 ["flexItem"]
      277 GETTABLEKS                       R31 R16 K18 ["container"]
      279 GETTABLEKS                       R31 R31 K28 ["stroke"]
      281 JUMPIFNOT                        R31 ; [+26]
      282 DUPTABLE                         R30 K60 [{"Color", "Transparency"}]
      283 GETTABLEKS                       R31 R16 K18 ["container"]
      285 GETTABLEKS                       R31 R31 K28 ["stroke"]
      287 GETTABLEKS                       R31 R31 K59 ["Color"]
      289 SETTABLEKS                       R31 R30 K59 ["Color"]
      291 GETTABLEKS                       R32 R16 K18 ["container"]
      293 GETTABLEKS                       R32 R32 K28 ["stroke"]
      295 GETTABLEKS                       R32 R32 K12 ["Transparency"]
      297 GETTABLEKS                       R33 R18 K49 ["transparency"]
      299 NEWCLOSURE                       R36 P7
      300 CAPTURE                          VAL R32
      301 NAMECALL                         R34 R33 K50 ["map"]
      303 CALL                             R34 2 1
      304 MOVE                             R31 R34
      305 SETTABLEKS                       R31 R30 K12 ["Transparency"]
      307 JUMP                             ; [+1]
      308 LOADNIL                          R30
      309 SETTABLEKS                       R30 R29 K28 ["stroke"]
      311 GETIMPORT                        R30 K62 [UDim2.new]
      313 GETTABLEKS                       R32 R2 K51 ["fillBehavior"]
      315 GETUPVAL                         R33 18
      316 GETTABLEKS                       R33 R33 K54 ["Fill"]
      318 JUMPIFNOTEQ                      R32 R33 ; [+3]
      320 LOADN                            R31 1
      321 JUMP                             ; [+4]
      322 GETTABLEKS                       R31 R2 K39 ["width"]
      324 GETTABLEKS                       R31 R31 K40 ["Scale"]
      326 GETTABLEKS                       R33 R2 K51 ["fillBehavior"]
      328 GETUPVAL                         R34 18
      329 GETTABLEKS                       R34 R34 K54 ["Fill"]
      331 JUMPIFNOTEQ                      R33 R34 ; [+3]
      333 LOADN                            R32 0
      334 JUMP                             ; [+4]
      335 GETTABLEKS                       R32 R2 K39 ["width"]
      337 GETTABLEKS                       R32 R32 K42 ["Offset"]
      339 LOADN                            R33 0
      340 GETTABLEKS                       R34 R16 K18 ["container"]
      342 GETTABLEKS                       R34 R34 K63 ["height"]
      344 CALL                             R30 4 1
      345 SETTABLEKS                       R30 R29 K29 ["Size"]
      347 DUPTABLE                         R30 K69 [{"Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight"}]
      348 GETTABLEKS                       R32 R2 K16 ["isDisabled"]
      350 JUMPIFNOT                        R32 ; [+2]
      351 LOADB                            R31 0
      352 JUMP                             ; [+2]
      353 GETTABLEKS                       R31 R2 K64 ["Selectable"]
      355 SETTABLEKS                       R31 R30 K64 ["Selectable"]
      357 GETTABLEKS                       R31 R2 K65 ["NextSelectionUp"]
      359 SETTABLEKS                       R31 R30 K65 ["NextSelectionUp"]
      361 GETTABLEKS                       R31 R2 K66 ["NextSelectionDown"]
      363 SETTABLEKS                       R31 R30 K66 ["NextSelectionDown"]
      365 GETTABLEKS                       R31 R2 K67 ["NextSelectionLeft"]
      367 SETTABLEKS                       R31 R30 K67 ["NextSelectionLeft"]
      369 GETTABLEKS                       R31 R2 K68 ["NextSelectionRight"]
      371 SETTABLEKS                       R31 R30 K68 ["NextSelectionRight"]
      373 SETTABLEKS                       R30 R29 K30 ["selection"]
      375 SETTABLEKS                       R22 R29 K31 ["cursor"]
      377 GETTABLEKS                       R30 R2 K32 ["onActivated"]
      379 SETTABLEKS                       R30 R29 K32 ["onActivated"]
      381 SETTABLEKS                       R8 R29 K33 ["onStateChanged"]
      383 GETTABLEKS                       R30 R2 K16 ["isDisabled"]
      385 JUMPIF                           R30 ; [+4]
      386 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      388 JUMPIF                           R30 ; [+1]
      389 MOVE                             R30 R9
      390 SETTABLEKS                       R30 R29 K16 ["isDisabled"]
      392 GETTABLEKS                       R30 R16 K18 ["container"]
      394 GETTABLEKS                       R30 R30 K34 ["stateLayer"]
      396 SETTABLEKS                       R30 R29 K34 ["stateLayer"]
      398 GETTABLEKS                       R30 R16 K18 ["container"]
      400 GETTABLEKS                       R30 R30 K35 ["tag"]
      402 SETTABLEKS                       R30 R29 K35 ["tag"]
      404 SETTABLEKS                       R1 R29 K36 ["ref"]
      406 CALL                             R27 2 1
      407 DUPTABLE                         R28 K74 [{"Loading", "IconWrapper", "Text", "Gradient"}]
      408 GETUPVAL                         R30 17
      409 GETTABLEKS                       R30 R30 K75 ["FoundationButtonLoadingHideTextWithIcon"]
      411 JUMPIFNOT                        R30 ; [+76]
      412 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      414 JUMPIFNOT                        R30 ; [+73]
      415 GETUPVAL                         R29 4
      416 GETTABLEKS                       R29 R29 K23 ["createElement"]
      418 LOADK                            R30 K76 ["Folder"]
      419 NEWTABLE                         R31 0 0
      421 DUPTABLE                         R32 K78 [{"PresenceWrapper"}]
      422 GETUPVAL                         R33 4
      423 GETTABLEKS                       R33 R33 K23 ["createElement"]
      425 GETUPVAL                         R34 19
      426 NEWTABLE                         R35 0 0
      428 DUPTABLE                         R36 K80 [{"Spinner"}]
      429 GETUPVAL                         R37 4
      430 GETTABLEKS                       R37 R37 K23 ["createElement"]
      432 GETUPVAL                         R38 20
      433 DUPTABLE                         R39 K82 [{"Size", "style", "testId"}]
      434 GETTABLEKS                       R41 R16 K1 ["icon"]
      436 GETTABLEKS                       R41 R41 K2 ["size"]
      438 GETUPVAL                         R43 17
      439 GETTABLEKS                       R43 R43 K83 ["FoundationUsePath2DSpinner"]
      441 JUMPIFNOT                        R43 ; [+12]
      442 GETIMPORT                        R42 K85 [UDim2.fromOffset]
      444 GETTABLEKS                       R43 R14 K86 ["Padding"]
      446 GETTABLEKS                       R43 R43 K87 ["XSmall"]
      448 GETTABLEKS                       R44 R14 K86 ["Padding"]
      450 GETTABLEKS                       R44 R44 K87 ["XSmall"]
      452 CALL                             R42 2 1
      453 JUMP                             ; [+5]
      454 GETIMPORT                        R42 K85 [UDim2.fromOffset]
      456 LOADN                            R43 0
      457 LOADN                            R44 0
      458 CALL                             R42 2 1
      459 SUB                              R40 R41 R42
      460 SETTABLEKS                       R40 R39 K29 ["Size"]
      462 GETTABLEKS                       R40 R18 K49 ["transparency"]
      464 NEWCLOSURE                       R42 P9
      465 CAPTURE                          VAL R16
      466 NAMECALL                         R40 R40 K50 ["map"]
      468 CALL                             R40 2 1
      469 SETTABLEKS                       R40 R39 K11 ["style"]
      471 LOADK                            R41 K88 ["%*--spinner"]
      472 GETTABLEKS                       R43 R2 K81 ["testId"]
      474 NAMECALL                         R41 R41 K89 ["format"]
      476 CALL                             R41 2 1
      477 MOVE                             R40 R41
      478 SETTABLEKS                       R40 R39 K81 ["testId"]
      480 CALL                             R37 2 1
      481 SETTABLEKS                       R37 R36 K79 ["Spinner"]
      483 CALL                             R33 3 1
      484 SETTABLEKS                       R33 R32 K77 ["PresenceWrapper"]
      486 CALL                             R29 3 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R29
      489 SETTABLEKS                       R29 R28 K70 ["Loading"]
      491 GETUPVAL                         R31 17
      492 GETTABLEKS                       R31 R31 K75 ["FoundationButtonLoadingHideTextWithIcon"]
      494 JUMPIFNOT                        R31 ; [+3]
      495 GETTABLEKS                       R30 R2 K1 ["icon"]
      497 JUMP                             ; [+5]
      498 GETTABLEKS                       R30 R2 K1 ["icon"]
      500 JUMPIF                           R30 ; [+2]
      501 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      503 JUMPIFNOT                        R30 ; [+350]
      504 GETUPVAL                         R29 4
      505 GETTABLEKS                       R29 R29 K23 ["createElement"]
      507 GETUPVAL                         R31 17
      508 GETTABLEKS                       R31 R31 K75 ["FoundationButtonLoadingHideTextWithIcon"]
      510 JUMPIF                           R31 ; [+3]
      511 GETTABLEKS                       R31 R2 K1 ["icon"]
      513 JUMPIFNOT                        R31 ; [+2]
      514 GETUPVAL                         R30 15
      515 JUMP                             ; [+1]
      516 LOADK                            R30 K76 ["Folder"]
      517 DUPTABLE                         R31 K91 [{"Size", "LayoutOrder", "testId"}]
      518 GETTABLEKS                       R33 R2 K1 ["icon"]
      520 JUMPIFNOT                        R33 ; [+5]
      521 GETTABLEKS                       R32 R16 K1 ["icon"]
      523 GETTABLEKS                       R32 R32 K2 ["size"]
      525 JUMP                             ; [+1]
      526 LOADNIL                          R32
      527 SETTABLEKS                       R32 R31 K29 ["Size"]
      529 GETTABLEKS                       R33 R2 K1 ["icon"]
      531 JUMPIFNOT                        R33 ; [+5]
      532 JUMPIFNOT                        R13 ; [+2]
      533 LOADN                            R32 3
      534 JUMP                             ; [+3]
      535 LOADN                            R32 1
      536 JUMP                             ; [+1]
      537 LOADNIL                          R32
      538 SETTABLEKS                       R32 R31 K90 ["LayoutOrder"]
      540 GETTABLEKS                       R33 R2 K1 ["icon"]
      542 JUMPIFNOT                        R33 ; [+8]
      543 LOADK                            R33 K92 ["%*--icon-wrapper"]
      544 GETTABLEKS                       R35 R2 K81 ["testId"]
      546 NAMECALL                         R33 R33 K89 ["format"]
      548 CALL                             R33 2 1
      549 MOVE                             R32 R33
      550 JUMP                             ; [+1]
      551 LOADNIL                          R32
      552 SETTABLEKS                       R32 R31 K81 ["testId"]
      554 DUPTABLE                         R32 K94 [{"PresenceWrapper", "Icon"}]
      555 GETUPVAL                         R34 17
      556 GETTABLEKS                       R34 R34 K75 ["FoundationButtonLoadingHideTextWithIcon"]
      558 JUMPIF                           R34 ; [+68]
      559 GETUPVAL                         R33 4
      560 GETTABLEKS                       R33 R33 K23 ["createElement"]
      562 GETUPVAL                         R34 19
      563 NEWTABLE                         R35 0 0
      565 DUPTABLE                         R36 K80 [{"Spinner"}]
      566 GETTABLEKS                       R38 R2 K15 ["isLoading"]
      568 JUMPIFNOT                        R38 ; [+53]
      569 GETUPVAL                         R37 4
      570 GETTABLEKS                       R37 R37 K23 ["createElement"]
      572 GETUPVAL                         R38 20
      573 DUPTABLE                         R39 K82 [{"Size", "style", "testId"}]
      574 GETTABLEKS                       R41 R16 K1 ["icon"]
      576 GETTABLEKS                       R41 R41 K2 ["size"]
      578 GETUPVAL                         R43 17
      579 GETTABLEKS                       R43 R43 K83 ["FoundationUsePath2DSpinner"]
      581 JUMPIFNOT                        R43 ; [+12]
      582 GETIMPORT                        R42 K85 [UDim2.fromOffset]
      584 GETTABLEKS                       R43 R14 K86 ["Padding"]
      586 GETTABLEKS                       R43 R43 K87 ["XSmall"]
      588 GETTABLEKS                       R44 R14 K86 ["Padding"]
      590 GETTABLEKS                       R44 R44 K87 ["XSmall"]
      592 CALL                             R42 2 1
      593 JUMP                             ; [+5]
      594 GETIMPORT                        R42 K85 [UDim2.fromOffset]
      596 LOADN                            R43 0
      597 LOADN                            R44 0
      598 CALL                             R42 2 1
      599 SUB                              R40 R41 R42
      600 SETTABLEKS                       R40 R39 K29 ["Size"]
      602 GETTABLEKS                       R40 R18 K49 ["transparency"]
      604 NEWCLOSURE                       R42 P10
      605 CAPTURE                          VAL R16
      606 NAMECALL                         R40 R40 K50 ["map"]
      608 CALL                             R40 2 1
      609 SETTABLEKS                       R40 R39 K11 ["style"]
      611 LOADK                            R41 K88 ["%*--spinner"]
      612 GETTABLEKS                       R43 R2 K81 ["testId"]
      614 NAMECALL                         R41 R41 K89 ["format"]
      616 CALL                             R41 2 1
      617 MOVE                             R40 R41
      618 SETTABLEKS                       R40 R39 K81 ["testId"]
      620 CALL                             R37 2 1
      621 JUMP                             ; [+1]
      622 LOADNIL                          R37
      623 SETTABLEKS                       R37 R36 K79 ["Spinner"]
      625 CALL                             R33 3 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R33
      628 SETTABLEKS                       R33 R32 K77 ["PresenceWrapper"]
      630 GETUPVAL                         R34 17
      631 GETTABLEKS                       R34 R34 K75 ["FoundationButtonLoadingHideTextWithIcon"]
      633 JUMPIFNOT                        R34 ; [+35]
      634 GETUPVAL                         R33 4
      635 GETTABLEKS                       R33 R33 K23 ["createElement"]
      637 GETUPVAL                         R34 21
      638 DUPTABLE                         R35 K97 [{"icon", "isLoading", "variant", "size", "disabledTransparencyBinding", "textTransparencyBinding", "testId"}]
      639 GETTABLEKS                       R36 R2 K1 ["icon"]
      641 SETTABLEKS                       R36 R35 K1 ["icon"]
      643 GETTABLEKS                       R36 R2 K15 ["isLoading"]
      645 SETTABLEKS                       R36 R35 K15 ["isLoading"]
      647 GETTABLEKS                       R36 R2 K8 ["variant"]
      649 SETTABLEKS                       R36 R35 K8 ["variant"]
      651 GETTABLEKS                       R36 R2 K2 ["size"]
      653 SETTABLEKS                       R36 R35 K2 ["size"]
      655 GETTABLEKS                       R36 R18 K49 ["transparency"]
      657 SETTABLEKS                       R36 R35 K95 ["disabledTransparencyBinding"]
      659 GETTABLEKS                       R36 R20 K98 ["textTransparency"]
      661 SETTABLEKS                       R36 R35 K96 ["textTransparencyBinding"]
      663 GETTABLEKS                       R36 R2 K81 ["testId"]
      665 SETTABLEKS                       R36 R35 K81 ["testId"]
      667 CALL                             R33 2 1
      668 JUMP                             ; [+181]
      669 GETTABLEKS                       R34 R2 K15 ["isLoading"]
      671 JUMPIF                           R34 ; [+177]
      672 GETTABLEKS                       R34 R2 K1 ["icon"]
      674 JUMPIFNOT                        R34 ; [+174]
      675 GETUPVAL                         R34 22
      676 GETTABLEKS                       R35 R2 K1 ["icon"]
      678 CALL                             R34 1 1
      679 JUMPIFNOT                        R34 ; [+113]
      680 GETUPVAL                         R33 4
      681 GETTABLEKS                       R33 R33 K23 ["createElement"]
      683 GETUPVAL                         R34 23
      684 DUPTABLE                         R35 K102 [{"Text", "fontStyle", "tag", "Size", "textStyle", "scale", "testId"}]
      685 GETUPVAL                         R37 24
      686 GETTABLEKS                       R38 R2 K1 ["icon"]
      688 CALL                             R37 1 1
      689 JUMPIFNOT                        R37 ; [+7]
      690 GETUPVAL                         R37 25
      691 GETTABLEKS                       R38 R2 K1 ["icon"]
      693 GETTABLE                         R36 R37 R38
      694 GETTABLEKS                       R36 R36 K103 ["name"]
      696 JUMP                             ; [+2]
      697 GETTABLEKS                       R36 R2 K1 ["icon"]
      699 SETTABLEKS                       R36 R35 K72 ["Text"]
      701 DUPTABLE                         R36 K106 [{"Font", "FontSize"}]
      702 GETUPVAL                         R38 26
      703 GETTABLEKS                       R38 R38 K104 ["Font"]
      705 GETUPVAL                         R40 24
      706 GETTABLEKS                       R41 R2 K1 ["icon"]
      708 CALL                             R40 1 1
      709 JUMPIFNOT                        R40 ; [+7]
      710 GETUPVAL                         R40 25
      711 GETTABLEKS                       R41 R2 K1 ["icon"]
      713 GETTABLE                         R39 R40 R41
      714 GETTABLEKS                       R39 R39 K8 ["variant"]
      716 JUMP                             ; [+5]
      717 GETUPVAL                         R39 26
      718 GETTABLEKS                       R39 R39 K107 ["IconVariant"]
      720 GETTABLEKS                       R39 R39 K108 ["Regular"]
      722 GETTABLE                         R37 R38 R39
      723 SETTABLEKS                       R37 R36 K104 ["Font"]
      725 GETTABLEKS                       R37 R16 K1 ["icon"]
      727 GETTABLEKS                       R37 R37 K2 ["size"]
      729 GETTABLEKS                       R37 R37 K109 ["Y"]
      731 GETTABLEKS                       R37 R37 K42 ["Offset"]
      733 SETTABLEKS                       R37 R36 K105 ["FontSize"]
      735 SETTABLEKS                       R36 R35 K99 ["fontStyle"]
      737 LOADK                            R36 K110 ["anchor-center-center position-center-center"]
      738 SETTABLEKS                       R36 R35 K35 ["tag"]
      740 GETTABLEKS                       R36 R16 K1 ["icon"]
      742 GETTABLEKS                       R36 R36 K2 ["size"]
      744 SETTABLEKS                       R36 R35 K29 ["Size"]
      746 GETTABLEKS                       R36 R18 K49 ["transparency"]
      748 NEWCLOSURE                       R38 P11
      749 CAPTURE                          VAL R16
      750 NAMECALL                         R36 R36 K50 ["map"]
      752 CALL                             R36 2 1
      753 SETTABLEKS                       R36 R35 K100 ["textStyle"]
      755 GETTABLEKS                       R36 R20 K111 ["iconScale"]
      757 SETTABLEKS                       R36 R35 K101 ["scale"]
      759 LOADK                            R37 K112 ["%*--icon"]
      760 GETTABLEKS                       R39 R2 K81 ["testId"]
      762 NAMECALL                         R37 R37 K89 ["format"]
      764 CALL                             R37 2 1
      765 MOVE                             R36 R37
      766 SETTABLEKS                       R36 R35 K81 ["testId"]
      768 DUPTABLE                         R36 K114 [{"UITextSizeConstraint"}]
      769 LOADN                            R38 0
      770 JUMPIFNOTLT                      R38 R6 ; [+17]
      772 GETUPVAL                         R37 4
      773 GETTABLEKS                       R37 R37 K23 ["createElement"]
      775 LOADK                            R38 K113 ["UITextSizeConstraint"]
      776 DUPTABLE                         R39 K116 [{"MaxTextSize"}]
      777 GETTABLEKS                       R40 R20 K111 ["iconScale"]
      779 NEWCLOSURE                       R42 P12
      780 CAPTURE                          VAL R16
      781 NAMECALL                         R40 R40 K50 ["map"]
      783 CALL                             R40 2 1
      784 SETTABLEKS                       R40 R39 K115 ["MaxTextSize"]
      786 CALL                             R37 2 1
      787 JUMP                             ; [+1]
      788 LOADNIL                          R37
      789 SETTABLEKS                       R37 R36 K113 ["UITextSizeConstraint"]
      791 CALL                             R33 3 1
      792 JUMP                             ; [+57]
      793 GETUPVAL                         R33 4
      794 GETTABLEKS                       R33 R33 K23 ["createElement"]
      796 GETUPVAL                         R34 27
      797 DUPTABLE                         R35 K119 [{"tag", "Image", "Size", "imageStyle", "scale", "testId"}]
      798 LOADK                            R36 K110 ["anchor-center-center position-center-center"]
      799 SETTABLEKS                       R36 R35 K35 ["tag"]
      801 GETTABLEKS                       R36 R2 K1 ["icon"]
      803 SETTABLEKS                       R36 R35 K117 ["Image"]
      805 JUMPIFNOT                        R4 ; [+8]
      806 GETIMPORT                        R36 K85 [UDim2.fromOffset]
      808 GETTABLEKS                       R37 R4 K44 ["X"]
      810 GETTABLEKS                       R38 R4 K109 ["Y"]
      812 CALL                             R36 2 1
      813 JUMP                             ; [+4]
      814 GETTABLEKS                       R36 R16 K1 ["icon"]
      816 GETTABLEKS                       R36 R36 K2 ["size"]
      818 SETTABLEKS                       R36 R35 K29 ["Size"]
      820 GETTABLEKS                       R36 R18 K49 ["transparency"]
      822 NEWCLOSURE                       R38 P13
      823 CAPTURE                          VAL R16
      824 NAMECALL                         R36 R36 K50 ["map"]
      826 CALL                             R36 2 1
      827 SETTABLEKS                       R36 R35 K118 ["imageStyle"]
      829 GETTABLEKS                       R36 R20 K111 ["iconScale"]
      831 NEWCLOSURE                       R38 P14
      832 CAPTURE                          VAL R5
      833 NAMECALL                         R36 R36 K50 ["map"]
      835 CALL                             R36 2 1
      836 SETTABLEKS                       R36 R35 K101 ["scale"]
      838 LOADK                            R37 K112 ["%*--icon"]
      839 GETTABLEKS                       R39 R2 K81 ["testId"]
      841 NAMECALL                         R37 R37 K89 ["format"]
      843 CALL                             R37 2 1
      844 MOVE                             R36 R37
      845 SETTABLEKS                       R36 R35 K81 ["testId"]
      847 CALL                             R33 2 1
      848 JUMP                             ; [+1]
      849 LOADNIL                          R33
      850 SETTABLEKS                       R33 R32 K93 ["Icon"]
      852 CALL                             R29 3 1
      853 JUMP                             ; [+1]
      854 LOADNIL                          R29
      855 SETTABLEKS                       R29 R28 K71 ["IconWrapper"]
      857 JUMPIFNOT                        R23 ; [+63]
      858 GETUPVAL                         R29 4
      859 GETTABLEKS                       R29 R29 K23 ["createElement"]
      861 GETUPVAL                         R30 23
      862 DUPTABLE                         R31 K121 [{"Text", "RichText", "tag", "textStyle", "LayoutOrder", "testId"}]
      863 MOVE                             R34 R24
      864 NAMECALL                         R32 R7 K50 ["map"]
      866 CALL                             R32 2 1
      867 SETTABLEKS                       R32 R31 K72 ["Text"]
      869 GETUPVAL                         R34 14
      870 GETTABLEKS                       R35 R2 K8 ["variant"]
      872 GETTABLE                         R33 R34 R35
      873 JUMPIFEQKNIL                     R33 ; [+3]
      875 LOADB                            R32 1
      876 JUMP                             ; [+1]
      877 LOADB                            R32 0
      878 SETTABLEKS                       R32 R31 K120 ["RichText"]
      880 GETTABLEKS                       R32 R16 K20 ["text"]
      882 GETTABLEKS                       R32 R32 K35 ["tag"]
      884 SETTABLEKS                       R32 R31 K35 ["tag"]
      886 GETUPVAL                         R32 4
      887 GETTABLEKS                       R32 R32 K122 ["joinBindings"]
      889 NEWTABLE                         R33 0 2
      891 GETTABLEKS                       R34 R18 K49 ["transparency"]
      893 GETTABLEKS                       R35 R20 K98 ["textTransparency"]
      895 SETLIST                          R33 R34 2 [1]
      897 CALL                             R32 1 1
      898 NEWCLOSURE                       R34 P15
      899 CAPTURE                          VAL R16
      900 CAPTURE                          UPVAL U17
      901 CAPTURE                          VAL R2
      902 NAMECALL                         R32 R32 K50 ["map"]
      904 CALL                             R32 2 1
      905 SETTABLEKS                       R32 R31 K100 ["textStyle"]
      907 LOADN                            R32 2
      908 SETTABLEKS                       R32 R31 K90 ["LayoutOrder"]
      910 LOADK                            R33 K123 ["%*--text"]
      911 GETTABLEKS                       R35 R2 K81 ["testId"]
      913 NAMECALL                         R33 R33 K89 ["format"]
      915 CALL                             R33 2 1
      916 MOVE                             R32 R33
      917 SETTABLEKS                       R32 R31 K81 ["testId"]
      919 CALL                             R29 2 1
      920 JUMP                             ; [+1]
      921 LOADNIL                          R29
      922 SETTABLEKS                       R29 R28 K72 ["Text"]
      924 JUMPIFNOT                        R9 ; [+13]
      925 GETUPVAL                         R29 4
      926 GETTABLEKS                       R29 R29 K23 ["createElement"]
      928 LOADK                            R30 K124 ["UIGradient"]
      929 DUPTABLE                         R31 K125 [{"Transparency"}]
      930 GETUPVAL                         R34 28
      931 NAMECALL                         R32 R11 K50 ["map"]
      933 CALL                             R32 2 1
      934 SETTABLEKS                       R32 R31 K12 ["Transparency"]
      936 CALL                             R29 2 1
      937 JUMP                             ; [+1]
      938 LOADNIL                          R29
      939 SETTABLEKS                       R29 R28 K73 ["Gradient"]
      941 CALL                             R25 3 -1
      942 RETURN                           R25 -1

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
       39 GETTABLEKS                       R10 R0 K15 ["Enums"]
       41 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       43 CALL                             R9 1 1
       44 GETIMPORT                        R10 K6 [require]
       46 GETIMPORT                        R11 K1 [script]
       48 GETTABLEKS                       R11 R11 K4 ["Parent"]
       50 GETTABLEKS                       R11 R11 K17 ["Spinner"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K6 [require]
       55 GETIMPORT                        R12 K1 [script]
       57 GETTABLEKS                       R12 R12 K4 ["Parent"]
       59 GETTABLEKS                       R12 R12 K18 ["endAlignedIcons"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K15 ["Enums"]
       66 GETTABLEKS                       R13 R13 K19 ["ButtonVariant"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETIMPORT                        R14 K1 [script]
       73 GETTABLEKS                       R14 R14 K4 ["Parent"]
       75 GETTABLEKS                       R14 R14 K20 ["Types"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K15 ["Enums"]
       82 GETTABLEKS                       R15 R15 K21 ["FillBehavior"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R0 K15 ["Enums"]
       89 GETTABLEKS                       R16 R16 K22 ["ControlState"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETIMPORT                        R17 K1 [script]
       96 GETTABLEKS                       R17 R17 K4 ["Parent"]
       98 GETTABLEKS                       R17 R17 K23 ["ButtonIcon"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K6 [require]
      103 GETTABLEKS                       R18 R0 K24 ["Components"]
      105 GETTABLEKS                       R18 R18 K25 ["Image"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R0 K24 ["Components"]
      112 GETTABLEKS                       R19 R19 K26 ["Text"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K24 ["Components"]
      119 GETTABLEKS                       R20 R20 K20 ["Types"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K24 ["Components"]
      126 GETTABLEKS                       R21 R21 K27 ["View"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R0 K28 ["Constants"]
      133 CALL                             R21 1 1
      134 GETIMPORT                        R22 K6 [require]
      136 GETTABLEKS                       R23 R0 K29 ["Utility"]
      138 GETTABLEKS                       R23 R23 K30 ["Flags"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K6 [require]
      143 GETTABLEKS                       R24 R0 K29 ["Utility"]
      145 GETTABLEKS                       R24 R24 K31 ["getIconScale"]
      147 CALL                             R23 1 1
      148 GETIMPORT                        R24 K6 [require]
      150 GETTABLEKS                       R25 R0 K29 ["Utility"]
      152 GETTABLEKS                       R25 R25 K32 ["withDefaults"]
      154 CALL                             R24 1 1
      155 GETIMPORT                        R25 K6 [require]
      157 GETTABLEKS                       R26 R0 K29 ["Utility"]
      159 GETTABLEKS                       R26 R26 K33 ["iconMigrationUtils"]
      161 CALL                             R25 1 1
      162 GETIMPORT                        R26 K6 [require]
      164 GETTABLEKS                       R27 R0 K29 ["Utility"]
      166 GETTABLEKS                       R27 R27 K34 ["withCommonProps"]
      168 CALL                             R26 1 1
      169 GETTABLEKS                       R27 R25 K35 ["isMigrated"]
      171 GETTABLEKS                       R28 R25 K36 ["isBuilderOrMigratedIcon"]
      173 GETIMPORT                        R29 K6 [require]
      175 GETIMPORT                        R30 K1 [script]
      177 GETTABLEKS                       R30 R30 K4 ["Parent"]
      179 GETTABLEKS                       R30 R30 K37 ["useButtonMotionStates"]
      181 CALL                             R29 1 1
      182 GETIMPORT                        R30 K6 [require]
      184 GETIMPORT                        R31 K1 [script]
      186 GETTABLEKS                       R31 R31 K4 ["Parent"]
      188 GETTABLEKS                       R31 R31 K38 ["useButtonVariants"]
      190 CALL                             R30 1 1
      191 GETIMPORT                        R31 K6 [require]
      193 GETTABLEKS                       R32 R0 K39 ["Providers"]
      195 GETTABLEKS                       R32 R32 K40 ["Style"]
      197 GETTABLEKS                       R32 R32 K41 ["useTextSizeOffset"]
      199 CALL                             R31 1 1
      200 GETIMPORT                        R32 K6 [require]
      202 GETTABLEKS                       R33 R0 K39 ["Providers"]
      204 GETTABLEKS                       R33 R33 K40 ["Style"]
      206 GETTABLEKS                       R33 R33 K42 ["useTokens"]
      208 CALL                             R32 1 1
      209 GETIMPORT                        R33 K6 [require]
      211 GETTABLEKS                       R34 R0 K39 ["Providers"]
      213 GETTABLEKS                       R34 R34 K40 ["Style"]
      215 GETTABLEKS                       R34 R34 K43 ["PresentationContext"]
      217 CALL                             R33 1 1
      218 GETTABLEKS                       R33 R33 K44 ["usePresentationContext"]
      220 NEWTABLE                         R34 1 0
      222 GETTABLEKS                       R35 R12 K45 ["Link"]
      224 DUPTABLE                         R36 K48 [{"format", "controlState"}]
      225 LOADK                            R37 K49 ["<u>%s</u>"]
      226 SETTABLEKS                       R37 R36 K46 ["format"]
      228 NEWTABLE                         R37 0 2
      230 GETTABLEKS                       R38 R15 K50 ["Hover"]
      232 GETTABLEKS                       R39 R15 K51 ["Pressed"]
      234 SETLIST                          R37 R38 2 [1]
      236 SETTABLEKS                       R37 R36 K47 ["controlState"]
      238 SETTABLE                         R36 R34 R35
      239 DUPCLOSURE                       R35 K52 [PROTO_0]
      240 CAPTURE                          VAL R21
      241 DUPCLOSURE                       R36 K53 [PROTO_2]
      242 DUPTABLE                         R37 K61 [{"isDisabled", "isLoading", "variant", "size", "width", "inputDelay", "testId"}]
      243 LOADB                            R38 0
      244 SETTABLEKS                       R38 R37 K54 ["isDisabled"]
      246 LOADB                            R38 0
      247 SETTABLEKS                       R38 R37 K55 ["isLoading"]
      249 GETTABLEKS                       R38 R12 K62 ["Standard"]
      251 SETTABLEKS                       R38 R37 K56 ["variant"]
      253 GETTABLEKS                       R38 R9 K63 ["Medium"]
      255 SETTABLEKS                       R38 R37 K57 ["size"]
      257 GETIMPORT                        R38 K66 [UDim.new]
      259 LOADN                            R39 0
      260 LOADN                            R40 0
      261 CALL                             R38 2 1
      262 SETTABLEKS                       R38 R37 K58 ["width"]
      264 LOADN                            R38 0
      265 SETTABLEKS                       R38 R37 K59 ["inputDelay"]
      267 LOADK                            R38 K67 ["--foundation-button"]
      268 SETTABLEKS                       R38 R37 K60 ["testId"]
      270 DUPCLOSURE                       R38 K68 [PROTO_18]
      271 CAPTURE                          VAL R24
      272 CAPTURE                          VAL R37
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R31
      275 CAPTURE                          VAL R7
      276 CAPTURE                          VAL R15
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R11
      279 CAPTURE                          VAL R32
      280 CAPTURE                          VAL R33
      281 CAPTURE                          VAL R30
      282 CAPTURE                          VAL R29
      283 CAPTURE                          VAL R21
      284 CAPTURE                          VAL R5
      285 CAPTURE                          VAL R34
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R26
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R14
      290 CAPTURE                          VAL R6
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R16
      293 CAPTURE                          VAL R28
      294 CAPTURE                          VAL R18
      295 CAPTURE                          VAL R27
      296 CAPTURE                          VAL R3
      297 CAPTURE                          VAL R2
      298 CAPTURE                          VAL R17
      299 CAPTURE                          VAL R35
      300 GETTABLEKS                       R39 R7 K69 ["memo"]
      302 GETTABLEKS                       R40 R7 K70 ["forwardRef"]
      304 MOVE                             R41 R38
      305 CALL                             R40 1 -1
      306 CALL                             R39 -1 -1
      307 RETURN                           R39 -1
