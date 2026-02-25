PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetShouldSetEmulationDevice"]
        5 GETTABLEKS                       R3 R0 K2 ["ShouldSetEmulationDevice"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["PluginState"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["PluginState"]
        8 GETTABLEKS                       R1 R2 K2 ["Default"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+29]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["state"]
       15 GETTABLEKS                       R1 R2 K4 ["canStartPlaying"]
       17 JUMPIFNOT                        R1 ; [+22]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K5 ["getIsPlayMode"]
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R1 R2 K6 ["onStartPlaybackButtonClicked"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K0 ["props"]
       31 GETTABLEKS                       R1 R2 K7 ["SetPluginState"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K1 ["PluginState"]
       36 GETTABLEKS                       R2 R3 K8 ["ShouldStartPlayback"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K1 ["PluginState"]
       43 GETTABLEKS                       R1 R2 K9 ["Playing"]
       45 JUMPIFNOTEQ                      R0 R1 ; [+6]
       47 GETUPVAL                         R2 2
       48 GETTABLEKS                       R1 R2 K10 ["onStopPlaybackButtonClicked"]
       50 CALL                             R1 0 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K1 ["PluginState"]
       55 GETTABLEKS                       R1 R2 K8 ["ShouldStartPlayback"]
       57 JUMPIFNOTEQ                      R0 R1 ; [+12]
       59 GETUPVAL                         R3 0
       60 GETTABLEKS                       R2 R3 K0 ["props"]
       62 GETTABLEKS                       R1 R2 K7 ["SetPluginState"]
       64 GETUPVAL                         R4 1
       65 GETTABLEKS                       R3 R4 K1 ["PluginState"]
       67 GETTABLEKS                       R2 R3 K2 ["Default"]
       69 CALL                             R1 1 0
       70 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"canStartPlaying"}]
        2 SETTABLEKS                       R0 R3 K0 ["canStartPlaying"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"canStartPlaying"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["canStartPlaying"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["toggleEmulationEnabled"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 SETTABLEKS                       R1 R0 K4 ["onPlayButtonClicked"]
       16 NEWCLOSURE                       R1 P2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K5 ["onCanStartPlaying"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 LOADB                            R8 0
       12 LOADB                            R9 0
       13 GETTABLEKS                       R10 R1 K4 ["PluginState"]
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R12 R13 K4 ["PluginState"]
       18 GETTABLEKS                       R11 R12 K5 ["Playing"]
       20 JUMPIFNOTEQ                      R10 R11 ; [+19]
       22 LOADK                            R12 K6 ["PlaybackTabView"]
       23 LOADK                            R13 K7 ["StatusMessagePlaying"]
       24 NAMECALL                         R10 R3 K8 ["getText"]
       26 CALL                             R10 3 1
       27 MOVE                             R5 R10
       28 LOADK                            R12 K6 ["PlaybackTabView"]
       29 LOADK                            R13 K9 ["PlayButtonStop"]
       30 NAMECALL                         R10 R3 K8 ["getText"]
       32 CALL                             R10 3 1
       33 MOVE                             R6 R10
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R7 R10 K10 ["Pressed"]
       37 LOADB                            R9 1
       38 LOADB                            R8 1
       39 JUMP                             ; [+82]
       40 GETTABLEKS                       R10 R1 K4 ["PluginState"]
       42 GETUPVAL                         R13 0
       43 GETTABLEKS                       R12 R13 K4 ["PluginState"]
       45 GETTABLEKS                       R11 R12 K11 ["ShouldStartPlayback"]
       47 JUMPIFNOTEQ                      R10 R11 ; [+18]
       49 LOADK                            R12 K6 ["PlaybackTabView"]
       50 LOADK                            R13 K12 ["StatusMessageShouldStartPlayback"]
       51 NAMECALL                         R10 R3 K8 ["getText"]
       53 CALL                             R10 3 1
       54 MOVE                             R5 R10
       55 LOADK                            R12 K6 ["PlaybackTabView"]
       56 LOADK                            R13 K13 ["PlayButtonReady"]
       57 NAMECALL                         R10 R3 K8 ["getText"]
       59 CALL                             R10 3 1
       60 MOVE                             R6 R10
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R7 R10 K14 ["Selected"]
       64 LOADB                            R9 0
       65 JUMP                             ; [+56]
       66 GETTABLEKS                       R10 R1 K4 ["PluginState"]
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R12 R13 K4 ["PluginState"]
       71 GETTABLEKS                       R11 R12 K15 ["Default"]
       73 JUMPIFNOTEQ                      R10 R11 ; [+23]
       75 LOADK                            R12 K6 ["PlaybackTabView"]
       76 LOADK                            R13 K16 ["StatusMessageNotPlaying"]
       77 NAMECALL                         R10 R3 K8 ["getText"]
       79 CALL                             R10 3 1
       80 MOVE                             R5 R10
       81 LOADK                            R12 K6 ["PlaybackTabView"]
       82 LOADK                            R13 K17 ["PlayButtonPlay"]
       83 NAMECALL                         R10 R3 K8 ["getText"]
       85 CALL                             R10 3 1
       86 MOVE                             R6 R10
       87 GETTABLEKS                       R10 R2 K18 ["canStartPlaying"]
       89 JUMPIFNOT                        R10 ; [+2]
       90 LOADNIL                          R7
       91 JUMP                             ; [+3]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R7 R10 K19 ["Disabled"]
       95 LOADB                            R9 0
       96 JUMP                             ; [+25]
       97 GETTABLEKS                       R10 R1 K4 ["PluginState"]
       99 GETUPVAL                         R13 0
      100 GETTABLEKS                       R12 R13 K4 ["PluginState"]
      102 GETTABLEKS                       R11 R12 K19 ["Disabled"]
      104 JUMPIFNOTEQ                      R10 R11 ; [+17]
      106 LOADK                            R12 K6 ["PlaybackTabView"]
      107 LOADK                            R13 K20 ["StatusMessageDisabled"]
      108 NAMECALL                         R10 R3 K8 ["getText"]
      110 CALL                             R10 3 1
      111 MOVE                             R5 R10
      112 LOADK                            R12 K6 ["PlaybackTabView"]
      113 LOADK                            R13 K17 ["PlayButtonPlay"]
      114 NAMECALL                         R10 R3 K8 ["getText"]
      116 CALL                             R10 3 1
      117 MOVE                             R6 R10
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R7 R10 K19 ["Disabled"]
      121 LOADB                            R9 1
      122 GETUPVAL                         R11 2
      123 GETTABLEKS                       R10 R11 K21 ["createElement"]
      125 GETUPVAL                         R11 3
      126 DUPTABLE                         R12 K31 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
      127 GETTABLEKS                       R13 R1 K22 ["LayoutOrder"]
      129 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      131 LOADK                            R13 K32 ["CornerBox"]
      132 SETTABLEKS                       R13 R12 K23 ["Style"]
      134 GETIMPORT                        R13 K35 [UDim2.fromOffset]
      136 GETTABLEKS                       R14 R4 K36 ["UIGroupWidthPx"]
      138 LOADN                            R15 0
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K24 ["Size"]
      142 GETIMPORT                        R13 K39 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R13 R12 K25 ["AutomaticSize"]
      146 GETIMPORT                        R13 K42 [Enum.FillDirection.Vertical]
      148 SETTABLEKS                       R13 R12 K26 ["Layout"]
      150 GETIMPORT                        R13 K45 [UDim.new]
      152 LOADN                            R14 0
      153 GETTABLEKS                       R15 R4 K46 ["PaddingPx"]
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K27 ["Spacing"]
      158 GETTABLEKS                       R13 R4 K46 ["PaddingPx"]
      160 SETTABLEKS                       R13 R12 K28 ["Padding"]
      162 GETIMPORT                        R13 K48 [Enum.HorizontalAlignment.Center]
      164 SETTABLEKS                       R13 R12 K29 ["HorizontalAlignment"]
      166 GETIMPORT                        R13 K50 [Enum.VerticalAlignment.Top]
      168 SETTABLEKS                       R13 R12 K30 ["VerticalAlignment"]
      170 DUPTABLE                         R13 K56 [{"RecordingFileSelector", "LoadingBar", "Button", "EmulationEnabled", "StatusTextLabel"}]
      171 GETUPVAL                         R15 2
      172 GETTABLEKS                       R14 R15 K21 ["createElement"]
      174 GETUPVAL                         R15 4
      175 DUPTABLE                         R16 K58 [{"OnCanStartPlaying"}]
      176 GETTABLEKS                       R17 R0 K59 ["onCanStartPlaying"]
      178 SETTABLEKS                       R17 R16 K57 ["OnCanStartPlaying"]
      180 CALL                             R14 2 1
      181 SETTABLEKS                       R14 R13 K51 ["RecordingFileSelector"]
      183 MOVE                             R14 R8
      184 JUMPIFNOT                        R14 ; [+17]
      185 GETUPVAL                         R15 2
      186 GETTABLEKS                       R14 R15 K21 ["createElement"]
      188 GETUPVAL                         R15 5
      189 DUPTABLE                         R16 K62 [{"Width", "LayoutOrder", "TotalTime"}]
      190 GETTABLEKS                       R17 R4 K63 ["ProgressBarWidth"]
      192 SETTABLEKS                       R17 R16 K60 ["Width"]
      194 LOADN                            R17 2
      195 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      197 GETTABLEKS                       R17 R1 K64 ["CurrentRecordingDurationSec"]
      199 SETTABLEKS                       R17 R16 K61 ["TotalTime"]
      201 CALL                             R14 2 1
      202 SETTABLEKS                       R14 R13 K52 ["LoadingBar"]
      204 GETUPVAL                         R15 2
      205 GETTABLEKS                       R14 R15 K21 ["createElement"]
      207 GETUPVAL                         R15 6
      208 DUPTABLE                         R16 K69 [{"Size", "LayoutOrder", "AnchorPoint", "Style", "StyleModifier", "Text", "OnClick"}]
      209 GETTABLEKS                       R17 R4 K70 ["PrimaryButtonSize"]
      211 SETTABLEKS                       R17 R16 K24 ["Size"]
      213 LOADN                            R17 3
      214 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      216 GETIMPORT                        R17 K72 [Vector2.new]
      218 LOADK                            R18 K73 [0.5]
      219 LOADN                            R19 0
      220 CALL                             R17 2 1
      221 SETTABLEKS                       R17 R16 K65 ["AnchorPoint"]
      223 LOADK                            R17 K74 ["RoundPrimaryPlayButton"]
      224 SETTABLEKS                       R17 R16 K23 ["Style"]
      226 SETTABLEKS                       R7 R16 K66 ["StyleModifier"]
      228 SETTABLEKS                       R6 R16 K67 ["Text"]
      230 GETTABLEKS                       R17 R0 K75 ["onPlayButtonClicked"]
      232 SETTABLEKS                       R17 R16 K68 ["OnClick"]
      234 NEWTABLE                         R17 0 1
      236 GETUPVAL                         R19 2
      237 GETTABLEKS                       R18 R19 K21 ["createElement"]
      239 GETUPVAL                         R19 7
      240 DUPTABLE                         R20 K77 [{"Cursor"}]
      241 LOADK                            R21 K78 ["PointingHand"]
      242 SETTABLEKS                       R21 R20 K76 ["Cursor"]
      244 CALL                             R18 2 -1
      245 SETLIST                          R17 R18 -1 [1]
      247 CALL                             R14 3 1
      248 SETTABLEKS                       R14 R13 K53 ["Button"]
      250 GETUPVAL                         R15 2
      251 GETTABLEKS                       R14 R15 K21 ["createElement"]
      253 GETUPVAL                         R15 8
      254 DUPTABLE                         R16 K79 [{"Selected", "OnClick", "Text", "Disabled", "LayoutOrder"}]
      255 GETTABLEKS                       R17 R1 K80 ["ShouldSetEmulationDevice"]
      257 SETTABLEKS                       R17 R16 K14 ["Selected"]
      259 GETTABLEKS                       R17 R0 K81 ["toggleEmulationEnabled"]
      261 SETTABLEKS                       R17 R16 K68 ["OnClick"]
      263 LOADK                            R19 K6 ["PlaybackTabView"]
      264 LOADK                            R20 K82 ["SetEmulationDeviceLabel"]
      265 NAMECALL                         R17 R3 K8 ["getText"]
      267 CALL                             R17 3 1
      268 SETTABLEKS                       R17 R16 K67 ["Text"]
      270 SETTABLEKS                       R9 R16 K19 ["Disabled"]
      272 LOADN                            R17 4
      273 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      275 CALL                             R14 2 1
      276 SETTABLEKS                       R14 R13 K54 ["EmulationEnabled"]
      278 GETUPVAL                         R15 2
      279 GETTABLEKS                       R14 R15 K21 ["createElement"]
      281 GETUPVAL                         R15 9
      282 DUPTABLE                         R16 K85 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "Style", "TextXAlignment", "TextYAlignment"}]
      283 SETTABLEKS                       R5 R16 K67 ["Text"]
      285 GETIMPORT                        R17 K87 [UDim2.fromScale]
      287 LOADN                            R18 1
      288 LOADN                            R19 0
      289 CALL                             R17 2 1
      290 SETTABLEKS                       R17 R16 K24 ["Size"]
      292 GETIMPORT                        R17 K39 [Enum.AutomaticSize.Y]
      294 SETTABLEKS                       R17 R16 K25 ["AutomaticSize"]
      296 LOADN                            R17 5
      297 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      299 LOADK                            R17 K55 ["StatusTextLabel"]
      300 SETTABLEKS                       R17 R16 K23 ["Style"]
      302 GETIMPORT                        R17 K89 [Enum.TextXAlignment.Left]
      304 SETTABLEKS                       R17 R16 K83 ["TextXAlignment"]
      306 GETIMPORT                        R17 K90 [Enum.TextYAlignment.Top]
      308 SETTABLEKS                       R17 R16 K84 ["TextYAlignment"]
      310 CALL                             R14 2 1
      311 SETTABLEKS                       R14 R13 K55 ["StatusTextLabel"]
      313 CALL                             R10 3 -1
      314 RETURN                           R10 -1

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"ShouldSetEmulationDevice", "PluginState", "CurrentRecordingDurationSec"}]
        1 GETTABLEKS                       R4 R0 K4 ["playbackTab"]
        3 GETTABLEKS                       R3 R4 K5 ["shouldSetEmulationDevice"]
        5 SETTABLEKS                       R3 R2 K0 ["ShouldSetEmulationDevice"]
        7 GETTABLEKS                       R4 R0 K6 ["common"]
        9 GETTABLEKS                       R3 R4 K7 ["pluginState"]
       11 SETTABLEKS                       R3 R2 K1 ["PluginState"]
       13 GETTABLEKS                       R4 R0 K4 ["playbackTab"]
       15 GETTABLEKS                       R3 R4 K8 ["currentRecordingDurationSec"]
       17 SETTABLEKS                       R3 R2 K2 ["CurrentRecordingDurationSec"]
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"SetPluginState", "SetShouldSetEmulationDevice"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetPluginState"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetShouldSetEmulationDevice"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R3 K10 ["UI"]
       34 GETTABLEKS                       R6 R5 K11 ["Button"]
       36 GETTABLEKS                       R7 R5 K12 ["TextLabel"]
       38 GETTABLEKS                       R8 R5 K13 ["Pane"]
       40 GETTABLEKS                       R9 R5 K14 ["HoverArea"]
       42 GETTABLEKS                       R10 R5 K15 ["TimeProgressBar"]
       44 GETTABLEKS                       R11 R3 K16 ["Util"]
       46 GETTABLEKS                       R12 R11 K17 ["StyleModifier"]
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R16 R0 K18 ["Src"]
       52 GETTABLEKS                       R15 R16 K19 ["Components"]
       54 GETTABLEKS                       R14 R15 K20 ["LabeledToggleButton"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R17 R0 K18 ["Src"]
       61 GETTABLEKS                       R16 R17 K19 ["Components"]
       63 GETTABLEKS                       R15 R16 K21 ["RecordingFileSelector"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R18 R0 K18 ["Src"]
       70 GETTABLEKS                       R17 R18 K16 ["Util"]
       72 GETTABLEKS                       R16 R17 K22 ["Enums"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K4 [require]
       77 GETTABLEKS                       R19 R0 K18 ["Src"]
       79 GETTABLEKS                       R18 R19 K16 ["Util"]
       81 GETTABLEKS                       R17 R18 K23 ["DMBridge"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K4 [require]
       86 GETTABLEKS                       R21 R0 K18 ["Src"]
       88 GETTABLEKS                       R20 R21 K24 ["Actions"]
       90 GETTABLEKS                       R19 R20 K25 ["Common"]
       92 GETTABLEKS                       R18 R19 K26 ["SetPluginState"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K4 [require]
       97 GETTABLEKS                       R22 R0 K18 ["Src"]
       99 GETTABLEKS                       R21 R22 K24 ["Actions"]
      101 GETTABLEKS                       R20 R21 K27 ["PlaybackTab"]
      103 GETTABLEKS                       R19 R20 K28 ["SetShouldSetEmulationDevice"]
      105 CALL                             R18 1 1
      106 GETTABLEKS                       R19 R1 K29 ["PureComponent"]
      108 LOADK                            R21 K30 ["FileSelectorUIGroup"]
      109 NAMECALL                         R19 R19 K31 ["extend"]
      111 CALL                             R19 2 1
      112 DUPCLOSURE                       R20 K32 [PROTO_3]
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R16
      115 SETTABLEKS                       R20 R19 K33 ["init"]
      117 DUPCLOSURE                       R20 K34 [PROTO_4]
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R7
      128 SETTABLEKS                       R20 R19 K35 ["render"]
      130 GETTABLEKS                       R20 R4 K36 ["withContext"]
      132 DUPTABLE                         R21 K39 [{"Stylizer", "Localization"}]
      133 GETTABLEKS                       R22 R4 K37 ["Stylizer"]
      135 SETTABLEKS                       R22 R21 K37 ["Stylizer"]
      137 GETTABLEKS                       R22 R4 K38 ["Localization"]
      139 SETTABLEKS                       R22 R21 K38 ["Localization"]
      141 CALL                             R20 1 1
      142 MOVE                             R21 R19
      143 CALL                             R20 1 1
      144 MOVE                             R19 R20
      145 DUPCLOSURE                       R20 K40 [PROTO_5]
      146 DUPCLOSURE                       R21 K41 [PROTO_8]
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R18
      149 GETTABLEKS                       R22 R2 K42 ["connect"]
      151 MOVE                             R23 R20
      152 MOVE                             R24 R21
      153 CALL                             R22 2 1
      154 MOVE                             R23 R19
      155 CALL                             R22 1 -1
      156 RETURN                           R22 -1
