PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["onClose"]
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["onClose"]
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

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

PROTO_9:
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
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K6 ["useRef"]
       19 LOADNIL                          R5
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 5
       25 CALL                             R6 0 1
       26 GETUPVAL                         R7 6
       27 GETUPVAL                         R8 7
       28 GETTABLEKS                       R8 R8 K7 ["Dialog"]
       30 DUPTABLE                         R9 K10 [{["stackAboveOwner"] = False}]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 8
       33 CALL                             R8 0 1
       34 GETUPVAL                         R9 9
       35 GETTABLEKS                       R10 R1 K11 ["size"]
       37 CALL                             R9 1 0
       38 GETUPVAL                         R10 10
       39 GETTABLEKS                       R10 R10 K12 ["FoundationDialogAnimation"]
       41 JUMPIFNOT                        R10 ; [+3]
       42 GETUPVAL                         R9 11
       43 CALL                             R9 0 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 LOADB                            R10 0
       47 GETUPVAL                         R11 10
       48 GETTABLEKS                       R11 R11 K12 ["FoundationDialogAnimation"]
       50 JUMPIFNOT                        R11 ; [+4]
       51 GETUPVAL                         R11 12
       52 CALL                             R11 0 1
       53 GETTABLEKS                       R10 R11 K13 ["reducedMotion"]
       55 GETUPVAL                         R12 10
       56 GETTABLEKS                       R12 R12 K12 ["FoundationDialogAnimation"]
       58 JUMPIFNOT                        R12 ; [+5]
       59 GETTABLEKS                       R11 R9 K14 ["Size"]
       61 GETTABLEKS                       R11 R11 K15 ["Size_800"]
       63 JUMP                             ; [+1]
       64 LOADN                            R11 0
       65 LOADNIL                          R12
       66 LOADNIL                          R13
       67 GETUPVAL                         R14 10
       68 GETTABLEKS                       R14 R14 K12 ["FoundationDialogAnimation"]
       70 JUMPIFNOT                        R14 ; [+7]
       71 GETUPVAL                         R14 3
       72 GETTABLEKS                       R14 R14 K16 ["useState"]
       74 LOADB                            R15 1
       75 CALL                             R14 1 2
       76 MOVE                             R12 R14
       77 MOVE                             R13 R15
       78 GETUPVAL                         R15 10
       79 GETTABLEKS                       R15 R15 K12 ["FoundationDialogAnimation"]
       81 JUMPIFNOT                        R15 ; [+6]
       82 GETUPVAL                         R14 3
       83 GETTABLEKS                       R14 R14 K6 ["useRef"]
       85 LOADB                            R15 0
       86 CALL                             R14 1 1
       87 JUMP                             ; [+1]
       88 LOADNIL                          R14
       89 GETUPVAL                         R16 10
       90 GETTABLEKS                       R16 R16 K12 ["FoundationDialogAnimation"]
       92 JUMPIFNOT                        R16 ; [+6]
       93 GETUPVAL                         R15 3
       94 GETTABLEKS                       R15 R15 K6 ["useRef"]
       96 LOADNIL                          R16
       97 CALL                             R15 1 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R15
      100 LOADNIL                          R16
      101 LOADNIL                          R17
      102 GETUPVAL                         R18 10
      103 GETTABLEKS                       R18 R18 K12 ["FoundationDialogAnimation"]
      105 JUMPIFNOT                        R18 ; [+5]
      106 GETUPVAL                         R18 13
      107 LOADN                            R19 1
      108 CALL                             R18 1 2
      109 MOVE                             R16 R18
      110 MOVE                             R17 R19
      111 LOADNIL                          R18
      112 LOADNIL                          R19
      113 GETUPVAL                         R20 10
      114 GETTABLEKS                       R20 R20 K12 ["FoundationDialogAnimation"]
      116 JUMPIFNOT                        R20 ; [+10]
      117 GETUPVAL                         R20 13
      118 MOVE                             R21 R11
      119 NEWCLOSURE                       R22 P0
      120 CAPTURE                          REF R13
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R15
      124 CALL                             R20 2 2
      125 MOVE                             R18 R20
      126 MOVE                             R19 R21
      127 GETUPVAL                         R20 10
      128 GETTABLEKS                       R20 R20 K12 ["FoundationDialogAnimation"]
      130 JUMPIFNOT                        R20 ; [+12]
      131 GETUPVAL                         R20 3
      132 GETTABLEKS                       R20 R20 K17 ["useEffect"]
      134 NEWCLOSURE                       R21 P1
      135 CAPTURE                          REF R10
      136 CAPTURE                          REF R19
      137 CAPTURE                          UPVAL U14
      138 CAPTURE                          REF R17
      139 CAPTURE                          VAL R9
      140 NEWTABLE                         R22 0 0
      142 CALL                             R20 2 0
      143 LOADNIL                          R20
      144 GETUPVAL                         R21 10
      145 GETTABLEKS                       R21 R21 K12 ["FoundationDialogAnimation"]
      147 JUMPIFNOT                        R21 ; [+21]
      148 GETUPVAL                         R21 3
      149 GETTABLEKS                       R21 R21 K18 ["useCallback"]
      151 NEWCLOSURE                       R22 P2
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R15
      154 CAPTURE                          REF R10
      155 CAPTURE                          REF R19
      156 CAPTURE                          UPVAL U14
      157 CAPTURE                          VAL R11
      158 CAPTURE                          REF R17
      159 CAPTURE                          VAL R9
      160 CAPTURE                          REF R13
      161 NEWTABLE                         R23 0 2
      163 MOVE                             R24 R11
      164 MOVE                             R25 R10
      165 SETLIST                          R23 R24 2 [1]
      167 CALL                             R21 2 1
      168 MOVE                             R20 R21
      169 GETUPVAL                         R22 10
      170 GETTABLEKS                       R22 R22 K12 ["FoundationDialogAnimation"]
      172 JUMPIFNOT                        R22 ; [+8]
      173 GETUPVAL                         R21 3
      174 GETTABLEKS                       R21 R21 K19 ["useMemo"]
      176 DUPCLOSURE                       R22 K20 [PROTO_3]
      177 NEWTABLE                         R23 0 0
      179 CALL                             R21 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R21
      182 GETUPVAL                         R22 10
      183 GETTABLEKS                       R22 R22 K12 ["FoundationDialogAnimation"]
      185 JUMPIFNOT                        R22 ; [+11]
      186 GETUPVAL                         R22 3
      187 GETTABLEKS                       R22 R22 K17 ["useEffect"]
      189 NEWCLOSURE                       R23 P4
      190 CAPTURE                          VAL R21
      191 NEWTABLE                         R24 0 1
      193 MOVE                             R25 R21
      194 SETLIST                          R24 R25 1 [1]
      196 CALL                             R22 2 0
      197 LOADNIL                          R22
      198 LOADNIL                          R23
      199 GETUPVAL                         R24 10
      200 GETTABLEKS                       R24 R24 K12 ["FoundationDialogAnimation"]
      202 JUMPIFNOT                        R24 ; [+7]
      203 GETUPVAL                         R24 3
      204 GETTABLEKS                       R24 R24 K16 ["useState"]
      206 LOADB                            R25 0
      207 CALL                             R24 1 2
      208 MOVE                             R22 R24
      209 MOVE                             R23 R25
      210 GETUPVAL                         R25 10
      211 GETTABLEKS                       R25 R25 K12 ["FoundationDialogAnimation"]
      213 JUMPIFNOT                        R25 ; [+13]
      214 GETUPVAL                         R24 3
      215 GETTABLEKS                       R24 R24 K18 ["useCallback"]
      217 NEWCLOSURE                       R25 P5
      218 CAPTURE                          VAL R21
      219 CAPTURE                          REF R23
      220 NEWTABLE                         R26 0 1
      222 MOVE                             R27 R21
      223 SETLIST                          R26 R27 1 [1]
      225 CALL                             R24 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R24
      228 GETUPVAL                         R25 3
      229 GETTABLEKS                       R25 R25 K21 ["createElement"]
      231 GETUPVAL                         R26 15
      232 DUPTABLE                         R27 K25 [{["tag"], ["ZIndex"] = 2}]
      233 GETTABLEKS                       R28 R2 K26 ["container"]
      235 GETTABLEKS                       R28 R28 K22 ["tag"]
      237 SETTABLEKS                       R28 R27 K22 ["tag"]
      239 DUPTABLE                         R28 K28 [{"Shadow"}]
      240 GETUPVAL                         R29 3
      241 GETTABLEKS                       R29 R29 K21 ["createElement"]
      243 GETUPVAL                         R30 16
      244 DUPTABLE                         R31 K33 [{"Image", "Size", "slice", "imageStyle", "testId"}]
      245 GETUPVAL                         R32 17
      246 SETTABLEKS                       R32 R31 K29 ["Image"]
      248 DUPCLOSURE                       R34 K34 [PROTO_7]
      249 CAPTURE                          UPVAL U18
      250 NAMECALL                         R32 R5 K35 ["map"]
      252 CALL                             R32 2 1
      253 SETTABLEKS                       R32 R31 K14 ["Size"]
      255 DUPTABLE                         R32 K38 [{["center"], ["scale"] = 2}]
      256 GETIMPORT                        R33 K41 [Rect.new]
      258 GETUPVAL                         R34 18
      259 GETUPVAL                         R35 18
      260 GETUPVAL                         R36 18
      261 GETUPVAL                         R37 18
      262 CALL                             R33 4 1
      263 SETTABLEKS                       R33 R32 K36 ["center"]
      265 SETTABLEKS                       R32 R31 K30 ["slice"]
      267 GETTABLEKS                       R32 R2 K42 ["shadow"]
      269 GETTABLEKS                       R32 R32 K31 ["imageStyle"]
      271 SETTABLEKS                       R32 R31 K31 ["imageStyle"]
      273 LOADK                            R33 K43 ["%*--shadow"]
      274 GETTABLEKS                       R35 R1 K32 ["testId"]
      276 NAMECALL                         R33 R33 K44 ["format"]
      278 CALL                             R33 2 1
      279 MOVE                             R32 R33
      280 SETTABLEKS                       R32 R31 K32 ["testId"]
      282 CALL                             R29 2 1
      283 SETTABLEKS                       R29 R28 K27 ["Shadow"]
      285 CALL                             R25 3 1
      286 GETUPVAL                         R26 3
      287 GETTABLEKS                       R26 R26 K21 ["createElement"]
      289 GETUPVAL                         R27 15
      290 DUPTABLE                         R28 K46 [{["tag"], ["ZIndex"] = 3}]
      291 GETTABLEKS                       R29 R2 K26 ["container"]
      293 GETTABLEKS                       R29 R29 K22 ["tag"]
      295 SETTABLEKS                       R29 R28 K22 ["tag"]
      297 DUPTABLE                         R29 K50 [{"DialogFlexStart", "DialogInner", "DialogFlexEnd"}]
      298 GETUPVAL                         R30 3
      299 GETTABLEKS                       R30 R30 K21 ["createElement"]
      301 GETUPVAL                         R31 15
      302 DUPTABLE                         R32 K53 [{["tag"] = "fill", ["LayoutOrder"] = 0}]
      303 CALL                             R30 2 1
      304 SETTABLEKS                       R30 R29 K47 ["DialogFlexStart"]
      306 GETUPVAL                         R30 3
      307 GETTABLEKS                       R30 R30 K21 ["createElement"]
      309 GETUPVAL                         R31 15
      310 GETUPVAL                         R32 19
      311 MOVE                             R33 R1
      312 DUPTABLE                         R34 K60 [{"tag", "ref", "sizeConstraint", "stateLayer", "selection", "selectionGroup", "onActivated"}]
      313 GETTABLEKS                       R35 R2 K4 ["inner"]
      315 GETTABLEKS                       R35 R35 K22 ["tag"]
      317 SETTABLEKS                       R35 R34 K22 ["tag"]
      319 GETTABLEKS                       R35 R1 K61 ["forwardRef"]
      321 SETTABLEKS                       R35 R34 K54 ["ref"]
      323 DUPTABLE                         R35 K63 [{"MaxSize"}]
      324 GETIMPORT                        R36 K65 [Vector2.new]
      326 MOVE                             R37 R3
      327 LOADK                            R38 K66 [∞]
      328 CALL                             R36 2 1
      329 SETTABLEKS                       R36 R35 K62 ["MaxSize"]
      331 SETTABLEKS                       R35 R34 K55 ["sizeConstraint"]
      333 DUPTABLE                         R35 K68 [{"affordance"}]
      334 GETUPVAL                         R36 20
      335 GETTABLEKS                       R36 R36 K69 ["None"]
      337 SETTABLEKS                       R36 R35 K67 ["affordance"]
      339 SETTABLEKS                       R35 R34 K56 ["stateLayer"]
      341 GETUPVAL                         R35 21
      342 GETTABLEKS                       R35 R35 K70 ["nonSelectable"]
      344 SETTABLEKS                       R35 R34 K57 ["selection"]
      346 GETUPVAL                         R35 21
      347 GETTABLEKS                       R35 R35 K71 ["isolatedSelectionGroup"]
      349 SETTABLEKS                       R35 R34 K58 ["selectionGroup"]
      351 GETUPVAL                         R35 0
      352 GETTABLEKS                       R35 R35 K72 ["noop"]
      354 SETTABLEKS                       R35 R34 K59 ["onActivated"]
      356 CALL                             R32 2 1
      357 DUPTABLE                         R33 K75 [{"CloseAffordance", "DialogBody"}]
      358 GETTABLEKS                       R35 R1 K76 ["onClose"]
      360 JUMPIFNOT                        R35 ; [+59]
      361 GETUPVAL                         R34 3
      362 GETTABLEKS                       R34 R34 K21 ["createElement"]
      364 GETUPVAL                         R35 22
      365 DUPTABLE                         R36 K80 [{["onActivated"], ["ref"], ["NextSelectionDown"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["testId"]}]
      366 GETUPVAL                         R38 10
      367 GETTABLEKS                       R38 R38 K12 ["FoundationDialogAnimation"]
      369 JUMPIFNOT                        R38 ; [+4]
      370 JUMPIFNOT                        R20 ; [+3]
      371 JUMPIF                           R10 ; [+2]
      372 MOVE                             R37 R20
      373 JUMP                             ; [+2]
      374 GETTABLEKS                       R37 R1 K76 ["onClose"]
      376 SETTABLEKS                       R37 R36 K59 ["onActivated"]
      378 GETTABLEKS                       R37 R8 K81 ["closeAffordanceRef"]
      380 SETTABLEKS                       R37 R36 K54 ["ref"]
      382 GETTABLEKS                       R37 R8 K82 ["contentStartRef"]
      384 SETTABLEKS                       R37 R36 K77 ["NextSelectionDown"]
      386 GETIMPORT                        R37 K84 [UDim2.new]
      388 LOADN                            R38 1
      389 GETTABLEKS                       R40 R2 K85 ["closeAffordance"]
      391 GETTABLEKS                       R40 R40 K86 ["offset"]
      393 MINUS                            R39 R40
      394 LOADN                            R40 0
      395 GETTABLEKS                       R41 R2 K85 ["closeAffordance"]
      397 GETTABLEKS                       R41 R41 K86 ["offset"]
      399 CALL                             R37 4 1
      400 SETTABLEKS                       R37 R36 K78 ["Position"]
      402 GETIMPORT                        R37 K65 [Vector2.new]
      404 LOADN                            R38 1
      405 LOADN                            R39 0
      406 CALL                             R37 2 1
      407 SETTABLEKS                       R37 R36 K79 ["AnchorPoint"]
      409 LOADK                            R38 K87 ["%*--close-affordance"]
      410 GETTABLEKS                       R40 R1 K32 ["testId"]
      412 NAMECALL                         R38 R38 K44 ["format"]
      414 CALL                             R38 2 1
      415 MOVE                             R37 R38
      416 SETTABLEKS                       R37 R36 K32 ["testId"]
      418 CALL                             R34 2 1
      419 JUMP                             ; [+1]
      420 LOADNIL                          R34
      421 SETTABLEKS                       R34 R33 K73 ["CloseAffordance"]
      423 GETUPVAL                         R34 3
      424 GETTABLEKS                       R34 R34 K21 ["createElement"]
      426 GETUPVAL                         R35 15
      427 DUPTABLE                         R36 K88 [{"tag", "ref", "testId"}]
      428 GETTABLEKS                       R37 R2 K89 ["body"]
      430 GETTABLEKS                       R37 R37 K22 ["tag"]
      432 SETTABLEKS                       R37 R36 K22 ["tag"]
      434 SETTABLEKS                       R4 R36 K54 ["ref"]
      436 LOADK                            R38 K90 ["%*--body"]
      437 GETTABLEKS                       R40 R1 K32 ["testId"]
      439 NAMECALL                         R38 R38 K44 ["format"]
      441 CALL                             R38 2 1
      442 MOVE                             R37 R38
      443 SETTABLEKS                       R37 R36 K32 ["testId"]
      445 GETUPVAL                         R37 3
      446 GETTABLEKS                       R37 R37 K21 ["createElement"]
      448 GETUPVAL                         R38 23
      449 DUPTABLE                         R39 K92 [{"owner"}]
      450 SETTABLEKS                       R7 R39 K91 ["owner"]
      452 GETTABLEKS                       R40 R1 K93 ["children"]
      454 CALL                             R37 3 -1
      455 CALL                             R34 -1 1
      456 SETTABLEKS                       R34 R33 K74 ["DialogBody"]
      458 CALL                             R30 3 1
      459 SETTABLEKS                       R30 R29 K48 ["DialogInner"]
      461 GETUPVAL                         R30 3
      462 GETTABLEKS                       R30 R30 K21 ["createElement"]
      464 GETUPVAL                         R31 15
      465 DUPTABLE                         R32 K94 [{["tag"] = "fill", ["LayoutOrder"] = 2}]
      466 CALL                             R30 2 1
      467 SETTABLEKS                       R30 R29 K49 ["DialogFlexEnd"]
      469 CALL                             R26 3 1
      470 GETUPVAL                         R27 3
      471 GETTABLEKS                       R27 R27 K21 ["createElement"]
      473 GETUPVAL                         R28 15
      474 DUPTABLE                         R29 K96 [{["ZIndex"], ["tag"] = "size-full", ["testId"]}]
      475 GETTABLEKS                       R30 R7 K97 ["zIndex"]
      477 SETTABLEKS                       R30 R29 K23 ["ZIndex"]
      479 LOADK                            R31 K98 ["%*--container"]
      480 GETTABLEKS                       R33 R1 K32 ["testId"]
      482 NAMECALL                         R31 R31 K44 ["format"]
      484 CALL                             R31 2 1
      485 MOVE                             R30 R31
      486 SETTABLEKS                       R30 R29 K32 ["testId"]
      488 DUPTABLE                         R30 K101 [{"Backdrop", "DialogContentWrapper"}]
      489 GETTABLEKS                       R32 R1 K102 ["hasBackdrop"]
      491 JUMPIFNOT                        R32 ; [+57]
      492 GETUPVAL                         R31 3
      493 GETTABLEKS                       R31 R31 K21 ["createElement"]
      495 GETUPVAL                         R32 15
      496 DUPTABLE                         R33 K105 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["stateLayer"], ["onActivated"], ["backgroundStyle"], ["ZIndex"] = 2, ["testId"]}]
      497 GETIMPORT                        R34 K107 [UDim2.fromScale]
      499 LOADN                            R35 2
      500 LOADN                            R36 2
      501 CALL                             R34 2 1
      502 SETTABLEKS                       R34 R33 K14 ["Size"]
      504 DUPTABLE                         R34 K68 [{"affordance"}]
      505 GETUPVAL                         R35 20
      506 GETTABLEKS                       R35 R35 K69 ["None"]
      508 SETTABLEKS                       R35 R34 K67 ["affordance"]
      510 SETTABLEKS                       R34 R33 K56 ["stateLayer"]
      512 NEWCLOSURE                       R34 P7
      513 CAPTURE                          VAL R1
      514 CAPTURE                          UPVAL U10
      515 CAPTURE                          REF R20
      516 CAPTURE                          REF R10
      517 CAPTURE                          UPVAL U24
      518 SETTABLEKS                       R34 R33 K59 ["onActivated"]
      520 GETUPVAL                         R35 10
      521 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      523 JUMPIFNOT                        R35 ; [+8]
      524 JUMPIF                           R10 ; [+7]
      525 JUMPIFNOT                        R16 ; [+6]
      526 NEWCLOSURE                       R36 P8
      527 CAPTURE                          VAL R2
      528 NAMECALL                         R34 R16 K35 ["map"]
      530 CALL                             R34 2 1
      531 JUMP                             ; [+4]
      532 GETTABLEKS                       R34 R2 K108 ["backdrop"]
      534 GETTABLEKS                       R34 R34 K104 ["backgroundStyle"]
      536 SETTABLEKS                       R34 R33 K104 ["backgroundStyle"]
      538 LOADK                            R35 K109 ["%*--backdrop"]
      539 GETTABLEKS                       R37 R1 K32 ["testId"]
      541 NAMECALL                         R35 R35 K44 ["format"]
      543 CALL                             R35 2 1
      544 MOVE                             R34 R35
      545 SETTABLEKS                       R34 R33 K32 ["testId"]
      547 CALL                             R31 2 1
      548 JUMP                             ; [+1]
      549 LOADNIL                          R31
      550 SETTABLEKS                       R31 R30 K99 ["Backdrop"]
      552 GETUPVAL                         R31 3
      553 GETTABLEKS                       R31 R31 K21 ["createElement"]
      555 GETUPVAL                         R32 15
      556 DUPTABLE                         R33 K111 [{["ref"], ["Position"], ["sizeConstraint"], ["tag"], ["ZIndex"] = 2, ["GroupTransparency"]}]
      557 GETUPVAL                         R35 10
      558 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      560 JUMPIFNOT                        R35 ; [+3]
      561 JUMPIF                           R10 ; [+2]
      562 MOVE                             R34 R24
      563 JUMP                             ; [+1]
      564 LOADNIL                          R34
      565 SETTABLEKS                       R34 R33 K54 ["ref"]
      567 GETUPVAL                         R35 10
      568 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      570 JUMPIFNOT                        R35 ; [+7]
      571 JUMPIF                           R10 ; [+6]
      572 JUMPIFNOT                        R18 ; [+5]
      573 DUPCLOSURE                       R36 K112 [PROTO_10]
      574 NAMECALL                         R34 R18 K35 ["map"]
      576 CALL                             R34 2 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R34
      579 SETTABLEKS                       R34 R33 K78 ["Position"]
      581 GETUPVAL                         R35 10
      582 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      584 JUMPIFNOT                        R35 ; [+10]
      585 JUMPIF                           R10 ; [+9]
      586 DUPTABLE                         R34 K63 [{"MaxSize"}]
      587 GETIMPORT                        R35 K65 [Vector2.new]
      589 MOVE                             R36 R3
      590 LOADK                            R37 K66 [∞]
      591 CALL                             R35 2 1
      592 SETTABLEKS                       R35 R34 K62 ["MaxSize"]
      594 JUMP                             ; [+1]
      595 LOADNIL                          R34
      596 SETTABLEKS                       R34 R33 K55 ["sizeConstraint"]
      598 NEWTABLE                         R34 2 0
      600 GETUPVAL                         R35 10
      601 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      603 JUMPIFNOT                        R35 ; [+1]
      604 NOT                              R35 R10
      605 SETTABLEKS                       R35 R34 K113 ["anchor-center-center size-full"]
      607 GETUPVAL                         R37 10
      608 GETTABLEKS                       R37 R37 K12 ["FoundationDialogAnimation"]
      610 NOT                              R36 R37
      611 OR                               R35 R36 R10
      612 SETTABLEKS                       R35 R34 K95 ["size-full"]
      614 SETTABLEKS                       R34 R33 K22 ["tag"]
      616 GETUPVAL                         R35 10
      617 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      619 JUMPIFNOT                        R35 ; [+9]
      620 JUMPIF                           R10 ; [+8]
      621 JUMPIFNOT                        R12 ; [+7]
      622 JUMPIFNOT                        R18 ; [+6]
      623 NEWCLOSURE                       R36 P10
      624 CAPTURE                          VAL R11
      625 NAMECALL                         R34 R18 K35 ["map"]
      627 CALL                             R34 2 1
      628 JUMP                             ; [+1]
      629 LOADNIL                          R34
      630 SETTABLEKS                       R34 R33 K110 ["GroupTransparency"]
      632 GETUPVAL                         R35 10
      633 GETTABLEKS                       R35 R35 K12 ["FoundationDialogAnimation"]
      635 JUMPIFNOT                        R35 ; [+1]
      636 JUMPIFNOT                        R10 ; [+6]
      637 DUPTABLE                         R34 K115 [{"DialogShadowWrapper", "Dialog"}]
      638 SETTABLEKS                       R25 R34 K114 ["DialogShadowWrapper"]
      640 SETTABLEKS                       R26 R34 K7 ["Dialog"]
      642 JUMP                             ; [+1]
      643 LOADNIL                          R34
      644 CALL                             R31 3 1
      645 SETTABLEKS                       R31 R30 K100 ["DialogContentWrapper"]
      647 CALL                             R27 3 1
      648 GETUPVAL                         R28 10
      649 GETTABLEKS                       R28 R28 K12 ["FoundationDialogAnimation"]
      651 JUMPIFNOT                        R28 ; [+50]
      652 JUMPIF                           R10 ; [+49]
      653 GETTABLEKS                       R29 R1 K116 ["disablePortal"]
      655 JUMPIF                           R29 ; [+2]
      656 JUMPIFNOTEQKNIL                  R6 ; [+3]
      658 MOVE                             R28 R27
      659 JUMP                             ; [+6]
      660 GETUPVAL                         R28 25
      661 GETTABLEKS                       R28 R28 K117 ["createPortal"]
      663 MOVE                             R29 R27
      664 MOVE                             R30 R6
      665 CALL                             R28 2 1
      666 GETUPVAL                         R29 3
      667 GETTABLEKS                       R29 R29 K21 ["createElement"]
      669 GETUPVAL                         R30 3
      670 GETTABLEKS                       R30 R30 K118 ["Fragment"]
      672 LOADNIL                          R31
      673 DUPTABLE                         R32 K121 [{"Main", "StableContent"}]
      674 SETTABLEKS                       R28 R32 K119 ["Main"]
      676 JUMPIFNOT                        R22 ; [+19]
      677 GETUPVAL                         R33 25
      678 GETTABLEKS                       R33 R33 K117 ["createPortal"]
      680 GETUPVAL                         R34 3
      681 GETTABLEKS                       R34 R34 K21 ["createElement"]
      683 GETUPVAL                         R35 3
      684 GETTABLEKS                       R35 R35 K118 ["Fragment"]
      686 LOADNIL                          R36
      687 DUPTABLE                         R37 K115 [{"DialogShadowWrapper", "Dialog"}]
      688 SETTABLEKS                       R25 R37 K114 ["DialogShadowWrapper"]
      690 SETTABLEKS                       R26 R37 K7 ["Dialog"]
      692 CALL                             R34 3 1
      693 MOVE                             R35 R21
      694 CALL                             R33 2 1
      695 JUMP                             ; [+1]
      696 LOADNIL                          R33
      697 SETTABLEKS                       R33 R32 K120 ["StableContent"]
      699 CALL                             R29 3 -1
      700 CLOSEUPVALS                      R10
      701 RETURN                           R29 -1
      702 GETTABLEKS                       R28 R1 K116 ["disablePortal"]
      704 JUMPIF                           R28 ; [+2]
      705 JUMPIFNOTEQKNIL                  R6 ; [+3]
      707 CLOSEUPVALS                      R10
      708 RETURN                           R27 1
      709 GETUPVAL                         R28 25
      710 GETTABLEKS                       R28 R28 K117 ["createPortal"]
      712 MOVE                             R29 R27
      713 MOVE                             R30 R6
      714 CALL                             R28 2 -1
      715 CLOSEUPVALS                      R10
      716 RETURN                           R28 -1

PROTO_13:
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
      237 DUPCLOSURE                       R35 K56 [PROTO_12]
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R28
      243 CAPTURE                          VAL R12
      244 CAPTURE                          VAL R29
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R26
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R20
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
      264 DUPCLOSURE                       R36 K57 [PROTO_13]
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
