PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"tag"}]
        7 LOADK                            R7 K3 ["col align-y-center size-0-full auto-x bg-surface-0 %*"]
        8 GETTABLEKS                       R9 R0 K1 ["tag"]
       10 NAMECALL                         R7 R7 K4 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 SETTABLEKS                       R6 R5 K1 ["tag"]
       16 CALL                             R3 2 1
       17 DUPTABLE                         R4 K7 [{"UIGradient", "Button"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 LOADK                            R6 K5 ["UIGradient"]
       22 DUPTABLE                         R7 K9 [{"Transparency"}]
       23 GETTABLEKS                       R8 R0 K10 ["gradient"]
       25 SETTABLEKS                       R8 R7 K8 ["Transparency"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K5 ["UIGradient"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 3
       34 DUPTABLE                         R7 K14 [{"onActivated", "size", "icon"}]
       35 GETTABLEKS                       R8 R0 K11 ["onActivated"]
       37 SETTABLEKS                       R8 R7 K11 ["onActivated"]
       39 GETTABLEKS                       R9 R0 K12 ["size"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K15 ["Large"]
       44 JUMPIFEQ                         R9 R10 ; [+8]
       46 GETTABLEKS                       R9 R0 K12 ["size"]
       48 GETUPVAL                         R10 4
       49 GETTABLEKS                       R10 R10 K16 ["Medium"]
       51 JUMPIFNOTEQ                      R9 R10 ; [+5]
       53 GETUPVAL                         R8 4
       54 GETTABLEKS                       R8 R8 K17 ["Small"]
       56 JUMP                             ; [+3]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R8 R8 K18 ["XSmall"]
       60 SETTABLEKS                       R8 R7 K12 ["size"]
       62 DUPTABLE                         R8 K20 [{"name"}]
       63 GETTABLEKS                       R9 R0 K13 ["icon"]
       65 SETTABLEKS                       R9 R8 K19 ["name"]
       67 SETTABLEKS                       R8 R7 K13 ["icon"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K6 ["Button"]
       72 CALL                             R1 3 -1
       73 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K3 [Vector2.new]
        7 MOVE                             R3 R0
        8 LOADN                            R4 0
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K4 ["CanvasPosition"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteWindowSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R4 R0 K0 ["AbsoluteWindowSize"]
       10 GETTABLEKS                       R4 R4 K1 ["X"]
       12 GETTABLEKS                       R5 R0 K3 ["CanvasPosition"]
       14 GETTABLEKS                       R5 R5 K1 ["X"]
       16 ADD                              R3 R4 R5
       17 GETTABLEKS                       R5 R0 K5 ["AbsoluteCanvasSize"]
       19 GETTABLEKS                       R5 R5 K1 ["X"]
       21 SUBK                             R4 R5 K4 [1]
       22 JUMPIFLT                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R3 R0 K3 ["CanvasPosition"]
       30 GETTABLEKS                       R3 R3 K1 ["X"]
       32 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["ease"]
        9 GETTABLEKS                       R5 R1 K2 ["CanvasPosition"]
       11 GETTABLEKS                       R5 R5 K3 ["X"]
       13 ADD                              R4 R5 R0
       14 DUPTABLE                         R5 K6 [{"duration", "easingStyle"}]
       15 LOADK                            R6 K7 [0.2]
       16 SETTABLEKS                       R6 R5 K4 ["duration"]
       18 GETIMPORT                        R6 K11 [Enum.EasingStyle.Quad]
       20 SETTABLEKS                       R6 R5 K5 ["easingStyle"]
       22 CALL                             R3 2 -1
       23 CALL                             R2 -1 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 166
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 90
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useBinding"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K1 ["useRef"]
       13 LOADNIL                          R6
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K2 ["useMotor"]
       18 LOADN                            R7 0
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R5
       21 CALL                             R6 2 1
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K4 ["throttle"]
       28 NEWCLOSURE                       R9 P1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 LOADK                            R10 K5 [0.2]
       32 CALL                             R8 2 1
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       39 NEWCLOSURE                       R9 P2
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 CAPTURE                          UPVAL U3
       43 NEWTABLE                         R10 0 0
       45 CALL                             R8 2 1
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       49 NEWCLOSURE                       R10 P3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R11 0 0
       54 CALL                             R9 2 0
       55 GETUPVAL                         R9 0
       56 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       58 NEWCLOSURE                       R10 P4
       59 CAPTURE                          VAL R8
       60 NEWTABLE                         R11 0 1
       62 MOVE                             R12 R8
       63 SETLIST                          R11 R12 1 [1]
       65 CALL                             R9 2 1
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       69 NEWCLOSURE                       R11 P5
       70 CAPTURE                          VAL R8
       71 NEWTABLE                         R12 0 1
       73 MOVE                             R13 R8
       74 SETLIST                          R12 R13 1 [1]
       76 CALL                             R10 2 1
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K7 ["createElement"]
       80 GETUPVAL                         R12 4
       81 GETUPVAL                         R13 5
       82 MOVE                             R14 R0
       83 DUPTABLE                         R15 K9 [{"tag"}]
       84 LOADK                            R16 K10 ["size-full-0 auto-y"]
       85 SETTABLEKS                       R16 R15 K8 ["tag"]
       87 CALL                             R13 2 1
       88 DUPTABLE                         R14 K14 [{"Scroll", "OverflowStart", "OverflowEnd"}]
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K7 ["createElement"]
       92 GETUPVAL                         R16 6
       93 DUPTABLE                         R17 K21 [{"LayoutOrder", "tag", "onCanvasPositionChanged", "onAbsoluteWindowSizeChanged", "scrollingFrameRef", "selection", "scroll"}]
       94 LOADN                            R18 1
       95 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
       97 LOADK                            R18 K22 ["size-full"]
       98 SETTABLEKS                       R18 R17 K8 ["tag"]
      100 SETTABLEKS                       R7 R17 K16 ["onCanvasPositionChanged"]
      102 SETTABLEKS                       R7 R17 K17 ["onAbsoluteWindowSizeChanged"]
      104 SETTABLEKS                       R5 R17 K18 ["scrollingFrameRef"]
      106 GETUPVAL                         R19 7
      107 GETTABLEKS                       R19 R19 K23 ["FoundationTabsDisableScrollSelection"]
      109 JUMPIFNOT                        R19 ; [+5]
      110 DUPTABLE                         R18 K25 [{"Selectable"}]
      111 LOADB                            R19 0
      112 SETTABLEKS                       R19 R18 K24 ["Selectable"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R18
      116 SETTABLEKS                       R18 R17 K19 ["selection"]
      118 DUPTABLE                         R18 K30 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      119 GETIMPORT                        R19 K33 [Enum.AutomaticSize.Y]
      121 SETTABLEKS                       R19 R18 K26 ["AutomaticSize"]
      123 GETIMPORT                        R19 K35 [Enum.AutomaticSize.X]
      125 SETTABLEKS                       R19 R18 K27 ["AutomaticCanvasSize"]
      127 GETIMPORT                        R19 K36 [Enum.ScrollingDirection.X]
      129 SETTABLEKS                       R19 R18 K28 ["ScrollingDirection"]
      131 GETUPVAL                         R19 8
      132 GETTABLEKS                       R19 R19 K37 ["None"]
      134 SETTABLEKS                       R19 R18 K29 ["scrollBarVisibility"]
      136 SETTABLEKS                       R18 R17 K20 ["scroll"]
      138 GETTABLEKS                       R18 R0 K38 ["children"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K11 ["Scroll"]
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R15 R15 K7 ["createElement"]
      146 GETUPVAL                         R16 9
      147 DUPTABLE                         R17 K48 [{"LayoutOrder", "Position", "size", "isStart", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      148 LOADN                            R18 3
      149 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      151 GETIMPORT                        R18 K51 [UDim2.fromScale]
      153 LOADN                            R19 0
      154 LOADN                            R20 0
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K39 ["Position"]
      158 GETTABLEKS                       R18 R0 K40 ["size"]
      160 SETTABLEKS                       R18 R17 K40 ["size"]
      162 LOADB                            R18 1
      163 SETTABLEKS                       R18 R17 K41 ["isStart"]
      165 LOADN                            R18 2
      166 SETTABLEKS                       R18 R17 K42 ["ZIndex"]
      168 SETTABLEKS                       R3 R17 K43 ["Visible"]
      170 SETTABLEKS                       R9 R17 K44 ["onActivated"]
      172 GETUPVAL                         R18 10
      173 SETTABLEKS                       R18 R17 K45 ["gradient"]
      175 LOADK                            R18 K52 ["padding-right-small"]
      176 SETTABLEKS                       R18 R17 K8 ["tag"]
      178 LOADK                            R18 K53 ["chevron-large-left"]
      179 SETTABLEKS                       R18 R17 K46 ["icon"]
      181 LOADK                            R19 K54 ["%*--overflow-start"]
      182 GETTABLEKS                       R21 R0 K47 ["testId"]
      184 NAMECALL                         R19 R19 K55 ["format"]
      186 CALL                             R19 2 1
      187 MOVE                             R18 R19
      188 SETTABLEKS                       R18 R17 K47 ["testId"]
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K12 ["OverflowStart"]
      193 GETUPVAL                         R15 0
      194 GETTABLEKS                       R15 R15 K7 ["createElement"]
      196 GETUPVAL                         R16 9
      197 DUPTABLE                         R17 K56 [{"LayoutOrder", "Position", "size", "ZIndex", "Visible", "onActivated", "gradient", "tag", "icon", "testId"}]
      198 LOADN                            R18 4
      199 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
      201 GETIMPORT                        R18 K51 [UDim2.fromScale]
      203 LOADN                            R19 1
      204 LOADN                            R20 0
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K39 ["Position"]
      208 GETTABLEKS                       R18 R0 K40 ["size"]
      210 SETTABLEKS                       R18 R17 K40 ["size"]
      212 LOADN                            R18 2
      213 SETTABLEKS                       R18 R17 K42 ["ZIndex"]
      215 SETTABLEKS                       R1 R17 K43 ["Visible"]
      217 SETTABLEKS                       R10 R17 K44 ["onActivated"]
      219 GETUPVAL                         R18 11
      220 SETTABLEKS                       R18 R17 K45 ["gradient"]
      222 LOADK                            R18 K57 ["anchor-top-right padding-left-small"]
      223 SETTABLEKS                       R18 R17 K8 ["tag"]
      225 LOADK                            R18 K58 ["chevron-large-right"]
      226 SETTABLEKS                       R18 R17 K46 ["icon"]
      228 LOADK                            R19 K59 ["%*--overflow-end"]
      229 GETTABLEKS                       R21 R0 K47 ["testId"]
      231 NAMECALL                         R19 R19 K55 ["format"]
      233 CALL                             R19 2 1
      234 MOVE                             R18 R19
      235 SETTABLEKS                       R18 R17 K47 ["testId"]
      237 CALL                             R15 2 1
      238 SETTABLEKS                       R15 R14 K13 ["OverflowEnd"]
      240 CALL                             R11 3 -1
      241 RETURN                           R11 -1

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
       31 GETTABLEKS                       R7 R0 K11 ["Utility"]
       33 GETTABLEKS                       R7 R7 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Components"]
       40 GETTABLEKS                       R8 R8 K14 ["IconButton"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Enums"]
       47 GETTABLEKS                       R9 R9 K16 ["InputSize"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K13 ["Components"]
       54 GETTABLEKS                       R10 R10 K17 ["ScrollView"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K13 ["Components"]
       61 GETTABLEKS                       R11 R11 K18 ["Types"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K13 ["Components"]
       68 GETTABLEKS                       R12 R12 K19 ["View"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K15 ["Enums"]
       75 GETTABLEKS                       R13 R13 K20 ["Visibility"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K6 [require]
       80 GETTABLEKS                       R14 R0 K11 ["Utility"]
       82 GETTABLEKS                       R14 R14 K21 ["withCommonProps"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K24 [NumberSequence.new]
       87 NEWTABLE                         R15 0 3
       89 GETIMPORT                        R16 K26 [NumberSequenceKeypoint.new]
       91 LOADN                            R17 0
       92 LOADN                            R18 0
       93 CALL                             R16 2 1
       94 GETIMPORT                        R17 K26 [NumberSequenceKeypoint.new]
       96 LOADK                            R18 K27 [0.8]
       97 LOADN                            R19 0
       98 CALL                             R17 2 1
       99 GETIMPORT                        R18 K26 [NumberSequenceKeypoint.new]
      101 LOADN                            R19 1
      102 LOADN                            R20 1
      103 CALL                             R18 2 -1
      104 SETLIST                          R15 R16 -1 [1]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K24 [NumberSequence.new]
      109 NEWTABLE                         R16 0 3
      111 GETIMPORT                        R17 K26 [NumberSequenceKeypoint.new]
      113 LOADN                            R18 0
      114 LOADN                            R19 1
      115 CALL                             R17 2 1
      116 GETIMPORT                        R18 K26 [NumberSequenceKeypoint.new]
      118 LOADK                            R19 K28 [0.2]
      119 LOADN                            R20 0
      120 CALL                             R18 2 1
      121 GETIMPORT                        R19 K26 [NumberSequenceKeypoint.new]
      123 LOADN                            R20 1
      124 LOADN                            R21 0
      125 CALL                             R19 2 -1
      126 SETLIST                          R16 R17 -1 [1]
      128 CALL                             R15 1 1
      129 DUPCLOSURE                       R16 K29 [PROTO_0]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R8
      135 DUPCLOSURE                       R17 K30 [PROTO_7]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R15
      148 RETURN                           R17 1
