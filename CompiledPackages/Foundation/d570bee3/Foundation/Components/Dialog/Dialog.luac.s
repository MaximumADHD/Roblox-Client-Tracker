PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["onClose"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["current"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 3
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["instant"]
        6 LOADN                            R2 0
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K1 ["ease"]
       21 LOADN                            R2 0
       22 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K5 ["Ease"]
       26 GETTABLEKS                       R4 R4 K6 ["StandardOut"]
       28 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K7 ["Time"]
       33 GETTABLEKS                       R4 R4 K8 ["Time_300"]
       35 SETTABLEKS                       R4 R3 K3 ["duration"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 3
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K1 ["ease"]
       43 LOADN                            R2 0
       44 DUPTABLE                         R3 K9 [{"duration"}]
       45 GETUPVAL                         R4 4
       46 GETTABLEKS                       R4 R4 K7 ["Time"]
       48 GETTABLEKS                       R4 R4 K10 ["Time_100"]
       50 SETTABLEKS                       R4 R3 K3 ["duration"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K0 ["current"]
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+19]
       10 GETUPVAL                         R1 0
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K0 ["current"]
       14 GETUPVAL                         R1 3
       15 GETUPVAL                         R2 4
       16 GETTABLEKS                       R2 R2 K1 ["instant"]
       18 GETUPVAL                         R3 5
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 6
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K1 ["instant"]
       25 LOADN                            R3 1
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K2 ["ease"]
       33 GETUPVAL                         R3 5
       34 DUPTABLE                         R4 K5 [{"easingStyle", "duration"}]
       35 GETUPVAL                         R5 7
       36 GETTABLEKS                       R5 R5 K6 ["Ease"]
       38 GETTABLEKS                       R5 R5 K7 ["StandardIn"]
       40 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       42 GETUPVAL                         R5 7
       43 GETTABLEKS                       R5 R5 K8 ["Time"]
       45 GETTABLEKS                       R5 R5 K9 ["Time_200"]
       47 SETTABLEKS                       R5 R4 K4 ["duration"]
       49 CALL                             R2 2 -1
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 6
       52 GETUPVAL                         R2 4
       53 GETTABLEKS                       R2 R2 K2 ["ease"]
       55 LOADN                            R3 1
       56 DUPTABLE                         R4 K10 [{"duration"}]
       57 GETUPVAL                         R5 7
       58 GETTABLEKS                       R5 R5 K8 ["Time"]
       60 GETTABLEKS                       R5 R5 K11 ["Time_100"]
       62 SETTABLEKS                       R5 R4 K4 ["duration"]
       64 CALL                             R2 2 -1
       65 CALL                             R1 -1 0
       66 GETUPVAL                         R1 8
       67 LOADB                            R2 1
       68 CALL                             R1 1 0
       69 GETUPVAL                         R1 0
       70 LOADB                            R2 1
       71 SETTABLEKS                       R2 R1 K0 ["current"]
       73 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R0 R1 K0 ["Parent"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["Parent"]
       12 GETUPVAL                         R1 1
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R5 0
        5 MULK                             R4 R5 K4 [2]
        6 ADD                              R2 R3 R4
        7 GETTABLEKS                       R4 R0 K5 ["Y"]
        9 GETUPVAL                         R6 0
       10 MULK                             R5 R6 K4 [2]
       11 ADD                              R3 R4 R5
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R2 R1 K1 ["X"]
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+9]
        7 GETTABLEKS                       R2 R1 K2 ["Y"]
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R2 ; [+4]
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["FoundationDialogAnimation"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 3
       11 JUMPIF                           R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 4
       14 GETTABLEKS                       R1 R1 K2 ["BackdropClick"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K0 ["onClose"]
       21 GETUPVAL                         R1 4
       22 GETTABLEKS                       R1 R1 K2 ["BackdropClick"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["backdrop"]
        4 GETTABLEKS                       R2 R2 K4 ["backgroundStyle"]
        6 GETTABLEKS                       R2 R2 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["backdrop"]
       13 GETTABLEKS                       R3 R3 K4 ["backgroundStyle"]
       15 GETTABLEKS                       R3 R3 K1 ["Transparency"]
       17 LOADN                            R4 1
       18 FASTCALL3                        MATH_LERP R3 R4 R0
       20 MOVE                             R5 R0
       21 GETIMPORT                        R2 K7 [math.lerp]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       26 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADK                            R4 K3 [0.5]
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R4 R2 K3 ["inner"]
       16 GETTABLEKS                       R4 R4 K4 ["maxWidth"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["FoundationDialogAnimation"]
       22 JUMPIF                           R5 ; [+6]
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K6 ["useRef"]
       26 LOADNIL                          R5
       27 CALL                             R4 1 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 LOADNIL                          R6
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K5 ["FoundationDialogAnimation"]
       35 JUMPIFNOT                        R7 ; [+12]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K7 ["useBinding"]
       39 GETIMPORT                        R8 K10 [Vector2.new]
       41 LOADN                            R9 0
       42 LOADN                            R10 0
       43 CALL                             R8 2 -1
       44 CALL                             R7 -1 2
       45 MOVE                             R5 R7
       46 MOVE                             R6 R8
       47 JUMP                             ; [+4]
       48 GETUPVAL                         R7 5
       49 MOVE                             R8 R4
       50 CALL                             R7 1 1
       51 MOVE                             R5 R7
       52 GETUPVAL                         R7 6
       53 CALL                             R7 0 1
       54 GETUPVAL                         R8 7
       55 GETUPVAL                         R9 8
       56 GETTABLEKS                       R9 R9 K11 ["Dialog"]
       58 DUPTABLE                         R10 K13 [{"stackAboveOwner"}]
       59 LOADB                            R11 0
       60 SETTABLEKS                       R11 R10 K12 ["stackAboveOwner"]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 9
       64 CALL                             R9 0 1
       65 GETUPVAL                         R10 10
       66 GETTABLEKS                       R11 R1 K14 ["size"]
       68 CALL                             R10 1 0
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R11 R11 K5 ["FoundationDialogAnimation"]
       72 JUMPIFNOT                        R11 ; [+3]
       73 GETUPVAL                         R10 11
       74 CALL                             R10 0 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R10
       77 LOADB                            R11 0
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K5 ["FoundationDialogAnimation"]
       81 JUMPIFNOT                        R12 ; [+4]
       82 GETUPVAL                         R12 12
       83 CALL                             R12 0 1
       84 GETTABLEKS                       R11 R12 K15 ["reducedMotion"]
       86 GETUPVAL                         R13 3
       87 GETTABLEKS                       R13 R13 K5 ["FoundationDialogAnimation"]
       89 JUMPIFNOT                        R13 ; [+5]
       90 GETTABLEKS                       R12 R10 K16 ["Size"]
       92 GETTABLEKS                       R12 R12 K17 ["Size_800"]
       94 JUMP                             ; [+1]
       95 LOADN                            R12 0
       96 LOADNIL                          R13
       97 LOADNIL                          R14
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R15 R15 K5 ["FoundationDialogAnimation"]
      101 JUMPIFNOT                        R15 ; [+7]
      102 GETUPVAL                         R15 4
      103 GETTABLEKS                       R15 R15 K18 ["useState"]
      105 LOADB                            R16 1
      106 CALL                             R15 1 2
      107 MOVE                             R13 R15
      108 MOVE                             R14 R16
      109 GETUPVAL                         R16 3
      110 GETTABLEKS                       R16 R16 K5 ["FoundationDialogAnimation"]
      112 JUMPIFNOT                        R16 ; [+6]
      113 GETUPVAL                         R15 4
      114 GETTABLEKS                       R15 R15 K6 ["useRef"]
      116 LOADB                            R16 0
      117 CALL                             R15 1 1
      118 JUMP                             ; [+1]
      119 LOADNIL                          R15
      120 GETUPVAL                         R17 3
      121 GETTABLEKS                       R17 R17 K5 ["FoundationDialogAnimation"]
      123 JUMPIFNOT                        R17 ; [+6]
      124 GETUPVAL                         R16 4
      125 GETTABLEKS                       R16 R16 K6 ["useRef"]
      127 LOADNIL                          R17
      128 CALL                             R16 1 1
      129 JUMP                             ; [+1]
      130 LOADNIL                          R16
      131 LOADNIL                          R17
      132 LOADNIL                          R18
      133 GETUPVAL                         R19 3
      134 GETTABLEKS                       R19 R19 K5 ["FoundationDialogAnimation"]
      136 JUMPIFNOT                        R19 ; [+5]
      137 GETUPVAL                         R19 13
      138 LOADN                            R20 1
      139 CALL                             R19 1 2
      140 MOVE                             R17 R19
      141 MOVE                             R18 R20
      142 LOADNIL                          R19
      143 LOADNIL                          R20
      144 GETUPVAL                         R21 3
      145 GETTABLEKS                       R21 R21 K5 ["FoundationDialogAnimation"]
      147 JUMPIFNOT                        R21 ; [+10]
      148 GETUPVAL                         R21 13
      149 MOVE                             R22 R12
      150 NEWCLOSURE                       R23 P0
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R16
      154 CAPTURE                          REF R14
      155 CALL                             R21 2 2
      156 MOVE                             R19 R21
      157 MOVE                             R20 R22
      158 GETUPVAL                         R21 3
      159 GETTABLEKS                       R21 R21 K5 ["FoundationDialogAnimation"]
      161 JUMPIFNOT                        R21 ; [+12]
      162 GETUPVAL                         R21 4
      163 GETTABLEKS                       R21 R21 K19 ["useEffect"]
      165 NEWCLOSURE                       R22 P1
      166 CAPTURE                          REF R11
      167 CAPTURE                          REF R20
      168 CAPTURE                          UPVAL U14
      169 CAPTURE                          REF R18
      170 CAPTURE                          VAL R10
      171 NEWTABLE                         R23 0 0
      173 CALL                             R21 2 0
      174 LOADNIL                          R21
      175 GETUPVAL                         R22 3
      176 GETTABLEKS                       R22 R22 K5 ["FoundationDialogAnimation"]
      178 JUMPIFNOT                        R22 ; [+21]
      179 GETUPVAL                         R22 4
      180 GETTABLEKS                       R22 R22 K20 ["useCallback"]
      182 NEWCLOSURE                       R23 P2
      183 CAPTURE                          VAL R15
      184 CAPTURE                          VAL R16
      185 CAPTURE                          REF R11
      186 CAPTURE                          REF R20
      187 CAPTURE                          UPVAL U14
      188 CAPTURE                          VAL R12
      189 CAPTURE                          REF R18
      190 CAPTURE                          VAL R10
      191 CAPTURE                          REF R14
      192 NEWTABLE                         R24 0 2
      194 MOVE                             R25 R12
      195 MOVE                             R26 R11
      196 SETLIST                          R24 R25 2 [1]
      198 CALL                             R22 2 1
      199 MOVE                             R21 R22
      200 GETUPVAL                         R23 3
      201 GETTABLEKS                       R23 R23 K5 ["FoundationDialogAnimation"]
      203 JUMPIFNOT                        R23 ; [+8]
      204 GETUPVAL                         R22 4
      205 GETTABLEKS                       R22 R22 K21 ["useMemo"]
      207 DUPCLOSURE                       R23 K22 [PROTO_3]
      208 NEWTABLE                         R24 0 0
      210 CALL                             R22 2 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R22
      213 GETUPVAL                         R23 3
      214 GETTABLEKS                       R23 R23 K5 ["FoundationDialogAnimation"]
      216 JUMPIFNOT                        R23 ; [+11]
      217 GETUPVAL                         R23 4
      218 GETTABLEKS                       R23 R23 K19 ["useEffect"]
      220 NEWCLOSURE                       R24 P4
      221 CAPTURE                          VAL R22
      222 NEWTABLE                         R25 0 1
      224 MOVE                             R26 R22
      225 SETLIST                          R25 R26 1 [1]
      227 CALL                             R23 2 0
      228 LOADNIL                          R23
      229 LOADNIL                          R24
      230 GETUPVAL                         R25 3
      231 GETTABLEKS                       R25 R25 K5 ["FoundationDialogAnimation"]
      233 JUMPIFNOT                        R25 ; [+7]
      234 GETUPVAL                         R25 4
      235 GETTABLEKS                       R25 R25 K18 ["useState"]
      237 LOADB                            R26 0
      238 CALL                             R25 1 2
      239 MOVE                             R23 R25
      240 MOVE                             R24 R26
      241 GETUPVAL                         R26 3
      242 GETTABLEKS                       R26 R26 K5 ["FoundationDialogAnimation"]
      244 JUMPIFNOT                        R26 ; [+13]
      245 GETUPVAL                         R25 4
      246 GETTABLEKS                       R25 R25 K20 ["useCallback"]
      248 NEWCLOSURE                       R26 P5
      249 CAPTURE                          VAL R22
      250 CAPTURE                          REF R24
      251 NEWTABLE                         R27 0 1
      253 MOVE                             R28 R22
      254 SETLIST                          R27 R28 1 [1]
      256 CALL                             R25 2 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R25
      259 GETUPVAL                         R26 4
      260 GETTABLEKS                       R26 R26 K23 ["createElement"]
      262 GETUPVAL                         R27 15
      263 DUPTABLE                         R28 K26 [{"tag", "ZIndex"}]
      264 GETTABLEKS                       R29 R2 K27 ["container"]
      266 GETTABLEKS                       R29 R29 K24 ["tag"]
      268 SETTABLEKS                       R29 R28 K24 ["tag"]
      270 LOADN                            R29 2
      271 SETTABLEKS                       R29 R28 K25 ["ZIndex"]
      273 DUPTABLE                         R29 K29 [{"Shadow"}]
      274 GETUPVAL                         R30 4
      275 GETTABLEKS                       R30 R30 K23 ["createElement"]
      277 GETUPVAL                         R31 16
      278 DUPTABLE                         R32 K34 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      279 GETUPVAL                         R33 17
      280 SETTABLEKS                       R33 R32 K30 ["Image"]
      282 DUPCLOSURE                       R35 K35 [PROTO_7]
      283 CAPTURE                          UPVAL U18
      284 NAMECALL                         R33 R5 K36 ["map"]
      286 CALL                             R33 2 1
      287 SETTABLEKS                       R33 R32 K16 ["Size"]
      289 DUPTABLE                         R33 K39 [{"center", "scale"}]
      290 GETIMPORT                        R34 K41 [Rect.new]
      292 GETUPVAL                         R35 18
      293 GETUPVAL                         R36 18
      294 GETUPVAL                         R37 18
      295 GETUPVAL                         R38 18
      296 CALL                             R34 4 1
      297 SETTABLEKS                       R34 R33 K37 ["center"]
      299 LOADN                            R34 2
      300 SETTABLEKS                       R34 R33 K38 ["scale"]
      302 SETTABLEKS                       R33 R32 K31 ["slice"]
      304 GETTABLEKS                       R33 R2 K42 ["shadow"]
      306 GETTABLEKS                       R33 R33 K32 ["imageStyle"]
      308 SETTABLEKS                       R33 R32 K32 ["imageStyle"]
      310 LOADK                            R34 K43 ["%*--shadow"]
      311 GETTABLEKS                       R36 R1 K33 ["testId"]
      313 NAMECALL                         R34 R34 K44 ["format"]
      315 CALL                             R34 2 1
      316 MOVE                             R33 R34
      317 SETTABLEKS                       R33 R32 K33 ["testId"]
      319 CALL                             R30 2 1
      320 SETTABLEKS                       R30 R29 K28 ["Shadow"]
      322 CALL                             R26 3 1
      323 GETUPVAL                         R27 4
      324 GETTABLEKS                       R27 R27 K23 ["createElement"]
      326 GETUPVAL                         R28 15
      327 DUPTABLE                         R29 K26 [{"tag", "ZIndex"}]
      328 GETTABLEKS                       R30 R2 K27 ["container"]
      330 GETTABLEKS                       R30 R30 K24 ["tag"]
      332 SETTABLEKS                       R30 R29 K24 ["tag"]
      334 LOADN                            R30 3
      335 SETTABLEKS                       R30 R29 K25 ["ZIndex"]
      337 DUPTABLE                         R30 K48 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      338 GETUPVAL                         R32 3
      339 GETTABLEKS                       R32 R32 K5 ["FoundationDialogAnimation"]
      341 JUMPIFNOT                        R32 ; [+2]
      342 LOADNIL                          R31
      343 JUMP                             ; [+12]
      344 GETUPVAL                         R31 4
      345 GETTABLEKS                       R31 R31 K23 ["createElement"]
      347 GETUPVAL                         R32 15
      348 DUPTABLE                         R33 K49 [{"tag", "LayoutOrder"}]
      349 LOADK                            R34 K50 ["fill"]
      350 SETTABLEKS                       R34 R33 K24 ["tag"]
      352 LOADN                            R34 0
      353 SETTABLEKS                       R34 R33 K1 ["LayoutOrder"]
      355 CALL                             R31 2 1
      356 SETTABLEKS                       R31 R30 K45 ["DialogFlexStart"]
      358 GETUPVAL                         R31 4
      359 GETTABLEKS                       R31 R31 K23 ["createElement"]
      361 GETUPVAL                         R32 15
      362 GETUPVAL                         R33 19
      363 MOVE                             R34 R1
      364 DUPTABLE                         R35 K57 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      365 GETTABLEKS                       R36 R2 K3 ["inner"]
      367 GETTABLEKS                       R36 R36 K24 ["tag"]
      369 SETTABLEKS                       R36 R35 K24 ["tag"]
      371 GETTABLEKS                       R36 R1 K58 ["forwardRef"]
      373 SETTABLEKS                       R36 R35 K51 ["ref"]
      375 DUPTABLE                         R36 K60 [{"MaxSize"}]
      376 GETIMPORT                        R37 K10 [Vector2.new]
      378 MOVE                             R38 R3
      379 LOADK                            R39 K61 [∞]
      380 CALL                             R37 2 1
      381 SETTABLEKS                       R37 R36 K59 ["MaxSize"]
      383 SETTABLEKS                       R36 R35 K52 ["sizeConstraint"]
      385 DUPTABLE                         R36 K63 [{"affordance"}]
      386 GETUPVAL                         R37 20
      387 GETTABLEKS                       R37 R37 K64 ["None"]
      389 SETTABLEKS                       R37 R36 K62 ["affordance"]
      391 SETTABLEKS                       R36 R35 K53 ["stateLayer"]
      393 GETUPVAL                         R36 21
      394 GETTABLEKS                       R36 R36 K65 ["nonSelectable"]
      396 SETTABLEKS                       R36 R35 K54 ["selection"]
      398 GETUPVAL                         R36 21
      399 GETTABLEKS                       R36 R36 K66 ["isolatedSelectionGroup"]
      401 SETTABLEKS                       R36 R35 K55 ["selectionGroup"]
      403 GETUPVAL                         R36 0
      404 GETTABLEKS                       R36 R36 K67 ["noop"]
      406 SETTABLEKS                       R36 R35 K56 ["onActivated"]
      408 CALL                             R33 2 1
      409 DUPTABLE                         R34 K70 [{"CloseAffordance", "DialogBody"}]
      410 GETTABLEKS                       R36 R1 K71 ["onClose"]
      412 JUMPIFNOT                        R36 ; [+62]
      413 GETUPVAL                         R35 4
      414 GETTABLEKS                       R35 R35 K23 ["createElement"]
      416 GETUPVAL                         R36 22
      417 DUPTABLE                         R37 K75 [{"onActivated", "ref", "NextSelectionDown", "Position", "AnchorPoint", "ZIndex", "testId"}]
      418 GETUPVAL                         R39 3
      419 GETTABLEKS                       R39 R39 K5 ["FoundationDialogAnimation"]
      421 JUMPIFNOT                        R39 ; [+4]
      422 JUMPIFNOT                        R21 ; [+3]
      423 JUMPIF                           R11 ; [+2]
      424 MOVE                             R38 R21
      425 JUMP                             ; [+2]
      426 GETTABLEKS                       R38 R1 K71 ["onClose"]
      428 SETTABLEKS                       R38 R37 K56 ["onActivated"]
      430 GETTABLEKS                       R38 R9 K76 ["closeAffordanceRef"]
      432 SETTABLEKS                       R38 R37 K51 ["ref"]
      434 GETTABLEKS                       R38 R9 K77 ["contentStartRef"]
      436 SETTABLEKS                       R38 R37 K72 ["NextSelectionDown"]
      438 GETIMPORT                        R38 K79 [UDim2.new]
      440 LOADN                            R39 1
      441 GETTABLEKS                       R41 R2 K80 ["closeAffordance"]
      443 GETTABLEKS                       R41 R41 K81 ["offset"]
      445 MINUS                            R40 R41
      446 LOADN                            R41 0
      447 GETTABLEKS                       R42 R2 K80 ["closeAffordance"]
      449 GETTABLEKS                       R42 R42 K81 ["offset"]
      451 CALL                             R38 4 1
      452 SETTABLEKS                       R38 R37 K73 ["Position"]
      454 GETIMPORT                        R38 K10 [Vector2.new]
      456 LOADN                            R39 1
      457 LOADN                            R40 0
      458 CALL                             R38 2 1
      459 SETTABLEKS                       R38 R37 K74 ["AnchorPoint"]
      461 LOADN                            R38 2
      462 SETTABLEKS                       R38 R37 K25 ["ZIndex"]
      464 LOADK                            R39 K82 ["%*--close-affordance"]
      465 GETTABLEKS                       R41 R1 K33 ["testId"]
      467 NAMECALL                         R39 R39 K44 ["format"]
      469 CALL                             R39 2 1
      470 MOVE                             R38 R39
      471 SETTABLEKS                       R38 R37 K33 ["testId"]
      473 CALL                             R35 2 1
      474 JUMP                             ; [+1]
      475 LOADNIL                          R35
      476 SETTABLEKS                       R35 R34 K68 ["CloseAffordance"]
      478 GETUPVAL                         R35 4
      479 GETTABLEKS                       R35 R35 K23 ["createElement"]
      481 GETUPVAL                         R36 15
      482 DUPTABLE                         R37 K84 [{"tag", "ref", "onAbsoluteSizeChanged", "testId"}]
      483 GETTABLEKS                       R38 R2 K85 ["body"]
      485 GETTABLEKS                       R38 R38 K24 ["tag"]
      487 SETTABLEKS                       R38 R37 K24 ["tag"]
      489 GETUPVAL                         R39 3
      490 GETTABLEKS                       R39 R39 K5 ["FoundationDialogAnimation"]
      492 JUMPIF                           R39 ; [+2]
      493 MOVE                             R38 R4
      494 JUMP                             ; [+1]
      495 LOADNIL                          R38
      496 SETTABLEKS                       R38 R37 K51 ["ref"]
      498 GETUPVAL                         R39 3
      499 GETTABLEKS                       R39 R39 K5 ["FoundationDialogAnimation"]
      501 JUMPIFNOT                        R39 ; [+3]
      502 NEWCLOSURE                       R38 P7
      503 CAPTURE                          REF R6
      504 JUMP                             ; [+1]
      505 LOADNIL                          R38
      506 SETTABLEKS                       R38 R37 K83 ["onAbsoluteSizeChanged"]
      508 LOADK                            R39 K86 ["%*--body"]
      509 GETTABLEKS                       R41 R1 K33 ["testId"]
      511 NAMECALL                         R39 R39 K44 ["format"]
      513 CALL                             R39 2 1
      514 MOVE                             R38 R39
      515 SETTABLEKS                       R38 R37 K33 ["testId"]
      517 GETUPVAL                         R38 4
      518 GETTABLEKS                       R38 R38 K23 ["createElement"]
      520 GETUPVAL                         R39 23
      521 DUPTABLE                         R40 K88 [{"owner"}]
      522 SETTABLEKS                       R8 R40 K87 ["owner"]
      524 GETTABLEKS                       R41 R1 K89 ["children"]
      526 CALL                             R38 3 -1
      527 CALL                             R35 -1 1
      528 SETTABLEKS                       R35 R34 K69 ["DialogBody"]
      530 CALL                             R31 3 1
      531 SETTABLEKS                       R31 R30 K46 ["DialogInner"]
      533 GETUPVAL                         R32 3
      534 GETTABLEKS                       R32 R32 K5 ["FoundationDialogAnimation"]
      536 JUMPIFNOT                        R32 ; [+2]
      537 LOADNIL                          R31
      538 JUMP                             ; [+12]
      539 GETUPVAL                         R31 4
      540 GETTABLEKS                       R31 R31 K23 ["createElement"]
      542 GETUPVAL                         R32 15
      543 DUPTABLE                         R33 K49 [{"tag", "LayoutOrder"}]
      544 LOADK                            R34 K50 ["fill"]
      545 SETTABLEKS                       R34 R33 K24 ["tag"]
      547 LOADN                            R34 2
      548 SETTABLEKS                       R34 R33 K1 ["LayoutOrder"]
      550 CALL                             R31 2 1
      551 SETTABLEKS                       R31 R30 K47 ["DialogFlexEnd"]
      553 CALL                             R27 3 1
      554 GETUPVAL                         R28 4
      555 GETTABLEKS                       R28 R28 K23 ["createElement"]
      557 GETUPVAL                         R29 15
      558 DUPTABLE                         R30 K90 [{"ZIndex", "tag", "testId"}]
      559 GETTABLEKS                       R31 R8 K91 ["zIndex"]
      561 SETTABLEKS                       R31 R30 K25 ["ZIndex"]
      563 LOADK                            R31 K92 ["size-full"]
      564 SETTABLEKS                       R31 R30 K24 ["tag"]
      566 LOADK                            R32 K93 ["%*--container"]
      567 GETTABLEKS                       R34 R1 K33 ["testId"]
      569 NAMECALL                         R32 R32 K44 ["format"]
      571 CALL                             R32 2 1
      572 MOVE                             R31 R32
      573 SETTABLEKS                       R31 R30 K33 ["testId"]
      575 DUPTABLE                         R31 K96 [{"Backdrop", "DialogContentWrapper"}]
      576 GETTABLEKS                       R33 R1 K97 ["hasBackdrop"]
      578 JUMPIFNOT                        R33 ; [+63]
      579 GETUPVAL                         R32 4
      580 GETTABLEKS                       R32 R32 K23 ["createElement"]
      582 GETUPVAL                         R33 15
      583 DUPTABLE                         R34 K99 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      584 LOADK                            R35 K100 ["position-center-center anchor-center-center"]
      585 SETTABLEKS                       R35 R34 K24 ["tag"]
      587 GETIMPORT                        R35 K102 [UDim2.fromScale]
      589 LOADN                            R36 2
      590 LOADN                            R37 2
      591 CALL                             R35 2 1
      592 SETTABLEKS                       R35 R34 K16 ["Size"]
      594 DUPTABLE                         R35 K63 [{"affordance"}]
      595 GETUPVAL                         R36 20
      596 GETTABLEKS                       R36 R36 K64 ["None"]
      598 SETTABLEKS                       R36 R35 K62 ["affordance"]
      600 SETTABLEKS                       R35 R34 K53 ["stateLayer"]
      602 NEWCLOSURE                       R35 P8
      603 CAPTURE                          VAL R1
      604 CAPTURE                          UPVAL U3
      605 CAPTURE                          REF R21
      606 CAPTURE                          REF R11
      607 CAPTURE                          UPVAL U24
      608 SETTABLEKS                       R35 R34 K56 ["onActivated"]
      610 GETUPVAL                         R36 3
      611 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      613 JUMPIFNOT                        R36 ; [+8]
      614 JUMPIF                           R11 ; [+7]
      615 JUMPIFNOT                        R17 ; [+6]
      616 NEWCLOSURE                       R37 P9
      617 CAPTURE                          VAL R2
      618 NAMECALL                         R35 R17 K36 ["map"]
      620 CALL                             R35 2 1
      621 JUMP                             ; [+4]
      622 GETTABLEKS                       R35 R2 K103 ["backdrop"]
      624 GETTABLEKS                       R35 R35 K98 ["backgroundStyle"]
      626 SETTABLEKS                       R35 R34 K98 ["backgroundStyle"]
      628 LOADN                            R35 2
      629 SETTABLEKS                       R35 R34 K25 ["ZIndex"]
      631 LOADK                            R36 K104 ["%*--backdrop"]
      632 GETTABLEKS                       R38 R1 K33 ["testId"]
      634 NAMECALL                         R36 R36 K44 ["format"]
      636 CALL                             R36 2 1
      637 MOVE                             R35 R36
      638 SETTABLEKS                       R35 R34 K33 ["testId"]
      640 CALL                             R32 2 1
      641 JUMP                             ; [+1]
      642 LOADNIL                          R32
      643 SETTABLEKS                       R32 R31 K94 ["Backdrop"]
      645 GETUPVAL                         R32 4
      646 GETTABLEKS                       R32 R32 K23 ["createElement"]
      648 GETUPVAL                         R33 15
      649 DUPTABLE                         R34 K106 [{"ref", "Position", "sizeConstraint", "tag", "ZIndex", "GroupTransparency"}]
      650 GETUPVAL                         R36 3
      651 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      653 JUMPIFNOT                        R36 ; [+3]
      654 JUMPIF                           R11 ; [+2]
      655 MOVE                             R35 R25
      656 JUMP                             ; [+1]
      657 LOADNIL                          R35
      658 SETTABLEKS                       R35 R34 K51 ["ref"]
      660 GETUPVAL                         R36 3
      661 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      663 JUMPIFNOT                        R36 ; [+7]
      664 JUMPIF                           R11 ; [+6]
      665 JUMPIFNOT                        R19 ; [+5]
      666 DUPCLOSURE                       R37 K107 [PROTO_11]
      667 NAMECALL                         R35 R19 K36 ["map"]
      669 CALL                             R35 2 1
      670 JUMP                             ; [+1]
      671 LOADNIL                          R35
      672 SETTABLEKS                       R35 R34 K73 ["Position"]
      674 GETUPVAL                         R36 3
      675 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      677 JUMPIFNOT                        R36 ; [+12]
      678 JUMPIF                           R11 ; [+11]
      679 DUPTABLE                         R35 K60 [{"MaxSize"}]
      680 GETIMPORT                        R36 K10 [Vector2.new]
      682 GETUPVAL                         R39 18
      683 MULK                             R38 R39 K108 [2]
      684 ADD                              R37 R3 R38
      685 LOADK                            R38 K61 [∞]
      686 CALL                             R36 2 1
      687 SETTABLEKS                       R36 R35 K59 ["MaxSize"]
      689 JUMP                             ; [+1]
      690 LOADNIL                          R35
      691 SETTABLEKS                       R35 R34 K52 ["sizeConstraint"]
      693 NEWTABLE                         R35 2 0
      695 GETUPVAL                         R36 3
      696 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      698 JUMPIFNOT                        R36 ; [+1]
      699 NOT                              R36 R11
      700 SETTABLEKS                       R36 R35 K109 ["anchor-center-center size-full"]
      702 GETUPVAL                         R38 3
      703 GETTABLEKS                       R38 R38 K5 ["FoundationDialogAnimation"]
      705 NOT                              R37 R38
      706 OR                               R36 R37 R11
      707 SETTABLEKS                       R36 R35 K92 ["size-full"]
      709 SETTABLEKS                       R35 R34 K24 ["tag"]
      711 LOADN                            R35 2
      712 SETTABLEKS                       R35 R34 K25 ["ZIndex"]
      714 GETUPVAL                         R36 3
      715 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      717 JUMPIFNOT                        R36 ; [+9]
      718 JUMPIF                           R11 ; [+8]
      719 JUMPIFNOT                        R13 ; [+7]
      720 JUMPIFNOT                        R19 ; [+6]
      721 NEWCLOSURE                       R37 P11
      722 CAPTURE                          VAL R12
      723 NAMECALL                         R35 R19 K36 ["map"]
      725 CALL                             R35 2 1
      726 JUMP                             ; [+1]
      727 LOADNIL                          R35
      728 SETTABLEKS                       R35 R34 K105 ["GroupTransparency"]
      730 GETUPVAL                         R36 3
      731 GETTABLEKS                       R36 R36 K5 ["FoundationDialogAnimation"]
      733 JUMPIFNOT                        R36 ; [+1]
      734 JUMPIFNOT                        R11 ; [+6]
      735 DUPTABLE                         R35 K111 [{"DialogShadowWrapper", "Dialog"}]
      736 SETTABLEKS                       R26 R35 K110 ["DialogShadowWrapper"]
      738 SETTABLEKS                       R27 R35 K11 ["Dialog"]
      740 JUMP                             ; [+1]
      741 LOADNIL                          R35
      742 CALL                             R32 3 1
      743 SETTABLEKS                       R32 R31 K95 ["DialogContentWrapper"]
      745 CALL                             R28 3 1
      746 GETUPVAL                         R29 3
      747 GETTABLEKS                       R29 R29 K5 ["FoundationDialogAnimation"]
      749 JUMPIFNOT                        R29 ; [+50]
      750 JUMPIF                           R11 ; [+49]
      751 GETTABLEKS                       R30 R1 K112 ["disablePortal"]
      753 JUMPIF                           R30 ; [+2]
      754 JUMPIFNOTEQKNIL                  R7 ; [+3]
      756 MOVE                             R29 R28
      757 JUMP                             ; [+6]
      758 GETUPVAL                         R29 25
      759 GETTABLEKS                       R29 R29 K113 ["createPortal"]
      761 MOVE                             R30 R28
      762 MOVE                             R31 R7
      763 CALL                             R29 2 1
      764 GETUPVAL                         R30 4
      765 GETTABLEKS                       R30 R30 K23 ["createElement"]
      767 GETUPVAL                         R31 4
      768 GETTABLEKS                       R31 R31 K114 ["Fragment"]
      770 LOADNIL                          R32
      771 DUPTABLE                         R33 K117 [{"Main", "StableContent"}]
      772 SETTABLEKS                       R29 R33 K115 ["Main"]
      774 JUMPIFNOT                        R23 ; [+19]
      775 GETUPVAL                         R34 25
      776 GETTABLEKS                       R34 R34 K113 ["createPortal"]
      778 GETUPVAL                         R35 4
      779 GETTABLEKS                       R35 R35 K23 ["createElement"]
      781 GETUPVAL                         R36 4
      782 GETTABLEKS                       R36 R36 K114 ["Fragment"]
      784 LOADNIL                          R37
      785 DUPTABLE                         R38 K111 [{"DialogShadowWrapper", "Dialog"}]
      786 SETTABLEKS                       R26 R38 K110 ["DialogShadowWrapper"]
      788 SETTABLEKS                       R27 R38 K11 ["Dialog"]
      790 CALL                             R35 3 1
      791 MOVE                             R36 R22
      792 CALL                             R34 2 1
      793 JUMP                             ; [+1]
      794 LOADNIL                          R34
      795 SETTABLEKS                       R34 R33 K116 ["StableContent"]
      797 CALL                             R30 3 -1
      798 CLOSEUPVALS                      R6
      799 RETURN                           R30 -1
      800 GETTABLEKS                       R29 R1 K112 ["disablePortal"]
      802 JUMPIF                           R29 ; [+2]
      803 JUMPIFNOTEQKNIL                  R7 ; [+3]
      805 CLOSEUPVALS                      R6
      806 RETURN                           R28 1
      807 GETUPVAL                         R29 25
      808 GETTABLEKS                       R29 R29 K113 ["createPortal"]
      810 MOVE                             R30 R28
      811 MOVE                             R31 R7
      812 CALL                             R29 2 -1
      813 CLOSEUPVALS                      R6
      814 RETURN                           R29 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R9 R9 K7 ["assign"]
       29 NEWTABLE                         R10 0 0
       31 MOVE                             R11 R2
       32 DUPTABLE                         R12 K9 [{"forwardRef"}]
       33 SETTABLEKS                       R1 R12 K8 ["forwardRef"]
       35 CALL                             R9 3 -1
       36 CALL                             R7 -1 1
       37 SETTABLEKS                       R7 R6 K5 ["Dialog"]
       39 CALL                             R3 3 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Otter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R1 K11 ["ReactRoblox"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R5 K12 ["useAnimatedBinding"]
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Components"]
       40 GETTABLEKS                       R9 R9 K14 ["CloseAffordance"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K13 ["Components"]
       52 GETTABLEKS                       R11 R11 K16 ["Image"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K13 ["Components"]
       59 GETTABLEKS                       R12 R12 K17 ["View"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K18 ["Providers"]
       66 GETTABLEKS                       R13 R13 K19 ["Overlay"]
       68 GETTABLEKS                       R13 R13 K20 ["useOverlay"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R14 R0 K21 ["Enums"]
       75 GETTABLEKS                       R14 R14 K22 ["DialogSize"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K21 ["Enums"]
       82 GETTABLEKS                       R15 R15 K23 ["OnCloseCallbackReason"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R0 K21 ["Enums"]
       89 GETTABLEKS                       R16 R16 K24 ["StateLayerAffordance"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R0 K25 ["Utility"]
       96 GETTABLEKS                       R17 R17 K26 ["useScaledValue"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K18 ["Providers"]
      103 GETTABLEKS                       R18 R18 K27 ["Style"]
      105 GETTABLEKS                       R18 R18 K28 ["useTokens"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R19 R0 K25 ["Utility"]
      112 GETTABLEKS                       R19 R19 K29 ["withCommonProps"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K25 ["Utility"]
      119 GETTABLEKS                       R20 R20 K30 ["withDefaults"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K25 ["Utility"]
      126 GETTABLEKS                       R21 R21 K31 ["Flags"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R0 K18 ["Providers"]
      133 GETTABLEKS                       R22 R22 K32 ["Preferences"]
      135 GETTABLEKS                       R22 R22 K33 ["usePreferences"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETIMPORT                        R23 K1 [script]
      142 GETTABLEKS                       R23 R23 K4 ["Parent"]
      144 GETTABLEKS                       R23 R23 K34 ["Types"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R24 R0 K13 ["Components"]
      151 GETTABLEKS                       R24 R24 K34 ["Types"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R24 K6 [require]
      156 GETIMPORT                        R25 K1 [script]
      158 GETTABLEKS                       R25 R25 K4 ["Parent"]
      160 GETTABLEKS                       R25 R25 K35 ["useDialogVariants"]
      162 CALL                             R24 1 1
      163 GETTABLEKS                       R24 R24 K35 ["useDialogVariants"]
      165 GETIMPORT                        R25 K6 [require]
      167 GETIMPORT                        R26 K1 [script]
      169 GETTABLEKS                       R26 R26 K4 ["Parent"]
      171 GETTABLEKS                       R26 R26 K36 ["DialogProvider"]
      173 CALL                             R25 1 1
      174 GETIMPORT                        R26 K6 [require]
      176 GETIMPORT                        R27 K1 [script]
      178 GETTABLEKS                       R27 R27 K4 ["Parent"]
      180 GETTABLEKS                       R27 R27 K37 ["useDialog"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K6 [require]
      185 GETIMPORT                        R28 K1 [script]
      187 GETTABLEKS                       R28 R28 K4 ["Parent"]
      189 GETTABLEKS                       R28 R28 K38 ["useDialogResponsiveSize"]
      191 CALL                             R27 1 1
      192 GETIMPORT                        R28 K6 [require]
      194 GETIMPORT                        R29 K1 [script]
      196 GETTABLEKS                       R29 R29 K4 ["Parent"]
      198 GETTABLEKS                       R29 R29 K39 ["useDialogSize"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K6 [require]
      203 GETTABLEKS                       R30 R0 K18 ["Providers"]
      205 GETTABLEKS                       R30 R30 K40 ["Elevation"]
      207 GETTABLEKS                       R30 R30 K41 ["useElevation"]
      209 CALL                             R29 1 1
      210 GETIMPORT                        R30 K6 [require]
      212 GETTABLEKS                       R31 R0 K18 ["Providers"]
      214 GETTABLEKS                       R31 R31 K40 ["Elevation"]
      216 GETTABLEKS                       R31 R31 K42 ["ElevationProvider"]
      218 CALL                             R30 1 1
      219 GETTABLEKS                       R30 R30 K43 ["ElevationOwnerScope"]
      221 GETIMPORT                        R31 K6 [require]
      223 GETTABLEKS                       R32 R0 K21 ["Enums"]
      225 GETTABLEKS                       R32 R32 K44 ["ElevationLayer"]
      227 CALL                             R31 1 1
      228 DUPTABLE                         R32 K49 [{"size", "disablePortal", "hasBackdrop", "testId"}]
      229 GETTABLEKS                       R33 R13 K50 ["Medium"]
      231 SETTABLEKS                       R33 R32 K45 ["size"]
      233 LOADB                            R33 1
      234 SETTABLEKS                       R33 R32 K46 ["disablePortal"]
      236 LOADB                            R33 0
      237 SETTABLEKS                       R33 R32 K47 ["hasBackdrop"]
      239 LOADK                            R33 K51 ["--foundation-dialog"]
      240 SETTABLEKS                       R33 R32 K48 ["testId"]
      242 GETTABLEKS                       R33 R9 K52 ["SHADOW_IMAGE"]
      244 GETTABLEKS                       R34 R9 K53 ["SHADOW_SIZE"]
      246 DUPCLOSURE                       R35 K54 [PROTO_13]
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R20
      251 CAPTURE                          VAL R4
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R12
      254 CAPTURE                          VAL R29
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R26
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R17
      259 CAPTURE                          VAL R21
      260 CAPTURE                          VAL R7
      261 CAPTURE                          VAL R3
      262 CAPTURE                          VAL R11
      263 CAPTURE                          VAL R10
      264 CAPTURE                          VAL R33
      265 CAPTURE                          VAL R34
      266 CAPTURE                          VAL R18
      267 CAPTURE                          VAL R15
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R8
      270 CAPTURE                          VAL R30
      271 CAPTURE                          VAL R14
      272 CAPTURE                          VAL R6
      273 DUPCLOSURE                       R36 K55 [PROTO_14]
      274 CAPTURE                          VAL R19
      275 CAPTURE                          VAL R32
      276 CAPTURE                          VAL R4
      277 CAPTURE                          VAL R25
      278 CAPTURE                          VAL R35
      279 CAPTURE                          VAL R2
      280 GETTABLEKS                       R37 R4 K56 ["memo"]
      282 GETTABLEKS                       R38 R4 K57 ["forwardRef"]
      284 MOVE                             R39 R36
      285 CALL                             R38 1 -1
      286 CALL                             R37 -1 -1
      287 RETURN                           R37 -1
