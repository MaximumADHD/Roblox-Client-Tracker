PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleRecordingAndEndReview"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R3 K3 ["button"]
       10 GETTABLEKS                       R5 R2 K4 ["Analytics"]
       12 GETTABLEKS                       R6 R2 K5 ["ReadOnly"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R5
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K6 ["canUseFaceControlsEditor"]
       20 GETTABLEKS                       R9 R2 K7 ["RootInstance"]
       22 CALL                             R8 1 1
       23 LOADK                            R11 K8 ["FaceCapture"]
       24 LOADK                            R12 K9 ["MainButtonTitle"]
       25 NAMECALL                         R9 R1 K10 ["getText"]
       27 CALL                             R9 3 1
       28 GETTABLEKS                       R10 R3 K11 ["ikTheme"]
       30 GETTABLEKS                       R10 R10 K12 ["textSize"]
       32 GETTABLEKS                       R11 R3 K13 ["font"]
       34 GETUPVAL                         R12 1
       35 MOVE                             R13 R9
       36 MOVE                             R14 R10
       37 MOVE                             R15 R11
       38 GETIMPORT                        R16 K16 [Vector2.new]
       40 LOADN                            R17 1000
       41 LOADN                            R18 1000
       42 CALL                             R16 2 -1
       43 CALL                             R12 -1 1
       44 GETTABLEKS                       R14 R12 K18 ["X"]
       46 ADDK                             R13 R14 K17 [10]
       47 GETTABLEKS                       R14 R0 K0 ["props"]
       49 GETTABLEKS                       R14 R14 K7 ["RootInstance"]
       51 JUMPIFNOT                        R14 ; [+124]
       52 GETUPVAL                         R14 2
       53 GETTABLEKS                       R14 R14 K19 ["createElement"]
       55 LOADK                            R15 K20 ["Frame"]
       56 DUPTABLE                         R16 K28 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["AnchorPoint"], ["LayoutOrder"] = 3}]
       57 GETTABLEKS                       R17 R2 K21 ["Position"]
       59 SETTABLEKS                       R17 R16 K21 ["Position"]
       61 GETIMPORT                        R17 K30 [UDim2.new]
       63 LOADN                            R18 0
       64 MOVE                             R19 R13
       65 LOADN                            R20 0
       66 LOADN                            R21 18
       67 CALL                             R17 4 1
       68 SETTABLEKS                       R17 R16 K22 ["Size"]
       70 GETIMPORT                        R17 K16 [Vector2.new]
       72 LOADN                            R18 0
       73 LOADK                            R19 K31 [0.5]
       74 CALL                             R17 2 1
       75 SETTABLEKS                       R17 R16 K25 ["AnchorPoint"]
       77 DUPTABLE                         R17 K33 [{"FaceControlsEditorButton"}]
       78 GETTABLEKS                       R18 R2 K7 ["RootInstance"]
       80 JUMPIFNOT                        R18 ; [+92]
       81 MOVE                             R18 R8
       82 JUMPIFNOT                        R18 ; [+90]
       83 GETUPVAL                         R18 2
       84 GETTABLEKS                       R18 R18 K19 ["createElement"]
       86 GETUPVAL                         R19 3
       87 DUPTABLE                         R20 K39 [{["Style"], ["StyleModifier"], ["Size"], ["IsDisabled"] = True, ["OnClick"]}]
       88 GETTABLEKS                       R22 R2 K40 ["inReviewState"]
       90 JUMPIFNOT                        R22 ; [+2]
       91 LOADK                            R21 K41 ["RoundPrimary"]
       92 JUMP                             ; [+2]
       93 GETTABLEKS                       R21 R4 K42 ["FaceControlsEditorDefault"]
       95 SETTABLEKS                       R21 R20 K34 ["Style"]
       97 JUMPIFNOT                        R6 ; [+4]
       98 GETUPVAL                         R21 4
       99 GETTABLEKS                       R21 R21 K43 ["Disabled"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R21
      103 SETTABLEKS                       R21 R20 K35 ["StyleModifier"]
      105 GETIMPORT                        R21 K30 [UDim2.new]
      107 LOADN                            R22 1
      108 LOADN                            R23 0
      109 LOADN                            R24 1
      110 LOADN                            R25 0
      111 CALL                             R21 4 1
      112 SETTABLEKS                       R21 R20 K22 ["Size"]
      114 SETTABLEKS                       R7 R20 K38 ["OnClick"]
      116 DUPTABLE                         R21 K45 [{"Label"}]
      117 GETUPVAL                         R22 2
      118 GETTABLEKS                       R22 R22 K19 ["createElement"]
      120 LOADK                            R23 K46 ["TextLabel"]
      121 DUPTABLE                         R24 K52 [{["BackgroundTransparency"] = 1, ["Size"], ["TextYAlignment"], ["TextSize"], ["Text"], ["Font"], ["TextColor3"]}]
      122 GETIMPORT                        R25 K30 [UDim2.new]
      124 LOADN                            R26 1
      125 LOADN                            R27 0
      126 LOADN                            R28 1
      127 LOADN                            R29 0
      128 CALL                             R25 4 1
      129 SETTABLEKS                       R25 R24 K22 ["Size"]
      131 GETIMPORT                        R25 K55 [Enum.TextYAlignment.Center]
      133 SETTABLEKS                       R25 R24 K47 ["TextYAlignment"]
      135 SETTABLEKS                       R10 R24 K48 ["TextSize"]
      137 SETTABLEKS                       R9 R24 K49 ["Text"]
      139 SETTABLEKS                       R11 R24 K50 ["Font"]
      141 GETTABLEKS                       R25 R3 K11 ["ikTheme"]
      143 GETTABLEKS                       R25 R25 K56 ["textColor"]
      145 SETTABLEKS                       R25 R24 K51 ["TextColor3"]
      147 DUPTABLE                         R25 K58 [{"TeachingCallout"}]
      148 GETTABLEKS                       R27 R2 K7 ["RootInstance"]
      150 JUMPIFNOT                        R27 ; [+15]
      151 JUMPIFNOT                        R8 ; [+14]
      152 GETUPVAL                         R26 2
      153 GETTABLEKS                       R26 R26 K19 ["createElement"]
      155 GETUPVAL                         R27 5
      156 DUPTABLE                         R28 K64 [{["Offset"], ["DefinitionId"] = "FaceRecorderCallout", ["LocationId"] = "RecordingModeButton"}]
      157 GETIMPORT                        R29 K16 [Vector2.new]
      159 LOADN                            R30 0
      160 LOADN                            R31 6
      161 CALL                             R29 2 1
      162 SETTABLEKS                       R29 R28 K59 ["Offset"]
      164 CALL                             R26 2 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R26
      167 SETTABLEKS                       R26 R25 K57 ["TeachingCallout"]
      169 CALL                             R22 3 1
      170 SETTABLEKS                       R22 R21 K44 ["Label"]
      172 CALL                             R18 3 1
      173 SETTABLEKS                       R18 R17 K32 ["FaceControlsEditorButton"]
      175 CALL                             R14 3 1
      176 RETURN                           R14 1

PROTO_3:
        0 DUPTABLE                         R2 K3 [{"inReviewState", "ReadOnly", "RootInstance"}]
        1 GETTABLEKS                       R3 R0 K4 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["inReviewState"]
        5 SETTABLEKS                       R3 R2 K0 ["inReviewState"]
        7 GETTABLEKS                       R3 R0 K4 ["Status"]
        9 GETTABLEKS                       R3 R3 K1 ["ReadOnly"]
       11 SETTABLEKS                       R3 R2 K1 ["ReadOnly"]
       13 GETTABLEKS                       R3 R0 K4 ["Status"]
       15 GETTABLEKS                       R3 R3 K2 ["RootInstance"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["Button"]
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R6 R5 K13 ["StyleModifier"]
       36 GETTABLEKS                       R7 R3 K12 ["Util"]
       38 GETTABLEKS                       R7 R7 K14 ["GetTextSize"]
       40 GETTABLEKS                       R8 R3 K15 ["ContextServices"]
       42 GETTABLEKS                       R9 R8 K16 ["withContext"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K17 ["Src"]
       48 GETTABLEKS                       R11 R11 K12 ["Util"]
       50 GETTABLEKS                       R11 R11 K18 ["RigUtils"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K17 ["Src"]
       57 GETTABLEKS                       R12 R12 K19 ["Thunks"]
       59 GETTABLEKS                       R12 R12 K20 ["Recording"]
       61 GETTABLEKS                       R12 R12 K21 ["ToggleRecordingAndEndReview"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R0 K17 ["Src"]
       68 GETTABLEKS                       R13 R13 K22 ["Components"]
       70 GETTABLEKS                       R13 R13 K23 ["TeachingCallout"]
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
