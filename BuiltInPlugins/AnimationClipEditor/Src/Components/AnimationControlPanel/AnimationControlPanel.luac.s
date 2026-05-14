PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ToggleLooping"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["LoadAnimationData"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["Analytics"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SkipBackward"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SkipForward"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SetPlayState"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["Analytics"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["StepAnimation"]
        5 LOADN                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AnimationData"]
        5 GETTABLEKS                       R2 R0 K2 ["StepAnimation"]
        7 GETTABLEKS                       R3 R1 K3 ["Metadata"]
        9 GETTABLEKS                       R3 R3 K4 ["EndTick"]
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["toggleLoopingWrapper"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["loadAnimationDataWrapper"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["skipBackwardWrapper"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["skipForwardWrapper"]
       16 NEWCLOSURE                       R1 P4
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["setPlayStateWrapper"]
       20 NEWCLOSURE                       R1 P5
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["goToFirstFrameWrapper"]
       24 NEWCLOSURE                       R1 P6
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K6 ["goToLastFrameWrapper"]
       28 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        6 GETTABLEKS                       R4 R1 K3 ["IsLegacyAnimSaves"]
        8 GETTABLEKS                       R5 R1 K4 ["PlayState"]
       10 GETTABLEKS                       R6 R1 K5 ["RootInstance"]
       12 GETTABLEKS                       R7 R1 K6 ["StartTick"]
       14 GETTABLEKS                       R8 R1 K7 ["EndTick"]
       16 GETTABLEKS                       R9 R1 K8 ["Playhead"]
       18 GETTABLEKS                       R10 R1 K9 ["EditingLength"]
       20 GETTABLEKS                       R11 R1 K10 ["TimelineUnit"]
       22 GETTABLEKS                       R12 R1 K11 ["UpdateEditingLength"]
       24 GETTABLEKS                       R13 R1 K12 ["StepAnimation"]
       26 GETTABLEKS                       R14 R1 K13 ["FrameRate"]
       28 GETTABLEKS                       R15 R1 K14 ["IsChannelAnimation"]
       30 GETTABLEKS                       R16 R1 K15 ["ReadOnly"]
       32 GETUPVAL                         R17 0
       33 GETTABLEKS                       R17 R17 K16 ["createElement"]
       35 LOADK                            R18 K17 ["Frame"]
       36 DUPTABLE                         R19 K23 [{"Size", "BorderSizePixel", "LayoutOrder", "BackgroundColor3", "BorderColor3"}]
       37 GETIMPORT                        R20 K26 [UDim2.new]
       39 LOADN                            R21 1
       40 LOADN                            R22 0
       41 LOADN                            R23 0
       42 GETUPVAL                         R24 1
       43 GETTABLEKS                       R24 R24 K27 ["TIMELINE_HEIGHT"]
       45 CALL                             R20 4 1
       46 SETTABLEKS                       R20 R19 K18 ["Size"]
       48 LOADN                            R20 1
       49 SETTABLEKS                       R20 R19 K19 ["BorderSizePixel"]
       51 LOADN                            R20 0
       52 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
       54 GETTABLEKS                       R20 R2 K28 ["backgroundColor"]
       56 SETTABLEKS                       R20 R19 K21 ["BackgroundColor3"]
       58 GETTABLEKS                       R20 R2 K29 ["borderColor"]
       60 SETTABLEKS                       R20 R19 K22 ["BorderColor3"]
       62 DUPTABLE                         R20 K34 [{"Layout", "AnimationClipDropdown", "MediaControls", "TimeDisplay"}]
       63 GETUPVAL                         R21 0
       64 GETTABLEKS                       R21 R21 K16 ["createElement"]
       66 LOADK                            R22 K35 ["UIListLayout"]
       67 DUPTABLE                         R23 K40 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       68 GETIMPORT                        R24 K43 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R24 R23 K36 ["FillDirection"]
       72 GETIMPORT                        R24 K45 [Enum.HorizontalAlignment.Left]
       74 SETTABLEKS                       R24 R23 K37 ["HorizontalAlignment"]
       76 GETIMPORT                        R24 K46 [Enum.SortOrder.LayoutOrder]
       78 SETTABLEKS                       R24 R23 K38 ["SortOrder"]
       80 GETIMPORT                        R24 K48 [Enum.VerticalAlignment.Center]
       82 SETTABLEKS                       R24 R23 K39 ["VerticalAlignment"]
       84 CALL                             R21 2 1
       85 SETTABLEKS                       R21 R20 K30 ["Layout"]
       87 GETUPVAL                         R21 0
       88 GETTABLEKS                       R21 R21 K16 ["createElement"]
       90 GETUPVAL                         R22 2
       91 DUPTABLE                         R23 K52 [{"AnimationName", "IsLegacyAnimSaves", "RootInstance", "LoadAnimationData", "InstanceType", "LayoutOrder", "IsChannelAnimation"}]
       92 JUMPIFNOT                        R3 ; [+5]
       93 GETTABLEKS                       R24 R3 K53 ["Metadata"]
       95 GETTABLEKS                       R24 R24 K54 ["Name"]
       97 JUMPIF                           R24 ; [+1]
       98 LOADK                            R24 K55 [""]
       99 SETTABLEKS                       R24 R23 K49 ["AnimationName"]
      101 SETTABLEKS                       R4 R23 K3 ["IsLegacyAnimSaves"]
      103 SETTABLEKS                       R6 R23 K5 ["RootInstance"]
      105 GETTABLEKS                       R24 R0 K56 ["loadAnimationDataWrapper"]
      107 SETTABLEKS                       R24 R23 K50 ["LoadAnimationData"]
      109 MOVE                             R24 R6
      110 JUMPIFNOT                        R24 ; [+8]
      111 MOVE                             R24 R3
      112 JUMPIFNOT                        R24 ; [+6]
      113 GETTABLEKS                       R24 R3 K57 ["Instances"]
      115 GETTABLEKS                       R24 R24 K58 ["Root"]
      117 GETTABLEKS                       R24 R24 K59 ["Type"]
      119 SETTABLEKS                       R24 R23 K51 ["InstanceType"]
      121 LOADN                            R24 0
      122 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      124 SETTABLEKS                       R15 R23 K14 ["IsChannelAnimation"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K31 ["AnimationClipDropdown"]
      129 GETUPVAL                         R21 0
      130 GETTABLEKS                       R21 R21 K16 ["createElement"]
      132 GETUPVAL                         R22 3
      133 DUPTABLE                         R23 K67 [{"PlayState", "IsLooping", "SkipBackward", "SkipForward", "SetPlayState", "ToggleLooping", "GoToFirstFrame", "GoToLastFrame", "LayoutOrder"}]
      134 SETTABLEKS                       R5 R23 K4 ["PlayState"]
      136 JUMPIFNOT                        R3 ; [+8]
      137 GETTABLEKS                       R25 R3 K53 ["Metadata"]
      139 JUMPIFNOT                        R25 ; [+5]
      140 GETTABLEKS                       R24 R3 K53 ["Metadata"]
      142 GETTABLEKS                       R24 R24 K68 ["Looping"]
      144 JUMPIF                           R24 ; [+1]
      145 LOADB                            R24 0
      146 SETTABLEKS                       R24 R23 K60 ["IsLooping"]
      148 GETTABLEKS                       R24 R0 K69 ["skipBackwardWrapper"]
      150 SETTABLEKS                       R24 R23 K61 ["SkipBackward"]
      152 GETTABLEKS                       R24 R0 K70 ["skipForwardWrapper"]
      154 SETTABLEKS                       R24 R23 K62 ["SkipForward"]
      156 GETTABLEKS                       R24 R0 K71 ["setPlayStateWrapper"]
      158 SETTABLEKS                       R24 R23 K63 ["SetPlayState"]
      160 GETTABLEKS                       R24 R0 K72 ["toggleLoopingWrapper"]
      162 SETTABLEKS                       R24 R23 K64 ["ToggleLooping"]
      164 GETTABLEKS                       R24 R0 K73 ["goToFirstFrameWrapper"]
      166 SETTABLEKS                       R24 R23 K65 ["GoToFirstFrame"]
      168 GETTABLEKS                       R24 R0 K74 ["goToLastFrameWrapper"]
      170 SETTABLEKS                       R24 R23 K66 ["GoToLastFrame"]
      172 LOADN                            R24 1
      173 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      175 CALL                             R21 2 1
      176 SETTABLEKS                       R21 R20 K32 ["MediaControls"]
      178 GETUPVAL                         R21 0
      179 GETTABLEKS                       R21 R21 K16 ["createElement"]
      181 GETUPVAL                         R22 4
      182 DUPTABLE                         R23 K75 [{"StartTick", "EndTick", "FrameRate", "TimelineUnit", "AnimationData", "Playhead", "EditingLength", "StepAnimation", "UpdateEditingLength", "ReadOnly", "LayoutOrder"}]
      183 SETTABLEKS                       R7 R23 K6 ["StartTick"]
      185 SETTABLEKS                       R8 R23 K7 ["EndTick"]
      187 SETTABLEKS                       R14 R23 K13 ["FrameRate"]
      189 SETTABLEKS                       R11 R23 K10 ["TimelineUnit"]
      191 SETTABLEKS                       R3 R23 K2 ["AnimationData"]
      193 SETTABLEKS                       R9 R23 K8 ["Playhead"]
      195 SETTABLEKS                       R10 R23 K9 ["EditingLength"]
      197 SETTABLEKS                       R13 R23 K12 ["StepAnimation"]
      199 SETTABLEKS                       R12 R23 K11 ["UpdateEditingLength"]
      201 SETTABLEKS                       R16 R23 K15 ["ReadOnly"]
      203 LOADN                            R24 2
      204 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      206 CALL                             R21 2 1
      207 SETTABLEKS                       R21 R20 K33 ["TimeDisplay"]
      209 CALL                             R17 3 -1
      210 RETURN                           R17 -1

PROTO_9:
        0 DUPTABLE                         R1 K4 [{"FrameRate", "PlayState", "ReadOnly", "RootInstance"}]
        1 GETTABLEKS                       R2 R0 K5 ["Status"]
        3 GETTABLEKS                       R2 R2 K0 ["FrameRate"]
        5 SETTABLEKS                       R2 R1 K0 ["FrameRate"]
        7 GETTABLEKS                       R2 R0 K5 ["Status"]
        9 GETTABLEKS                       R2 R2 K1 ["PlayState"]
       11 SETTABLEKS                       R2 R1 K1 ["PlayState"]
       13 GETTABLEKS                       R2 R0 K5 ["Status"]
       15 GETTABLEKS                       R2 R2 K2 ["ReadOnly"]
       17 SETTABLEKS                       R2 R1 K2 ["ReadOnly"]
       19 GETTABLEKS                       R2 R0 K5 ["Status"]
       21 GETTABLEKS                       R2 R2 K3 ["RootInstance"]
       23 SETTABLEKS                       R2 R1 K3 ["RootInstance"]
       25 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K7 [{"ToggleLooping", "StepAnimation", "SetPlayState", "LoadAnimationData", "UpdateEditingLength", "SkipBackward", "SkipForward"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ToggleLooping"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["StepAnimation"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetPlayState"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["LoadAnimationData"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["UpdateEditingLength"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SkipBackward"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U5
       34 SETTABLEKS                       R2 R1 K6 ["SkipForward"]
       36 RETURN                           R1 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K14 ["withContext"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Components"]
       47 GETTABLEKS                       R8 R8 K16 ["AnimationControlPanel"]
       49 GETTABLEKS                       R8 R8 K17 ["AnimationClipDropdown"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K9 ["Src"]
       56 GETTABLEKS                       R9 R9 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["AnimationControlPanel"]
       60 GETTABLEKS                       R9 R9 K18 ["MediaControls"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Src"]
       67 GETTABLEKS                       R10 R10 K15 ["Components"]
       69 GETTABLEKS                       R10 R10 K16 ["AnimationControlPanel"]
       71 GETTABLEKS                       R10 R10 K19 ["TimeDisplay"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K9 ["Src"]
       78 GETTABLEKS                       R11 R11 K20 ["Thunks"]
       80 GETTABLEKS                       R11 R11 K21 ["Playback"]
       82 GETTABLEKS                       R11 R11 K22 ["ToggleLooping"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K9 ["Src"]
       89 GETTABLEKS                       R12 R12 K20 ["Thunks"]
       91 GETTABLEKS                       R12 R12 K21 ["Playback"]
       93 GETTABLEKS                       R12 R12 K23 ["StepAnimation"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K9 ["Src"]
      100 GETTABLEKS                       R13 R13 K20 ["Thunks"]
      102 GETTABLEKS                       R13 R13 K24 ["LoadAnimationData"]
      104 CALL                             R12 1 1
      105 GETIMPORT                        R13 K5 [require]
      107 GETTABLEKS                       R14 R0 K9 ["Src"]
      109 GETTABLEKS                       R14 R14 K20 ["Thunks"]
      111 GETTABLEKS                       R14 R14 K21 ["Playback"]
      113 GETTABLEKS                       R14 R14 K25 ["SkipAnimation"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K9 ["Src"]
      120 GETTABLEKS                       R15 R15 K20 ["Thunks"]
      122 GETTABLEKS                       R15 R15 K26 ["UpdateEditingLength"]
      124 CALL                             R14 1 1
      125 GETIMPORT                        R15 K5 [require]
      127 GETTABLEKS                       R16 R0 K9 ["Src"]
      129 GETTABLEKS                       R16 R16 K27 ["Actions"]
      131 GETTABLEKS                       R16 R16 K28 ["SetPlayState"]
      133 CALL                             R15 1 1
      134 GETTABLEKS                       R16 R1 K29 ["PureComponent"]
      136 LOADK                            R18 K16 ["AnimationControlPanel"]
      137 NAMECALL                         R16 R16 K30 ["extend"]
      139 CALL                             R16 2 1
      140 DUPCLOSURE                       R17 K31 [PROTO_7]
      141 SETTABLEKS                       R17 R16 K32 ["init"]
      143 DUPCLOSURE                       R17 K33 [PROTO_8]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R9
      149 SETTABLEKS                       R17 R16 K34 ["render"]
      151 MOVE                             R17 R6
      152 DUPTABLE                         R18 K37 [{"Stylizer", "Analytics"}]
      153 GETTABLEKS                       R19 R5 K35 ["Stylizer"]
      155 SETTABLEKS                       R19 R18 K35 ["Stylizer"]
      157 GETTABLEKS                       R19 R5 K36 ["Analytics"]
      159 SETTABLEKS                       R19 R18 K36 ["Analytics"]
      161 CALL                             R17 1 1
      162 MOVE                             R18 R16
      163 CALL                             R17 1 1
      164 MOVE                             R16 R17
      165 DUPCLOSURE                       R17 K38 [PROTO_9]
      166 DUPCLOSURE                       R18 K39 [PROTO_17]
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R13
      173 GETTABLEKS                       R19 R2 K40 ["connect"]
      175 MOVE                             R20 R17
      176 MOVE                             R21 R18
      177 CALL                             R19 2 1
      178 MOVE                             R20 R16
      179 CALL                             R19 1 -1
      180 RETURN                           R19 -1
