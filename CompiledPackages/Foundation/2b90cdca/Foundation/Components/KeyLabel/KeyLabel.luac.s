PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+29]
        2 JUMPIFNOTEQKN                    R0 K0 [1] ; [+28]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+25]
        6 GETUPVAL                         R1 2
        7 GETUPVAL                         R2 3
        8 GETTABLEKS                       R2 R2 K1 ["ease"]
       10 LOADN                            R3 0
       11 DUPTABLE                         R4 K4 [{"duration", "easingStyle"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["resetTime"]
       15 SETTABLEKS                       R5 R4 K2 ["duration"]
       17 GETIMPORT                        R5 K9 [Enum.EasingStyle.Linear]
       19 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 4
       24 LOADNIL                          R2
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K10 ["onEndHold"]
       29 LOADB                            R2 1
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["keyCode"]
        8 JUMPIFNOTEQ                      R1 R2 ; [+46]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["onBeginHold"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["onBeginHold"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K3 ["holdTime"]
       21 JUMPIFNOTEQKN                    R1 K4 [0] ; [+7]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K5 ["onEndHold"]
       26 LOADB                            R2 1
       27 CALL                             R1 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 4
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K6 ["ease"]
       36 LOADN                            R3 1
       37 DUPTABLE                         R4 K9 [{"duration", "easingStyle"}]
       38 GETUPVAL                         R7 6
       39 NAMECALL                         R7 R7 K11 ["getValue"]
       41 CALL                             R7 1 1
       42 SUBRK                            R6 K10 [1] R7
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K3 ["holdTime"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onEndHold"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onEndHold"]
       10 LOADB                            R2 0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R2 R2 K1 ["ease"]
       19 LOADN                            R3 0
       20 DUPTABLE                         R4 K4 [{"duration", "easingStyle"}]
       21 GETUPVAL                         R6 5
       22 NAMECALL                         R6 R6 K5 ["getValue"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K6 ["resetTime"]
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
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K1 ["useState"]
       19 LOADNIL                          R6
       20 CALL                             R5 1 2
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R9 R9 K2 ["useAnimatedBinding"]
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
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K6 ["createElement"]
       49 GETUPVAL                         R12 7
       50 GETUPVAL                         R13 8
       51 MOVE                             R14 R2
       52 DUPTABLE                         R15 K9 [{"Size", "ref"}]
       53 GETTABLEKS                       R16 R2 K7 ["Size"]
       55 SETTABLEKS                       R16 R15 K7 ["Size"]
       57 SETTABLEKS                       R1 R15 K8 ["ref"]
       59 CALL                             R13 2 1
       60 DUPTABLE                         R14 K13 [{"Image", "Indicator", "InputBeganConnection", "InputEndedConnection"}]
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R15 R15 K6 ["createElement"]
       64 GETUPVAL                         R16 9
       65 DUPTABLE                         R17 K19 [{["Image"], ["Size"], ["ScaleType"], ["imageStyle"], ["slice"], ["tag"] = "position-center-center anchor-center-center"}]
       66 JUMPIFNOT                        R10 ; [+3]
       67 GETTABLEKS                       R18 R9 K20 ["key"]
       69 JUMP                             ; [+1]
       70 LOADK                            R18 K21 ["icons/controls/keys/key_single"]
       71 SETTABLEKS                       R18 R17 K5 ["Image"]
       73 GETTABLEKS                       R18 R9 K22 ["size"]
       75 SETTABLEKS                       R18 R17 K7 ["Size"]
       77 JUMPIF                           R10 ; [+3]
       78 GETIMPORT                        R18 K25 [Enum.ScaleType.Slice]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R18
       82 SETTABLEKS                       R18 R17 K14 ["ScaleType"]
       84 JUMPIFNOT                        R5 ; [+7]
       85 GETTABLEKS                       R18 R4 K26 ["Color"]
       87 GETTABLEKS                       R18 R18 K27 ["Content"]
       89 GETTABLEKS                       R18 R18 K28 ["Emphasis"]
       91 JUMP                             ; [+6]
       92 GETTABLEKS                       R18 R4 K26 ["Color"]
       94 GETTABLEKS                       R18 R18 K27 ["Content"]
       96 GETTABLEKS                       R18 R18 K29 ["Muted"]
       98 SETTABLEKS                       R18 R17 K15 ["imageStyle"]
      100 JUMPIF                           R10 ; [+5]
      101 DUPTABLE                         R18 K31 [{"center"}]
      102 GETUPVAL                         R19 10
      103 SETTABLEKS                       R19 R18 K30 ["center"]
      105 JUMP                             ; [+1]
      106 LOADNIL                          R18
      107 SETTABLEKS                       R18 R17 K16 ["slice"]
      109 DUPTABLE                         R18 K34 [{"CustomPadding", "Text"}]
      110 JUMPIF                           R10 ; [+14]
      111 GETUPVAL                         R19 4
      112 GETTABLEKS                       R19 R19 K6 ["createElement"]
      114 LOADK                            R20 K35 ["UIPadding"]
      115 DUPTABLE                         R21 K37 [{"PaddingBottom"}]
      116 GETIMPORT                        R22 K40 [UDim.new]
      118 LOADN                            R23 0
      119 LOADN                            R24 3
      120 CALL                             R22 2 1
      121 SETTABLEKS                       R22 R21 K36 ["PaddingBottom"]
      123 CALL                             R19 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETTABLEKS                       R19 R18 K32 ["CustomPadding"]
      128 JUMPIF                           R10 ; [+27]
      129 GETUPVAL                         R19 4
      130 GETTABLEKS                       R19 R19 K6 ["createElement"]
      132 GETUPVAL                         R20 11
      133 DUPTABLE                         R21 K43 [{["Text"], ["textStyle"], ["tag"] = "size-full-full auto-xy text-body-medium text-align-x-center"}]
      134 GETTABLEKS                       R22 R9 K20 ["key"]
      136 SETTABLEKS                       R22 R21 K33 ["Text"]
      138 JUMPIFNOT                        R5 ; [+7]
      139 GETTABLEKS                       R22 R4 K26 ["Color"]
      141 GETTABLEKS                       R22 R22 K27 ["Content"]
      143 GETTABLEKS                       R22 R22 K28 ["Emphasis"]
      145 JUMP                             ; [+6]
      146 GETTABLEKS                       R22 R4 K26 ["Color"]
      148 GETTABLEKS                       R22 R22 K27 ["Content"]
      150 GETTABLEKS                       R22 R22 K29 ["Muted"]
      152 SETTABLEKS                       R22 R21 K41 ["textStyle"]
      154 CALL                             R19 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R19
      157 SETTABLEKS                       R19 R18 K33 ["Text"]
      159 CALL                             R15 3 1
      160 SETTABLEKS                       R15 R14 K5 ["Image"]
      162 JUMPIFNOT                        R3 ; [+25]
      163 GETTABLEKS                       R16 R3 K44 ["holdTime"]
      165 LOADN                            R17 0
      166 JUMPIFNOTLT                      R17 R16 ; [+21]
      168 GETUPVAL                         R15 4
      169 GETTABLEKS                       R15 R15 K6 ["createElement"]
      171 GETUPVAL                         R16 12
      172 DUPTABLE                         R17 K48 [{["progress"], ["tag"] = "size-full-full", ["testId"]}]
      173 SETTABLEKS                       R7 R17 K45 ["progress"]
      175 LOADK                            R19 K49 ["%*--indicator"]
      176 GETTABLEKS                       R21 R2 K47 ["testId"]
      178 NAMECALL                         R19 R19 K50 ["format"]
      180 CALL                             R19 2 1
      181 MOVE                             R18 R19
      182 SETTABLEKS                       R18 R17 K47 ["testId"]
      184 NEWTABLE                         R18 0 0
      186 CALL                             R15 3 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R15
      189 SETTABLEKS                       R15 R14 K10 ["Indicator"]
      191 JUMPIFNOT                        R3 ; [+22]
      192 GETUPVAL                         R15 4
      193 GETTABLEKS                       R15 R15 K6 ["createElement"]
      195 GETUPVAL                         R16 13
      196 DUPTABLE                         R17 K53 [{"event", "callback"}]
      197 GETUPVAL                         R18 14
      198 GETTABLEKS                       R18 R18 K54 ["InputBegan"]
      200 SETTABLEKS                       R18 R17 K51 ["event"]
      202 NEWCLOSURE                       R18 P1
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R6
      207 CAPTURE                          REF R8
      208 CAPTURE                          UPVAL U5
      209 CAPTURE                          REF R7
      210 SETTABLEKS                       R18 R17 K52 ["callback"]
      212 CALL                             R15 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R15
      215 SETTABLEKS                       R15 R14 K11 ["InputBeganConnection"]
      217 JUMPIFNOT                        R3 ; [+21]
      218 GETUPVAL                         R15 4
      219 GETTABLEKS                       R15 R15 K6 ["createElement"]
      221 GETUPVAL                         R16 13
      222 DUPTABLE                         R17 K53 [{"event", "callback"}]
      223 GETUPVAL                         R18 14
      224 GETTABLEKS                       R18 R18 K55 ["InputEnded"]
      226 SETTABLEKS                       R18 R17 K51 ["event"]
      228 NEWCLOSURE                       R18 P2
      229 CAPTURE                          VAL R5
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R6
      232 CAPTURE                          REF R8
      233 CAPTURE                          UPVAL U5
      234 CAPTURE                          REF R7
      235 SETTABLEKS                       R18 R17 K52 ["callback"]
      237 CALL                             R15 2 1
      238 JUMP                             ; [+1]
      239 LOADNIL                          R15
      240 SETTABLEKS                       R15 R14 K12 ["InputEndedConnection"]
      242 CALL                             R11 3 -1
      243 CLOSEUPVALS                      R7
      244 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Wrappers"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K9 ["Services"]
       18 GETTABLEKS                       R2 R2 K10 ["UserInputService"]
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
       37 GETIMPORT                        R7 K1 [script]
       39 GETTABLEKS                       R7 R7 K4 ["Parent"]
       41 GETTABLEKS                       R7 R7 K14 ["getVisualForKey"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Providers"]
       48 GETTABLEKS                       R8 R8 K16 ["Style"]
       50 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K7 ["Utility"]
       57 GETTABLEKS                       R9 R9 K18 ["withCommonProps"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K7 ["Utility"]
       64 GETTABLEKS                       R10 R10 K19 ["withDefaults"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K20 ["Components"]
       71 GETTABLEKS                       R11 R11 K21 ["CircularProgressBar"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K20 ["Components"]
       78 GETTABLEKS                       R12 R12 K22 ["Image"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K20 ["Components"]
       85 GETTABLEKS                       R13 R13 K23 ["Text"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K6 [require]
       90 GETTABLEKS                       R14 R0 K20 ["Components"]
       92 GETTABLEKS                       R14 R14 K24 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R15 R0 K20 ["Components"]
       99 GETTABLEKS                       R15 R15 K25 ["View"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R5 K26 ["EventConnection"]
      104 DUPTABLE                         R16 K31 [{["holdTime"] = 1, ["resetTime"] = 0.5}]
      105 DUPTABLE                         R17 K34 [{["testId"] = "--foundation-key-label"}]
      106 GETIMPORT                        R18 K37 [Rect.new]
      108 GETIMPORT                        R19 K39 [Vector2.new]
      110 LOADN                            R20 10
      111 LOADN                            R21 9
      112 CALL                             R19 2 1
      113 GETIMPORT                        R20 K39 [Vector2.new]
      115 LOADN                            R21 25
      116 LOADN                            R22 25
      117 CALL                             R20 2 -1
      118 CALL                             R18 -1 1
      119 DUPCLOSURE                       R19 K40 [PROTO_3]
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R2
      135 GETTABLEKS                       R20 R3 K41 ["memo"]
      137 GETTABLEKS                       R21 R3 K42 ["forwardRef"]
      139 MOVE                             R22 R19
      140 CALL                             R21 1 -1
      141 CALL                             R20 -1 -1
      142 RETURN                           R20 -1
