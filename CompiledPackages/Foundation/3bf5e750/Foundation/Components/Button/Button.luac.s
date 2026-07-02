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
        5 SUBRK                            R4 K0 [1] R5
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
      184 GETTABLEKS                       R31 R2 K38 ["width"]
      186 GETTABLEKS                       R31 R31 K39 ["Scale"]
      188 JUMPIFNOTEQKN                    R31 K40 [0] ; [+4]
      190 GETIMPORT                        R30 K43 [Enum.AutomaticSize.X]
      192 JUMP                             ; [+1]
      193 LOADNIL                          R30
      194 SETTABLEKS                       R30 R29 K24 ["AutomaticSize"]
      196 GETIMPORT                        R30 K46 [UDim.new]
      198 LOADN                            R31 0
      199 GETTABLEKS                       R32 R16 K18 ["container"]
      201 GETTABLEKS                       R32 R32 K19 ["radius"]
      203 CALL                             R30 2 1
      204 SETTABLEKS                       R30 R29 K25 ["cornerRadius"]
      206 GETTABLEKS                       R31 R16 K18 ["container"]
      208 GETTABLEKS                       R31 R31 K11 ["style"]
      210 JUMPIFNOT                        R31 ; [+20]
      211 GETTABLEKS                       R31 R16 K18 ["container"]
      213 GETTABLEKS                       R31 R31 K11 ["style"]
      215 GETTABLEKS                       R31 R31 K12 ["Transparency"]
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
      240 GETUPVAL                         R33 17
      241 GETTABLEKS                       R33 R33 K52 ["Fill"]
      243 JUMPIFNOTEQ                      R32 R33 ; [+4]
      245 GETIMPORT                        R31 K54 [Enum.UIFlexMode.Fill]
      247 JUMP                             ; [+2]
      248 GETIMPORT                        R31 K56 [Enum.UIFlexMode.Shrink]
      250 SETTABLEKS                       R31 R30 K50 ["FlexMode"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R30
      254 SETTABLEKS                       R30 R29 K27 ["flexItem"]
      256 GETTABLEKS                       R31 R16 K18 ["container"]
      258 GETTABLEKS                       R31 R31 K28 ["stroke"]
      260 JUMPIFNOT                        R31 ; [+26]
      261 DUPTABLE                         R30 K58 [{"Color", "Transparency"}]
      262 GETTABLEKS                       R31 R16 K18 ["container"]
      264 GETTABLEKS                       R31 R31 K28 ["stroke"]
      266 GETTABLEKS                       R31 R31 K57 ["Color"]
      268 SETTABLEKS                       R31 R30 K57 ["Color"]
      270 GETTABLEKS                       R32 R16 K18 ["container"]
      272 GETTABLEKS                       R32 R32 K28 ["stroke"]
      274 GETTABLEKS                       R32 R32 K12 ["Transparency"]
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
      294 GETUPVAL                         R33 17
      295 GETTABLEKS                       R33 R33 K52 ["Fill"]
      297 JUMPIFNOTEQ                      R32 R33 ; [+3]
      299 LOADN                            R31 1
      300 JUMP                             ; [+4]
      301 GETTABLEKS                       R31 R2 K38 ["width"]
      303 GETTABLEKS                       R31 R31 K39 ["Scale"]
      305 GETTABLEKS                       R33 R2 K49 ["fillBehavior"]
      307 GETUPVAL                         R34 17
      308 GETTABLEKS                       R34 R34 K52 ["Fill"]
      310 JUMPIFNOTEQ                      R33 R34 ; [+3]
      312 LOADN                            R32 0
      313 JUMP                             ; [+4]
      314 GETTABLEKS                       R32 R2 K38 ["width"]
      316 GETTABLEKS                       R32 R32 K61 ["Offset"]
      318 LOADN                            R33 0
      319 GETTABLEKS                       R34 R16 K18 ["container"]
      321 GETTABLEKS                       R34 R34 K62 ["height"]
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
      371 GETTABLEKS                       R30 R16 K18 ["container"]
      373 GETTABLEKS                       R30 R30 K34 ["stateLayer"]
      375 SETTABLEKS                       R30 R29 K34 ["stateLayer"]
      377 GETTABLEKS                       R30 R16 K18 ["container"]
      379 GETTABLEKS                       R30 R30 K35 ["tag"]
      381 SETTABLEKS                       R30 R29 K35 ["tag"]
      383 SETTABLEKS                       R1 R29 K36 ["ref"]
      385 CALL                             R27 2 1
      386 DUPTABLE                         R28 K73 [{"Loading", "IconWrapper", "Text", "Gradient"}]
      387 GETUPVAL                         R30 18
      388 GETTABLEKS                       R30 R30 K74 ["FoundationButtonLoadingHideTextWithIcon"]
      390 JUMPIFNOT                        R30 ; [+76]
      391 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      393 JUMPIFNOT                        R30 ; [+73]
      394 GETUPVAL                         R29 4
      395 GETTABLEKS                       R29 R29 K23 ["createElement"]
      397 LOADK                            R30 K75 ["Folder"]
      398 NEWTABLE                         R31 0 0
      400 DUPTABLE                         R32 K77 [{"PresenceWrapper"}]
      401 GETUPVAL                         R33 4
      402 GETTABLEKS                       R33 R33 K23 ["createElement"]
      404 GETUPVAL                         R34 19
      405 NEWTABLE                         R35 0 0
      407 DUPTABLE                         R36 K79 [{"Spinner"}]
      408 GETUPVAL                         R37 4
      409 GETTABLEKS                       R37 R37 K23 ["createElement"]
      411 GETUPVAL                         R38 20
      412 DUPTABLE                         R39 K81 [{"Size", "style", "testId"}]
      413 GETTABLEKS                       R41 R16 K1 ["icon"]
      415 GETTABLEKS                       R41 R41 K2 ["size"]
      417 GETUPVAL                         R43 18
      418 GETTABLEKS                       R43 R43 K82 ["FoundationUsePath2DSpinner"]
      420 JUMPIFNOT                        R43 ; [+12]
      421 GETIMPORT                        R42 K84 [UDim2.fromOffset]
      423 GETTABLEKS                       R43 R14 K85 ["Padding"]
      425 GETTABLEKS                       R43 R43 K86 ["XSmall"]
      427 GETTABLEKS                       R44 R14 K85 ["Padding"]
      429 GETTABLEKS                       R44 R44 K86 ["XSmall"]
      431 CALL                             R42 2 1
      432 JUMP                             ; [+5]
      433 GETIMPORT                        R42 K84 [UDim2.fromOffset]
      435 LOADN                            R43 0
      436 LOADN                            R44 0
      437 CALL                             R42 2 1
      438 SUB                              R40 R41 R42
      439 SETTABLEKS                       R40 R39 K29 ["Size"]
      441 GETTABLEKS                       R40 R18 K47 ["transparency"]
      443 NEWCLOSURE                       R42 P9
      444 CAPTURE                          VAL R16
      445 NAMECALL                         R40 R40 K48 ["map"]
      447 CALL                             R40 2 1
      448 SETTABLEKS                       R40 R39 K11 ["style"]
      450 LOADK                            R41 K87 ["%*--spinner"]
      451 GETTABLEKS                       R43 R2 K80 ["testId"]
      453 NAMECALL                         R41 R41 K88 ["format"]
      455 CALL                             R41 2 1
      456 MOVE                             R40 R41
      457 SETTABLEKS                       R40 R39 K80 ["testId"]
      459 CALL                             R37 2 1
      460 SETTABLEKS                       R37 R36 K78 ["Spinner"]
      462 CALL                             R33 3 1
      463 SETTABLEKS                       R33 R32 K76 ["PresenceWrapper"]
      465 CALL                             R29 3 1
      466 JUMP                             ; [+1]
      467 LOADNIL                          R29
      468 SETTABLEKS                       R29 R28 K69 ["Loading"]
      470 GETUPVAL                         R31 18
      471 GETTABLEKS                       R31 R31 K74 ["FoundationButtonLoadingHideTextWithIcon"]
      473 JUMPIFNOT                        R31 ; [+3]
      474 GETTABLEKS                       R30 R2 K1 ["icon"]
      476 JUMP                             ; [+5]
      477 GETTABLEKS                       R30 R2 K1 ["icon"]
      479 JUMPIF                           R30 ; [+2]
      480 GETTABLEKS                       R30 R2 K15 ["isLoading"]
      482 JUMPIFNOT                        R30 ; [+344]
      483 GETUPVAL                         R29 4
      484 GETTABLEKS                       R29 R29 K23 ["createElement"]
      486 GETUPVAL                         R31 18
      487 GETTABLEKS                       R31 R31 K74 ["FoundationButtonLoadingHideTextWithIcon"]
      489 JUMPIF                           R31 ; [+3]
      490 GETTABLEKS                       R31 R2 K1 ["icon"]
      492 JUMPIFNOT                        R31 ; [+2]
      493 GETUPVAL                         R30 15
      494 JUMP                             ; [+1]
      495 LOADK                            R30 K75 ["Folder"]
      496 DUPTABLE                         R31 K90 [{"Size", "LayoutOrder", "testId"}]
      497 GETTABLEKS                       R33 R2 K1 ["icon"]
      499 JUMPIFNOT                        R33 ; [+5]
      500 GETTABLEKS                       R32 R16 K1 ["icon"]
      502 GETTABLEKS                       R32 R32 K2 ["size"]
      504 JUMP                             ; [+1]
      505 LOADNIL                          R32
      506 SETTABLEKS                       R32 R31 K29 ["Size"]
      508 GETTABLEKS                       R33 R2 K1 ["icon"]
      510 JUMPIFNOT                        R33 ; [+5]
      511 JUMPIFNOT                        R13 ; [+2]
      512 LOADN                            R32 3
      513 JUMP                             ; [+3]
      514 LOADN                            R32 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R32
      517 SETTABLEKS                       R32 R31 K89 ["LayoutOrder"]
      519 GETTABLEKS                       R33 R2 K1 ["icon"]
      521 JUMPIFNOT                        R33 ; [+8]
      522 LOADK                            R33 K91 ["%*--icon-wrapper"]
      523 GETTABLEKS                       R35 R2 K80 ["testId"]
      525 NAMECALL                         R33 R33 K88 ["format"]
      527 CALL                             R33 2 1
      528 MOVE                             R32 R33
      529 JUMP                             ; [+1]
      530 LOADNIL                          R32
      531 SETTABLEKS                       R32 R31 K80 ["testId"]
      533 DUPTABLE                         R32 K93 [{"PresenceWrapper", "Icon"}]
      534 GETUPVAL                         R34 18
      535 GETTABLEKS                       R34 R34 K74 ["FoundationButtonLoadingHideTextWithIcon"]
      537 JUMPIF                           R34 ; [+68]
      538 GETUPVAL                         R33 4
      539 GETTABLEKS                       R33 R33 K23 ["createElement"]
      541 GETUPVAL                         R34 19
      542 NEWTABLE                         R35 0 0
      544 DUPTABLE                         R36 K79 [{"Spinner"}]
      545 GETTABLEKS                       R38 R2 K15 ["isLoading"]
      547 JUMPIFNOT                        R38 ; [+53]
      548 GETUPVAL                         R37 4
      549 GETTABLEKS                       R37 R37 K23 ["createElement"]
      551 GETUPVAL                         R38 20
      552 DUPTABLE                         R39 K81 [{"Size", "style", "testId"}]
      553 GETTABLEKS                       R41 R16 K1 ["icon"]
      555 GETTABLEKS                       R41 R41 K2 ["size"]
      557 GETUPVAL                         R43 18
      558 GETTABLEKS                       R43 R43 K82 ["FoundationUsePath2DSpinner"]
      560 JUMPIFNOT                        R43 ; [+12]
      561 GETIMPORT                        R42 K84 [UDim2.fromOffset]
      563 GETTABLEKS                       R43 R14 K85 ["Padding"]
      565 GETTABLEKS                       R43 R43 K86 ["XSmall"]
      567 GETTABLEKS                       R44 R14 K85 ["Padding"]
      569 GETTABLEKS                       R44 R44 K86 ["XSmall"]
      571 CALL                             R42 2 1
      572 JUMP                             ; [+5]
      573 GETIMPORT                        R42 K84 [UDim2.fromOffset]
      575 LOADN                            R43 0
      576 LOADN                            R44 0
      577 CALL                             R42 2 1
      578 SUB                              R40 R41 R42
      579 SETTABLEKS                       R40 R39 K29 ["Size"]
      581 GETTABLEKS                       R40 R18 K47 ["transparency"]
      583 NEWCLOSURE                       R42 P10
      584 CAPTURE                          VAL R16
      585 NAMECALL                         R40 R40 K48 ["map"]
      587 CALL                             R40 2 1
      588 SETTABLEKS                       R40 R39 K11 ["style"]
      590 LOADK                            R41 K87 ["%*--spinner"]
      591 GETTABLEKS                       R43 R2 K80 ["testId"]
      593 NAMECALL                         R41 R41 K88 ["format"]
      595 CALL                             R41 2 1
      596 MOVE                             R40 R41
      597 SETTABLEKS                       R40 R39 K80 ["testId"]
      599 CALL                             R37 2 1
      600 JUMP                             ; [+1]
      601 LOADNIL                          R37
      602 SETTABLEKS                       R37 R36 K78 ["Spinner"]
      604 CALL                             R33 3 1
      605 JUMP                             ; [+1]
      606 LOADNIL                          R33
      607 SETTABLEKS                       R33 R32 K76 ["PresenceWrapper"]
      609 GETUPVAL                         R34 18
      610 GETTABLEKS                       R34 R34 K74 ["FoundationButtonLoadingHideTextWithIcon"]
      612 JUMPIFNOT                        R34 ; [+35]
      613 GETUPVAL                         R33 4
      614 GETTABLEKS                       R33 R33 K23 ["createElement"]
      616 GETUPVAL                         R34 21
      617 DUPTABLE                         R35 K96 [{"icon", "isLoading", "variant", "size", "disabledTransparencyBinding", "textTransparencyBinding", "testId"}]
      618 GETTABLEKS                       R36 R2 K1 ["icon"]
      620 SETTABLEKS                       R36 R35 K1 ["icon"]
      622 GETTABLEKS                       R36 R2 K15 ["isLoading"]
      624 SETTABLEKS                       R36 R35 K15 ["isLoading"]
      626 GETTABLEKS                       R36 R2 K8 ["variant"]
      628 SETTABLEKS                       R36 R35 K8 ["variant"]
      630 GETTABLEKS                       R36 R2 K2 ["size"]
      632 SETTABLEKS                       R36 R35 K2 ["size"]
      634 GETTABLEKS                       R36 R18 K47 ["transparency"]
      636 SETTABLEKS                       R36 R35 K94 ["disabledTransparencyBinding"]
      638 GETTABLEKS                       R36 R20 K97 ["textTransparency"]
      640 SETTABLEKS                       R36 R35 K95 ["textTransparencyBinding"]
      642 GETTABLEKS                       R36 R2 K80 ["testId"]
      644 SETTABLEKS                       R36 R35 K80 ["testId"]
      646 CALL                             R33 2 1
      647 JUMP                             ; [+175]
      648 GETTABLEKS                       R34 R2 K15 ["isLoading"]
      650 JUMPIF                           R34 ; [+171]
      651 GETTABLEKS                       R34 R2 K1 ["icon"]
      653 JUMPIFNOT                        R34 ; [+168]
      654 GETUPVAL                         R34 22
      655 GETTABLEKS                       R35 R2 K1 ["icon"]
      657 CALL                             R34 1 1
      658 JUMPIFNOT                        R34 ; [+110]
      659 GETUPVAL                         R33 4
      660 GETTABLEKS                       R33 R33 K23 ["createElement"]
      662 GETUPVAL                         R34 23
      663 DUPTABLE                         R35 K102 [{["Text"], ["fontStyle"], ["tag"] = "anchor-center-center position-center-center", ["Size"], ["textStyle"], ["scale"], ["testId"]}]
      664 GETUPVAL                         R37 24
      665 GETTABLEKS                       R38 R2 K1 ["icon"]
      667 CALL                             R37 1 1
      668 JUMPIFNOT                        R37 ; [+7]
      669 GETUPVAL                         R37 25
      670 GETTABLEKS                       R38 R2 K1 ["icon"]
      672 GETTABLE                         R36 R37 R38
      673 GETTABLEKS                       R36 R36 K103 ["name"]
      675 JUMP                             ; [+2]
      676 GETTABLEKS                       R36 R2 K1 ["icon"]
      678 SETTABLEKS                       R36 R35 K71 ["Text"]
      680 DUPTABLE                         R36 K106 [{"Font", "FontSize"}]
      681 GETUPVAL                         R38 26
      682 GETTABLEKS                       R38 R38 K104 ["Font"]
      684 GETUPVAL                         R40 24
      685 GETTABLEKS                       R41 R2 K1 ["icon"]
      687 CALL                             R40 1 1
      688 JUMPIFNOT                        R40 ; [+7]
      689 GETUPVAL                         R40 25
      690 GETTABLEKS                       R41 R2 K1 ["icon"]
      692 GETTABLE                         R39 R40 R41
      693 GETTABLEKS                       R39 R39 K8 ["variant"]
      695 JUMP                             ; [+5]
      696 GETUPVAL                         R39 26
      697 GETTABLEKS                       R39 R39 K107 ["IconVariant"]
      699 GETTABLEKS                       R39 R39 K108 ["Regular"]
      701 GETTABLE                         R37 R38 R39
      702 SETTABLEKS                       R37 R36 K104 ["Font"]
      704 GETTABLEKS                       R37 R16 K1 ["icon"]
      706 GETTABLEKS                       R37 R37 K2 ["size"]
      708 GETTABLEKS                       R37 R37 K109 ["Y"]
      710 GETTABLEKS                       R37 R37 K61 ["Offset"]
      712 SETTABLEKS                       R37 R36 K105 ["FontSize"]
      714 SETTABLEKS                       R36 R35 K98 ["fontStyle"]
      716 GETTABLEKS                       R36 R16 K1 ["icon"]
      718 GETTABLEKS                       R36 R36 K2 ["size"]
      720 SETTABLEKS                       R36 R35 K29 ["Size"]
      722 GETTABLEKS                       R36 R18 K47 ["transparency"]
      724 NEWCLOSURE                       R38 P11
      725 CAPTURE                          VAL R16
      726 NAMECALL                         R36 R36 K48 ["map"]
      728 CALL                             R36 2 1
      729 SETTABLEKS                       R36 R35 K100 ["textStyle"]
      731 GETTABLEKS                       R36 R20 K110 ["iconScale"]
      733 SETTABLEKS                       R36 R35 K101 ["scale"]
      735 LOADK                            R37 K111 ["%*--icon"]
      736 GETTABLEKS                       R39 R2 K80 ["testId"]
      738 NAMECALL                         R37 R37 K88 ["format"]
      740 CALL                             R37 2 1
      741 MOVE                             R36 R37
      742 SETTABLEKS                       R36 R35 K80 ["testId"]
      744 DUPTABLE                         R36 K113 [{"UITextSizeConstraint"}]
      745 LOADN                            R38 0
      746 JUMPIFNOTLT                      R38 R6 ; [+17]
      748 GETUPVAL                         R37 4
      749 GETTABLEKS                       R37 R37 K23 ["createElement"]
      751 LOADK                            R38 K112 ["UITextSizeConstraint"]
      752 DUPTABLE                         R39 K115 [{"MaxTextSize"}]
      753 GETTABLEKS                       R40 R20 K110 ["iconScale"]
      755 NEWCLOSURE                       R42 P12
      756 CAPTURE                          VAL R16
      757 NAMECALL                         R40 R40 K48 ["map"]
      759 CALL                             R40 2 1
      760 SETTABLEKS                       R40 R39 K114 ["MaxTextSize"]
      762 CALL                             R37 2 1
      763 JUMP                             ; [+1]
      764 LOADNIL                          R37
      765 SETTABLEKS                       R37 R36 K112 ["UITextSizeConstraint"]
      767 CALL                             R33 3 1
      768 JUMP                             ; [+54]
      769 GETUPVAL                         R33 4
      770 GETTABLEKS                       R33 R33 K23 ["createElement"]
      772 GETUPVAL                         R34 27
      773 DUPTABLE                         R35 K118 [{["tag"] = "anchor-center-center position-center-center", ["Image"], ["Size"], ["imageStyle"], ["scale"], ["testId"]}]
      774 GETTABLEKS                       R36 R2 K1 ["icon"]
      776 SETTABLEKS                       R36 R35 K116 ["Image"]
      778 JUMPIFNOT                        R4 ; [+8]
      779 GETIMPORT                        R36 K84 [UDim2.fromOffset]
      781 GETTABLEKS                       R37 R4 K42 ["X"]
      783 GETTABLEKS                       R38 R4 K109 ["Y"]
      785 CALL                             R36 2 1
      786 JUMP                             ; [+4]
      787 GETTABLEKS                       R36 R16 K1 ["icon"]
      789 GETTABLEKS                       R36 R36 K2 ["size"]
      791 SETTABLEKS                       R36 R35 K29 ["Size"]
      793 GETTABLEKS                       R36 R18 K47 ["transparency"]
      795 NEWCLOSURE                       R38 P13
      796 CAPTURE                          VAL R16
      797 NAMECALL                         R36 R36 K48 ["map"]
      799 CALL                             R36 2 1
      800 SETTABLEKS                       R36 R35 K117 ["imageStyle"]
      802 GETTABLEKS                       R36 R20 K110 ["iconScale"]
      804 NEWCLOSURE                       R38 P14
      805 CAPTURE                          VAL R5
      806 NAMECALL                         R36 R36 K48 ["map"]
      808 CALL                             R36 2 1
      809 SETTABLEKS                       R36 R35 K101 ["scale"]
      811 LOADK                            R37 K111 ["%*--icon"]
      812 GETTABLEKS                       R39 R2 K80 ["testId"]
      814 NAMECALL                         R37 R37 K88 ["format"]
      816 CALL                             R37 2 1
      817 MOVE                             R36 R37
      818 SETTABLEKS                       R36 R35 K80 ["testId"]
      820 CALL                             R33 2 1
      821 JUMP                             ; [+1]
      822 LOADNIL                          R33
      823 SETTABLEKS                       R33 R32 K92 ["Icon"]
      825 CALL                             R29 3 1
      826 JUMP                             ; [+1]
      827 LOADNIL                          R29
      828 SETTABLEKS                       R29 R28 K70 ["IconWrapper"]
      830 JUMPIFNOT                        R23 ; [+60]
      831 GETUPVAL                         R29 4
      832 GETTABLEKS                       R29 R29 K23 ["createElement"]
      834 GETUPVAL                         R30 23
      835 DUPTABLE                         R31 K121 [{["Text"], ["RichText"], ["tag"], ["textStyle"], ["LayoutOrder"] = 2, ["testId"]}]
      836 MOVE                             R34 R24
      837 NAMECALL                         R32 R7 K48 ["map"]
      839 CALL                             R32 2 1
      840 SETTABLEKS                       R32 R31 K71 ["Text"]
      842 GETUPVAL                         R34 14
      843 GETTABLEKS                       R35 R2 K8 ["variant"]
      845 GETTABLE                         R33 R34 R35
      846 JUMPIFEQKNIL                     R33 ; [+3]
      848 LOADB                            R32 1
      849 JUMP                             ; [+1]
      850 LOADB                            R32 0
      851 SETTABLEKS                       R32 R31 K119 ["RichText"]
      853 GETTABLEKS                       R32 R16 K20 ["text"]
      855 GETTABLEKS                       R32 R32 K35 ["tag"]
      857 SETTABLEKS                       R32 R31 K35 ["tag"]
      859 GETUPVAL                         R32 4
      860 GETTABLEKS                       R32 R32 K122 ["joinBindings"]
      862 NEWTABLE                         R33 0 2
      864 GETTABLEKS                       R34 R18 K47 ["transparency"]
      866 GETTABLEKS                       R35 R20 K97 ["textTransparency"]
      868 SETLIST                          R33 R34 2 [1]
      870 CALL                             R32 1 1
      871 NEWCLOSURE                       R34 P15
      872 CAPTURE                          VAL R16
      873 CAPTURE                          UPVAL U18
      874 CAPTURE                          VAL R2
      875 NAMECALL                         R32 R32 K48 ["map"]
      877 CALL                             R32 2 1
      878 SETTABLEKS                       R32 R31 K100 ["textStyle"]
      880 LOADK                            R33 K123 ["%*--text"]
      881 GETTABLEKS                       R35 R2 K80 ["testId"]
      883 NAMECALL                         R33 R33 K88 ["format"]
      885 CALL                             R33 2 1
      886 MOVE                             R32 R33
      887 SETTABLEKS                       R32 R31 K80 ["testId"]
      889 CALL                             R29 2 1
      890 JUMP                             ; [+1]
      891 LOADNIL                          R29
      892 SETTABLEKS                       R29 R28 K71 ["Text"]
      894 JUMPIFNOT                        R9 ; [+13]
      895 GETUPVAL                         R29 4
      896 GETTABLEKS                       R29 R29 K23 ["createElement"]
      898 LOADK                            R30 K124 ["UIGradient"]
      899 DUPTABLE                         R31 K125 [{"Transparency"}]
      900 GETUPVAL                         R34 28
      901 NAMECALL                         R32 R11 K48 ["map"]
      903 CALL                             R32 2 1
      904 SETTABLEKS                       R32 R31 K12 ["Transparency"]
      906 CALL                             R29 2 1
      907 JUMP                             ; [+1]
      908 LOADNIL                          R29
      909 SETTABLEKS                       R29 R28 K72 ["Gradient"]
      911 CALL                             R25 3 -1
      912 RETURN                           R25 -1

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
      224 DUPTABLE                         R36 K49 [{["format"] = "<u>%s</u>", ["controlState"]}]
      225 NEWTABLE                         R37 0 2
      227 GETTABLEKS                       R38 R15 K50 ["Hover"]
      229 GETTABLEKS                       R39 R15 K51 ["Pressed"]
      231 SETLIST                          R37 R38 2 [1]
      233 SETTABLEKS                       R37 R36 K48 ["controlState"]
      235 SETTABLE                         R36 R34 R35
      236 DUPCLOSURE                       R35 K52 [PROTO_0]
      237 CAPTURE                          VAL R21
      238 DUPCLOSURE                       R36 K53 [PROTO_2]
      239 DUPTABLE                         R37 K64 [{["isDisabled"] = False, ["isLoading"] = False, ["variant"], ["size"], ["width"], ["inputDelay"] = 0, ["testId"] = "--foundation-button"}]
      240 GETTABLEKS                       R38 R12 K65 ["Standard"]
      242 SETTABLEKS                       R38 R37 K57 ["variant"]
      244 GETTABLEKS                       R38 R9 K66 ["Medium"]
      246 SETTABLEKS                       R38 R37 K58 ["size"]
      248 GETIMPORT                        R38 K69 [UDim.new]
      250 LOADN                            R39 0
      251 LOADN                            R40 0
      252 CALL                             R38 2 1
      253 SETTABLEKS                       R38 R37 K59 ["width"]
      255 DUPCLOSURE                       R38 K70 [PROTO_18]
      256 CAPTURE                          VAL R24
      257 CAPTURE                          VAL R37
      258 CAPTURE                          VAL R23
      259 CAPTURE                          VAL R31
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R11
      264 CAPTURE                          VAL R32
      265 CAPTURE                          VAL R33
      266 CAPTURE                          VAL R30
      267 CAPTURE                          VAL R29
      268 CAPTURE                          VAL R21
      269 CAPTURE                          VAL R5
      270 CAPTURE                          VAL R34
      271 CAPTURE                          VAL R20
      272 CAPTURE                          VAL R26
      273 CAPTURE                          VAL R14
      274 CAPTURE                          VAL R22
      275 CAPTURE                          VAL R6
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R28
      279 CAPTURE                          VAL R18
      280 CAPTURE                          VAL R27
      281 CAPTURE                          VAL R3
      282 CAPTURE                          VAL R2
      283 CAPTURE                          VAL R17
      284 CAPTURE                          VAL R35
      285 GETTABLEKS                       R39 R7 K71 ["memo"]
      287 GETTABLEKS                       R40 R7 K72 ["forwardRef"]
      289 MOVE                             R41 R38
      290 CALL                             R40 1 -1
      291 CALL                             R39 -1 -1
      292 RETURN                           R39 -1
