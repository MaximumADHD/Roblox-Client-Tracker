PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K1 ["onClose"]
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K1 ["onClose"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R1 R2 K0 ["current"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+15]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["instant"]
        6 LOADN                            R2 0
        7 CALL                             R1 1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K0 ["instant"]
       13 LOADN                            R2 0
       14 CALL                             R1 1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K1 ["ease"]
       21 LOADN                            R2 0
       22 DUPTABLE                         R3 K4 [{"easingStyle", "duration"}]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K5 ["Ease"]
       26 GETTABLEKS                       R4 R5 K6 ["StandardOut"]
       28 SETTABLEKS                       R4 R3 K2 ["easingStyle"]
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R5 R6 K7 ["Time"]
       33 GETTABLEKS                       R4 R5 K8 ["Time_300"]
       35 SETTABLEKS                       R4 R3 K3 ["duration"]
       37 CALL                             R1 2 -1
       38 CALL                             R0 -1 0
       39 GETUPVAL                         R0 3
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R1 R2 K1 ["ease"]
       43 LOADN                            R2 0
       44 DUPTABLE                         R3 K9 [{"duration"}]
       45 GETUPVAL                         R6 4
       46 GETTABLEKS                       R5 R6 K7 ["Time"]
       48 GETTABLEKS                       R4 R5 K10 ["Time_100"]
       50 SETTABLEKS                       R4 R3 K3 ["duration"]
       52 CALL                             R1 2 -1
       53 CALL                             R0 -1 0
       54 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
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
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R2 R3 K1 ["instant"]
       18 GETUPVAL                         R3 5
       19 CALL                             R2 1 -1
       20 CALL                             R1 -1 0
       21 GETUPVAL                         R1 6
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R2 R3 K1 ["instant"]
       25 LOADN                            R3 1
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R2 R3 K2 ["ease"]
       33 GETUPVAL                         R3 5
       34 DUPTABLE                         R4 K5 [{"easingStyle", "duration"}]
       35 GETUPVAL                         R7 7
       36 GETTABLEKS                       R6 R7 K6 ["Ease"]
       38 GETTABLEKS                       R5 R6 K7 ["StandardIn"]
       40 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       42 GETUPVAL                         R7 7
       43 GETTABLEKS                       R6 R7 K8 ["Time"]
       45 GETTABLEKS                       R5 R6 K9 ["Time_200"]
       47 SETTABLEKS                       R5 R4 K4 ["duration"]
       49 CALL                             R2 2 -1
       50 CALL                             R1 -1 0
       51 GETUPVAL                         R1 6
       52 GETUPVAL                         R3 4
       53 GETTABLEKS                       R2 R3 K2 ["ease"]
       55 LOADN                            R3 1
       56 DUPTABLE                         R4 K10 [{"duration"}]
       57 GETUPVAL                         R7 7
       58 GETTABLEKS                       R6 R7 K8 ["Time"]
       60 GETTABLEKS                       R5 R6 K11 ["Time_100"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["FoundationDialogAnimation"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 3
       11 JUMPIF                           R0 ; [+6]
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R2 4
       14 GETTABLEKS                       R1 R2 K2 ["BackdropClick"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["onClose"]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R1 R2 K2 ["BackdropClick"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"Color3", "Transparency"}]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K3 ["backdrop"]
        4 GETTABLEKS                       R3 R4 K4 ["backgroundStyle"]
        6 GETTABLEKS                       R2 R3 K0 ["Color3"]
        8 SETTABLEKS                       R2 R1 K0 ["Color3"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K3 ["backdrop"]
       13 GETTABLEKS                       R4 R5 K4 ["backgroundStyle"]
       15 GETTABLEKS                       R3 R4 K1 ["Transparency"]
       17 LOADN                            R4 1
       18 FASTCALL3                        MATH_LERP R3 R4 R0
       20 MOVE                             R5 R0
       21 GETIMPORT                        R2 K7 [math.lerp]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       26 RETURN                           R1 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADK                            R4 K3 [0.5]
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 DIV                              R1 R0 R2
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K2 [{"LayoutOrder"}]
        7 LOADN                            R5 1
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 1
       12 CALL                             R2 0 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R5 R2 K3 ["inner"]
       16 GETTABLEKS                       R4 R5 K4 ["maxWidth"]
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K5 ["useRef"]
       22 LOADNIL                          R5
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 4
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 6
       30 GETUPVAL                         R9 7
       31 GETTABLEKS                       R8 R9 K6 ["Dialog"]
       33 DUPTABLE                         R9 K8 [{"stackAboveOwner"}]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K7 ["stackAboveOwner"]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R8 8
       39 CALL                             R8 0 1
       40 GETUPVAL                         R9 9
       41 GETTABLEKS                       R10 R1 K9 ["size"]
       43 CALL                             R9 1 0
       44 GETUPVAL                         R11 10
       45 GETTABLEKS                       R10 R11 K10 ["FoundationDialogAnimation"]
       47 JUMPIFNOT                        R10 ; [+3]
       48 GETUPVAL                         R9 11
       49 CALL                             R9 0 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R9
       52 LOADB                            R10 0
       53 GETUPVAL                         R12 10
       54 GETTABLEKS                       R11 R12 K10 ["FoundationDialogAnimation"]
       56 JUMPIFNOT                        R11 ; [+4]
       57 GETUPVAL                         R11 12
       58 CALL                             R11 0 1
       59 GETTABLEKS                       R10 R11 K11 ["reducedMotion"]
       61 GETUPVAL                         R13 10
       62 GETTABLEKS                       R12 R13 K10 ["FoundationDialogAnimation"]
       64 JUMPIFNOT                        R12 ; [+5]
       65 GETTABLEKS                       R12 R9 K12 ["Size"]
       67 GETTABLEKS                       R11 R12 K13 ["Size_800"]
       69 JUMP                             ; [+1]
       70 LOADN                            R11 0
       71 LOADNIL                          R12
       72 LOADNIL                          R13
       73 GETUPVAL                         R15 10
       74 GETTABLEKS                       R14 R15 K10 ["FoundationDialogAnimation"]
       76 JUMPIFNOT                        R14 ; [+7]
       77 GETUPVAL                         R15 3
       78 GETTABLEKS                       R14 R15 K14 ["useState"]
       80 LOADB                            R15 1
       81 CALL                             R14 1 2
       82 MOVE                             R12 R14
       83 MOVE                             R13 R15
       84 GETUPVAL                         R16 10
       85 GETTABLEKS                       R15 R16 K10 ["FoundationDialogAnimation"]
       87 JUMPIFNOT                        R15 ; [+6]
       88 GETUPVAL                         R15 3
       89 GETTABLEKS                       R14 R15 K5 ["useRef"]
       91 LOADB                            R15 0
       92 CALL                             R14 1 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R14
       95 GETUPVAL                         R17 10
       96 GETTABLEKS                       R16 R17 K10 ["FoundationDialogAnimation"]
       98 JUMPIFNOT                        R16 ; [+6]
       99 GETUPVAL                         R16 3
      100 GETTABLEKS                       R15 R16 K5 ["useRef"]
      102 LOADNIL                          R16
      103 CALL                             R15 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R15
      106 LOADNIL                          R16
      107 LOADNIL                          R17
      108 GETUPVAL                         R19 10
      109 GETTABLEKS                       R18 R19 K10 ["FoundationDialogAnimation"]
      111 JUMPIFNOT                        R18 ; [+5]
      112 GETUPVAL                         R18 13
      113 LOADN                            R19 1
      114 CALL                             R18 1 2
      115 MOVE                             R16 R18
      116 MOVE                             R17 R19
      117 LOADNIL                          R18
      118 LOADNIL                          R19
      119 GETUPVAL                         R21 10
      120 GETTABLEKS                       R20 R21 K10 ["FoundationDialogAnimation"]
      122 JUMPIFNOT                        R20 ; [+10]
      123 GETUPVAL                         R20 13
      124 MOVE                             R21 R11
      125 NEWCLOSURE                       R22 P0
      126 CAPTURE                          REF R13
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R15
      130 CALL                             R20 2 2
      131 MOVE                             R18 R20
      132 MOVE                             R19 R21
      133 GETUPVAL                         R21 10
      134 GETTABLEKS                       R20 R21 K10 ["FoundationDialogAnimation"]
      136 JUMPIFNOT                        R20 ; [+12]
      137 GETUPVAL                         R21 3
      138 GETTABLEKS                       R20 R21 K15 ["useEffect"]
      140 NEWCLOSURE                       R21 P1
      141 CAPTURE                          REF R10
      142 CAPTURE                          REF R19
      143 CAPTURE                          UPVAL U14
      144 CAPTURE                          REF R17
      145 CAPTURE                          VAL R9
      146 NEWTABLE                         R22 0 0
      148 CALL                             R20 2 0
      149 LOADNIL                          R20
      150 GETUPVAL                         R22 10
      151 GETTABLEKS                       R21 R22 K10 ["FoundationDialogAnimation"]
      153 JUMPIFNOT                        R21 ; [+21]
      154 GETUPVAL                         R22 3
      155 GETTABLEKS                       R21 R22 K16 ["useCallback"]
      157 NEWCLOSURE                       R22 P2
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R15
      160 CAPTURE                          REF R10
      161 CAPTURE                          REF R19
      162 CAPTURE                          UPVAL U14
      163 CAPTURE                          VAL R11
      164 CAPTURE                          REF R17
      165 CAPTURE                          VAL R9
      166 CAPTURE                          REF R13
      167 NEWTABLE                         R23 0 2
      169 MOVE                             R24 R11
      170 MOVE                             R25 R10
      171 SETLIST                          R23 R24 2 [1]
      173 CALL                             R21 2 1
      174 MOVE                             R20 R21
      175 GETUPVAL                         R23 10
      176 GETTABLEKS                       R22 R23 K10 ["FoundationDialogAnimation"]
      178 JUMPIFNOT                        R22 ; [+8]
      179 GETUPVAL                         R22 3
      180 GETTABLEKS                       R21 R22 K17 ["useMemo"]
      182 DUPCLOSURE                       R22 K18 [PROTO_3]
      183 NEWTABLE                         R23 0 0
      185 CALL                             R21 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R21
      188 GETUPVAL                         R23 10
      189 GETTABLEKS                       R22 R23 K10 ["FoundationDialogAnimation"]
      191 JUMPIFNOT                        R22 ; [+11]
      192 GETUPVAL                         R23 3
      193 GETTABLEKS                       R22 R23 K15 ["useEffect"]
      195 NEWCLOSURE                       R23 P4
      196 CAPTURE                          VAL R21
      197 NEWTABLE                         R24 0 1
      199 MOVE                             R25 R21
      200 SETLIST                          R24 R25 1 [1]
      202 CALL                             R22 2 0
      203 LOADNIL                          R22
      204 LOADNIL                          R23
      205 GETUPVAL                         R25 10
      206 GETTABLEKS                       R24 R25 K10 ["FoundationDialogAnimation"]
      208 JUMPIFNOT                        R24 ; [+7]
      209 GETUPVAL                         R25 3
      210 GETTABLEKS                       R24 R25 K14 ["useState"]
      212 LOADB                            R25 0
      213 CALL                             R24 1 2
      214 MOVE                             R22 R24
      215 MOVE                             R23 R25
      216 GETUPVAL                         R26 10
      217 GETTABLEKS                       R25 R26 K10 ["FoundationDialogAnimation"]
      219 JUMPIFNOT                        R25 ; [+13]
      220 GETUPVAL                         R25 3
      221 GETTABLEKS                       R24 R25 K16 ["useCallback"]
      223 NEWCLOSURE                       R25 P5
      224 CAPTURE                          VAL R21
      225 CAPTURE                          REF R23
      226 NEWTABLE                         R26 0 1
      228 MOVE                             R27 R21
      229 SETLIST                          R26 R27 1 [1]
      231 CALL                             R24 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R24
      234 GETUPVAL                         R26 3
      235 GETTABLEKS                       R25 R26 K19 ["createElement"]
      237 GETUPVAL                         R26 15
      238 DUPTABLE                         R27 K22 [{"tag", "ZIndex"}]
      239 GETTABLEKS                       R29 R2 K23 ["container"]
      241 GETTABLEKS                       R28 R29 K20 ["tag"]
      243 SETTABLEKS                       R28 R27 K20 ["tag"]
      245 LOADN                            R28 2
      246 SETTABLEKS                       R28 R27 K21 ["ZIndex"]
      248 DUPTABLE                         R28 K25 [{"Shadow"}]
      249 GETUPVAL                         R30 3
      250 GETTABLEKS                       R29 R30 K19 ["createElement"]
      252 GETUPVAL                         R30 16
      253 DUPTABLE                         R31 K30 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      254 GETUPVAL                         R32 17
      255 SETTABLEKS                       R32 R31 K26 ["Image"]
      257 DUPCLOSURE                       R34 K31 [PROTO_7]
      258 CAPTURE                          UPVAL U18
      259 NAMECALL                         R32 R5 K32 ["map"]
      261 CALL                             R32 2 1
      262 SETTABLEKS                       R32 R31 K12 ["Size"]
      264 DUPTABLE                         R32 K35 [{"center", "scale"}]
      265 GETIMPORT                        R33 K38 [Rect.new]
      267 GETUPVAL                         R34 18
      268 GETUPVAL                         R35 18
      269 GETUPVAL                         R36 18
      270 GETUPVAL                         R37 18
      271 CALL                             R33 4 1
      272 SETTABLEKS                       R33 R32 K33 ["center"]
      274 LOADN                            R33 2
      275 SETTABLEKS                       R33 R32 K34 ["scale"]
      277 SETTABLEKS                       R32 R31 K27 ["slice"]
      279 GETTABLEKS                       R33 R2 K39 ["shadow"]
      281 GETTABLEKS                       R32 R33 K28 ["imageStyle"]
      283 SETTABLEKS                       R32 R31 K28 ["imageStyle"]
      285 LOADK                            R33 K40 ["%*--shadow"]
      286 GETTABLEKS                       R35 R1 K29 ["testId"]
      288 NAMECALL                         R33 R33 K41 ["format"]
      290 CALL                             R33 2 1
      291 MOVE                             R32 R33
      292 SETTABLEKS                       R32 R31 K29 ["testId"]
      294 CALL                             R29 2 1
      295 SETTABLEKS                       R29 R28 K24 ["Shadow"]
      297 CALL                             R25 3 1
      298 GETUPVAL                         R27 3
      299 GETTABLEKS                       R26 R27 K19 ["createElement"]
      301 GETUPVAL                         R27 15
      302 DUPTABLE                         R28 K22 [{"tag", "ZIndex"}]
      303 GETTABLEKS                       R30 R2 K23 ["container"]
      305 GETTABLEKS                       R29 R30 K20 ["tag"]
      307 SETTABLEKS                       R29 R28 K20 ["tag"]
      309 LOADN                            R29 3
      310 SETTABLEKS                       R29 R28 K21 ["ZIndex"]
      312 DUPTABLE                         R29 K45 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      313 GETUPVAL                         R31 3
      314 GETTABLEKS                       R30 R31 K19 ["createElement"]
      316 GETUPVAL                         R31 15
      317 DUPTABLE                         R32 K46 [{"tag", "LayoutOrder"}]
      318 LOADK                            R33 K47 ["fill"]
      319 SETTABLEKS                       R33 R32 K20 ["tag"]
      321 LOADN                            R33 0
      322 SETTABLEKS                       R33 R32 K1 ["LayoutOrder"]
      324 CALL                             R30 2 1
      325 SETTABLEKS                       R30 R29 K42 ["DialogFlexStart"]
      327 GETUPVAL                         R31 3
      328 GETTABLEKS                       R30 R31 K19 ["createElement"]
      330 GETUPVAL                         R31 15
      331 GETUPVAL                         R32 19
      332 MOVE                             R33 R1
      333 DUPTABLE                         R34 K54 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      334 GETTABLEKS                       R36 R2 K3 ["inner"]
      336 GETTABLEKS                       R35 R36 K20 ["tag"]
      338 SETTABLEKS                       R35 R34 K20 ["tag"]
      340 GETTABLEKS                       R35 R1 K55 ["forwardRef"]
      342 SETTABLEKS                       R35 R34 K48 ["ref"]
      344 DUPTABLE                         R35 K57 [{"MaxSize"}]
      345 GETIMPORT                        R36 K59 [Vector2.new]
      347 MOVE                             R37 R3
      348 LOADK                            R38 K60 [∞]
      349 CALL                             R36 2 1
      350 SETTABLEKS                       R36 R35 K56 ["MaxSize"]
      352 SETTABLEKS                       R35 R34 K49 ["sizeConstraint"]
      354 DUPTABLE                         R35 K62 [{"affordance"}]
      355 GETUPVAL                         R37 20
      356 GETTABLEKS                       R36 R37 K63 ["None"]
      358 SETTABLEKS                       R36 R35 K61 ["affordance"]
      360 SETTABLEKS                       R35 R34 K50 ["stateLayer"]
      362 GETUPVAL                         R36 21
      363 GETTABLEKS                       R35 R36 K64 ["nonSelectable"]
      365 SETTABLEKS                       R35 R34 K51 ["selection"]
      367 GETUPVAL                         R36 21
      368 GETTABLEKS                       R35 R36 K65 ["isolatedSelectionGroup"]
      370 SETTABLEKS                       R35 R34 K52 ["selectionGroup"]
      372 GETUPVAL                         R36 0
      373 GETTABLEKS                       R35 R36 K66 ["noop"]
      375 SETTABLEKS                       R35 R34 K53 ["onActivated"]
      377 CALL                             R32 2 1
      378 DUPTABLE                         R33 K69 [{"CloseAffordance", "DialogBody"}]
      379 GETTABLEKS                       R35 R1 K70 ["onClose"]
      381 JUMPIFNOT                        R35 ; [+62]
      382 GETUPVAL                         R35 3
      383 GETTABLEKS                       R34 R35 K19 ["createElement"]
      385 GETUPVAL                         R35 22
      386 DUPTABLE                         R36 K74 [{"onActivated", "ref", "NextSelectionDown", "Position", "AnchorPoint", "ZIndex", "testId"}]
      387 GETUPVAL                         R39 10
      388 GETTABLEKS                       R38 R39 K10 ["FoundationDialogAnimation"]
      390 JUMPIFNOT                        R38 ; [+4]
      391 JUMPIFNOT                        R20 ; [+3]
      392 JUMPIF                           R10 ; [+2]
      393 MOVE                             R37 R20
      394 JUMP                             ; [+2]
      395 GETTABLEKS                       R37 R1 K70 ["onClose"]
      397 SETTABLEKS                       R37 R36 K53 ["onActivated"]
      399 GETTABLEKS                       R37 R8 K75 ["closeAffordanceRef"]
      401 SETTABLEKS                       R37 R36 K48 ["ref"]
      403 GETTABLEKS                       R37 R8 K76 ["contentStartRef"]
      405 SETTABLEKS                       R37 R36 K71 ["NextSelectionDown"]
      407 GETIMPORT                        R37 K78 [UDim2.new]
      409 LOADN                            R38 1
      410 GETTABLEKS                       R41 R2 K79 ["closeAffordance"]
      412 GETTABLEKS                       R40 R41 K80 ["offset"]
      414 MINUS                            R39 R40
      415 LOADN                            R40 0
      416 GETTABLEKS                       R42 R2 K79 ["closeAffordance"]
      418 GETTABLEKS                       R41 R42 K80 ["offset"]
      420 CALL                             R37 4 1
      421 SETTABLEKS                       R37 R36 K72 ["Position"]
      423 GETIMPORT                        R37 K59 [Vector2.new]
      425 LOADN                            R38 1
      426 LOADN                            R39 0
      427 CALL                             R37 2 1
      428 SETTABLEKS                       R37 R36 K73 ["AnchorPoint"]
      430 LOADN                            R37 2
      431 SETTABLEKS                       R37 R36 K21 ["ZIndex"]
      433 LOADK                            R38 K81 ["%*--close-affordance"]
      434 GETTABLEKS                       R40 R1 K29 ["testId"]
      436 NAMECALL                         R38 R38 K41 ["format"]
      438 CALL                             R38 2 1
      439 MOVE                             R37 R38
      440 SETTABLEKS                       R37 R36 K29 ["testId"]
      442 CALL                             R34 2 1
      443 JUMP                             ; [+1]
      444 LOADNIL                          R34
      445 SETTABLEKS                       R34 R33 K67 ["CloseAffordance"]
      447 GETUPVAL                         R35 3
      448 GETTABLEKS                       R34 R35 K19 ["createElement"]
      450 GETUPVAL                         R35 15
      451 DUPTABLE                         R36 K82 [{"tag", "ref", "testId"}]
      452 GETTABLEKS                       R38 R2 K83 ["body"]
      454 GETTABLEKS                       R37 R38 K20 ["tag"]
      456 SETTABLEKS                       R37 R36 K20 ["tag"]
      458 SETTABLEKS                       R4 R36 K48 ["ref"]
      460 LOADK                            R38 K84 ["%*--body"]
      461 GETTABLEKS                       R40 R1 K29 ["testId"]
      463 NAMECALL                         R38 R38 K41 ["format"]
      465 CALL                             R38 2 1
      466 MOVE                             R37 R38
      467 SETTABLEKS                       R37 R36 K29 ["testId"]
      469 GETUPVAL                         R38 3
      470 GETTABLEKS                       R37 R38 K19 ["createElement"]
      472 GETUPVAL                         R38 23
      473 DUPTABLE                         R39 K86 [{"owner"}]
      474 SETTABLEKS                       R7 R39 K85 ["owner"]
      476 GETTABLEKS                       R40 R1 K87 ["children"]
      478 CALL                             R37 3 -1
      479 CALL                             R34 -1 1
      480 SETTABLEKS                       R34 R33 K68 ["DialogBody"]
      482 CALL                             R30 3 1
      483 SETTABLEKS                       R30 R29 K43 ["DialogInner"]
      485 GETUPVAL                         R31 3
      486 GETTABLEKS                       R30 R31 K19 ["createElement"]
      488 GETUPVAL                         R31 15
      489 DUPTABLE                         R32 K46 [{"tag", "LayoutOrder"}]
      490 LOADK                            R33 K47 ["fill"]
      491 SETTABLEKS                       R33 R32 K20 ["tag"]
      493 LOADN                            R33 2
      494 SETTABLEKS                       R33 R32 K1 ["LayoutOrder"]
      496 CALL                             R30 2 1
      497 SETTABLEKS                       R30 R29 K44 ["DialogFlexEnd"]
      499 CALL                             R26 3 1
      500 GETUPVAL                         R28 3
      501 GETTABLEKS                       R27 R28 K19 ["createElement"]
      503 GETUPVAL                         R28 15
      504 DUPTABLE                         R29 K88 [{"ZIndex", "tag", "testId"}]
      505 GETTABLEKS                       R30 R7 K89 ["zIndex"]
      507 SETTABLEKS                       R30 R29 K21 ["ZIndex"]
      509 LOADK                            R30 K90 ["size-full"]
      510 SETTABLEKS                       R30 R29 K20 ["tag"]
      512 LOADK                            R31 K91 ["%*--container"]
      513 GETTABLEKS                       R33 R1 K29 ["testId"]
      515 NAMECALL                         R31 R31 K41 ["format"]
      517 CALL                             R31 2 1
      518 MOVE                             R30 R31
      519 SETTABLEKS                       R30 R29 K29 ["testId"]
      521 DUPTABLE                         R30 K94 [{"Backdrop", "DialogContentWrapper"}]
      522 GETTABLEKS                       R32 R1 K95 ["hasBackdrop"]
      524 JUMPIFNOT                        R32 ; [+63]
      525 GETUPVAL                         R32 3
      526 GETTABLEKS                       R31 R32 K19 ["createElement"]
      528 GETUPVAL                         R32 15
      529 DUPTABLE                         R33 K97 [{"tag", "Size", "stateLayer", "onActivated", "backgroundStyle", "ZIndex", "testId"}]
      530 LOADK                            R34 K98 ["position-center-center anchor-center-center"]
      531 SETTABLEKS                       R34 R33 K20 ["tag"]
      533 GETIMPORT                        R34 K100 [UDim2.fromScale]
      535 LOADN                            R35 2
      536 LOADN                            R36 2
      537 CALL                             R34 2 1
      538 SETTABLEKS                       R34 R33 K12 ["Size"]
      540 DUPTABLE                         R34 K62 [{"affordance"}]
      541 GETUPVAL                         R36 20
      542 GETTABLEKS                       R35 R36 K63 ["None"]
      544 SETTABLEKS                       R35 R34 K61 ["affordance"]
      546 SETTABLEKS                       R34 R33 K50 ["stateLayer"]
      548 NEWCLOSURE                       R34 P7
      549 CAPTURE                          VAL R1
      550 CAPTURE                          UPVAL U10
      551 CAPTURE                          REF R20
      552 CAPTURE                          REF R10
      553 CAPTURE                          UPVAL U24
      554 SETTABLEKS                       R34 R33 K53 ["onActivated"]
      556 GETUPVAL                         R36 10
      557 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      559 JUMPIFNOT                        R35 ; [+8]
      560 JUMPIF                           R10 ; [+7]
      561 JUMPIFNOT                        R16 ; [+6]
      562 NEWCLOSURE                       R36 P8
      563 CAPTURE                          VAL R2
      564 NAMECALL                         R34 R16 K32 ["map"]
      566 CALL                             R34 2 1
      567 JUMP                             ; [+4]
      568 GETTABLEKS                       R35 R2 K101 ["backdrop"]
      570 GETTABLEKS                       R34 R35 K96 ["backgroundStyle"]
      572 SETTABLEKS                       R34 R33 K96 ["backgroundStyle"]
      574 LOADN                            R34 2
      575 SETTABLEKS                       R34 R33 K21 ["ZIndex"]
      577 LOADK                            R35 K102 ["%*--backdrop"]
      578 GETTABLEKS                       R37 R1 K29 ["testId"]
      580 NAMECALL                         R35 R35 K41 ["format"]
      582 CALL                             R35 2 1
      583 MOVE                             R34 R35
      584 SETTABLEKS                       R34 R33 K29 ["testId"]
      586 CALL                             R31 2 1
      587 JUMP                             ; [+1]
      588 LOADNIL                          R31
      589 SETTABLEKS                       R31 R30 K92 ["Backdrop"]
      591 GETUPVAL                         R32 3
      592 GETTABLEKS                       R31 R32 K19 ["createElement"]
      594 GETUPVAL                         R32 15
      595 DUPTABLE                         R33 K104 [{"ref", "Position", "sizeConstraint", "tag", "ZIndex", "GroupTransparency"}]
      596 GETUPVAL                         R36 10
      597 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      599 JUMPIFNOT                        R35 ; [+3]
      600 JUMPIF                           R10 ; [+2]
      601 MOVE                             R34 R24
      602 JUMP                             ; [+1]
      603 LOADNIL                          R34
      604 SETTABLEKS                       R34 R33 K48 ["ref"]
      606 GETUPVAL                         R36 10
      607 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      609 JUMPIFNOT                        R35 ; [+7]
      610 JUMPIF                           R10 ; [+6]
      611 JUMPIFNOT                        R18 ; [+5]
      612 DUPCLOSURE                       R36 K105 [PROTO_10]
      613 NAMECALL                         R34 R18 K32 ["map"]
      615 CALL                             R34 2 1
      616 JUMP                             ; [+1]
      617 LOADNIL                          R34
      618 SETTABLEKS                       R34 R33 K72 ["Position"]
      620 GETUPVAL                         R36 10
      621 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      623 JUMPIFNOT                        R35 ; [+10]
      624 JUMPIF                           R10 ; [+9]
      625 DUPTABLE                         R34 K57 [{"MaxSize"}]
      626 GETIMPORT                        R35 K59 [Vector2.new]
      628 MOVE                             R36 R3
      629 LOADK                            R37 K60 [∞]
      630 CALL                             R35 2 1
      631 SETTABLEKS                       R35 R34 K56 ["MaxSize"]
      633 JUMP                             ; [+1]
      634 LOADNIL                          R34
      635 SETTABLEKS                       R34 R33 K49 ["sizeConstraint"]
      637 NEWTABLE                         R34 2 0
      639 GETUPVAL                         R36 10
      640 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      642 JUMPIFNOT                        R35 ; [+1]
      643 NOT                              R35 R10
      644 SETTABLEKS                       R35 R34 K106 ["anchor-center-center size-full"]
      646 GETUPVAL                         R38 10
      647 GETTABLEKS                       R37 R38 K10 ["FoundationDialogAnimation"]
      649 NOT                              R36 R37
      650 OR                               R35 R36 R10
      651 SETTABLEKS                       R35 R34 K90 ["size-full"]
      653 SETTABLEKS                       R34 R33 K20 ["tag"]
      655 LOADN                            R34 2
      656 SETTABLEKS                       R34 R33 K21 ["ZIndex"]
      658 GETUPVAL                         R36 10
      659 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      661 JUMPIFNOT                        R35 ; [+9]
      662 JUMPIF                           R10 ; [+8]
      663 JUMPIFNOT                        R12 ; [+7]
      664 JUMPIFNOT                        R18 ; [+6]
      665 NEWCLOSURE                       R36 P10
      666 CAPTURE                          VAL R11
      667 NAMECALL                         R34 R18 K32 ["map"]
      669 CALL                             R34 2 1
      670 JUMP                             ; [+1]
      671 LOADNIL                          R34
      672 SETTABLEKS                       R34 R33 K103 ["GroupTransparency"]
      674 GETUPVAL                         R36 10
      675 GETTABLEKS                       R35 R36 K10 ["FoundationDialogAnimation"]
      677 JUMPIFNOT                        R35 ; [+1]
      678 JUMPIFNOT                        R10 ; [+6]
      679 DUPTABLE                         R34 K108 [{"DialogShadowWrapper", "Dialog"}]
      680 SETTABLEKS                       R25 R34 K107 ["DialogShadowWrapper"]
      682 SETTABLEKS                       R26 R34 K6 ["Dialog"]
      684 JUMP                             ; [+1]
      685 LOADNIL                          R34
      686 CALL                             R31 3 1
      687 SETTABLEKS                       R31 R30 K93 ["DialogContentWrapper"]
      689 CALL                             R27 3 1
      690 GETUPVAL                         R29 10
      691 GETTABLEKS                       R28 R29 K10 ["FoundationDialogAnimation"]
      693 JUMPIFNOT                        R28 ; [+50]
      694 JUMPIF                           R10 ; [+49]
      695 GETTABLEKS                       R29 R1 K109 ["disablePortal"]
      697 JUMPIF                           R29 ; [+2]
      698 JUMPIFNOTEQKNIL                  R6 ; [+3]
      700 MOVE                             R28 R27
      701 JUMP                             ; [+6]
      702 GETUPVAL                         R29 25
      703 GETTABLEKS                       R28 R29 K110 ["createPortal"]
      705 MOVE                             R29 R27
      706 MOVE                             R30 R6
      707 CALL                             R28 2 1
      708 GETUPVAL                         R30 3
      709 GETTABLEKS                       R29 R30 K19 ["createElement"]
      711 GETUPVAL                         R31 3
      712 GETTABLEKS                       R30 R31 K111 ["Fragment"]
      714 LOADNIL                          R31
      715 DUPTABLE                         R32 K114 [{"Main", "StableContent"}]
      716 SETTABLEKS                       R28 R32 K112 ["Main"]
      718 JUMPIFNOT                        R22 ; [+19]
      719 GETUPVAL                         R34 25
      720 GETTABLEKS                       R33 R34 K110 ["createPortal"]
      722 GETUPVAL                         R35 3
      723 GETTABLEKS                       R34 R35 K19 ["createElement"]
      725 GETUPVAL                         R36 3
      726 GETTABLEKS                       R35 R36 K111 ["Fragment"]
      728 LOADNIL                          R36
      729 DUPTABLE                         R37 K108 [{"DialogShadowWrapper", "Dialog"}]
      730 SETTABLEKS                       R25 R37 K107 ["DialogShadowWrapper"]
      732 SETTABLEKS                       R26 R37 K6 ["Dialog"]
      734 CALL                             R34 3 1
      735 MOVE                             R35 R21
      736 CALL                             R33 2 1
      737 JUMP                             ; [+1]
      738 LOADNIL                          R33
      739 SETTABLEKS                       R33 R32 K113 ["StableContent"]
      741 CALL                             R29 3 -1
      742 CLOSEUPVALS                      R10
      743 RETURN                           R29 -1
      744 GETTABLEKS                       R28 R1 K109 ["disablePortal"]
      746 JUMPIF                           R28 ; [+2]
      747 JUMPIFNOTEQKNIL                  R6 ; [+3]
      749 CLOSEUPVALS                      R10
      750 RETURN                           R27 1
      751 GETUPVAL                         R29 25
      752 GETTABLEKS                       R28 R29 K110 ["createPortal"]
      754 MOVE                             R29 R27
      755 MOVE                             R30 R6
      756 CALL                             R28 2 -1
      757 CLOSEUPVALS                      R10
      758 RETURN                           R28 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K4 [{"size", "responsiveSize", "testId"}]
        9 GETTABLEKS                       R6 R2 K1 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["size"]
       13 GETTABLEKS                       R6 R2 K1 ["size"]
       15 SETTABLEKS                       R6 R5 K2 ["responsiveSize"]
       17 GETTABLEKS                       R6 R2 K3 ["testId"]
       19 SETTABLEKS                       R6 R5 K3 ["testId"]
       21 DUPTABLE                         R6 K6 [{"Dialog"}]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K0 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R9 R10 K7 ["assign"]
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
       38 GETTABLEKS                       R10 R0 K13 ["Components"]
       40 GETTABLEKS                       R9 R10 K14 ["CloseAffordance"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R12 R0 K13 ["Components"]
       52 GETTABLEKS                       R11 R12 K16 ["Image"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R13 R0 K13 ["Components"]
       59 GETTABLEKS                       R12 R13 K17 ["View"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R15 R0 K18 ["Providers"]
       66 GETTABLEKS                       R14 R15 K19 ["Overlay"]
       68 GETTABLEKS                       R13 R14 K20 ["useOverlay"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K6 [require]
       73 GETTABLEKS                       R15 R0 K21 ["Enums"]
       75 GETTABLEKS                       R14 R15 K22 ["DialogSize"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R16 R0 K21 ["Enums"]
       82 GETTABLEKS                       R15 R16 K23 ["OnCloseCallbackReason"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R17 R0 K21 ["Enums"]
       89 GETTABLEKS                       R16 R17 K24 ["StateLayerAffordance"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R18 R0 K25 ["Utility"]
       96 GETTABLEKS                       R17 R18 K26 ["useScaledValue"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R20 R0 K18 ["Providers"]
      103 GETTABLEKS                       R19 R20 K27 ["Style"]
      105 GETTABLEKS                       R18 R19 K28 ["useTokens"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K6 [require]
      110 GETTABLEKS                       R20 R0 K25 ["Utility"]
      112 GETTABLEKS                       R19 R20 K29 ["withCommonProps"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R21 R0 K25 ["Utility"]
      119 GETTABLEKS                       R20 R21 K30 ["withDefaults"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R22 R0 K25 ["Utility"]
      126 GETTABLEKS                       R21 R22 K31 ["Flags"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R24 R0 K18 ["Providers"]
      133 GETTABLEKS                       R23 R24 K32 ["Preferences"]
      135 GETTABLEKS                       R22 R23 K33 ["usePreferences"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K6 [require]
      140 GETIMPORT                        R25 K1 [script]
      142 GETTABLEKS                       R24 R25 K4 ["Parent"]
      144 GETTABLEKS                       R23 R24 K34 ["Types"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K6 [require]
      149 GETTABLEKS                       R25 R0 K13 ["Components"]
      151 GETTABLEKS                       R24 R25 K34 ["Types"]
      153 CALL                             R23 1 1
      154 GETIMPORT                        R25 K6 [require]
      156 GETIMPORT                        R28 K1 [script]
      158 GETTABLEKS                       R27 R28 K4 ["Parent"]
      160 GETTABLEKS                       R26 R27 K35 ["useDialogVariants"]
      162 CALL                             R25 1 1
      163 GETTABLEKS                       R24 R25 K35 ["useDialogVariants"]
      165 GETIMPORT                        R25 K6 [require]
      167 GETIMPORT                        R28 K1 [script]
      169 GETTABLEKS                       R27 R28 K4 ["Parent"]
      171 GETTABLEKS                       R26 R27 K36 ["DialogProvider"]
      173 CALL                             R25 1 1
      174 GETIMPORT                        R26 K6 [require]
      176 GETIMPORT                        R29 K1 [script]
      178 GETTABLEKS                       R28 R29 K4 ["Parent"]
      180 GETTABLEKS                       R27 R28 K37 ["useDialog"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K6 [require]
      185 GETIMPORT                        R30 K1 [script]
      187 GETTABLEKS                       R29 R30 K4 ["Parent"]
      189 GETTABLEKS                       R28 R29 K38 ["useDialogResponsiveSize"]
      191 CALL                             R27 1 1
      192 GETIMPORT                        R28 K6 [require]
      194 GETIMPORT                        R31 K1 [script]
      196 GETTABLEKS                       R30 R31 K4 ["Parent"]
      198 GETTABLEKS                       R29 R30 K39 ["useDialogSize"]
      200 CALL                             R28 1 1
      201 GETIMPORT                        R29 K6 [require]
      203 GETTABLEKS                       R32 R0 K18 ["Providers"]
      205 GETTABLEKS                       R31 R32 K40 ["Elevation"]
      207 GETTABLEKS                       R30 R31 K41 ["useElevation"]
      209 CALL                             R29 1 1
      210 GETIMPORT                        R31 K6 [require]
      212 GETTABLEKS                       R34 R0 K18 ["Providers"]
      214 GETTABLEKS                       R33 R34 K40 ["Elevation"]
      216 GETTABLEKS                       R32 R33 K42 ["ElevationProvider"]
      218 CALL                             R31 1 1
      219 GETTABLEKS                       R30 R31 K43 ["ElevationOwnerScope"]
      221 GETIMPORT                        R31 K6 [require]
      223 GETTABLEKS                       R33 R0 K21 ["Enums"]
      225 GETTABLEKS                       R32 R33 K44 ["ElevationLayer"]
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
      246 DUPCLOSURE                       R35 K54 [PROTO_12]
      247 CAPTURE                          VAL R2
      248 CAPTURE                          VAL R24
      249 CAPTURE                          VAL R16
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R12
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R31
      255 CAPTURE                          VAL R26
      256 CAPTURE                          VAL R27
      257 CAPTURE                          VAL R20
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
      273 DUPCLOSURE                       R36 K55 [PROTO_13]
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
