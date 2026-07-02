PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyRightClick"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 GETUPVAL                         R6 4
        9 CALL                             R2 4 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputBegan"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Instance"]
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 3
        8 GETUPVAL                         R6 4
        9 MOVE                             R7 R1
       10 CALL                             R2 5 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnKeyInputEnded"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R8 R0 K0 ["props"]
        2 GETTABLEKS                       R9 R8 K1 ["Path"]
        4 JUMPIF                           R9 ; [+6]
        5 NEWTABLE                         R9 0 1
        7 GETTABLEKS                       R10 R3 K2 ["Name"]
        9 SETLIST                          R9 R10 1 [1]
       11 LOADNIL                          R10
       12 GETTABLEKS                       R11 R8 K3 ["IsChannelAnimation"]
       14 JUMPIFNOT                        R11 ; [+18]
       15 JUMPIFNOT                        R6 ; [+14]
       16 GETTABLEKS                       R12 R6 K4 ["InterpolationMode"]
       18 JUMPIFNOT                        R12 ; [+11]
       19 GETTABLEKS                       R12 R6 K4 ["InterpolationMode"]
       21 GETIMPORT                        R13 K8 [Enum.KeyInterpolationMode.Linear]
       23 JUMPIFEQ                         R12 R13 ; [+6]
       25 GETTABLEKS                       R11 R6 K4 ["InterpolationMode"]
       27 GETTABLEKS                       R11 R11 K2 ["Name"]
       29 JUMPIF                           R11 ; [+1]
       30 LOADNIL                          R11
       31 MOVE                             R10 R11
       32 JUMP                             ; [+23]
       33 JUMPIFNOT                        R6 ; [+20]
       34 GETTABLEKS                       R12 R6 K9 ["EasingStyle"]
       36 JUMPIFNOT                        R12 ; [+17]
       37 GETTABLEKS                       R12 R6 K9 ["EasingStyle"]
       39 GETIMPORT                        R13 K11 [Enum.PoseEasingStyle.Linear]
       41 JUMPIFEQ                         R12 R13 ; [+12]
       43 GETTABLEKS                       R12 R6 K9 ["EasingStyle"]
       45 GETTABLEKS                       R12 R12 K2 ["Name"]
       47 LOADK                            R13 K12 [", "]
       48 GETTABLEKS                       R14 R6 K13 ["EasingDirection"]
       50 GETTABLEKS                       R14 R14 K2 ["Name"]
       52 CONCAT                           R11 R12 R14
       53 JUMPIF                           R11 ; [+1]
       54 LOADNIL                          R11
       55 MOVE                             R10 R11
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K14 ["createElement"]
       59 GETUPVAL                         R12 1
       60 DUPTABLE                         R13 K26 [{"Selected", "Position", "ZIndex", "Width", "BorderSizePixel", "KeyframeStyle", "Filled", "OnActivated", "OnRightClick", "OnInputBegan", "OnInputEnded"}]
       61 SETTABLEKS                       R1 R13 K15 ["Selected"]
       63 GETIMPORT                        R14 K29 [UDim2.new]
       65 LOADN                            R15 0
       66 MOVE                             R16 R2
       67 LOADK                            R17 K30 [0.5]
       68 LOADN                            R18 0
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K16 ["Position"]
       72 GETTABLEKS                       R14 R8 K17 ["ZIndex"]
       74 SETTABLEKS                       R14 R13 K17 ["ZIndex"]
       76 GETUPVAL                         R14 2
       77 GETTABLEKS                       R14 R14 K31 ["KEYFRAME_WIDTH"]
       79 SETTABLEKS                       R14 R13 K18 ["Width"]
       81 JUMPIFNOT                        R1 ; [+2]
       82 LOADN                            R14 2
       83 JUMP                             ; [+1]
       84 LOADN                            R14 1
       85 SETTABLEKS                       R14 R13 K19 ["BorderSizePixel"]
       87 GETUPVAL                         R16 2
       88 GETTABLEKS                       R16 R16 K33 ["KEYFRAME_STYLE"]
       90 GETTABLE                         R15 R16 R5
       91 ORK                              R14 R15 K32 []
       92 SETTABLEKS                       R14 R13 K20 ["KeyframeStyle"]
       94 SETTABLEKS                       R7 R13 K21 ["Filled"]
       96 GETTABLEKS                       R14 R8 K34 ["OnKeyActivated"]
       98 SETTABLEKS                       R14 R13 K22 ["OnActivated"]
      100 NEWCLOSURE                       R14 P0
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R14 R13 K23 ["OnRightClick"]
      108 NEWCLOSURE                       R14 P1
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R14 R13 K24 ["OnInputBegan"]
      116 NEWCLOSURE                       R14 P2
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R14 R13 K25 ["OnInputEnded"]
      122 DUPTABLE                         R14 K36 [{"Tooltip"}]
      123 JUMPIFNOT                        R10 ; [+9]
      124 GETUPVAL                         R15 0
      125 GETTABLEKS                       R15 R15 K14 ["createElement"]
      127 GETUPVAL                         R16 3
      128 DUPTABLE                         R17 K40 [{["Text"], ["ShowDelay"] = 0}]
      129 SETTABLEKS                       R10 R17 K37 ["Text"]
      131 CALL                             R15 2 1
      132 JUMPIF                           R15 ; [+1]
      133 LOADNIL                          R15
      134 SETTABLEKS                       R15 R14 K35 ["Tooltip"]
      136 CALL                             R11 3 -1
      137 RETURN                           R11 -1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 DUPTABLE                         R7 K4 [{"Position", "Size", "ZIndex"}]
        5 GETIMPORT                        R8 K7 [UDim2.new]
        7 LOADN                            R9 0
        8 MOVE                             R10 R1
        9 LOADK                            R11 K8 [0.5]
       10 LOADN                            R12 0
       11 CALL                             R8 4 1
       12 SETTABLEKS                       R8 R7 K1 ["Position"]
       14 GETIMPORT                        R8 K7 [UDim2.new]
       16 LOADN                            R9 0
       17 SUB                              R10 R2 R1
       18 LOADN                            R11 0
       19 MOVE                             R12 R3
       20 CALL                             R8 4 1
       21 SETTABLEKS                       R8 R7 K2 ["Size"]
       23 SETTABLEKS                       R4 R7 K3 ["ZIndex"]
       25 CALL                             R5 2 -1
       26 RETURN                           R5 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Width"]
        4 GETTABLEKS                       R4 R2 K2 ["Track"]
        6 GETTABLEKS                       R5 R2 K3 ["StartTick"]
        8 GETTABLEKS                       R6 R2 K4 ["EndTick"]
       10 GETTABLEKS                       R7 R2 K5 ["SelectedKeyframes"]
       12 GETTABLEKS                       R8 R2 K6 ["ShowCluster"]
       14 GETTABLEKS                       R9 R2 K7 ["IsChannelAnimation"]
       16 GETTABLEKS                       R10 R2 K8 ["Path"]
       18 JUMPIF                           R10 ; [+6]
       19 NEWTABLE                         R10 0 1
       21 GETTABLEKS                       R11 R4 K9 ["Name"]
       23 SETLIST                          R10 R11 1 [1]
       25 GETTABLEKS                       R11 R4 K10 ["Keyframes"]
       27 GETTABLEKS                       R12 R4 K11 ["Data"]
       29 GETTABLEKS                       R13 R4 K12 ["Instance"]
       31 JUMPIFNOT                        R8 ; [+37]
       32 GETUPVAL                         R14 0
       33 GETTABLEKS                       R14 R14 K13 ["getKeyframesExtents"]
       35 MOVE                             R15 R11
       36 MOVE                             R16 R5
       37 MOVE                             R17 R6
       38 CALL                             R14 3 2
       39 JUMPIFEQKNIL                     R14 ; [+113]
       41 JUMPIFEQKNIL                     R15 ; [+111]
       43 GETUPVAL                         R16 0
       44 GETTABLEKS                       R16 R16 K14 ["getScaledKeyframePosition"]
       46 GETTABLE                         R17 R11 R14
       47 MOVE                             R18 R5
       48 MOVE                             R19 R6
       49 MOVE                             R20 R3
       50 CALL                             R16 4 1
       51 GETUPVAL                         R17 0
       52 GETTABLEKS                       R17 R17 K14 ["getScaledKeyframePosition"]
       54 GETTABLE                         R18 R11 R15
       55 MOVE                             R19 R5
       56 MOVE                             R20 R6
       57 MOVE                             R21 R3
       58 CALL                             R17 4 1
       59 MOVE                             R20 R16
       60 MOVE                             R21 R17
       61 GETUPVAL                         R22 1
       62 GETTABLEKS                       R22 R22 K15 ["MIN_SPACE_BETWEEN_KEYS"]
       64 NAMECALL                         R18 R0 K16 ["renderKeyframeCluster"]
       66 CALL                             R18 4 1
       67 SETTABLE                         R18 R1 R15
       68 RETURN                           R0 0
       69 GETUPVAL                         R14 0
       70 GETTABLEKS                       R14 R14 K17 ["getComponentsInfo"]
       72 MOVE                             R15 R4
       73 MOVE                             R16 R5
       74 MOVE                             R17 R6
       75 CALL                             R14 3 1
       76 GETTABLE                         R15 R7 R13
       77 GETIMPORT                        R16 K19 [ipairs]
       79 MOVE                             R17 R10
       80 CALL                             R16 1 3
       81 FORGPREP_INEXT                   R16
       82 JUMPIFNOT                        R15 ; [+11]
       83 GETTABLEKS                       R22 R15 K20 ["Components"]
       85 JUMPIFNOT                        R22 ; [+4]
       86 GETTABLEKS                       R22 R15 K20 ["Components"]
       88 GETTABLE                         R21 R22 R20
       89 JUMPIF                           R21 ; [+1]
       90 GETTABLE                         R21 R15 R20
       91 MOVE                             R15 R21
       92 FORGLOOP                         R16 2 [inext] ; [-11]
       94 GETIMPORT                        R16 K22 [pairs]
       96 MOVE                             R17 R14
       97 CALL                             R16 1 3
       98 FORGPREP_NEXT                    R16
       99 LOADNIL                          R21
      100 MOVE                             R22 R12
      101 JUMPIFNOT                        R22 ; [+1]
      102 GETTABLE                         R22 R12 R19
      103 NOT                              R23 R9
      104 JUMPIF                           R23 ; [+2]
      105 GETTABLEKS                       R23 R20 K23 ["Complete"]
      107 GETTABLE                         R24 R14 R19
      108 GETTABLEKS                       R24 R24 K23 ["Complete"]
      110 JUMPIFNOT                        R24 ; [+9]
      111 JUMPIFNOT                        R9 ; [+4]
      112 GETTABLE                         R24 R14 R19
      113 GETTABLEKS                       R24 R24 K24 ["InterpolationMode"]
      115 JUMPIF                           R24 ; [+3]
      116 GETTABLE                         R24 R14 R19
      117 GETTABLEKS                       R24 R24 K25 ["EasingStyle"]
      119 MOVE                             R21 R24
      120 GETUPVAL                         R24 0
      121 GETTABLEKS                       R24 R24 K14 ["getScaledKeyframePosition"]
      123 MOVE                             R25 R19
      124 MOVE                             R26 R5
      125 MOVE                             R27 R6
      126 MOVE                             R28 R3
      127 CALL                             R24 4 1
      128 MOVE                             R25 R15
      129 JUMPIFNOT                        R25 ; [+6]
      130 GETTABLEKS                       R25 R15 K26 ["Selection"]
      132 JUMPIFNOT                        R25 ; [+3]
      133 GETTABLEKS                       R26 R15 K26 ["Selection"]
      135 GETTABLE                         R25 R26 R19
      136 MOVE                             R27 R1
      137 MOVE                             R30 R25
      138 MOVE                             R31 R24
      139 MOVE                             R32 R4
      140 MOVE                             R33 R19
      141 MOVE                             R34 R21
      142 MOVE                             R35 R22
      143 MOVE                             R36 R23
      144 NAMECALL                         R28 R0 K27 ["renderKeyframe"]
      146 CALL                             R28 8 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R26 K30 [table.insert]
      150 CALL                             R26 -1 0
      151 FORGLOOP                         R16 2 ; [-53]
      153 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R0 K1 ["renderKeyframes"]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 -1
       15 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["BaseTrack"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["TrackUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Components"]
       47 GETTABLEKS                       R6 R6 K14 ["Timeline"]
       49 GETTABLEKS                       R6 R6 K15 ["Keyframe"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K9 ["Components"]
       58 GETTABLEKS                       R7 R7 K16 ["KeyframeCluster"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Src"]
       65 GETTABLEKS                       R8 R8 K9 ["Components"]
       67 GETTABLEKS                       R8 R8 K17 ["Tooltip"]
       69 CALL                             R7 1 1
       70 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       72 LOADK                            R10 K19 ["DopeSheetTrack"]
       73 NAMECALL                         R8 R8 K20 ["extend"]
       75 CALL                             R8 2 1
       76 DUPCLOSURE                       R9 K21 [PROTO_3]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R9 R8 K22 ["renderKeyframe"]
       83 DUPCLOSURE                       R9 K23 [PROTO_4]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R9 R8 K24 ["renderKeyframeCluster"]
       88 DUPCLOSURE                       R9 K25 [PROTO_5]
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R3
       91 SETTABLEKS                       R9 R8 K26 ["renderKeyframes"]
       93 DUPCLOSURE                       R9 K27 [PROTO_6]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R9 R8 K28 ["render"]
       98 RETURN                           R8 1
