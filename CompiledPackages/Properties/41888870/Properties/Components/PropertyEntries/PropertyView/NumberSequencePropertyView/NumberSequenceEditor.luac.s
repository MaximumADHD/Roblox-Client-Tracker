PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+9]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["beginEditingAsync"]
        8 CALL                             R2 0 0
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["finishEditing"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 2
       18 LOADN                            R3 -1
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 3
       21 JUMPIFEQKN                       R2 K3 [1] ; [+18]
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K4 ["fromUnorderedKeypoints"]
       26 GETUPVAL                         R3 5
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K5 ["findKeypoint"]
       31 MOVE                             R4 R2
       32 GETUPVAL                         R6 5
       33 GETUPVAL                         R7 3
       34 GETTABLE                         R5 R6 R7
       35 CALL                             R3 2 1
       36 JUMPIFNOT                        R3 ; [+3]
       37 GETUPVAL                         R4 0
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateKeypoint"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R3 K0 ["Start"]
        4 JUMP                             ; [+1]
        5 LOADK                            R3 K1 ["Stop"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 LOADNIL                          R6
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTEQ                      R4 R7 ; [+20]
       10 DUPTABLE                         R7 K8 [{[1], ["OutlineColor3"], ["OutlineThickness"] = 2, ["Size"] = 11, ["ZIndex"] = 15}]
       11 GETIMPORT                        R8 K10 [Color3.fromRGB]
       13 LOADN                            R9 51
       14 LOADN                            R10 95
       15 LOADN                            R11 255
       16 CALL                             R8 3 1
       17 SETTABLEKS                       R8 R7 K0 ["Color3"]
       19 GETIMPORT                        R8 K10 [Color3.fromRGB]
       21 LOADN                            R9 255
       22 LOADN                            R10 255
       23 LOADN                            R11 255
       24 CALL                             R8 3 1
       25 SETTABLEKS                       R8 R7 K1 ["OutlineColor3"]
       27 MOVE                             R6 R7
       28 JUMP                             ; [+18]
       29 DUPTABLE                         R7 K14 [{[1], ["OutlineColor3"], ["OutlineThickness"] = 3, ["Size"] = 7, ["ZIndex"] = 10}]
       30 GETIMPORT                        R8 K10 [Color3.fromRGB]
       32 LOADN                            R9 255
       33 LOADN                            R10 255
       34 LOADN                            R11 255
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K0 ["Color3"]
       38 GETIMPORT                        R8 K10 [Color3.fromRGB]
       40 LOADN                            R9 51
       41 LOADN                            R10 95
       42 LOADN                            R11 255
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K1 ["OutlineColor3"]
       46 MOVE                             R6 R7
       47 LOADK                            R8 K15 ["Keypoint"]
       48 MOVE                             R9 R4
       49 CONCAT                           R7 R8 R9
       50 GETUPVAL                         R8 2
       51 GETUPVAL                         R9 3
       52 DUPTABLE                         R10 K21 [{["style"], ["Keypoint"], ["MaxY"] = 10, ["XLocked"], ["OnKeypointChanged"], ["SetDragged"]}]
       53 SETTABLEKS                       R6 R10 K16 ["style"]
       55 SETTABLEKS                       R5 R10 K15 ["Keypoint"]
       57 LOADB                            R11 1
       58 JUMPIFEQKN                       R4 K22 [1] ; [+7]
       60 GETUPVAL                         R13 0
       61 LENGTH                           R12 R13
       62 JUMPIFEQ                         R4 R12 ; [+2]
       64 LOADB                            R11 0 +1
       65 LOADB                            R11 1
       66 SETTABLEKS                       R11 R10 K18 ["XLocked"]
       68 NEWCLOSURE                       R11 P0
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R11 R10 K19 ["OnKeypointChanged"]
       73 NEWCLOSURE                       R11 P1
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R11 R10 K20 ["SetDragged"]
       78 CALL                             R8 2 1
       79 SETTABLE                         R8 R0 R7
       80 FORGLOOP                         R1 2 ; [-75]
       82 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 NEWTABLE                         R1 0 0
        7 MOVE                             R2 R0
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 DUPTABLE                         R7 K2 [{"Position"}]
       12 GETIMPORT                        R8 K5 [Vector2.new]
       14 GETTABLEKS                       R9 R6 K6 ["Time"]
       16 GETTABLEKS                       R10 R6 K7 ["Value"]
       18 CALL                             R8 2 1
       19 SETTABLEKS                       R8 R7 K1 ["Position"]
       21 SETTABLE                         R7 R1 R5
       22 FORGLOOP                         R2 2 ; [-12]
       24 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 DUPTABLE                         R1 K5 [{"Grid", "Curve", "XScale", "YScale", "Keypoints"}]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 DUPTABLE                         R4 K9 [{"XAxis", "YAxis", "ZIndex"}]
        6 DUPTABLE                         R5 K14 [{["Type"] = "Uniform", ["Unit"] = 0.25}]
        7 SETTABLEKS                       R5 R4 K6 ["XAxis"]
        9 DUPTABLE                         R5 K16 [{["Type"] = "Uniform", ["Unit"] = 2.5}]
       10 SETTABLEKS                       R5 R4 K7 ["YAxis"]
       12 MOVE                             R5 R0
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K0 ["Grid"]
       19 GETUPVAL                         R2 1
       20 GETUPVAL                         R3 3
       21 DUPTABLE                         R4 K21 [{["Points"], ["Color3"], ["Thickness"] = 1.25, ["ZIndex"]}]
       22 GETUPVAL                         R5 4
       23 SETTABLEKS                       R5 R4 K17 ["Points"]
       25 GETIMPORT                        R5 K23 [Color3.fromRGB]
       27 LOADN                            R6 255
       28 LOADN                            R7 255
       29 LOADN                            R8 255
       30 CALL                             R5 3 1
       31 SETTABLEKS                       R5 R4 K18 ["Color3"]
       33 MOVE                             R5 R0
       34 CALL                             R5 0 1
       35 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K1 ["Curve"]
       40 GETUPVAL                         R2 1
       41 GETUPVAL                         R3 5
       42 DUPTABLE                         R4 K33 [{["Side"] = "Bottom", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["BackgroundTransparency"] = 1, ["ZIndex"]}]
       43 DUPTABLE                         R5 K14 [{["Type"] = "Uniform", ["Unit"] = 0.25}]
       44 SETTABLEKS                       R5 R4 K26 ["Schema"]
       46 MOVE                             R5 R0
       47 CALL                             R5 0 1
       48 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       50 CALL                             R2 2 1
       51 SETTABLEKS                       R2 R1 K2 ["XScale"]
       53 GETUPVAL                         R2 1
       54 GETUPVAL                         R3 5
       55 DUPTABLE                         R4 K36 [{["Side"] = "Left", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
       56 DUPTABLE                         R5 K16 [{["Type"] = "Uniform", ["Unit"] = 2.5}]
       57 SETTABLEKS                       R5 R4 K26 ["Schema"]
       59 GETIMPORT                        R5 K39 [UDim.new]
       61 LOADN                            R6 0
       62 LOADN                            R7 30
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K35 ["Size"]
       66 MOVE                             R5 R0
       67 CALL                             R5 0 1
       68 SETTABLEKS                       R5 R4 K8 ["ZIndex"]
       70 CALL                             R2 2 1
       71 SETTABLEKS                       R2 R1 K3 ["YScale"]
       73 GETUPVAL                         R2 1
       74 GETUPVAL                         R3 6
       75 GETTABLEKS                       R3 R3 K40 ["Fragment"]
       77 LOADNIL                          R4
       78 GETUPVAL                         R5 7
       79 CALL                             R2 3 1
       80 SETTABLEKS                       R2 R1 K4 ["Keypoints"]
       82 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["useState"]
        6 LOADN                            R5 -1
        7 CALL                             R4 1 2
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K0 ["useState"]
       11 LOADN                            R7 -1
       12 CALL                             R6 1 2
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R5
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R7
       20 CAPTURE                          VAL R6
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R10 0 4
       25 GETTABLEKS                       R11 R0 K2 ["beginEditingAsync"]
       27 GETTABLEKS                       R12 R0 K3 ["finishEditing"]
       29 MOVE                             R13 R1
       30 MOVE                             R14 R6
       31 SETLIST                          R10 R11 4 [1]
       33 CALL                             R8 2 1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       37 NEWCLOSURE                       R10 P1
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R8
       44 NEWTABLE                         R11 0 5
       46 MOVE                             R12 R1
       47 MOVE                             R13 R4
       48 MOVE                             R14 R6
       49 MOVE                             R15 R8
       50 GETTABLEKS                       R16 R3 K5 ["updateKeypoint"]
       52 SETLIST                          R11 R12 5 [1]
       54 CALL                             R9 2 1
       55 GETUPVAL                         R10 1
       56 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       58 NEWCLOSURE                       R11 P2
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R1
       61 NEWTABLE                         R12 0 1
       63 MOVE                             R13 R1
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 GETUPVAL                         R11 1
       68 GETTABLEKS                       R11 R11 K4 ["useMemo"]
       70 NEWCLOSURE                       R12 P3
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R10
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R9
       79 NEWTABLE                         R13 0 2
       81 MOVE                             R14 R10
       82 MOVE                             R15 R9
       83 SETLIST                          R13 R14 2 [1]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R12 9
       87 CALL                             R12 0 1
       88 GETUPVAL                         R13 5
       89 CALL                             R13 0 1
       90 GETUPVAL                         R14 3
       91 GETUPVAL                         R15 10
       92 DUPTABLE                         R16 K8 [{["tag"] = "size-full padding-y-large"}]
       93 DUPTABLE                         R17 K10 [{"Editor"}]
       94 GETUPVAL                         R18 3
       95 GETUPVAL                         R19 10
       96 DUPTABLE                         R20 K14 [{["tag"] = "size-full bg-surface-100", ["padding"], ["LayoutOrder"]}]
       97 DUPTABLE                         R21 K18 [{"left", "right", "bottom"}]
       98 GETIMPORT                        R22 K21 [UDim.new]
      100 LOADN                            R23 0
      101 GETTABLEKS                       R25 R12 K23 ["Padding"]
      103 GETTABLEKS                       R25 R25 K24 ["Medium"]
      105 MULK                             R24 R25 K22 [3]
      106 CALL                             R22 2 1
      107 SETTABLEKS                       R22 R21 K15 ["left"]
      109 GETIMPORT                        R22 K21 [UDim.new]
      111 LOADN                            R23 0
      112 GETTABLEKS                       R24 R12 K23 ["Padding"]
      114 GETTABLEKS                       R24 R24 K24 ["Medium"]
      116 CALL                             R22 2 1
      117 SETTABLEKS                       R22 R21 K16 ["right"]
      119 GETIMPORT                        R22 K21 [UDim.new]
      121 LOADN                            R23 0
      122 GETTABLEKS                       R25 R12 K23 ["Padding"]
      124 GETTABLEKS                       R25 R25 K24 ["Medium"]
      126 MULK                             R24 R25 K22 [3]
      127 CALL                             R22 2 1
      128 SETTABLEKS                       R22 R21 K17 ["bottom"]
      130 SETTABLEKS                       R21 R20 K12 ["padding"]
      132 MOVE                             R21 R13
      133 CALL                             R21 0 1
      134 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      136 DUPTABLE                         R21 K26 [{"Canvas"}]
      137 GETUPVAL                         R22 3
      138 GETUPVAL                         R23 11
      139 DUPTABLE                         R24 K38 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      140 GETIMPORT                        R25 K40 [Rect.new]
      142 LOADN                            R26 0
      143 LOADN                            R27 0
      144 LOADN                            R28 1
      145 LOADN                            R29 10
      146 CALL                             R25 4 1
      147 SETTABLEKS                       R25 R24 K27 ["GraphRect"]
      149 GETTABLEKS                       R25 R12 K41 ["Color"]
      151 GETTABLEKS                       R25 R25 K42 ["Surface"]
      153 GETTABLEKS                       R25 R25 K43 ["Surface_200"]
      155 GETTABLEKS                       R25 R25 K44 ["Color3"]
      157 SETTABLEKS                       R25 R24 K28 ["CanvasBackgroundColor3"]
      159 GETUPVAL                         R25 12
      160 SETTABLEKS                       R25 R24 K33 ["ViewportPaddingLeft"]
      162 GETUPVAL                         R25 12
      163 SETTABLEKS                       R25 R24 K34 ["ViewportPaddingRight"]
      165 GETUPVAL                         R25 12
      166 SETTABLEKS                       R25 R24 K35 ["ViewportPaddingTop"]
      168 GETUPVAL                         R25 12
      169 SETTABLEKS                       R25 R24 K36 ["ViewportPaddingBottom"]
      171 SETTABLEKS                       R11 R24 K37 ["childrenUnclipped"]
      173 CALL                             R22 2 1
      174 SETTABLEKS                       R22 R21 K25 ["Canvas"]
      176 CALL                             R18 3 1
      177 SETTABLEKS                       R18 R17 K9 ["Editor"]
      179 CALL                             R14 3 -1
      180 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Graphing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyEntries"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyView"]
       27 GETTABLEKS                       R5 R5 K12 ["NumberSequencePropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequencePoint"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K9 ["Components"]
       36 GETTABLEKS                       R6 R6 K10 ["PropertyEntries"]
       38 GETTABLEKS                       R6 R6 K11 ["PropertyView"]
       40 GETTABLEKS                       R6 R6 K12 ["NumberSequencePropertyView"]
       42 GETTABLEKS                       R6 R6 K14 ["NumberSequenceUtil"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R1 K15 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R1 K16 ["ReactUtils"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R1 K17 ["Signals"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K9 ["Components"]
       64 GETTABLEKS                       R10 R10 K10 ["PropertyEntries"]
       66 GETTABLEKS                       R10 R10 K11 ["PropertyView"]
       68 GETTABLEKS                       R10 R10 K12 ["NumberSequencePropertyView"]
       70 GETTABLEKS                       R10 R10 K18 ["useNumberSequence"]
       72 CALL                             R9 1 1
       73 GETTABLEKS                       R10 R3 K19 ["Canvas"]
       75 GETTABLEKS                       R11 R3 K20 ["Curve"]
       77 GETTABLEKS                       R12 R3 K21 ["Grid"]
       79 GETTABLEKS                       R13 R3 K22 ["Scale"]
       81 GETTABLEKS                       R14 R2 K23 ["View"]
       83 GETTABLEKS                       R15 R7 K24 ["createNextOrder"]
       85 GETTABLEKS                       R16 R6 K25 ["createElement"]
       87 GETTABLEKS                       R17 R2 K26 ["Hooks"]
       89 GETTABLEKS                       R17 R17 K27 ["useTokens"]
       91 GETIMPORT                        R18 K30 [UDim.new]
       93 LOADN                            R19 0
       94 LOADN                            R20 0
       95 CALL                             R18 2 1
       96 DUPCLOSURE                       R19 K31 [PROTO_6]
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R5
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R14
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R18
      110 RETURN                           R19 1
