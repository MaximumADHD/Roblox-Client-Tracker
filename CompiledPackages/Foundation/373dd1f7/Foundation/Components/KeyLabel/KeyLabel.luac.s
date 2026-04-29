PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+29]
        2 JUMPIFNOTEQKN                    R0 K0 [1] ; [+28]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+25]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R2 R3 K1 ["ease"]
       10 LOADN                            R3 0
       11 DUPTABLE                         R4 K4 [{"duration", "easingStyle"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["resetTime"]
       15 SETTABLEKS                       R5 R4 K2 ["duration"]
       17 GETIMPORT                        R5 K9 [Enum.EasingStyle.Linear]
       19 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 4
       24 LOADNIL                          R2
       25 CALL                             R1 1 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R1 R2 K10 ["onEndHold"]
       29 LOADB                            R2 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["keyCode"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+46]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["onBeginHold"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K2 ["onBeginHold"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K3 ["holdTime"]
       21 JUMPIFNOTEQKN                    R1 K4 [0] ; [+7]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K5 ["onEndHold"]
       26 LOADB                            R2 1
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 4
       33 GETUPVAL                         R3 5
       34 GETTABLEKS                       R2 R3 K6 ["ease"]
       36 LOADN                            R3 1
       37 DUPTABLE                         R4 K9 [{"duration", "easingStyle"}]
       38 GETUPVAL                         R7 6
       39 NAMECALL                         R7 R7 K11 ["getValue"]
       41 CALL                             R7 1 1
       42 SUBRK                            R6 R10 K7 ["duration"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K3 ["holdTime"]
       46 MUL                              R5 R6 R7
       47 SETTABLEKS                       R5 R4 K7 ["duration"]
       49 GETIMPORT                        R5 K15 [Enum.EasingStyle.Linear]
       51 SETTABLEKS                       R5 R4 K8 ["easingStyle"]
       53 CALL                             R2 2 -1
       54 CALL                             R1 -1 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+35]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onEndHold"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["onEndHold"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R2 R3 K1 ["ease"]
       19 LOADN                            R3 0
       20 DUPTABLE                         R4 K4 [{"duration", "easingStyle"}]
       21 GETUPVAL                         R6 5
       22 NAMECALL                         R6 R6 K5 ["getValue"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K6 ["resetTime"]
       28 MUL                              R5 R6 R7
       29 SETTABLEKS                       R5 R4 K2 ["duration"]
       31 GETIMPORT                        R5 K10 [Enum.EasingStyle.Linear]
       33 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       35 CALL                             R2 2 -1
       36 CALL                             R1 -1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R2 K0 ["holdBehavior"]
        6 JUMPIFNOT                        R4 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R4 R2 K0 ["holdBehavior"]
       10 GETUPVAL                         R5 2
       11 CALL                             R3 2 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 3
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R5 R6 K1 ["useState"]
       19 LOADNIL                          R6
       20 CALL                             R5 1 2
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 GETUPVAL                         R10 5
       24 GETTABLEKS                       R9 R10 K2 ["useAnimatedBinding"]
       26 LOADN                            R10 0
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R5
       30 CAPTURE                          REF R8
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          VAL R6
       33 CALL                             R9 2 2
       34 MOVE                             R7 R9
       35 MOVE                             R8 R10
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R10 R2 K3 ["keyCode"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R11 R9 K4 ["keyVisualType"]
       42 JUMPIFEQKS                       R11 K5 ["Image"] ; [+2]
       44 LOADB                            R10 0 +1
       45 LOADB                            R10 1
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R11 R12 K6 ["createElement"]
       49 GETUPVAL                         R12 7
       50 GETUPVAL                         R13 8
       51 MOVE                             R14 R2
       52 DUPTABLE                         R15 K9 [{"Size", "ref"}]
       53 GETTABLEKS                       R16 R2 K7 ["Size"]
       55 SETTABLEKS                       R16 R15 K7 ["Size"]
       57 SETTABLEKS                       R1 R15 K8 ["ref"]
       59 CALL                             R13 2 1
       60 DUPTABLE                         R14 K13 [{"Image", "Indicator", "InputBeganConnection", "InputEndedConnection"}]
       61 GETUPVAL                         R16 4
       62 GETTABLEKS                       R15 R16 K6 ["createElement"]
       64 GETUPVAL                         R16 9
       65 DUPTABLE                         R17 K18 [{"Image", "Size", "ScaleType", "imageStyle", "slice", "tag"}]
       66 JUMPIFNOT                        R10 ; [+3]
       67 GETTABLEKS                       R18 R9 K19 ["key"]
       69 JUMP                             ; [+1]
       70 LOADK                            R18 K20 ["icons/controls/keys/key_single"]
       71 SETTABLEKS                       R18 R17 K5 ["Image"]
       73 GETTABLEKS                       R18 R9 K21 ["size"]
       75 SETTABLEKS                       R18 R17 K7 ["Size"]
       77 JUMPIF                           R10 ; [+3]
       78 GETIMPORT                        R18 K24 [Enum.ScaleType.Slice]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R18
       82 SETTABLEKS                       R18 R17 K14 ["ScaleType"]
       84 JUMPIFNOT                        R5 ; [+7]
       85 GETTABLEKS                       R20 R4 K25 ["Color"]
       87 GETTABLEKS                       R19 R20 K26 ["Content"]
       89 GETTABLEKS                       R18 R19 K27 ["Emphasis"]
       91 JUMP                             ; [+6]
       92 GETTABLEKS                       R20 R4 K25 ["Color"]
       94 GETTABLEKS                       R19 R20 K26 ["Content"]
       96 GETTABLEKS                       R18 R19 K28 ["Muted"]
       98 SETTABLEKS                       R18 R17 K15 ["imageStyle"]
      100 JUMPIF                           R10 ; [+5]
      101 DUPTABLE                         R18 K30 [{"center"}]
      102 GETUPVAL                         R19 10
      103 SETTABLEKS                       R19 R18 K29 ["center"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R18
      107 SETTABLEKS                       R18 R17 K16 ["slice"]
      109 LOADK                            R18 K31 ["position-center-center anchor-center-center"]
      110 SETTABLEKS                       R18 R17 K17 ["tag"]
      112 DUPTABLE                         R18 K34 [{"CustomPadding", "Text"}]
      113 JUMPIF                           R10 ; [+14]
      114 GETUPVAL                         R20 4
      115 GETTABLEKS                       R19 R20 K6 ["createElement"]
      117 LOADK                            R20 K35 ["UIPadding"]
      118 DUPTABLE                         R21 K37 [{"PaddingBottom"}]
      119 GETIMPORT                        R22 K40 [UDim.new]
      121 LOADN                            R23 0
      122 LOADN                            R24 3
      123 CALL                             R22 2 1
      124 SETTABLEKS                       R22 R21 K36 ["PaddingBottom"]
      126 CALL                             R19 2 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R19
      129 SETTABLEKS                       R19 R18 K32 ["CustomPadding"]
      131 JUMPIF                           R10 ; [+30]
      132 GETUPVAL                         R20 4
      133 GETTABLEKS                       R19 R20 K6 ["createElement"]
      135 GETUPVAL                         R20 11
      136 DUPTABLE                         R21 K42 [{"Text", "textStyle", "tag"}]
      137 GETTABLEKS                       R22 R9 K19 ["key"]
      139 SETTABLEKS                       R22 R21 K33 ["Text"]
      141 JUMPIFNOT                        R5 ; [+7]
      142 GETTABLEKS                       R24 R4 K25 ["Color"]
      144 GETTABLEKS                       R23 R24 K26 ["Content"]
      146 GETTABLEKS                       R22 R23 K27 ["Emphasis"]
      148 JUMP                             ; [+6]
      149 GETTABLEKS                       R24 R4 K25 ["Color"]
      151 GETTABLEKS                       R23 R24 K26 ["Content"]
      153 GETTABLEKS                       R22 R23 K28 ["Muted"]
      155 SETTABLEKS                       R22 R21 K41 ["textStyle"]
      157 LOADK                            R22 K43 ["size-full-full auto-xy text-body-medium text-align-x-center"]
      158 SETTABLEKS                       R22 R21 K17 ["tag"]
      160 CALL                             R19 2 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R19
      163 SETTABLEKS                       R19 R18 K33 ["Text"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K5 ["Image"]
      168 JUMPIFNOT                        R3 ; [+28]
      169 GETTABLEKS                       R16 R3 K44 ["holdTime"]
      171 LOADN                            R17 0
      172 JUMPIFNOTLT                      R17 R16 ; [+24]
      174 GETUPVAL                         R16 4
      175 GETTABLEKS                       R15 R16 K6 ["createElement"]
      177 GETUPVAL                         R16 12
      178 DUPTABLE                         R17 K47 [{"progress", "tag", "testId"}]
      179 SETTABLEKS                       R7 R17 K45 ["progress"]
      181 LOADK                            R18 K48 ["size-full-full"]
      182 SETTABLEKS                       R18 R17 K17 ["tag"]
      184 LOADK                            R19 K49 ["%*--indicator"]
      185 GETTABLEKS                       R21 R2 K46 ["testId"]
      187 NAMECALL                         R19 R19 K50 ["format"]
      189 CALL                             R19 2 1
      190 MOVE                             R18 R19
      191 SETTABLEKS                       R18 R17 K46 ["testId"]
      193 NEWTABLE                         R18 0 0
      195 CALL                             R15 3 1
      196 JUMP                             ; [+1]
      197 LOADNIL                          R15
      198 SETTABLEKS                       R15 R14 K10 ["Indicator"]
      200 JUMPIFNOT                        R3 ; [+22]
      201 GETUPVAL                         R16 4
      202 GETTABLEKS                       R15 R16 K6 ["createElement"]
      204 GETUPVAL                         R16 13
      205 DUPTABLE                         R17 K53 [{"event", "callback"}]
      206 GETUPVAL                         R19 14
      207 GETTABLEKS                       R18 R19 K54 ["InputBegan"]
      209 SETTABLEKS                       R18 R17 K51 ["event"]
      211 NEWCLOSURE                       R18 P1
      212 CAPTURE                          VAL R5
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R6
      216 CAPTURE                          REF R8
      217 CAPTURE                          UPVAL U5
      218 CAPTURE                          REF R7
      219 SETTABLEKS                       R18 R17 K52 ["callback"]
      221 CALL                             R15 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R15
      224 SETTABLEKS                       R15 R14 K11 ["InputBeganConnection"]
      226 JUMPIFNOT                        R3 ; [+21]
      227 GETUPVAL                         R16 4
      228 GETTABLEKS                       R15 R16 K6 ["createElement"]
      230 GETUPVAL                         R16 13
      231 DUPTABLE                         R17 K53 [{"event", "callback"}]
      232 GETUPVAL                         R19 14
      233 GETTABLEKS                       R18 R19 K55 ["InputEnded"]
      235 SETTABLEKS                       R18 R17 K51 ["event"]
      237 NEWCLOSURE                       R18 P2
      238 CAPTURE                          VAL R5
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R6
      241 CAPTURE                          REF R8
      242 CAPTURE                          UPVAL U5
      243 CAPTURE                          REF R7
      244 SETTABLEKS                       R18 R17 K52 ["callback"]
      246 CALL                             R15 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R15
      249 SETTABLEKS                       R15 R14 K12 ["InputEndedConnection"]
      251 CALL                             R11 3 -1
      252 CLOSEUPVALS                      R7
      253 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R4 K6 [require]
       11 GETTABLEKS                       R6 R0 K7 ["Utility"]
       13 GETTABLEKS                       R5 R6 K8 ["Wrappers"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R3 R4 K9 ["Services"]
       18 GETTABLEKS                       R2 R3 K10 ["UserInputService"]
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K12 ["ReactOtter"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K14 ["getVisualForKey"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K15 ["Providers"]
       48 GETTABLEKS                       R9 R10 K16 ["Style"]
       50 GETTABLEKS                       R8 R9 K17 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K7 ["Utility"]
       57 GETTABLEKS                       R9 R10 K18 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R11 R0 K7 ["Utility"]
       64 GETTABLEKS                       R10 R11 K19 ["withDefaults"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R12 R0 K20 ["Components"]
       71 GETTABLEKS                       R11 R12 K21 ["CircularProgressBar"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R13 R0 K20 ["Components"]
       78 GETTABLEKS                       R12 R13 K22 ["Image"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R14 R0 K20 ["Components"]
       85 GETTABLEKS                       R13 R14 K23 ["Text"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R15 R0 K20 ["Components"]
       92 GETTABLEKS                       R14 R15 K24 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R16 R0 K20 ["Components"]
       99 GETTABLEKS                       R15 R16 K25 ["View"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R5 K26 ["EventConnection"]
      104 DUPTABLE                         R16 K29 [{"holdTime", "resetTime"}]
      105 LOADN                            R17 1
      106 SETTABLEKS                       R17 R16 K27 ["holdTime"]
      108 LOADK                            R17 K30 [0.5]
      109 SETTABLEKS                       R17 R16 K28 ["resetTime"]
      111 DUPTABLE                         R17 K32 [{"testId"}]
      112 LOADK                            R18 K33 ["--foundation-key-label"]
      113 SETTABLEKS                       R18 R17 K31 ["testId"]
      115 GETIMPORT                        R18 K36 [Rect.new]
      117 GETIMPORT                        R19 K38 [Vector2.new]
      119 LOADN                            R20 10
      120 LOADN                            R21 9
      121 CALL                             R19 2 1
      122 GETIMPORT                        R20 K38 [Vector2.new]
      124 LOADN                            R21 25
      125 LOADN                            R22 25
      126 CALL                             R20 2 -1
      127 CALL                             R18 -1 1
      128 DUPCLOSURE                       R19 K39 [PROTO_3]
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R2
      144 GETTABLEKS                       R20 R3 K40 ["memo"]
      146 GETTABLEKS                       R21 R3 K41 ["forwardRef"]
      148 MOVE                             R22 R19
      149 CALL                             R21 1 -1
      150 CALL                             R20 -1 -1
      151 RETURN                           R20 -1
