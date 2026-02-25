PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ToggleRecordingAndEndReview"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R3 K3 ["button"]
       10 GETTABLEKS                       R5 R2 K4 ["Analytics"]
       12 GETTABLEKS                       R6 R2 K5 ["ReadOnly"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R5
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K6 ["canUseFaceControlsEditor"]
       20 GETTABLEKS                       R9 R2 K7 ["RootInstance"]
       22 CALL                             R8 1 1
       23 LOADK                            R11 K8 ["FaceCapture"]
       24 LOADK                            R12 K9 ["MainButtonTitle"]
       25 NAMECALL                         R9 R1 K10 ["getText"]
       27 CALL                             R9 3 1
       28 GETTABLEKS                       R11 R3 K11 ["ikTheme"]
       30 GETTABLEKS                       R10 R11 K12 ["textSize"]
       32 GETTABLEKS                       R11 R3 K13 ["font"]
       34 GETUPVAL                         R12 1
       35 MOVE                             R13 R9
       36 MOVE                             R14 R10
       37 MOVE                             R15 R11
       38 GETIMPORT                        R16 K16 [Vector2.new]
       40 LOADN                            R17 232
       41 LOADN                            R18 232
       42 CALL                             R16 2 -1
       43 CALL                             R12 -1 1
       44 GETTABLEKS                       R14 R12 K18 ["X"]
       46 ADDK                             R13 R14 K17 [10]
       47 GETTABLEKS                       R15 R0 K0 ["props"]
       49 GETTABLEKS                       R14 R15 K7 ["RootInstance"]
       51 JUMPIFNOT                        R14 ; [+142]
       52 GETUPVAL                         R15 2
       53 GETTABLEKS                       R14 R15 K19 ["createElement"]
       55 LOADK                            R15 K20 ["Frame"]
       56 DUPTABLE                         R16 K26 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint", "LayoutOrder"}]
       57 GETTABLEKS                       R17 R2 K21 ["Position"]
       59 SETTABLEKS                       R17 R16 K21 ["Position"]
       61 GETIMPORT                        R17 K28 [UDim2.new]
       63 LOADN                            R18 0
       64 MOVE                             R19 R13
       65 LOADN                            R20 0
       66 LOADN                            R21 18
       67 CALL                             R17 4 1
       68 SETTABLEKS                       R17 R16 K22 ["Size"]
       70 LOADN                            R17 1
       71 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
       73 GETIMPORT                        R17 K16 [Vector2.new]
       75 LOADN                            R18 0
       76 LOADK                            R19 K29 [0.5]
       77 CALL                             R17 2 1
       78 SETTABLEKS                       R17 R16 K24 ["AnchorPoint"]
       80 LOADN                            R17 3
       81 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
       83 DUPTABLE                         R17 K31 [{"FaceControlsEditorButton"}]
       84 GETTABLEKS                       R18 R2 K7 ["RootInstance"]
       86 JUMPIFNOT                        R18 ; [+104]
       87 MOVE                             R18 R8
       88 JUMPIFNOT                        R18 ; [+102]
       89 GETUPVAL                         R19 2
       90 GETTABLEKS                       R18 R19 K19 ["createElement"]
       92 GETUPVAL                         R19 3
       93 DUPTABLE                         R20 K36 [{"Style", "StyleModifier", "Size", "IsDisabled", "OnClick"}]
       94 GETTABLEKS                       R22 R2 K37 ["inReviewState"]
       96 JUMPIFNOT                        R22 ; [+2]
       97 LOADK                            R21 K38 ["RoundPrimary"]
       98 JUMP                             ; [+2]
       99 GETTABLEKS                       R21 R4 K39 ["FaceControlsEditorDefault"]
      101 SETTABLEKS                       R21 R20 K32 ["Style"]
      103 JUMPIFNOT                        R6 ; [+4]
      104 GETUPVAL                         R22 4
      105 GETTABLEKS                       R21 R22 K40 ["Disabled"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R21
      109 SETTABLEKS                       R21 R20 K33 ["StyleModifier"]
      111 GETIMPORT                        R21 K28 [UDim2.new]
      113 LOADN                            R22 1
      114 LOADN                            R23 0
      115 LOADN                            R24 1
      116 LOADN                            R25 0
      117 CALL                             R21 4 1
      118 SETTABLEKS                       R21 R20 K22 ["Size"]
      120 LOADB                            R21 1
      121 SETTABLEKS                       R21 R20 K34 ["IsDisabled"]
      123 SETTABLEKS                       R7 R20 K35 ["OnClick"]
      125 DUPTABLE                         R21 K42 [{"Label"}]
      126 GETUPVAL                         R23 2
      127 GETTABLEKS                       R22 R23 K19 ["createElement"]
      129 LOADK                            R23 K43 ["TextLabel"]
      130 DUPTABLE                         R24 K49 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
      131 LOADN                            R25 1
      132 SETTABLEKS                       R25 R24 K23 ["BackgroundTransparency"]
      134 GETIMPORT                        R25 K28 [UDim2.new]
      136 LOADN                            R26 1
      137 LOADN                            R27 0
      138 LOADN                            R28 1
      139 LOADN                            R29 0
      140 CALL                             R25 4 1
      141 SETTABLEKS                       R25 R24 K22 ["Size"]
      143 GETIMPORT                        R25 K52 [Enum.TextYAlignment.Center]
      145 SETTABLEKS                       R25 R24 K44 ["TextYAlignment"]
      147 SETTABLEKS                       R10 R24 K45 ["TextSize"]
      149 SETTABLEKS                       R9 R24 K46 ["Text"]
      151 SETTABLEKS                       R11 R24 K47 ["Font"]
      153 GETTABLEKS                       R26 R3 K11 ["ikTheme"]
      155 GETTABLEKS                       R25 R26 K53 ["textColor"]
      157 SETTABLEKS                       R25 R24 K48 ["TextColor3"]
      159 DUPTABLE                         R25 K55 [{"TeachingCallout"}]
      160 GETTABLEKS                       R27 R2 K7 ["RootInstance"]
      162 JUMPIFNOT                        R27 ; [+21]
      163 JUMPIFNOT                        R8 ; [+20]
      164 GETUPVAL                         R27 2
      165 GETTABLEKS                       R26 R27 K19 ["createElement"]
      167 GETUPVAL                         R27 5
      168 DUPTABLE                         R28 K59 [{"Offset", "DefinitionId", "LocationId"}]
      169 GETIMPORT                        R29 K16 [Vector2.new]
      171 LOADN                            R30 0
      172 LOADN                            R31 6
      173 CALL                             R29 2 1
      174 SETTABLEKS                       R29 R28 K56 ["Offset"]
      176 LOADK                            R29 K60 ["FaceRecorderCallout"]
      177 SETTABLEKS                       R29 R28 K57 ["DefinitionId"]
      179 LOADK                            R29 K61 ["RecordingModeButton"]
      180 SETTABLEKS                       R29 R28 K58 ["LocationId"]
      182 CALL                             R26 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R26
      185 SETTABLEKS                       R26 R25 K54 ["TeachingCallout"]
      187 CALL                             R22 3 1
      188 SETTABLEKS                       R22 R21 K41 ["Label"]
      190 CALL                             R18 3 1
      191 SETTABLEKS                       R18 R17 K30 ["FaceControlsEditorButton"]
      193 CALL                             R14 3 1
      194 RETURN                           R14 1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"inReviewState", "ReadOnly", "RootInstance"}]
        1 GETTABLEKS                       R4 R0 K4 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["inReviewState"]
        5 SETTABLEKS                       R3 R2 K0 ["inReviewState"]
        7 GETTABLEKS                       R4 R0 K4 ["Status"]
        9 GETTABLEKS                       R3 R4 K1 ["ReadOnly"]
       11 SETTABLEKS                       R3 R2 K1 ["ReadOnly"]
       13 GETTABLEKS                       R4 R0 K4 ["Status"]
       15 GETTABLEKS                       R3 R4 K2 ["RootInstance"]
       17 SETTABLEKS                       R3 R2 K2 ["RootInstance"]
       19 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"ToggleRecordingAndEndReview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ToggleRecordingAndEndReview"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R5 K11 ["Button"]
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R6 R5 K13 ["StyleModifier"]
       36 GETTABLEKS                       R8 R3 K12 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["GetTextSize"]
       40 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       42 GETTABLEKS                       R9 R8 K16 ["withContext"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R13 R0 K17 ["Src"]
       48 GETTABLEKS                       R12 R13 K12 ["Util"]
       50 GETTABLEKS                       R11 R12 K18 ["RigUtils"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R15 R0 K17 ["Src"]
       57 GETTABLEKS                       R14 R15 K19 ["Thunks"]
       59 GETTABLEKS                       R13 R14 K20 ["Recording"]
       61 GETTABLEKS                       R12 R13 K21 ["ToggleRecordingAndEndReview"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R15 R0 K17 ["Src"]
       68 GETTABLEKS                       R14 R15 K22 ["Components"]
       70 GETTABLEKS                       R13 R14 K23 ["TeachingCallout"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R1 K24 ["PureComponent"]
       75 LOADK                            R15 K25 ["RecordingModeButton"]
       76 NAMECALL                         R13 R13 K26 ["extend"]
       78 CALL                             R13 2 1
       79 DUPCLOSURE                       R14 K27 [PROTO_0]
       80 SETTABLEKS                       R14 R13 K28 ["init"]
       82 DUPCLOSURE                       R14 K29 [PROTO_2]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R12
       89 SETTABLEKS                       R14 R13 K30 ["render"]
       91 MOVE                             R14 R9
       92 DUPTABLE                         R15 K34 [{"Stylizer", "Localization", "Analytics"}]
       93 GETTABLEKS                       R16 R8 K31 ["Stylizer"]
       95 SETTABLEKS                       R16 R15 K31 ["Stylizer"]
       97 GETTABLEKS                       R16 R8 K32 ["Localization"]
       99 SETTABLEKS                       R16 R15 K32 ["Localization"]
      101 GETTABLEKS                       R16 R8 K33 ["Analytics"]
      103 SETTABLEKS                       R16 R15 K33 ["Analytics"]
      105 CALL                             R14 1 1
      106 MOVE                             R15 R13
      107 CALL                             R14 1 1
      108 MOVE                             R13 R14
      109 DUPCLOSURE                       R14 K35 [PROTO_3]
      110 DUPCLOSURE                       R15 K36 [PROTO_5]
      111 CAPTURE                          VAL R11
      112 GETTABLEKS                       R16 R2 K37 ["connect"]
      114 MOVE                             R17 R14
      115 MOVE                             R18 R15
      116 CALL                             R16 2 1
      117 MOVE                             R17 R13
      118 CALL                             R16 1 -1
      119 RETURN                           R16 -1
