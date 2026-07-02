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
        6 DUPTABLE                         R4 K3 [{["LayoutOrder"] = 1}]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R4 R2 K4 ["inner"]
       13 GETTABLEKS                       R4 R4 K5 ["maxWidth"]
       15 CALL                             R3 1 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K6 ["FoundationDialogAnimation"]
       19 JUMPIF                           R5 ; [+6]
       20 GETUPVAL                         R4 4
       21 GETTABLEKS                       R4 R4 K7 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 GETUPVAL                         R7 3
       30 GETTABLEKS                       R7 R7 K6 ["FoundationDialogAnimation"]
       32 JUMPIFNOT                        R7 ; [+12]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K8 ["useBinding"]
       36 GETIMPORT                        R8 K11 [Vector2.new]
       38 LOADN                            R9 0
       39 LOADN                            R10 0
       40 CALL                             R8 2 -1
       41 CALL                             R7 -1 2
       42 MOVE                             R5 R7
       43 MOVE                             R6 R8
       44 JUMP                             ; [+4]
       45 GETUPVAL                         R7 5
       46 MOVE                             R8 R4
       47 CALL                             R7 1 1
       48 MOVE                             R5 R7
       49 GETUPVAL                         R7 6
       50 CALL                             R7 0 1
       51 GETUPVAL                         R8 7
       52 GETUPVAL                         R9 8
       53 GETTABLEKS                       R9 R9 K12 ["Dialog"]
       55 DUPTABLE                         R10 K15 [{["stackAboveOwner"] = False}]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 9
       58 CALL                             R9 0 1
       59 GETUPVAL                         R10 10
       60 GETTABLEKS                       R11 R1 K16 ["size"]
       62 CALL                             R10 1 0
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K6 ["FoundationDialogAnimation"]
       66 JUMPIFNOT                        R11 ; [+3]
       67 GETUPVAL                         R10 11
       68 CALL                             R10 0 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R10
       71 LOADB                            R11 0
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R12 R12 K6 ["FoundationDialogAnimation"]
       75 JUMPIFNOT                        R12 ; [+4]
       76 GETUPVAL                         R12 12
       77 CALL                             R12 0 1
       78 GETTABLEKS                       R11 R12 K17 ["reducedMotion"]
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R13 R13 K6 ["FoundationDialogAnimation"]
       83 JUMPIFNOT                        R13 ; [+5]
       84 GETTABLEKS                       R12 R10 K18 ["Size"]
       86 GETTABLEKS                       R12 R12 K19 ["Size_800"]
       88 JUMP                             ; [+1]
       89 LOADN                            R12 0
       90 LOADNIL                          R13
       91 LOADNIL                          R14
       92 GETUPVAL                         R15 3
       93 GETTABLEKS                       R15 R15 K6 ["FoundationDialogAnimation"]
       95 JUMPIFNOT                        R15 ; [+7]
       96 GETUPVAL                         R15 4
       97 GETTABLEKS                       R15 R15 K20 ["useState"]
       99 LOADB                            R16 1
      100 CALL                             R15 1 2
      101 MOVE                             R13 R15
      102 MOVE                             R14 R16
      103 GETUPVAL                         R16 3
      104 GETTABLEKS                       R16 R16 K6 ["FoundationDialogAnimation"]
      106 JUMPIFNOT                        R16 ; [+6]
      107 GETUPVAL                         R15 4
      108 GETTABLEKS                       R15 R15 K7 ["useRef"]
      110 LOADB                            R16 0
      111 CALL                             R15 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R15
      114 GETUPVAL                         R17 3
      115 GETTABLEKS                       R17 R17 K6 ["FoundationDialogAnimation"]
      117 JUMPIFNOT                        R17 ; [+6]
      118 GETUPVAL                         R16 4
      119 GETTABLEKS                       R16 R16 K7 ["useRef"]
      121 LOADNIL                          R17
      122 CALL                             R16 1 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R16
      125 LOADNIL                          R17
      126 LOADNIL                          R18
      127 GETUPVAL                         R19 3
      128 GETTABLEKS                       R19 R19 K6 ["FoundationDialogAnimation"]
      130 JUMPIFNOT                        R19 ; [+5]
      131 GETUPVAL                         R19 13
      132 LOADN                            R20 1
      133 CALL                             R19 1 2
      134 MOVE                             R17 R19
      135 MOVE                             R18 R20
      136 LOADNIL                          R19
      137 LOADNIL                          R20
      138 GETUPVAL                         R21 3
      139 GETTABLEKS                       R21 R21 K6 ["FoundationDialogAnimation"]
      141 JUMPIFNOT                        R21 ; [+10]
      142 GETUPVAL                         R21 13
      143 MOVE                             R22 R12
      144 NEWCLOSURE                       R23 P0
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R16
      148 CAPTURE                          REF R14
      149 CALL                             R21 2 2
      150 MOVE                             R19 R21
      151 MOVE                             R20 R22
      152 GETUPVAL                         R21 3
      153 GETTABLEKS                       R21 R21 K6 ["FoundationDialogAnimation"]
      155 JUMPIFNOT                        R21 ; [+12]
      156 GETUPVAL                         R21 4
      157 GETTABLEKS                       R21 R21 K21 ["useEffect"]
      159 NEWCLOSURE                       R22 P1
      160 CAPTURE                          REF R11
      161 CAPTURE                          REF R20
      162 CAPTURE                          UPVAL U14
      163 CAPTURE                          REF R18
      164 CAPTURE                          VAL R10
      165 NEWTABLE                         R23 0 0
      167 CALL                             R21 2 0
      168 LOADNIL                          R21
      169 GETUPVAL                         R22 3
      170 GETTABLEKS                       R22 R22 K6 ["FoundationDialogAnimation"]
      172 JUMPIFNOT                        R22 ; [+21]
      173 GETUPVAL                         R22 4
      174 GETTABLEKS                       R22 R22 K22 ["useCallback"]
      176 NEWCLOSURE                       R23 P2
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R16
      179 CAPTURE                          REF R11
      180 CAPTURE                          REF R20
      181 CAPTURE                          UPVAL U14
      182 CAPTURE                          VAL R12
      183 CAPTURE                          REF R18
      184 CAPTURE                          VAL R10
      185 CAPTURE                          REF R14
      186 NEWTABLE                         R24 0 2
      188 MOVE                             R25 R12
      189 MOVE                             R26 R11
      190 SETLIST                          R24 R25 2 [1]
      192 CALL                             R22 2 1
      193 MOVE                             R21 R22
      194 GETUPVAL                         R23 3
      195 GETTABLEKS                       R23 R23 K6 ["FoundationDialogAnimation"]
      197 JUMPIFNOT                        R23 ; [+8]
      198 GETUPVAL                         R22 4
      199 GETTABLEKS                       R22 R22 K23 ["useMemo"]
      201 DUPCLOSURE                       R23 K24 [PROTO_3]
      202 NEWTABLE                         R24 0 0
      204 CALL                             R22 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R22
      207 GETUPVAL                         R23 3
      208 GETTABLEKS                       R23 R23 K6 ["FoundationDialogAnimation"]
      210 JUMPIFNOT                        R23 ; [+11]
      211 GETUPVAL                         R23 4
      212 GETTABLEKS                       R23 R23 K21 ["useEffect"]
      214 NEWCLOSURE                       R24 P4
      215 CAPTURE                          VAL R22
      216 NEWTABLE                         R25 0 1
      218 MOVE                             R26 R22
      219 SETLIST                          R25 R26 1 [1]
      221 CALL                             R23 2 0
      222 LOADNIL                          R23
      223 LOADNIL                          R24
      224 GETUPVAL                         R25 3
      225 GETTABLEKS                       R25 R25 K6 ["FoundationDialogAnimation"]
      227 JUMPIFNOT                        R25 ; [+7]
      228 GETUPVAL                         R25 4
      229 GETTABLEKS                       R25 R25 K20 ["useState"]
      231 LOADB                            R26 0
      232 CALL                             R25 1 2
      233 MOVE                             R23 R25
      234 MOVE                             R24 R26
      235 GETUPVAL                         R26 3
      236 GETTABLEKS                       R26 R26 K6 ["FoundationDialogAnimation"]
      238 JUMPIFNOT                        R26 ; [+13]
      239 GETUPVAL                         R25 4
      240 GETTABLEKS                       R25 R25 K22 ["useCallback"]
      242 NEWCLOSURE                       R26 P5
      243 CAPTURE                          VAL R22
      244 CAPTURE                          REF R24
      245 NEWTABLE                         R27 0 1
      247 MOVE                             R28 R22
      248 SETLIST                          R27 R28 1 [1]
      250 CALL                             R25 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R25
      253 GETUPVAL                         R26 4
      254 GETTABLEKS                       R26 R26 K25 ["createElement"]
      256 GETUPVAL                         R27 15
      257 DUPTABLE                         R28 K29 [{["tag"], ["ZIndex"] = 2}]
      258 GETTABLEKS                       R29 R2 K30 ["container"]
      260 GETTABLEKS                       R29 R29 K26 ["tag"]
      262 SETTABLEKS                       R29 R28 K26 ["tag"]
      264 DUPTABLE                         R29 K32 [{"Shadow"}]
      265 GETUPVAL                         R30 4
      266 GETTABLEKS                       R30 R30 K25 ["createElement"]
      268 GETUPVAL                         R31 16
      269 DUPTABLE                         R32 K37 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      270 GETUPVAL                         R33 17
      271 SETTABLEKS                       R33 R32 K33 ["Image"]
      273 DUPCLOSURE                       R35 K38 [PROTO_7]
      274 CAPTURE                          UPVAL U18
      275 NAMECALL                         R33 R5 K39 ["map"]
      277 CALL                             R33 2 1
      278 SETTABLEKS                       R33 R32 K18 ["Size"]
      280 DUPTABLE                         R33 K42 [{["center"], ["scale"] = 2}]
      281 GETIMPORT                        R34 K44 [Rect.new]
      283 GETUPVAL                         R35 18
      284 GETUPVAL                         R36 18
      285 GETUPVAL                         R37 18
      286 GETUPVAL                         R38 18
      287 CALL                             R34 4 1
      288 SETTABLEKS                       R34 R33 K40 ["center"]
      290 SETTABLEKS                       R33 R32 K34 ["slice"]
      292 GETTABLEKS                       R33 R2 K45 ["shadow"]
      294 GETTABLEKS                       R33 R33 K35 ["imageStyle"]
      296 SETTABLEKS                       R33 R32 K35 ["imageStyle"]
      298 LOADK                            R34 K46 ["%*--shadow"]
      299 GETTABLEKS                       R36 R1 K36 ["testId"]
      301 NAMECALL                         R34 R34 K47 ["format"]
      303 CALL                             R34 2 1
      304 MOVE                             R33 R34
      305 SETTABLEKS                       R33 R32 K36 ["testId"]
      307 CALL                             R30 2 1
      308 SETTABLEKS                       R30 R29 K31 ["Shadow"]
      310 CALL                             R26 3 1
      311 GETUPVAL                         R27 4
      312 GETTABLEKS                       R27 R27 K25 ["createElement"]
      314 GETUPVAL                         R28 15
      315 DUPTABLE                         R29 K49 [{["tag"], ["ZIndex"] = 3}]
      316 GETTABLEKS                       R30 R2 K30 ["container"]
      318 GETTABLEKS                       R30 R30 K26 ["tag"]
      320 SETTABLEKS                       R30 R29 K26 ["tag"]
      322 DUPTABLE                         R30 K53 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      323 GETUPVAL                         R32 3
      324 GETTABLEKS                       R32 R32 K6 ["FoundationDialogAnimation"]
      326 JUMPIFNOT                        R32 ; [+2]
      327 LOADNIL                          R31
      328 JUMP                             ; [+6]
      329 GETUPVAL                         R31 4
      330 GETTABLEKS                       R31 R31 K25 ["createElement"]
      332 GETUPVAL                         R32 15
      333 DUPTABLE                         R33 K56 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      334 CALL                             R31 2 1
      335 SETTABLEKS                       R31 R30 K50 ["DialogFlexStart"]
      337 GETUPVAL                         R31 4
      338 GETTABLEKS                       R31 R31 K25 ["createElement"]
      340 GETUPVAL                         R32 15
      341 GETUPVAL                         R33 19
      342 MOVE                             R34 R1
      343 DUPTABLE                         R35 K63 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      344 GETTABLEKS                       R36 R2 K4 ["inner"]
      346 GETTABLEKS                       R36 R36 K26 ["tag"]
      348 SETTABLEKS                       R36 R35 K26 ["tag"]
      350 GETTABLEKS                       R36 R1 K64 ["forwardRef"]
      352 SETTABLEKS                       R36 R35 K57 ["ref"]
      354 DUPTABLE                         R36 K66 [{"MaxSize"}]
      355 GETIMPORT                        R37 K11 [Vector2.new]
      357 MOVE                             R38 R3
      358 LOADK                            R39 K67 [∞]
      359 CALL                             R37 2 1
      360 SETTABLEKS                       R37 R36 K65 ["MaxSize"]
      362 SETTABLEKS                       R36 R35 K58 ["sizeConstraint"]
      364 DUPTABLE                         R36 K69 [{"affordance"}]
      365 GETUPVAL                         R37 20
      366 GETTABLEKS                       R37 R37 K70 ["None"]
      368 SETTABLEKS                       R37 R36 K68 ["affordance"]
      370 SETTABLEKS                       R36 R35 K59 ["stateLayer"]
      372 GETUPVAL                         R36 21
      373 GETTABLEKS                       R36 R36 K71 ["nonSelectable"]
      375 SETTABLEKS                       R36 R35 K60 ["selection"]
      377 GETUPVAL                         R36 21
      378 GETTABLEKS                       R36 R36 K72 ["isolatedSelectionGroup"]
      380 SETTABLEKS                       R36 R35 K61 ["selectionGroup"]
      382 GETUPVAL                         R36 0
      383 GETTABLEKS                       R36 R36 K73 ["noop"]
      385 SETTABLEKS                       R36 R35 K62 ["onActivated"]
      387 CALL                             R33 2 1
      388 DUPTABLE                         R34 K76 [{"CloseAffordance", "DialogBody"}]
      389 GETTABLEKS                       R36 R1 K77 ["onClose"]
      391 JUMPIFNOT                        R36 ; [+59]
      392 GETUPVAL                         R35 4
      393 GETTABLEKS                       R35 R35 K25 ["createElement"]
      395 GETUPVAL                         R36 22
      396 DUPTABLE                         R37 K81 [{["onActivated"], ["ref"], ["NextSelectionDown"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      397 GETUPVAL                         R39 3
      398 GETTABLEKS                       R39 R39 K6 ["FoundationDialogAnimation"]
      400 JUMPIFNOT                        R39 ; [+4]
      401 JUMPIFNOT                        R21 ; [+3]
      402 JUMPIF                           R11 ; [+2]
      403 MOVE                             R38 R21
      404 JUMP                             ; [+2]
      405 GETTABLEKS                       R38 R1 K77 ["onClose"]
      407 SETTABLEKS                       R38 R37 K62 ["onActivated"]
      409 GETTABLEKS                       R38 R9 K82 ["closeAffordanceRef"]
      411 SETTABLEKS                       R38 R37 K57 ["ref"]
      413 GETTABLEKS                       R38 R9 K83 ["contentStartRef"]
      415 SETTABLEKS                       R38 R37 K78 ["NextSelectionDown"]
      417 GETIMPORT                        R38 K85 [UDim2.new]
      419 LOADN                            R39 1
      420 GETTABLEKS                       R41 R2 K86 ["closeAffordance"]
      422 GETTABLEKS                       R41 R41 K87 ["offset"]
      424 MINUS                            R40 R41
      425 LOADN                            R41 0
      426 GETTABLEKS                       R42 R2 K86 ["closeAffordance"]
      428 GETTABLEKS                       R42 R42 K87 ["offset"]
      430 CALL                             R38 4 1
      431 SETTABLEKS                       R38 R37 K79 ["Position"]
      433 GETIMPORT                        R38 K11 [Vector2.new]
      435 LOADN                            R39 1
      436 LOADN                            R40 0
      437 CALL                             R38 2 1
      438 SETTABLEKS                       R38 R37 K80 ["AnchorPoint"]
      440 LOADK                            R39 K88 ["%*--close-affordance"]
      441 GETTABLEKS                       R41 R1 K36 ["testId"]
      443 NAMECALL                         R39 R39 K47 ["format"]
      445 CALL                             R39 2 1
      446 MOVE                             R38 R39
      447 SETTABLEKS                       R38 R37 K36 ["testId"]
      449 CALL                             R35 2 1
      450 JUMP                             ; [+1]
      451 LOADNIL                          R35
      452 SETTABLEKS                       R35 R34 K74 ["CloseAffordance"]
      454 GETUPVAL                         R35 4
      455 GETTABLEKS                       R35 R35 K25 ["createElement"]
      457 GETUPVAL                         R36 15
      458 DUPTABLE                         R37 K90 [{"tag", "ref", "onAbsoluteSizeChanged", "testId"}]
      459 GETTABLEKS                       R38 R2 K91 ["body"]
      461 GETTABLEKS                       R38 R38 K26 ["tag"]
      463 SETTABLEKS                       R38 R37 K26 ["tag"]
      465 GETUPVAL                         R39 3
      466 GETTABLEKS                       R39 R39 K6 ["FoundationDialogAnimation"]
      468 JUMPIF                           R39 ; [+2]
      469 MOVE                             R38 R4
      470 JUMP                             ; [+1]
      471 LOADNIL                          R38
      472 SETTABLEKS                       R38 R37 K57 ["ref"]
      474 GETUPVAL                         R39 3
      475 GETTABLEKS                       R39 R39 K6 ["FoundationDialogAnimation"]
      477 JUMPIFNOT                        R39 ; [+3]
      478 NEWCLOSURE                       R38 P7
      479 CAPTURE                          REF R6
      480 JUMP                             ; [+1]
      481 LOADNIL                          R38
      482 SETTABLEKS                       R38 R37 K89 ["onAbsoluteSizeChanged"]
      484 LOADK                            R39 K92 ["%*--body"]
      485 GETTABLEKS                       R41 R1 K36 ["testId"]
      487 NAMECALL                         R39 R39 K47 ["format"]
      489 CALL                             R39 2 1
      490 MOVE                             R38 R39
      491 SETTABLEKS                       R38 R37 K36 ["testId"]
      493 GETUPVAL                         R38 4
      494 GETTABLEKS                       R38 R38 K25 ["createElement"]
      496 GETUPVAL                         R39 23
      497 DUPTABLE                         R40 K94 [{"owner"}]
      498 SETTABLEKS                       R8 R40 K93 ["owner"]
      500 GETTABLEKS                       R41 R1 K95 ["children"]
      502 CALL                             R38 3 -1
      503 CALL                             R35 -1 1
      504 SETTABLEKS                       R35 R34 K75 ["DialogBody"]
      506 CALL                             R31 3 1
      507 SETTABLEKS                       R31 R30 K51 ["DialogInner"]
      509 GETUPVAL                         R32 3
      510 GETTABLEKS                       R32 R32 K6 ["FoundationDialogAnimation"]
      512 JUMPIFNOT                        R32 ; [+2]
      513 LOADNIL                          R31
      514 JUMP                             ; [+6]
      515 GETUPVAL                         R31 4
      516 GETTABLEKS                       R31 R31 K25 ["createElement"]
      518 GETUPVAL                         R32 15
      519 DUPTABLE                         R33 K96 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      520 CALL                             R31 2 1
      521 SETTABLEKS                       R31 R30 K52 ["DialogFlexEnd"]
      523 CALL                             R27 3 1
      524 GETUPVAL                         R28 4
      525 GETTABLEKS                       R28 R28 K25 ["createElement"]
      527 GETUPVAL                         R29 15
      528 DUPTABLE                         R30 K98 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      529 GETTABLEKS                       R31 R8 K99 ["zIndex"]
      531 SETTABLEKS                       R31 R30 K27 ["ZIndex"]
      533 LOADK                            R32 K100 ["%*--container"]
      534 GETTABLEKS                       R34 R1 K36 ["testId"]
      536 NAMECALL                         R32 R32 K47 ["format"]
      538 CALL                             R32 2 1
      539 MOVE                             R31 R32
      540 SETTABLEKS                       R31 R30 K36 ["testId"]
      542 DUPTABLE                         R31 K103 [{"Backdrop", "DialogContentWrapper"}]
      543 GETTABLEKS                       R33 R1 K104 ["hasBackdrop"]
      545 JUMPIFNOT                        R33 ; [+57]
      546 GETUPVAL                         R32 4
      547 GETTABLEKS                       R32 R32 K25 ["createElement"]
      549 GETUPVAL                         R33 15
      550 DUPTABLE                         R34 K107 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
      551 GETIMPORT                        R35 K109 [UDim2.fromScale]
      553 LOADN                            R36 2
      554 LOADN                            R37 2
      555 CALL                             R35 2 1
      556 SETTABLEKS                       R35 R34 K18 ["Size"]
      558 DUPTABLE                         R35 K69 [{"affordance"}]
      559 GETUPVAL                         R36 20
      560 GETTABLEKS                       R36 R36 K70 ["None"]
      562 SETTABLEKS                       R36 R35 K68 ["affordance"]
      564 SETTABLEKS                       R35 R34 K59 ["stateLayer"]
      566 NEWCLOSURE                       R35 P8
      567 CAPTURE                          VAL R1
      568 CAPTURE                          UPVAL U3
      569 CAPTURE                          REF R21
      570 CAPTURE                          REF R11
      571 CAPTURE                          UPVAL U24
      572 SETTABLEKS                       R35 R34 K62 ["onActivated"]
      574 GETUPVAL                         R36 3
      575 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      577 JUMPIFNOT                        R36 ; [+8]
      578 JUMPIF                           R11 ; [+7]
      579 JUMPIFNOT                        R17 ; [+6]
      580 NEWCLOSURE                       R37 P9
      581 CAPTURE                          VAL R2
      582 NAMECALL                         R35 R17 K39 ["map"]
      584 CALL                             R35 2 1
      585 JUMP                             ; [+4]
      586 GETTABLEKS                       R35 R2 K110 ["backdrop"]
      588 GETTABLEKS                       R35 R35 K106 ["backgroundStyle"]
      590 SETTABLEKS                       R35 R34 K106 ["backgroundStyle"]
      592 LOADK                            R36 K111 ["%*--backdrop"]
      593 GETTABLEKS                       R38 R1 K36 ["testId"]
      595 NAMECALL                         R36 R36 K47 ["format"]
      597 CALL                             R36 2 1
      598 MOVE                             R35 R36
      599 SETTABLEKS                       R35 R34 K36 ["testId"]
      601 CALL                             R32 2 1
      602 JUMP                             ; [+1]
      603 LOADNIL                          R32
      604 SETTABLEKS                       R32 R31 K101 ["Backdrop"]
      606 GETUPVAL                         R32 4
      607 GETTABLEKS                       R32 R32 K25 ["createElement"]
      609 GETUPVAL                         R33 15
      610 DUPTABLE                         R34 K113 [{["ref"], ["Position"], ["sizeConstraint"], ["tag"], ["ZIndex"] = 2, ["GroupTransparency"]}]
      611 GETUPVAL                         R36 3
      612 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      614 JUMPIFNOT                        R36 ; [+3]
      615 JUMPIF                           R11 ; [+2]
      616 MOVE                             R35 R25
      617 JUMP                             ; [+1]
      618 LOADNIL                          R35
      619 SETTABLEKS                       R35 R34 K57 ["ref"]
      621 GETUPVAL                         R36 3
      622 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      624 JUMPIFNOT                        R36 ; [+7]
      625 JUMPIF                           R11 ; [+6]
      626 JUMPIFNOT                        R19 ; [+5]
      627 DUPCLOSURE                       R37 K114 [PROTO_11]
      628 NAMECALL                         R35 R19 K39 ["map"]
      630 CALL                             R35 2 1
      631 JUMP                             ; [+1]
      632 LOADNIL                          R35
      633 SETTABLEKS                       R35 R34 K79 ["Position"]
      635 GETUPVAL                         R36 3
      636 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      638 JUMPIFNOT                        R36 ; [+12]
      639 JUMPIF                           R11 ; [+11]
      640 DUPTABLE                         R35 K66 [{"MaxSize"}]
      641 GETIMPORT                        R36 K11 [Vector2.new]
      643 GETUPVAL                         R39 18
      644 MULK                             R38 R39 K28 [2]
      645 ADD                              R37 R3 R38
      646 LOADK                            R38 K67 [∞]
      647 CALL                             R36 2 1
      648 SETTABLEKS                       R36 R35 K65 ["MaxSize"]
      650 JUMP                             ; [+1]
      651 LOADNIL                          R35
      652 SETTABLEKS                       R35 R34 K58 ["sizeConstraint"]
      654 NEWTABLE                         R35 2 0
      656 GETUPVAL                         R36 3
      657 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      659 JUMPIFNOT                        R36 ; [+1]
      660 NOT                              R36 R11
      661 SETTABLEKS                       R36 R35 K115 ["anchor-center-center size-full"]
      663 GETUPVAL                         R38 3
      664 GETTABLEKS                       R38 R38 K6 ["FoundationDialogAnimation"]
      666 NOT                              R37 R38
      667 OR                               R36 R37 R11
      668 SETTABLEKS                       R36 R35 K97 ["size-full"]
      670 SETTABLEKS                       R35 R34 K26 ["tag"]
      672 GETUPVAL                         R36 3
      673 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      675 JUMPIFNOT                        R36 ; [+9]
      676 JUMPIF                           R11 ; [+8]
      677 JUMPIFNOT                        R13 ; [+7]
      678 JUMPIFNOT                        R19 ; [+6]
      679 NEWCLOSURE                       R37 P11
      680 CAPTURE                          VAL R12
      681 NAMECALL                         R35 R19 K39 ["map"]
      683 CALL                             R35 2 1
      684 JUMP                             ; [+1]
      685 LOADNIL                          R35
      686 SETTABLEKS                       R35 R34 K112 ["GroupTransparency"]
      688 GETUPVAL                         R36 3
      689 GETTABLEKS                       R36 R36 K6 ["FoundationDialogAnimation"]
      691 JUMPIFNOT                        R36 ; [+1]
      692 JUMPIFNOT                        R11 ; [+6]
      693 DUPTABLE                         R35 K117 [{"DialogShadowWrapper", "Dialog"}]
      694 SETTABLEKS                       R26 R35 K116 ["DialogShadowWrapper"]
      696 SETTABLEKS                       R27 R35 K12 ["Dialog"]
      698 JUMP                             ; [+1]
      699 LOADNIL                          R35
      700 CALL                             R32 3 1
      701 SETTABLEKS                       R32 R31 K102 ["DialogContentWrapper"]
      703 CALL                             R28 3 1
      704 GETUPVAL                         R29 3
      705 GETTABLEKS                       R29 R29 K6 ["FoundationDialogAnimation"]
      707 JUMPIFNOT                        R29 ; [+50]
      708 JUMPIF                           R11 ; [+49]
      709 GETTABLEKS                       R30 R1 K118 ["disablePortal"]
      711 JUMPIF                           R30 ; [+2]
      712 JUMPIFNOTEQKNIL                  R7 ; [+3]
      714 MOVE                             R29 R28
      715 JUMP                             ; [+6]
      716 GETUPVAL                         R29 25
      717 GETTABLEKS                       R29 R29 K119 ["createPortal"]
      719 MOVE                             R30 R28
      720 MOVE                             R31 R7
      721 CALL                             R29 2 1
      722 GETUPVAL                         R30 4
      723 GETTABLEKS                       R30 R30 K25 ["createElement"]
      725 GETUPVAL                         R31 4
      726 GETTABLEKS                       R31 R31 K120 ["Fragment"]
      728 LOADNIL                          R32
      729 DUPTABLE                         R33 K123 [{"Main", "StableContent"}]
      730 SETTABLEKS                       R29 R33 K121 ["Main"]
      732 JUMPIFNOT                        R23 ; [+19]
      733 GETUPVAL                         R34 25
      734 GETTABLEKS                       R34 R34 K119 ["createPortal"]
      736 GETUPVAL                         R35 4
      737 GETTABLEKS                       R35 R35 K25 ["createElement"]
      739 GETUPVAL                         R36 4
      740 GETTABLEKS                       R36 R36 K120 ["Fragment"]
      742 LOADNIL                          R37
      743 DUPTABLE                         R38 K117 [{"DialogShadowWrapper", "Dialog"}]
      744 SETTABLEKS                       R26 R38 K116 ["DialogShadowWrapper"]
      746 SETTABLEKS                       R27 R38 K12 ["Dialog"]
      748 CALL                             R35 3 1
      749 MOVE                             R36 R22
      750 CALL                             R34 2 1
      751 JUMP                             ; [+1]
      752 LOADNIL                          R34
      753 SETTABLEKS                       R34 R33 K122 ["StableContent"]
      755 CALL                             R30 3 -1
      756 CLOSEUPVALS                      R6
      757 RETURN                           R30 -1
      758 GETTABLEKS                       R29 R1 K118 ["disablePortal"]
      760 JUMPIF                           R29 ; [+2]
      761 JUMPIFNOTEQKNIL                  R7 ; [+3]
      763 CLOSEUPVALS                      R6
      764 RETURN                           R28 1
      765 GETUPVAL                         R29 25
      766 GETTABLEKS                       R29 R29 K119 ["createPortal"]
      768 MOVE                             R30 R28
      769 MOVE                             R31 R7
      770 CALL                             R29 2 -1
      771 CLOSEUPVALS                      R6
      772 RETURN                           R29 -1

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
      228 DUPTABLE                         R32 K52 [{["size"], ["disablePortal"] = True, ["hasBackdrop"] = False, ["testId"] = "--foundation-dialog"}]
      229 GETTABLEKS                       R33 R13 K53 ["Medium"]
      231 SETTABLEKS                       R33 R32 K45 ["size"]
      233 GETTABLEKS                       R33 R9 K54 ["SHADOW_IMAGE"]
      235 GETTABLEKS                       R34 R9 K55 ["SHADOW_SIZE"]
      237 DUPCLOSURE                       R35 K56 [PROTO_13]
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R4
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R12
      245 CAPTURE                          VAL R29
      246 CAPTURE                          VAL R31
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R17
      250 CAPTURE                          VAL R21
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R3
      253 CAPTURE                          VAL R11
      254 CAPTURE                          VAL R10
      255 CAPTURE                          VAL R33
      256 CAPTURE                          VAL R34
      257 CAPTURE                          VAL R18
      258 CAPTURE                          VAL R15
      259 CAPTURE                          VAL R22
      260 CAPTURE                          VAL R8
      261 CAPTURE                          VAL R30
      262 CAPTURE                          VAL R14
      263 CAPTURE                          VAL R6
      264 DUPCLOSURE                       R36 K57 [PROTO_14]
      265 CAPTURE                          VAL R19
      266 CAPTURE                          VAL R32
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R25
      269 CAPTURE                          VAL R35
      270 CAPTURE                          VAL R2
      271 GETTABLEKS                       R37 R4 K58 ["memo"]
      273 GETTABLEKS                       R38 R4 K59 ["forwardRef"]
      275 MOVE                             R39 R36
      276 CALL                             R38 1 -1
      277 CALL                             R37 -1 -1
      278 RETURN                           R37 -1
