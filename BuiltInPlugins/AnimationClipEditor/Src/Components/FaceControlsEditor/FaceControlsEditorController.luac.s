PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showFaceControlsEditorPanel"}]
        2 SETTABLEKS                       R0 R3 K0 ["showFaceControlsEditorPanel"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedTracks"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["SelectedTracks"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K1 ["SelectedTracks"]
       16 LENGTH                           R2 R3
       17 GETTABLE                         R0 R1 R2
       18 RETURN                           R0 1
       19 LOADNIL                          R0
       20 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ToggleFaceControlsEditorEnabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["props"]
        3 GETTABLEKS                       R3 R3 K2 ["Playhead"]
        5 ORK                              R2 R3 K0 [0]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K3 ["ValueChanged"]
       11 LOADK                            R4 K4 ["Root"]
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 LOADK                            R6 K5 ["Facs"]
       18 LOADNIL                          R7
       19 MOVE                             R8 R2
       20 MOVE                             R9 R1
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K1 ["props"]
       24 GETTABLEKS                       R10 R10 K6 ["Analytics"]
       26 CALL                             R3 7 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K1 ["props"]
       30 GETTABLEKS                       R3 R3 K7 ["AddWaypoint"]
       32 CALL                             R3 0 0
       33 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K2 [{"showMenu", "showFaceControlsEditorPanel"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showFaceControlsEditorPanel"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K4 ["hideMenu"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K5 ["setShowFaceControlsEditorPanel"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K6 ["getLastSelectedTrack"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K7 ["toggleFaceControlsEditorEnabledHandler"]
       29 GETUPVAL                         R1 0
       30 CALL                             R1 0 1
       31 JUMPIFNOT                        R1 ; [+4]
       32 NEWCLOSURE                       R1 P5
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K8 ["addFaceControlKeyframeHandler"]
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowFaceControlsEditorPanel"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ShowFaceControlsEditorPanel"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["ShowFaceControlsEditorPanel"]
        6 GETTABLEKS                       R4 R2 K3 ["showFaceControlsEditorPanel"]
        8 JUMPIFEQ                         R3 R4 ; [+17]
       10 GETTABLEKS                       R3 R1 K2 ["ShowFaceControlsEditorPanel"]
       12 JUMPIFEQKNIL                     R3 ; [+8]
       14 GETIMPORT                        R3 K5 [spawn]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R0 K6 ["setShowFaceControlsEditorPanel"]
       23 GETTABLEKS                       R4 R1 K2 ["ShowFaceControlsEditorPanel"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["addFaceControlKeyframeHandler"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetShowFaceControlsEditorPanel"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K3 ["getLastSelectedTrack"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R5 R3 K4 ["button"]
       13 GETTABLEKS                       R6 R0 K5 ["state"]
       15 GETTABLEKS                       R7 R2 K6 ["ToggleShowFaceControlsEditorPanel"]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K7 ["canUseFaceControlsEditor"]
       20 GETTABLEKS                       R9 R2 K8 ["RootInstance"]
       22 CALL                             R8 1 1
       23 LOADK                            R11 K9 ["Title"]
       24 LOADK                            R12 K10 ["FACE"]
       25 NAMECALL                         R9 R1 K11 ["getText"]
       27 CALL                             R9 3 1
       28 GETTABLEKS                       R10 R3 K12 ["ikTheme"]
       30 GETTABLEKS                       R10 R10 K13 ["textSize"]
       32 GETTABLEKS                       R11 R3 K14 ["font"]
       34 GETUPVAL                         R12 1
       35 MOVE                             R13 R9
       36 MOVE                             R14 R10
       37 MOVE                             R15 R11
       38 GETIMPORT                        R16 K17 [Vector2.new]
       40 LOADN                            R17 232
       41 LOADN                            R18 232
       42 CALL                             R16 2 -1
       43 CALL                             R12 -1 1
       44 GETTABLEKS                       R14 R12 K19 ["X"]
       46 ADDK                             R13 R14 K18 [10]
       47 LOADNIL                          R14
       48 GETUPVAL                         R15 2
       49 CALL                             R15 0 1
       50 JUMPIFNOT                        R15 ; [+79]
       51 DUPTABLE                         R15 K31 [{"RootInstance", "AnimationData", "Playhead", "FrameRate", "Tracks", "AddFaceKeyframe", "AddKeyframe", "AddWaypoint", "StepAnimation", "ValueChanged", "UpdateAnimationData", "Plugin"}]
       52 GETTABLEKS                       R16 R2 K8 ["RootInstance"]
       54 SETTABLEKS                       R16 R15 K8 ["RootInstance"]
       56 GETTABLEKS                       R16 R2 K20 ["AnimationData"]
       58 SETTABLEKS                       R16 R15 K20 ["AnimationData"]
       60 GETTABLEKS                       R16 R2 K21 ["Playhead"]
       62 SETTABLEKS                       R16 R15 K21 ["Playhead"]
       64 GETTABLEKS                       R16 R2 K22 ["FrameRate"]
       66 SETTABLEKS                       R16 R15 K22 ["FrameRate"]
       68 GETTABLEKS                       R16 R2 K23 ["Tracks"]
       70 SETTABLEKS                       R16 R15 K23 ["Tracks"]
       72 NEWCLOSURE                       R16 P0
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R16 R15 K24 ["AddFaceKeyframe"]
       76 GETTABLEKS                       R16 R2 K25 ["AddKeyframe"]
       78 SETTABLEKS                       R16 R15 K25 ["AddKeyframe"]
       80 GETTABLEKS                       R16 R2 K26 ["AddWaypoint"]
       82 SETTABLEKS                       R16 R15 K26 ["AddWaypoint"]
       84 GETTABLEKS                       R16 R2 K27 ["StepAnimation"]
       86 SETTABLEKS                       R16 R15 K27 ["StepAnimation"]
       88 GETTABLEKS                       R16 R2 K28 ["ValueChanged"]
       90 SETTABLEKS                       R16 R15 K28 ["ValueChanged"]
       92 GETTABLEKS                       R16 R2 K29 ["UpdateAnimationData"]
       94 SETTABLEKS                       R16 R15 K29 ["UpdateAnimationData"]
       96 GETTABLEKS                       R16 R2 K30 ["Plugin"]
       98 GETTABLEKS                       R16 R16 K32 ["_obj"]
      100 SETTABLEKS                       R16 R15 K30 ["Plugin"]
      102 GETTABLEKS                       R16 R2 K33 ["ShowFaceControlsEditorPanel"]
      104 JUMPIFNOT                        R16 ; [+25]
      105 GETUPVAL                         R16 3
      106 GETTABLEKS                       R16 R16 K34 ["createElement"]
      108 GETUPVAL                         R17 4
      109 DUPTABLE                         R18 K40 [{"plugin", "animationContext", "updateContextFunction", "onCloseCallback", "localization"}]
      110 GETTABLEKS                       R19 R2 K30 ["Plugin"]
      112 GETTABLEKS                       R19 R19 K32 ["_obj"]
      114 SETTABLEKS                       R19 R18 K35 ["plugin"]
      116 SETTABLEKS                       R15 R18 K36 ["animationContext"]
      118 GETTABLEKS                       R19 R0 K41 ["addFaceControlKeyframeHandler"]
      120 SETTABLEKS                       R19 R18 K37 ["updateContextFunction"]
      122 NEWCLOSURE                       R19 P1
      123 CAPTURE                          VAL R2
      124 SETTABLEKS                       R19 R18 K38 ["onCloseCallback"]
      126 SETTABLEKS                       R1 R18 K39 ["localization"]
      128 CALL                             R16 2 1
      129 MOVE                             R14 R16
      130 GETTABLEKS                       R15 R0 K0 ["props"]
      132 GETTABLEKS                       R15 R15 K8 ["RootInstance"]
      134 JUMPIFNOT                        R15 ; [+186]
      135 GETUPVAL                         R15 3
      136 GETTABLEKS                       R15 R15 K34 ["createElement"]
      138 LOADK                            R16 K42 ["Frame"]
      139 DUPTABLE                         R17 K48 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint", "LayoutOrder"}]
      140 GETTABLEKS                       R18 R2 K43 ["Position"]
      142 SETTABLEKS                       R18 R17 K43 ["Position"]
      144 GETIMPORT                        R18 K50 [UDim2.new]
      146 LOADN                            R19 0
      147 MOVE                             R20 R13
      148 LOADN                            R21 0
      149 LOADN                            R22 18
      150 CALL                             R18 4 1
      151 SETTABLEKS                       R18 R17 K44 ["Size"]
      153 LOADN                            R18 1
      154 SETTABLEKS                       R18 R17 K45 ["BackgroundTransparency"]
      156 GETIMPORT                        R18 K17 [Vector2.new]
      158 LOADN                            R19 0
      159 LOADK                            R20 K51 [0.5]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      163 LOADN                            R18 2
      164 SETTABLEKS                       R18 R17 K47 ["LayoutOrder"]
      166 DUPTABLE                         R18 K54 [{"FaceControlsEditorButton", "FaceControlsEditorWindow"}]
      167 GETTABLEKS                       R19 R2 K8 ["RootInstance"]
      169 JUMPIFNOT                        R19 ; [+99]
      170 MOVE                             R19 R8
      171 JUMPIFNOT                        R19 ; [+97]
      172 GETUPVAL                         R19 3
      173 GETTABLEKS                       R19 R19 K34 ["createElement"]
      175 GETUPVAL                         R20 5
      176 DUPTABLE                         R21 K57 [{"Style", "Size", "OnClick"}]
      177 GETTABLEKS                       R23 R6 K58 ["showFaceControlsEditorPanel"]
      179 JUMPIFNOT                        R23 ; [+3]
      180 GETTABLEKS                       R22 R5 K59 ["FaceControlsEditorActive"]
      182 JUMPIF                           R22 ; [+2]
      183 GETTABLEKS                       R22 R5 K60 ["FaceControlsEditorDefault"]
      185 SETTABLEKS                       R22 R21 K55 ["Style"]
      187 GETIMPORT                        R22 K50 [UDim2.new]
      189 LOADN                            R23 1
      190 LOADN                            R24 0
      191 LOADN                            R25 1
      192 LOADN                            R26 0
      193 CALL                             R22 4 1
      194 SETTABLEKS                       R22 R21 K44 ["Size"]
      196 SETTABLEKS                       R7 R21 K56 ["OnClick"]
      198 DUPTABLE                         R22 K62 [{"Label"}]
      199 GETUPVAL                         R23 3
      200 GETTABLEKS                       R23 R23 K34 ["createElement"]
      202 LOADK                            R24 K63 ["TextLabel"]
      203 DUPTABLE                         R25 K69 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
      204 LOADN                            R26 1
      205 SETTABLEKS                       R26 R25 K45 ["BackgroundTransparency"]
      207 GETIMPORT                        R26 K50 [UDim2.new]
      209 LOADN                            R27 1
      210 LOADN                            R28 0
      211 LOADN                            R29 1
      212 LOADN                            R30 0
      213 CALL                             R26 4 1
      214 SETTABLEKS                       R26 R25 K44 ["Size"]
      216 GETIMPORT                        R26 K72 [Enum.TextYAlignment.Center]
      218 SETTABLEKS                       R26 R25 K64 ["TextYAlignment"]
      220 GETTABLEKS                       R26 R3 K12 ["ikTheme"]
      222 GETTABLEKS                       R26 R26 K13 ["textSize"]
      224 SETTABLEKS                       R26 R25 K65 ["TextSize"]
      226 LOADK                            R28 K9 ["Title"]
      227 LOADK                            R29 K10 ["FACE"]
      228 NAMECALL                         R26 R1 K11 ["getText"]
      230 CALL                             R26 3 1
      231 SETTABLEKS                       R26 R25 K66 ["Text"]
      233 GETTABLEKS                       R26 R3 K14 ["font"]
      235 SETTABLEKS                       R26 R25 K67 ["Font"]
      237 GETTABLEKS                       R26 R3 K12 ["ikTheme"]
      239 GETTABLEKS                       R26 R26 K73 ["textColor"]
      241 SETTABLEKS                       R26 R25 K68 ["TextColor3"]
      243 DUPTABLE                         R26 K75 [{"TeachingCallout"}]
      244 GETUPVAL                         R27 3
      245 GETTABLEKS                       R27 R27 K34 ["createElement"]
      247 GETUPVAL                         R28 6
      248 DUPTABLE                         R29 K79 [{"Offset", "DefinitionId", "LocationId"}]
      249 GETIMPORT                        R30 K17 [Vector2.new]
      251 LOADN                            R31 0
      252 LOADN                            R32 6
      253 CALL                             R30 2 1
      254 SETTABLEKS                       R30 R29 K76 ["Offset"]
      256 LOADK                            R30 K80 ["FaceControlsEditorCallout"]
      257 SETTABLEKS                       R30 R29 K77 ["DefinitionId"]
      259 LOADK                            R30 K52 ["FaceControlsEditorButton"]
      260 SETTABLEKS                       R30 R29 K78 ["LocationId"]
      262 CALL                             R27 2 1
      263 SETTABLEKS                       R27 R26 K74 ["TeachingCallout"]
      265 CALL                             R23 3 1
      266 SETTABLEKS                       R23 R22 K61 ["Label"]
      268 CALL                             R19 3 1
      269 SETTABLEKS                       R19 R18 K52 ["FaceControlsEditorButton"]
      271 GETUPVAL                         R20 2
      272 CALL                             R20 0 1
      273 JUMPIFNOT                        R20 ; [+2]
      274 MOVE                             R19 R14
      275 JUMP                             ; [+42]
      276 GETTABLEKS                       R19 R2 K33 ["ShowFaceControlsEditorPanel"]
      278 JUMPIFNOT                        R19 ; [+39]
      279 GETTABLEKS                       R19 R6 K58 ["showFaceControlsEditorPanel"]
      281 JUMPIFNOT                        R19 ; [+36]
      282 GETUPVAL                         R19 3
      283 GETTABLEKS                       R19 R19 K34 ["createElement"]
      285 GETUPVAL                         R20 7
      286 DUPTABLE                         R21 K87 [{"RootInstance", "FaceControlsEditorEnabled", "ShowFaceControlsEditorPanel", "SelectedTrack", "SetSelectedTracks", "ToggleFaceControlsEditorEnabled", "SetShowFaceControlsEditorPanel", "SetFaceControlsEditorEnabled"}]
      287 GETTABLEKS                       R22 R2 K8 ["RootInstance"]
      289 SETTABLEKS                       R22 R21 K8 ["RootInstance"]
      291 GETTABLEKS                       R22 R2 K81 ["FaceControlsEditorEnabled"]
      293 SETTABLEKS                       R22 R21 K81 ["FaceControlsEditorEnabled"]
      295 GETTABLEKS                       R22 R2 K33 ["ShowFaceControlsEditorPanel"]
      297 SETTABLEKS                       R22 R21 K33 ["ShowFaceControlsEditorPanel"]
      299 SETTABLEKS                       R4 R21 K82 ["SelectedTrack"]
      301 GETTABLEKS                       R22 R2 K83 ["SetSelectedTracks"]
      303 SETTABLEKS                       R22 R21 K83 ["SetSelectedTracks"]
      305 GETTABLEKS                       R22 R0 K88 ["toggleFaceControlsEditorEnabledHandler"]
      307 SETTABLEKS                       R22 R21 K84 ["ToggleFaceControlsEditorEnabled"]
      309 GETTABLEKS                       R22 R2 K85 ["SetShowFaceControlsEditorPanel"]
      311 SETTABLEKS                       R22 R21 K85 ["SetShowFaceControlsEditorPanel"]
      313 GETTABLEKS                       R22 R2 K86 ["SetFaceControlsEditorEnabled"]
      315 SETTABLEKS                       R22 R21 K86 ["SetFaceControlsEditorEnabled"]
      317 CALL                             R19 2 1
      318 SETTABLEKS                       R19 R18 K53 ["FaceControlsEditorWindow"]
      320 CALL                             R15 3 1
      321 RETURN                           R15 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+36]
        3 DUPTABLE                         R2 K6 [{"ShowFaceControlsEditorPanel", "RootInstance", "AnimationData", "Playhead", "FrameRate", "Tracks"}]
        4 GETTABLEKS                       R3 R0 K7 ["Status"]
        6 GETTABLEKS                       R3 R3 K0 ["ShowFaceControlsEditorPanel"]
        8 SETTABLEKS                       R3 R2 K0 ["ShowFaceControlsEditorPanel"]
       10 GETTABLEKS                       R3 R0 K7 ["Status"]
       12 GETTABLEKS                       R3 R3 K1 ["RootInstance"]
       14 SETTABLEKS                       R3 R2 K1 ["RootInstance"]
       16 GETTABLEKS                       R3 R0 K2 ["AnimationData"]
       18 SETTABLEKS                       R3 R2 K2 ["AnimationData"]
       20 GETTABLEKS                       R3 R0 K7 ["Status"]
       22 GETTABLEKS                       R3 R3 K3 ["Playhead"]
       24 SETTABLEKS                       R3 R2 K3 ["Playhead"]
       26 GETTABLEKS                       R3 R0 K7 ["Status"]
       28 GETTABLEKS                       R3 R3 K4 ["FrameRate"]
       30 SETTABLEKS                       R3 R2 K4 ["FrameRate"]
       32 GETTABLEKS                       R3 R0 K7 ["Status"]
       34 GETTABLEKS                       R3 R3 K5 ["Tracks"]
       36 SETTABLEKS                       R3 R2 K5 ["Tracks"]
       38 RETURN                           R2 1
       39 DUPTABLE                         R2 K10 [{"ShowFaceControlsEditorPanel", "FaceControlsEditorEnabled", "RootInstance", "SelectedTracks"}]
       40 GETTABLEKS                       R3 R0 K7 ["Status"]
       42 GETTABLEKS                       R3 R3 K0 ["ShowFaceControlsEditorPanel"]
       44 SETTABLEKS                       R3 R2 K0 ["ShowFaceControlsEditorPanel"]
       46 GETTABLEKS                       R3 R0 K7 ["Status"]
       48 GETTABLEKS                       R3 R3 K8 ["FaceControlsEditorEnabled"]
       50 SETTABLEKS                       R3 R2 K8 ["FaceControlsEditorEnabled"]
       52 GETTABLEKS                       R3 R0 K7 ["Status"]
       54 GETTABLEKS                       R3 R3 K1 ["RootInstance"]
       56 SETTABLEKS                       R3 R2 K1 ["RootInstance"]
       58 GETTABLEKS                       R3 R0 K7 ["Status"]
       60 GETTABLEKS                       R3 R3 K9 ["SelectedTracks"]
       62 SETTABLEKS                       R3 R2 K9 ["SelectedTracks"]
       64 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

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
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R1 K5 [{"ToggleShowFaceControlsEditorPanel", "SetFaceControlsEditorEnabled", "ToggleFaceControlsEditorEnabled", "SetShowFaceControlsEditorPanel", "SetSelectedTracks"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ToggleShowFaceControlsEditorPanel"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetFaceControlsEditorEnabled"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["ToggleFaceControlsEditorEnabled"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetShowFaceControlsEditorPanel"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetSelectedTracks"]
       26 GETUPVAL                         R2 5
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+25]
       29 NEWCLOSURE                       R2 P5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 SETTABLEKS                       R2 R1 K6 ["AddKeyframe"]
       34 NEWCLOSURE                       R2 P6
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U7
       37 SETTABLEKS                       R2 R1 K7 ["AddWaypoint"]
       39 NEWCLOSURE                       R2 P7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U8
       42 SETTABLEKS                       R2 R1 K8 ["StepAnimation"]
       44 NEWCLOSURE                       R2 P8
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U9
       47 SETTABLEKS                       R2 R1 K9 ["ValueChanged"]
       49 NEWCLOSURE                       R2 P9
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U10
       52 SETTABLEKS                       R2 R1 K10 ["UpdateAnimationData"]
       54 RETURN                           R1 1

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
       32 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["withContext"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Util"]
       42 GETTABLEKS                       R8 R8 K16 ["RigUtils"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Src"]
       49 GETTABLEKS                       R9 R9 K17 ["Components"]
       51 GETTABLEKS                       R9 R9 K18 ["FaceControlsEditor"]
       53 GETTABLEKS                       R9 R9 K19 ["FaceControlsEditorWindow"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Src"]
       60 GETTABLEKS                       R10 R10 K17 ["Components"]
       62 GETTABLEKS                       R10 R10 K18 ["FaceControlsEditor"]
       64 GETTABLEKS                       R10 R10 K20 ["NewFaceControlComponent"]
       66 GETTABLEKS                       R10 R10 K21 ["FaceControlEditorWidget"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K14 ["Src"]
       73 GETTABLEKS                       R11 R11 K22 ["Thunks"]
       75 GETTABLEKS                       R11 R11 K23 ["ToggleFaceControlsEditorEnabled"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R0 K14 ["Src"]
       82 GETTABLEKS                       R12 R12 K22 ["Thunks"]
       84 GETTABLEKS                       R12 R12 K24 ["ToggleShowFaceControlsEditorPanel"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K5 [require]
       89 GETTABLEKS                       R13 R0 K14 ["Src"]
       91 GETTABLEKS                       R13 R13 K25 ["Actions"]
       93 GETTABLEKS                       R13 R13 K26 ["SetFaceControlsEditorEnabled"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K5 [require]
       98 GETTABLEKS                       R14 R0 K14 ["Src"]
      100 GETTABLEKS                       R14 R14 K25 ["Actions"]
      102 GETTABLEKS                       R14 R14 K27 ["SetShowFaceControlsEditorPanel"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K5 [require]
      107 GETTABLEKS                       R15 R0 K14 ["Src"]
      109 GETTABLEKS                       R15 R15 K22 ["Thunks"]
      111 GETTABLEKS                       R15 R15 K28 ["SetSelectedTracks"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K5 [require]
      116 GETTABLEKS                       R16 R0 K14 ["Src"]
      118 GETTABLEKS                       R16 R16 K22 ["Thunks"]
      120 GETTABLEKS                       R16 R16 K29 ["AddKeyframe"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K5 [require]
      125 GETTABLEKS                       R17 R0 K14 ["Src"]
      127 GETTABLEKS                       R17 R17 K22 ["Thunks"]
      129 GETTABLEKS                       R17 R17 K30 ["History"]
      131 GETTABLEKS                       R17 R17 K31 ["AddWaypoint"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K5 [require]
      136 GETTABLEKS                       R18 R0 K14 ["Src"]
      138 GETTABLEKS                       R18 R18 K22 ["Thunks"]
      140 GETTABLEKS                       R18 R18 K32 ["Playback"]
      142 GETTABLEKS                       R18 R18 K33 ["StepAnimation"]
      144 CALL                             R17 1 1
      145 GETIMPORT                        R18 K5 [require]
      147 GETTABLEKS                       R19 R0 K14 ["Src"]
      149 GETTABLEKS                       R19 R19 K22 ["Thunks"]
      151 GETTABLEKS                       R19 R19 K34 ["ValueChanged"]
      153 CALL                             R18 1 1
      154 GETIMPORT                        R19 K5 [require]
      156 GETTABLEKS                       R20 R0 K14 ["Src"]
      158 GETTABLEKS                       R20 R20 K22 ["Thunks"]
      160 GETTABLEKS                       R20 R20 K35 ["UpdateAnimationData"]
      162 CALL                             R19 1 1
      163 GETIMPORT                        R20 K5 [require]
      165 GETTABLEKS                       R21 R0 K14 ["Src"]
      167 GETTABLEKS                       R21 R21 K17 ["Components"]
      169 GETTABLEKS                       R21 R21 K36 ["TeachingCallout"]
      171 CALL                             R20 1 1
      172 GETIMPORT                        R21 K5 [require]
      174 GETTABLEKS                       R22 R0 K14 ["Src"]
      176 GETTABLEKS                       R22 R22 K37 ["Flags"]
      178 GETTABLEKS                       R22 R22 K38 ["getFFlagACENewFaceControlEditorComponent"]
      180 CALL                             R21 1 1
      181 GETTABLEKS                       R22 R1 K39 ["PureComponent"]
      183 LOADK                            R24 K40 ["FaceControlsEditorController"]
      184 NAMECALL                         R22 R22 K41 ["extend"]
      186 CALL                             R22 2 1
      187 GETTABLEKS                       R23 R3 K15 ["Util"]
      189 GETTABLEKS                       R23 R23 K42 ["GetTextSize"]
      191 DUPCLOSURE                       R24 K43 [PROTO_6]
      192 CAPTURE                          VAL R21
      193 SETTABLEKS                       R24 R22 K44 ["init"]
      195 DUPCLOSURE                       R24 K45 [PROTO_8]
      196 SETTABLEKS                       R24 R22 K46 ["didUpdate"]
      198 DUPCLOSURE                       R24 K47 [PROTO_11]
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R8
      207 SETTABLEKS                       R24 R22 K48 ["render"]
      209 MOVE                             R24 R6
      210 DUPTABLE                         R25 K53 [{"Stylizer", "Localization", "Analytics", "Plugin"}]
      211 GETTABLEKS                       R26 R5 K49 ["Stylizer"]
      213 SETTABLEKS                       R26 R25 K49 ["Stylizer"]
      215 GETTABLEKS                       R26 R5 K50 ["Localization"]
      217 SETTABLEKS                       R26 R25 K50 ["Localization"]
      219 GETTABLEKS                       R26 R5 K51 ["Analytics"]
      221 SETTABLEKS                       R26 R25 K51 ["Analytics"]
      223 MOVE                             R27 R21
      224 CALL                             R27 0 1
      225 JUMPIFNOT                        R27 ; [+3]
      226 GETTABLEKS                       R26 R5 K52 ["Plugin"]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R26
      230 SETTABLEKS                       R26 R25 K52 ["Plugin"]
      232 CALL                             R24 1 1
      233 MOVE                             R25 R22
      234 CALL                             R24 1 1
      235 MOVE                             R22 R24
      236 DUPCLOSURE                       R24 K54 [PROTO_12]
      237 CAPTURE                          VAL R21
      238 DUPCLOSURE                       R25 K55 [PROTO_23]
      239 CAPTURE                          VAL R11
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R10
      242 CAPTURE                          VAL R13
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R18
      249 CAPTURE                          VAL R19
      250 GETTABLEKS                       R26 R2 K56 ["connect"]
      252 MOVE                             R27 R24
      253 MOVE                             R28 R25
      254 CALL                             R26 2 1
      255 MOVE                             R27 R22
      256 CALL                             R26 1 -1
      257 RETURN                           R26 -1
