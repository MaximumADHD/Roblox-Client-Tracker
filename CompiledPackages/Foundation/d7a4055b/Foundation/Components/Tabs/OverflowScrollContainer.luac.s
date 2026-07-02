PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R0
        6 DUPTABLE                         R5 K2 [{"tag"}]
        7 LOADK                            R7 K3 ["bg-surface-0 size-0-full auto-x col align-y-center %*"]
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
       14 DUPTABLE                         R5 K7 [{["duration"] = 0.2, ["easingStyle"]}]
       15 GETIMPORT                        R6 K11 [Enum.EasingStyle.Quad]
       17 SETTABLEKS                       R6 R5 K6 ["easingStyle"]
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R0 0

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
        1 LOADN                            R1 -90
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
       83 DUPTABLE                         R15 K10 [{["tag"] = "auto-y size-full-0"}]
       84 CALL                             R13 2 1
       85 DUPTABLE                         R14 K14 [{"Scroll", "OverflowStart", "OverflowEnd"}]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K7 ["createElement"]
       89 GETUPVAL                         R16 6
       90 DUPTABLE                         R17 K22 [{["LayoutOrder"] = 1, ["tag"] = "size-full", ["onCanvasPositionChanged"], ["onAbsoluteWindowSizeChanged"], ["scrollingFrameRef"], ["scroll"]}]
       91 SETTABLEKS                       R7 R17 K18 ["onCanvasPositionChanged"]
       93 SETTABLEKS                       R7 R17 K19 ["onAbsoluteWindowSizeChanged"]
       95 SETTABLEKS                       R5 R17 K20 ["scrollingFrameRef"]
       97 DUPTABLE                         R18 K27 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       98 GETIMPORT                        R19 K30 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R19 R18 K23 ["AutomaticSize"]
      102 GETIMPORT                        R19 K32 [Enum.AutomaticSize.X]
      104 SETTABLEKS                       R19 R18 K24 ["AutomaticCanvasSize"]
      106 GETIMPORT                        R19 K33 [Enum.ScrollingDirection.X]
      108 SETTABLEKS                       R19 R18 K25 ["ScrollingDirection"]
      110 GETUPVAL                         R19 7
      111 GETTABLEKS                       R19 R19 K34 ["None"]
      113 SETTABLEKS                       R19 R18 K26 ["scrollBarVisibility"]
      115 SETTABLEKS                       R18 R17 K21 ["scroll"]
      117 GETTABLEKS                       R18 R0 K35 ["children"]
      119 CALL                             R15 3 1
      120 SETTABLEKS                       R15 R14 K11 ["Scroll"]
      122 GETUPVAL                         R15 0
      123 GETTABLEKS                       R15 R15 K7 ["createElement"]
      125 GETUPVAL                         R16 8
      126 DUPTABLE                         R17 K50 [{["LayoutOrder"] = 3, ["Position"], ["size"], ["isStart"] = True, ["ZIndex"] = 2, ["Visible"], ["onActivated"], ["gradient"], ["tag"] = "padding-right-small", ["icon"] = "chevron-large-left", ["testId"]}]
      127 GETIMPORT                        R18 K53 [UDim2.fromScale]
      129 LOADN                            R19 0
      130 LOADN                            R20 0
      131 CALL                             R18 2 1
      132 SETTABLEKS                       R18 R17 K37 ["Position"]
      134 GETTABLEKS                       R18 R0 K38 ["size"]
      136 SETTABLEKS                       R18 R17 K38 ["size"]
      138 SETTABLEKS                       R3 R17 K43 ["Visible"]
      140 SETTABLEKS                       R9 R17 K44 ["onActivated"]
      142 GETUPVAL                         R18 9
      143 SETTABLEKS                       R18 R17 K45 ["gradient"]
      145 LOADK                            R19 K54 ["%*--overflow-start"]
      146 GETTABLEKS                       R21 R0 K49 ["testId"]
      148 NAMECALL                         R19 R19 K55 ["format"]
      150 CALL                             R19 2 1
      151 MOVE                             R18 R19
      152 SETTABLEKS                       R18 R17 K49 ["testId"]
      154 CALL                             R15 2 1
      155 SETTABLEKS                       R15 R14 K12 ["OverflowStart"]
      157 GETUPVAL                         R15 0
      158 GETTABLEKS                       R15 R15 K7 ["createElement"]
      160 GETUPVAL                         R16 8
      161 DUPTABLE                         R17 K59 [{["LayoutOrder"] = 4, ["Position"], ["size"], ["ZIndex"] = 2, ["Visible"], ["onActivated"], ["gradient"], ["tag"] = "padding-left-small anchor-top-right", ["icon"] = "chevron-large-right", ["testId"]}]
      162 GETIMPORT                        R18 K53 [UDim2.fromScale]
      164 LOADN                            R19 1
      165 LOADN                            R20 0
      166 CALL                             R18 2 1
      167 SETTABLEKS                       R18 R17 K37 ["Position"]
      169 GETTABLEKS                       R18 R0 K38 ["size"]
      171 SETTABLEKS                       R18 R17 K38 ["size"]
      173 SETTABLEKS                       R1 R17 K43 ["Visible"]
      175 SETTABLEKS                       R10 R17 K44 ["onActivated"]
      177 GETUPVAL                         R18 10
      178 SETTABLEKS                       R18 R17 K45 ["gradient"]
      180 LOADK                            R19 K60 ["%*--overflow-end"]
      181 GETTABLEKS                       R21 R0 K49 ["testId"]
      183 NAMECALL                         R19 R19 K55 ["format"]
      185 CALL                             R19 2 1
      186 MOVE                             R18 R19
      187 SETTABLEKS                       R18 R17 K49 ["testId"]
      189 CALL                             R15 2 1
      190 SETTABLEKS                       R15 R14 K13 ["OverflowEnd"]
      192 CALL                             R11 3 -1
      193 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Otter"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactOtter"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Types"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K11 ["Components"]
       40 GETTABLEKS                       R8 R8 K13 ["View"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Components"]
       47 GETTABLEKS                       R9 R9 K14 ["ScrollView"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R10 R0 K11 ["Components"]
       54 GETTABLEKS                       R10 R10 K15 ["IconButton"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R11 R0 K16 ["Utility"]
       61 GETTABLEKS                       R11 R11 K17 ["withCommonProps"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K18 ["Enums"]
       68 GETTABLEKS                       R12 R12 K19 ["Visibility"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R13 R0 K18 ["Enums"]
       75 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K23 [NumberSequence.new]
       80 NEWTABLE                         R14 0 3
       82 GETIMPORT                        R15 K25 [NumberSequenceKeypoint.new]
       84 LOADN                            R16 0
       85 LOADN                            R17 0
       86 CALL                             R15 2 1
       87 GETIMPORT                        R16 K25 [NumberSequenceKeypoint.new]
       89 LOADK                            R17 K26 [0.8]
       90 LOADN                            R18 0
       91 CALL                             R16 2 1
       92 GETIMPORT                        R17 K25 [NumberSequenceKeypoint.new]
       94 LOADN                            R18 1
       95 LOADN                            R19 1
       96 CALL                             R17 2 -1
       97 SETLIST                          R14 R15 -1 [1]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K23 [NumberSequence.new]
      102 NEWTABLE                         R15 0 3
      104 GETIMPORT                        R16 K25 [NumberSequenceKeypoint.new]
      106 LOADN                            R17 0
      107 LOADN                            R18 1
      108 CALL                             R16 2 1
      109 GETIMPORT                        R17 K25 [NumberSequenceKeypoint.new]
      111 LOADK                            R18 K27 [0.2]
      112 LOADN                            R19 0
      113 CALL                             R17 2 1
      114 GETIMPORT                        R18 K25 [NumberSequenceKeypoint.new]
      116 LOADN                            R19 1
      117 LOADN                            R20 0
      118 CALL                             R18 2 -1
      119 SETLIST                          R15 R16 -1 [1]
      121 CALL                             R14 1 1
      122 DUPCLOSURE                       R15 K28 [PROTO_0]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R12
      128 DUPCLOSURE                       R16 K29 [PROTO_7]
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R14
      140 RETURN                           R16 1
