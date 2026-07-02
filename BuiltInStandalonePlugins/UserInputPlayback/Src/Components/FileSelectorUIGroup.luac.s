PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["SetShouldSetEmulationDevice"]
        5 GETTABLEKS                       R3 R0 K2 ["ShouldSetEmulationDevice"]
        7 NOT                              R2 R3
        8 GETTABLEKS                       R3 R0 K3 ["RoduxStoreContext"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginState"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["PluginState"]
        8 GETTABLEKS                       R1 R1 K2 ["Default"]
       10 JUMPIFNOTEQ                      R0 R1 ; [+29]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["state"]
       15 GETTABLEKS                       R1 R1 K4 ["canStartPlaying"]
       17 JUMPIFNOT                        R1 ; [+22]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K5 ["getIsPlayMode"]
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K6 ["onStartPlaybackButtonClicked"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["props"]
       31 GETTABLEKS                       R1 R1 K7 ["SetPluginState"]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K1 ["PluginState"]
       36 GETTABLEKS                       R2 R2 K8 ["ShouldStartPlayback"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R1 R1 K1 ["PluginState"]
       43 GETTABLEKS                       R1 R1 K9 ["Playing"]
       45 JUMPIFNOTEQ                      R0 R1 ; [+6]
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K10 ["onStopPlaybackButtonClicked"]
       50 CALL                             R1 0 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K1 ["PluginState"]
       55 GETTABLEKS                       R1 R1 K8 ["ShouldStartPlayback"]
       57 JUMPIFNOTEQ                      R0 R1 ; [+12]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K0 ["props"]
       62 GETTABLEKS                       R1 R1 K7 ["SetPluginState"]
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K1 ["PluginState"]
       67 GETTABLEKS                       R2 R2 K2 ["Default"]
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
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["toggleEmulationEnabled"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R1 R0 K5 ["onPlayButtonClicked"]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K6 ["onCanStartPlaying"]
       17 RETURN                           R0 0

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
       15 GETUPVAL                         R11 0
       16 GETTABLEKS                       R11 R11 K4 ["PluginState"]
       18 GETTABLEKS                       R11 R11 K5 ["Playing"]
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
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K4 ["PluginState"]
       45 GETTABLEKS                       R11 R11 K11 ["ShouldStartPlayback"]
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
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R11 R11 K4 ["PluginState"]
       71 GETTABLEKS                       R11 R11 K15 ["Default"]
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
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K4 ["PluginState"]
      102 GETTABLEKS                       R11 R11 K19 ["Disabled"]
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
      122 GETUPVAL                         R10 2
      123 GETTABLEKS                       R10 R10 K21 ["createElement"]
      125 GETUPVAL                         R11 3
      126 DUPTABLE                         R12 K32 [{["LayoutOrder"], ["Style"] = "CornerBox", ["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
      127 GETTABLEKS                       R13 R1 K22 ["LayoutOrder"]
      129 SETTABLEKS                       R13 R12 K22 ["LayoutOrder"]
      131 GETIMPORT                        R13 K35 [UDim2.fromOffset]
      133 GETTABLEKS                       R14 R4 K36 ["UIGroupWidthPx"]
      135 LOADN                            R15 0
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K25 ["Size"]
      139 GETIMPORT                        R13 K39 [Enum.AutomaticSize.Y]
      141 SETTABLEKS                       R13 R12 K26 ["AutomaticSize"]
      143 GETIMPORT                        R13 K42 [Enum.FillDirection.Vertical]
      145 SETTABLEKS                       R13 R12 K27 ["Layout"]
      147 GETIMPORT                        R13 K45 [UDim.new]
      149 LOADN                            R14 0
      150 GETTABLEKS                       R15 R4 K46 ["PaddingPx"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K28 ["Spacing"]
      155 GETTABLEKS                       R13 R4 K46 ["PaddingPx"]
      157 SETTABLEKS                       R13 R12 K29 ["Padding"]
      159 GETIMPORT                        R13 K48 [Enum.HorizontalAlignment.Center]
      161 SETTABLEKS                       R13 R12 K30 ["HorizontalAlignment"]
      163 GETIMPORT                        R13 K50 [Enum.VerticalAlignment.Top]
      165 SETTABLEKS                       R13 R12 K31 ["VerticalAlignment"]
      167 DUPTABLE                         R13 K56 [{"RecordingFileSelector", "LoadingBar", "Button", "EmulationEnabled", "StatusTextLabel"}]
      168 GETUPVAL                         R14 2
      169 GETTABLEKS                       R14 R14 K21 ["createElement"]
      171 GETUPVAL                         R15 4
      172 DUPTABLE                         R16 K58 [{"OnCanStartPlaying"}]
      173 GETTABLEKS                       R17 R0 K59 ["onCanStartPlaying"]
      175 SETTABLEKS                       R17 R16 K57 ["OnCanStartPlaying"]
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R13 K51 ["RecordingFileSelector"]
      180 MOVE                             R14 R8
      181 JUMPIFNOT                        R14 ; [+14]
      182 GETUPVAL                         R14 2
      183 GETTABLEKS                       R14 R14 K21 ["createElement"]
      185 GETUPVAL                         R15 5
      186 DUPTABLE                         R16 K63 [{["Width"], ["LayoutOrder"] = 2, ["TotalTime"]}]
      187 GETTABLEKS                       R17 R4 K64 ["ProgressBarWidth"]
      189 SETTABLEKS                       R17 R16 K60 ["Width"]
      191 GETTABLEKS                       R17 R1 K65 ["CurrentRecordingDurationSec"]
      193 SETTABLEKS                       R17 R16 K62 ["TotalTime"]
      195 CALL                             R14 2 1
      196 SETTABLEKS                       R14 R13 K52 ["LoadingBar"]
      198 GETUPVAL                         R14 2
      199 GETTABLEKS                       R14 R14 K21 ["createElement"]
      201 GETUPVAL                         R15 6
      202 DUPTABLE                         R16 K72 [{["Size"], ["LayoutOrder"] = 3, ["AnchorPoint"], ["Style"] = "RoundPrimaryPlayButton", ["StyleModifier"], ["Text"], ["OnClick"]}]
      203 GETTABLEKS                       R17 R4 K73 ["PrimaryButtonSize"]
      205 SETTABLEKS                       R17 R16 K25 ["Size"]
      207 GETIMPORT                        R17 K75 [Vector2.new]
      209 LOADK                            R18 K76 [0.5]
      210 LOADN                            R19 0
      211 CALL                             R17 2 1
      212 SETTABLEKS                       R17 R16 K67 ["AnchorPoint"]
      214 SETTABLEKS                       R7 R16 K69 ["StyleModifier"]
      216 SETTABLEKS                       R6 R16 K70 ["Text"]
      218 GETTABLEKS                       R17 R0 K77 ["onPlayButtonClicked"]
      220 SETTABLEKS                       R17 R16 K71 ["OnClick"]
      222 NEWTABLE                         R17 0 1
      224 GETUPVAL                         R18 2
      225 GETTABLEKS                       R18 R18 K21 ["createElement"]
      227 GETUPVAL                         R19 7
      228 DUPTABLE                         R20 K80 [{["Cursor"] = "PointingHand"}]
      229 CALL                             R18 2 -1
      230 SETLIST                          R17 R18 -1 [1]
      232 CALL                             R14 3 1
      233 SETTABLEKS                       R14 R13 K53 ["Button"]
      235 GETUPVAL                         R14 2
      236 GETTABLEKS                       R14 R14 K21 ["createElement"]
      238 GETUPVAL                         R15 8
      239 DUPTABLE                         R16 K82 [{["Selected"], ["OnClick"], ["Text"], ["Disabled"], ["LayoutOrder"] = 4}]
      240 GETTABLEKS                       R17 R1 K83 ["ShouldSetEmulationDevice"]
      242 SETTABLEKS                       R17 R16 K14 ["Selected"]
      244 GETTABLEKS                       R17 R0 K84 ["toggleEmulationEnabled"]
      246 SETTABLEKS                       R17 R16 K71 ["OnClick"]
      248 LOADK                            R19 K6 ["PlaybackTabView"]
      249 LOADK                            R20 K85 ["SetEmulationDeviceLabel"]
      250 NAMECALL                         R17 R3 K8 ["getText"]
      252 CALL                             R17 3 1
      253 SETTABLEKS                       R17 R16 K70 ["Text"]
      255 SETTABLEKS                       R9 R16 K19 ["Disabled"]
      257 CALL                             R14 2 1
      258 SETTABLEKS                       R14 R13 K54 ["EmulationEnabled"]
      260 GETUPVAL                         R14 2
      261 GETTABLEKS                       R14 R14 K21 ["createElement"]
      263 GETUPVAL                         R15 9
      264 DUPTABLE                         R16 K89 [{["Text"], ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 5, ["Style"] = "StatusTextLabel", ["TextXAlignment"], ["TextYAlignment"]}]
      265 SETTABLEKS                       R5 R16 K70 ["Text"]
      267 GETIMPORT                        R17 K91 [UDim2.fromScale]
      269 LOADN                            R18 1
      270 LOADN                            R19 0
      271 CALL                             R17 2 1
      272 SETTABLEKS                       R17 R16 K25 ["Size"]
      274 GETIMPORT                        R17 K39 [Enum.AutomaticSize.Y]
      276 SETTABLEKS                       R17 R16 K26 ["AutomaticSize"]
      278 GETIMPORT                        R17 K93 [Enum.TextXAlignment.Left]
      280 SETTABLEKS                       R17 R16 K87 ["TextXAlignment"]
      282 GETIMPORT                        R17 K94 [Enum.TextYAlignment.Top]
      284 SETTABLEKS                       R17 R16 K88 ["TextYAlignment"]
      286 CALL                             R14 2 1
      287 SETTABLEKS                       R14 R13 K55 ["StatusTextLabel"]
      289 CALL                             R10 3 -1
      290 RETURN                           R10 -1

PROTO_5:
        0 DUPTABLE                         R2 K3 [{"ShouldSetEmulationDevice", "PluginState", "CurrentRecordingDurationSec"}]
        1 GETTABLEKS                       R3 R0 K4 ["playbackTab"]
        3 GETTABLEKS                       R3 R3 K5 ["shouldSetEmulationDevice"]
        5 SETTABLEKS                       R3 R2 K0 ["ShouldSetEmulationDevice"]
        7 GETTABLEKS                       R3 R0 K6 ["common"]
        9 GETTABLEKS                       R3 R3 K7 ["pluginState"]
       11 SETTABLEKS                       R3 R2 K1 ["PluginState"]
       13 GETTABLEKS                       R3 R0 K4 ["playbackTab"]
       15 GETTABLEKS                       R3 R3 K8 ["currentRecordingDurationSec"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
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
       50 GETTABLEKS                       R14 R0 K18 ["Src"]
       52 GETTABLEKS                       R14 R14 K19 ["Components"]
       54 GETTABLEKS                       R14 R14 K20 ["LabeledToggleButton"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R15 R0 K18 ["Src"]
       61 GETTABLEKS                       R15 R15 K19 ["Components"]
       63 GETTABLEKS                       R15 R15 K21 ["RecordingFileSelector"]
       65 CALL                             R14 1 1
       66 GETIMPORT                        R15 K4 [require]
       68 GETTABLEKS                       R16 R0 K18 ["Src"]
       70 GETTABLEKS                       R16 R16 K16 ["Util"]
       72 GETTABLEKS                       R16 R16 K22 ["Enums"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K4 [require]
       77 GETTABLEKS                       R17 R0 K18 ["Src"]
       79 GETTABLEKS                       R17 R17 K16 ["Util"]
       81 GETTABLEKS                       R17 R17 K23 ["DMBridge"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K4 [require]
       86 GETTABLEKS                       R18 R0 K18 ["Src"]
       88 GETTABLEKS                       R18 R18 K24 ["Actions"]
       90 GETTABLEKS                       R18 R18 K25 ["Common"]
       92 GETTABLEKS                       R18 R18 K26 ["SetPluginState"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K4 [require]
       97 GETTABLEKS                       R19 R0 K18 ["Src"]
       99 GETTABLEKS                       R19 R19 K24 ["Actions"]
      101 GETTABLEKS                       R19 R19 K27 ["PlaybackTab"]
      103 GETTABLEKS                       R19 R19 K28 ["SetShouldSetEmulationDevice"]
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
