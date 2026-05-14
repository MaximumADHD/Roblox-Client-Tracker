PROTO_0:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R1 2
        5 SETTABLEKS                       R1 R0 K0 ["Parent"]
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 4
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R1 R0 K0 ["Parent"]
       13 GETUPVAL                         R1 5
       14 SETTABLEKS                       R0 R1 K1 ["StudioDefaultStyleSheet"]
       16 GETUPVAL                         R1 6
       17 GETTABLEKS                       R1 R1 K2 ["insertDerive"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K3 ["StyleSheet"]
       22 MOVE                             R3 R0
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 5
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K3 ["StyleSheet"]
       28 SETTABLEKS                       R2 R1 K4 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
       30 GETIMPORT                        R1 K8 [Enum.FinishRecordingOperation.Commit]
       32 RETURN                           R1 1

PROTO_1:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["Plugin"]
        7 NAMECALL                         R2 R2 K1 ["get"]
        9 CALL                             R2 1 1
       10 LOADK                            R4 K2 ["CustomizedDefaultInstances"]
       11 NAMECALL                         R2 R2 K3 ["GetPluginComponent"]
       13 CALL                             R2 2 1
       14 NAMECALL                         R3 R2 K4 ["GetCustomizedStylablePropertiesAsync"]
       16 CALL                             R3 1 1
       17 MOVE                             R1 R3
       18 GETUPVAL                         R2 2
       19 DUPTABLE                         R3 K8 [{"Name", "DisplayName", "DoChange"}]
       20 LOADK                            R4 K9 ["StyleEditor.CreateDesignSystem"]
       21 SETTABLEKS                       R4 R3 K5 ["Name"]
       23 LOADK                            R4 K10 ["Style Editor - Create Design"]
       24 SETTABLEKS                       R4 R3 K6 ["DisplayName"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          REF R0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          REF R1
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 SETTABLEKS                       R4 R3 K7 ["DoChange"]
       36 CALL                             R2 1 0
       37 CLOSEUPVALS                      R0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R1 K0 ["Localization"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U9
       18 GETUPVAL                         R5 10
       19 GETTABLEKS                       R5 R5 K1 ["createElement"]
       21 GETUPVAL                         R6 11
       22 NEWTABLE                         R7 4 0
       24 GETUPVAL                         R8 10
       25 GETTABLEKS                       R8 R8 K2 ["Tag"]
       27 LOADK                            R9 K3 ["X-Fill ScrollingDirectionXY modern"]
       28 SETTABLE                         R9 R7 R8
       29 GETIMPORT                        R8 K6 [UDim2.fromScale]
       31 LOADN                            R9 0
       32 LOADN                            R10 0
       33 CALL                             R8 2 1
       34 SETTABLEKS                       R8 R7 K7 ["CanvasSize"]
       36 GETIMPORT                        R8 K11 [Enum.AutomaticSize.XY]
       38 SETTABLEKS                       R8 R7 K12 ["AutomaticCanvasSize"]
       40 NEWTABLE                         R8 0 1
       42 GETUPVAL                         R9 10
       43 GETTABLEKS                       R9 R9 K1 ["createElement"]
       45 GETUPVAL                         R10 12
       46 NEWTABLE                         R11 1 0
       48 GETUPVAL                         R12 10
       49 GETTABLEKS                       R12 R12 K2 ["Tag"]
       51 LOADK                            R13 K13 ["MaxFullSizeMinContentSizeXY X-Column X-Center X-Middle"]
       52 SETTABLE                         R13 R11 R12
       53 NEWTABLE                         R12 0 1
       55 GETUPVAL                         R13 10
       56 GETTABLEKS                       R13 R13 K1 ["createElement"]
       58 GETUPVAL                         R14 13
       59 DUPTABLE                         R15 K16 [{"key", "AutomaticSize", "Size"}]
       60 GETUPVAL                         R17 14
       61 JUMPIFNOT                        R17 ; [+2]
       62 LOADK                            R16 K17 ["DropShadow"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R16
       65 SETTABLEKS                       R16 R15 K14 ["key"]
       67 GETIMPORT                        R16 K11 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R16 R15 K9 ["AutomaticSize"]
       71 GETIMPORT                        R16 K6 [UDim2.fromScale]
       73 LOADN                            R17 0
       74 LOADN                            R18 0
       75 CALL                             R16 2 1
       76 SETTABLEKS                       R16 R15 K15 ["Size"]
       78 DUPTABLE                         R16 K19 [{"Column"}]
       79 GETUPVAL                         R17 10
       80 GETTABLEKS                       R17 R17 K1 ["createElement"]
       82 GETUPVAL                         R18 12
       83 NEWTABLE                         R19 1 0
       85 GETUPVAL                         R20 10
       86 GETTABLEKS                       R20 R20 K2 ["Tag"]
       88 LOADK                            R21 K20 ["OnboardingPage X-ColumnM X-Fit X-PadL"]
       89 SETTABLE                         R21 R19 R20
       90 DUPTABLE                         R20 K25 [{"StylingImage", "Title", "Description", "ButtonContainer"}]
       91 GETUPVAL                         R21 10
       92 GETTABLEKS                       R21 R21 K1 ["createElement"]
       94 GETUPVAL                         R22 15
       95 DUPTABLE                         R23 K28 [{"Image", "LayoutOrder"}]
       96 GETUPVAL                         R24 16
       97 GETTABLEKS                       R24 R24 K29 ["onboarding"]
       99 CALL                             R24 0 1
      100 SETTABLEKS                       R24 R23 K26 ["Image"]
      102 LOADN                            R24 1
      103 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      105 CALL                             R21 2 1
      106 SETTABLEKS                       R21 R20 K21 ["StylingImage"]
      108 GETUPVAL                         R21 10
      109 GETTABLEKS                       R21 R21 K1 ["createElement"]
      111 GETUPVAL                         R22 17
      112 NEWTABLE                         R23 4 0
      114 LOADN                            R24 2
      115 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      117 LOADK                            R26 K30 ["Onboarding"]
      118 LOADK                            R27 K22 ["Title"]
      119 NAMECALL                         R24 R2 K31 ["getText"]
      121 CALL                             R24 3 1
      122 SETTABLEKS                       R24 R23 K32 ["Text"]
      124 GETUPVAL                         R24 10
      125 GETTABLEKS                       R24 R24 K2 ["Tag"]
      127 LOADK                            R25 K33 ["Subtitle X-Fit"]
      128 SETTABLE                         R25 R23 R24
      129 CALL                             R21 2 1
      130 SETTABLEKS                       R21 R20 K22 ["Title"]
      132 GETUPVAL                         R21 10
      133 GETTABLEKS                       R21 R21 K1 ["createElement"]
      135 GETUPVAL                         R22 17
      136 NEWTABLE                         R23 4 0
      138 LOADN                            R24 3
      139 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      141 LOADK                            R26 K30 ["Onboarding"]
      142 LOADK                            R27 K23 ["Description"]
      143 NAMECALL                         R24 R2 K31 ["getText"]
      145 CALL                             R24 3 1
      146 SETTABLEKS                       R24 R23 K32 ["Text"]
      148 GETUPVAL                         R24 10
      149 GETTABLEKS                       R24 R24 K2 ["Tag"]
      151 LOADK                            R25 K34 ["TextXAlignLeft X-FitY"]
      152 SETTABLE                         R25 R23 R24
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K23 ["Description"]
      156 GETUPVAL                         R21 10
      157 GETTABLEKS                       R21 R21 K1 ["createElement"]
      159 GETUPVAL                         R22 12
      160 DUPTABLE                         R23 K35 [{"LayoutOrder"}]
      161 LOADN                            R24 4
      162 SETTABLEKS                       R24 R23 K27 ["LayoutOrder"]
      164 DUPTABLE                         R24 K38 [{"Link", "BlankButton"}]
      165 GETUPVAL                         R25 10
      166 GETTABLEKS                       R25 R25 K1 ["createElement"]
      168 GETUPVAL                         R26 18
      169 DUPTABLE                         R27 K40 [{"OnClick", "Text"}]
      170 SETTABLEKS                       R4 R27 K39 ["OnClick"]
      172 LOADK                            R30 K30 ["Onboarding"]
      173 LOADK                            R31 K41 ["LearnMore"]
      174 NAMECALL                         R28 R2 K31 ["getText"]
      176 CALL                             R28 3 1
      177 SETTABLEKS                       R28 R27 K32 ["Text"]
      179 CALL                             R25 2 1
      180 SETTABLEKS                       R25 R24 K36 ["Link"]
      182 GETUPVAL                         R25 10
      183 GETTABLEKS                       R25 R25 K1 ["createElement"]
      185 GETUPVAL                         R26 19
      186 NEWTABLE                         R27 4 0
      188 LOADK                            R28 K42 ["PointingHand"]
      189 SETTABLEKS                       R28 R27 K43 ["Cursor"]
      191 SETTABLEKS                       R3 R27 K39 ["OnClick"]
      193 LOADK                            R30 K30 ["Onboarding"]
      194 LOADK                            R31 K44 ["CreateDesign"]
      195 NAMECALL                         R28 R2 K31 ["getText"]
      197 CALL                             R28 3 1
      198 SETTABLEKS                       R28 R27 K32 ["Text"]
      200 GETUPVAL                         R28 10
      201 GETTABLEKS                       R28 R28 K2 ["Tag"]
      203 LOADK                            R29 K45 ["PositionRight PrimaryBrand"]
      204 SETTABLE                         R29 R27 R28
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K37 ["BlankButton"]
      208 CALL                             R21 3 1
      209 SETTABLEKS                       R21 R20 K24 ["ButtonContainer"]
      211 CALL                             R17 3 1
      212 SETTABLEKS                       R17 R16 K18 ["Column"]
      214 CALL                             R13 3 -1
      215 SETLIST                          R12 R13 -1 [1]
      217 CALL                             R9 3 -1
      218 SETLIST                          R8 R9 -1 [1]
      220 CALL                             R5 3 -1
      221 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["StarterGui"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K14 ["UI"]
       43 GETTABLEKS                       R7 R6 K15 ["DropShadow"]
       45 GETTABLEKS                       R8 R6 K16 ["IconButton"]
       47 GETTABLEKS                       R9 R6 K17 ["Image"]
       49 GETTABLEKS                       R10 R6 K18 ["LinkText"]
       51 GETTABLEKS                       R11 R6 K19 ["Pane"]
       53 GETTABLEKS                       R12 R6 K20 ["TextLabel"]
       55 GETTABLEKS                       R13 R6 K21 ["ScrollingFrame"]
       57 GETIMPORT                        R14 K10 [require]
       59 GETTABLEKS                       R15 R3 K22 ["Src"]
       61 GETTABLEKS                       R15 R15 K23 ["Flags"]
       63 GETTABLEKS                       R15 R15 K24 ["getFFlagStyleEditorFixWarnings"]
       65 CALL                             R14 1 1
       66 CALL                             R14 0 1
       67 GETIMPORT                        R15 K10 [require]
       69 GETTABLEKS                       R16 R3 K22 ["Src"]
       71 GETTABLEKS                       R16 R16 K23 ["Flags"]
       73 GETTABLEKS                       R16 R16 K25 ["getEngineFeatureCustomizedDefaultInstances"]
       75 CALL                             R15 1 1
       76 CALL                             R15 0 1
       77 GETIMPORT                        R16 K10 [require]
       79 GETTABLEKS                       R17 R3 K22 ["Src"]
       81 GETTABLEKS                       R17 R17 K26 ["Reducers"]
       83 GETTABLEKS                       R17 R17 K27 ["RootReducer"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K10 [require]
       88 GETTABLEKS                       R18 R3 K22 ["Src"]
       90 GETTABLEKS                       R18 R18 K28 ["Util"]
       92 GETTABLEKS                       R18 R18 K29 ["createBlankSystem"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K10 [require]
       97 GETTABLEKS                       R19 R3 K22 ["Src"]
       99 GETTABLEKS                       R19 R19 K28 ["Util"]
      101 GETTABLEKS                       R19 R19 K30 ["createStudioDefaultStyleSheet"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K10 [require]
      106 GETTABLEKS                       R20 R3 K22 ["Src"]
      108 GETTABLEKS                       R20 R20 K28 ["Util"]
      110 GETTABLEKS                       R20 R20 K31 ["DesignHelpers"]
      112 CALL                             R19 1 1
      113 GETIMPORT                        R20 K10 [require]
      115 GETTABLEKS                       R21 R3 K22 ["Src"]
      117 GETTABLEKS                       R21 R21 K28 ["Util"]
      119 GETTABLEKS                       R21 R21 K32 ["recordChange"]
      121 CALL                             R20 1 1
      122 MOVE                             R21 R0
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K10 [require]
      126 GETTABLEKS                       R22 R3 K22 ["Src"]
      128 GETTABLEKS                       R22 R22 K33 ["Resources"]
      130 GETTABLEKS                       R22 R22 K34 ["ModernIcons"]
      132 CALL                             R21 1 1
      133 GETTABLEKS                       R22 R3 K22 ["Src"]
      135 GETTABLEKS                       R22 R22 K35 ["Thunks"]
      137 GETIMPORT                        R23 K10 [require]
      139 GETTABLEKS                       R24 R22 K36 ["Change"]
      141 GETTABLEKS                       R24 R24 K37 ["OpenLearnMoreLink"]
      143 CALL                             R23 1 1
      144 GETIMPORT                        R24 K10 [require]
      146 GETTABLEKS                       R25 R3 K22 ["Src"]
      148 GETTABLEKS                       R25 R25 K38 ["Hooks"]
      150 GETTABLEKS                       R25 R25 K39 ["useFrameworkContext"]
      152 CALL                             R24 1 1
      153 GETIMPORT                        R25 K10 [require]
      155 GETTABLEKS                       R26 R3 K22 ["Src"]
      157 GETTABLEKS                       R26 R26 K38 ["Hooks"]
      159 GETTABLEKS                       R26 R26 K40 ["useDispatch"]
      161 CALL                             R25 1 1
      162 DUPCLOSURE                       R26 K41 [PROTO_3]
      163 CAPTURE                          VAL R25
      164 CAPTURE                          VAL R24
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R19
      172 CAPTURE                          VAL R23
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R13
      175 CAPTURE                          VAL R11
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R8
      183 RETURN                           R26 1
