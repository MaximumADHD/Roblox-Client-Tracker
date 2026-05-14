PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+42]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["props"]
        5 GETTABLEKS                       R4 R3 K1 ["SetCurrentRecordingDurationSec"]
        7 MOVE                             R5 R1
        8 CALL                             R4 1 0
        9 GETTABLEKS                       R4 R3 K2 ["SetCurrentRecordingNumEvents"]
       11 MOVE                             R5 R2
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R3 K3 ["SetCurrentRecordingDeviceId"]
       15 GETTABLEKS                       R5 R0 K4 ["deviceId"]
       17 CALL                             R4 1 0
       18 GETTABLEKS                       R4 R3 K5 ["SetCurrentRecordingDeviceOrientation"]
       20 GETTABLEKS                       R5 R0 K6 ["orientation"]
       22 CALL                             R4 1 0
       23 GETTABLEKS                       R4 R0 K7 ["resolution"]
       25 GETIMPORT                        R5 K10 [Vector2.new]
       27 GETTABLEN                        R6 R4 1
       28 GETTABLEN                        R7 R4 2
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R6 R3 K11 ["SetCurrentRecordingResolution"]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 0
       34 GETUPVAL                         R6 0
       35 DUPTABLE                         R8 K13 [{"dataValid"}]
       36 LOADB                            R9 1
       37 SETTABLEKS                       R9 R8 K12 ["dataValid"]
       39 NAMECALL                         R6 R6 K14 ["setState"]
       41 CALL                             R6 2 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 0
       44 DUPTABLE                         R5 K13 [{"dataValid"}]
       45 LOADB                            R6 0
       46 SETTABLEKS                       R6 R5 K12 ["dataValid"]
       48 NAMECALL                         R3 R3 K14 ["setState"]
       50 CALL                             R3 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"dataValid"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["dataValid"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onPlaybackInfoChanged"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectPlaybackInfoChangedCallback"]
        3 GETTABLEKS                       R2 R0 K1 ["onPlaybackInfoChanged"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["disconnectPlaybackInfoChangedCallback"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["dataValid"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K2 ["props"]
        9 GETTABLEKS                       R2 R1 K3 ["Localization"]
       11 GETTABLEKS                       R3 R1 K4 ["Stylizer"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K5 ["createElement"]
       16 GETUPVAL                         R5 1
       17 DUPTABLE                         R6 K15 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
       18 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       20 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       22 LOADK                            R7 K16 ["CornerBox"]
       23 SETTABLEKS                       R7 R6 K7 ["Style"]
       25 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       27 GETTABLEKS                       R8 R3 K20 ["UIGroupWidthPx"]
       29 LOADN                            R9 0
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K8 ["Size"]
       33 GETIMPORT                        R7 K23 [Enum.AutomaticSize.Y]
       35 SETTABLEKS                       R7 R6 K9 ["AutomaticSize"]
       37 GETIMPORT                        R7 K26 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R7 R6 K10 ["Layout"]
       41 GETIMPORT                        R7 K29 [UDim.new]
       43 LOADN                            R8 0
       44 GETTABLEKS                       R9 R3 K30 ["PaddingPx"]
       46 CALL                             R7 2 1
       47 SETTABLEKS                       R7 R6 K11 ["Spacing"]
       49 GETTABLEKS                       R7 R3 K30 ["PaddingPx"]
       51 SETTABLEKS                       R7 R6 K12 ["Padding"]
       53 GETIMPORT                        R7 K32 [Enum.HorizontalAlignment.Center]
       55 SETTABLEKS                       R7 R6 K13 ["HorizontalAlignment"]
       57 GETIMPORT                        R7 K34 [Enum.VerticalAlignment.Top]
       59 SETTABLEKS                       R7 R6 K14 ["VerticalAlignment"]
       61 DUPTABLE                         R7 K37 [{"Label", "KeyValuePairs"}]
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K5 ["createElement"]
       65 GETUPVAL                         R9 2
       66 DUPTABLE                         R10 K41 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
       67 LOADK                            R13 K42 ["PlaybackTabView"]
       68 LOADK                            R14 K43 ["RecordingInfoLabel"]
       69 NAMECALL                         R11 R2 K44 ["getText"]
       71 CALL                             R11 3 1
       72 SETTABLEKS                       R11 R10 K38 ["Text"]
       74 GETIMPORT                        R11 K46 [UDim2.fromScale]
       76 LOADN                            R12 1
       77 LOADN                            R13 0
       78 CALL                             R11 2 1
       79 SETTABLEKS                       R11 R10 K8 ["Size"]
       81 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
       83 SETTABLEKS                       R11 R10 K9 ["AutomaticSize"]
       85 LOADN                            R11 0
       86 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       88 GETIMPORT                        R11 K48 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R11 R10 K39 ["TextXAlignment"]
       92 GETIMPORT                        R11 K49 [Enum.TextYAlignment.Top]
       94 SETTABLEKS                       R11 R10 K40 ["TextYAlignment"]
       96 CALL                             R8 2 1
       97 SETTABLEKS                       R8 R7 K35 ["Label"]
       99 GETUPVAL                         R8 0
      100 GETTABLEKS                       R8 R8 K5 ["createElement"]
      102 GETUPVAL                         R9 1
      103 DUPTABLE                         R10 K50 [{"Size", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
      104 GETIMPORT                        R11 K46 [UDim2.fromScale]
      106 LOADN                            R12 1
      107 LOADN                            R13 0
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K8 ["Size"]
      111 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R11 R10 K9 ["AutomaticSize"]
      115 LOADN                            R11 1
      116 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
      118 GETIMPORT                        R11 K26 [Enum.FillDirection.Vertical]
      120 SETTABLEKS                       R11 R10 K10 ["Layout"]
      122 GETIMPORT                        R11 K51 [Enum.HorizontalAlignment.Left]
      124 SETTABLEKS                       R11 R10 K13 ["HorizontalAlignment"]
      126 GETIMPORT                        R11 K34 [Enum.VerticalAlignment.Top]
      128 SETTABLEKS                       R11 R10 K14 ["VerticalAlignment"]
      130 DUPTABLE                         R11 K57 [{"RecordingDuration", "NumberOfEvents", "RecordingDeviceId", "RecordingOrientation", "RecordingResolution"}]
      131 GETUPVAL                         R12 0
      132 GETTABLEKS                       R12 R12 K5 ["createElement"]
      134 GETUPVAL                         R13 3
      135 DUPTABLE                         R14 K59 [{"Label", "Value", "LayoutOrder"}]
      136 LOADK                            R17 K42 ["PlaybackTabView"]
      137 LOADK                            R18 K52 ["RecordingDuration"]
      138 NAMECALL                         R15 R2 K44 ["getText"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K35 ["Label"]
      143 GETIMPORT                        R18 K62 [string.format]
      145 LOADK                            R19 K63 ["%.2f "]
      146 GETTABLEKS                       R20 R1 K64 ["CurrentRecordingDurationSec"]
      148 CALL                             R18 2 1
      149 MOVE                             R16 R18
      150 LOADK                            R19 K42 ["PlaybackTabView"]
      151 LOADK                            R20 K65 ["SecondsUnitAbbrevation"]
      152 NAMECALL                         R17 R2 K44 ["getText"]
      154 CALL                             R17 3 1
      155 CONCAT                           R15 R16 R17
      156 SETTABLEKS                       R15 R14 K58 ["Value"]
      158 LOADN                            R15 1
      159 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      161 CALL                             R12 2 1
      162 SETTABLEKS                       R12 R11 K52 ["RecordingDuration"]
      164 GETUPVAL                         R12 0
      165 GETTABLEKS                       R12 R12 K5 ["createElement"]
      167 GETUPVAL                         R13 3
      168 DUPTABLE                         R14 K59 [{"Label", "Value", "LayoutOrder"}]
      169 LOADK                            R17 K42 ["PlaybackTabView"]
      170 LOADK                            R18 K66 ["RecordingNumberOfEvents"]
      171 NAMECALL                         R15 R2 K44 ["getText"]
      173 CALL                             R15 3 1
      174 SETTABLEKS                       R15 R14 K35 ["Label"]
      176 GETTABLEKS                       R16 R1 K67 ["CurrentRecordingNumEvents"]
      178 FASTCALL1                        TOSTRING R16 ; [+2]
      179 GETIMPORT                        R15 K69 [tostring]
      181 CALL                             R15 1 1
      182 SETTABLEKS                       R15 R14 K58 ["Value"]
      184 LOADN                            R15 2
      185 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      187 CALL                             R12 2 1
      188 SETTABLEKS                       R12 R11 K53 ["NumberOfEvents"]
      190 GETUPVAL                         R12 0
      191 GETTABLEKS                       R12 R12 K5 ["createElement"]
      193 GETUPVAL                         R13 3
      194 DUPTABLE                         R14 K59 [{"Label", "Value", "LayoutOrder"}]
      195 LOADK                            R17 K42 ["PlaybackTabView"]
      196 LOADK                            R18 K70 ["RecordingDevice"]
      197 NAMECALL                         R15 R2 K44 ["getText"]
      199 CALL                             R15 3 1
      200 SETTABLEKS                       R15 R14 K35 ["Label"]
      202 GETUPVAL                         R15 4
      203 GETTABLEKS                       R15 R15 K71 ["formatDeviceName"]
      205 GETTABLEKS                       R16 R1 K72 ["CurrentRecordingDeviceId"]
      207 MOVE                             R17 R2
      208 CALL                             R15 2 1
      209 SETTABLEKS                       R15 R14 K58 ["Value"]
      211 LOADN                            R15 3
      212 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K54 ["RecordingDeviceId"]
      217 GETUPVAL                         R12 0
      218 GETTABLEKS                       R12 R12 K5 ["createElement"]
      220 GETUPVAL                         R13 3
      221 DUPTABLE                         R14 K59 [{"Label", "Value", "LayoutOrder"}]
      222 LOADK                            R17 K42 ["PlaybackTabView"]
      223 LOADK                            R18 K55 ["RecordingOrientation"]
      224 NAMECALL                         R15 R2 K44 ["getText"]
      226 CALL                             R15 3 1
      227 SETTABLEKS                       R15 R14 K35 ["Label"]
      229 GETUPVAL                         R15 4
      230 GETTABLEKS                       R15 R15 K73 ["formatDeviceOrientation"]
      232 GETTABLEKS                       R16 R1 K74 ["CurrentRecordingDeviceOrientation"]
      234 GETTABLEKS                       R17 R1 K72 ["CurrentRecordingDeviceId"]
      236 MOVE                             R18 R2
      237 CALL                             R15 3 1
      238 SETTABLEKS                       R15 R14 K58 ["Value"]
      240 LOADN                            R15 4
      241 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      243 CALL                             R12 2 1
      244 SETTABLEKS                       R12 R11 K55 ["RecordingOrientation"]
      246 GETUPVAL                         R12 0
      247 GETTABLEKS                       R12 R12 K5 ["createElement"]
      249 GETUPVAL                         R13 3
      250 DUPTABLE                         R14 K59 [{"Label", "Value", "LayoutOrder"}]
      251 LOADK                            R17 K42 ["PlaybackTabView"]
      252 LOADK                            R18 K56 ["RecordingResolution"]
      253 NAMECALL                         R15 R2 K44 ["getText"]
      255 CALL                             R15 3 1
      256 SETTABLEKS                       R15 R14 K35 ["Label"]
      258 GETUPVAL                         R15 4
      259 GETTABLEKS                       R15 R15 K75 ["format2dResolution"]
      261 GETTABLEKS                       R16 R1 K76 ["CurrentRecordingResolution"]
      263 LOADK                            R19 K77 ["RecordTabView"]
      264 LOADK                            R20 K78 ["ResolutionPixelsName"]
      265 NAMECALL                         R17 R2 K44 ["getText"]
      267 CALL                             R17 3 -1
      268 CALL                             R15 -1 1
      269 SETTABLEKS                       R15 R14 K58 ["Value"]
      271 LOADN                            R15 5
      272 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      274 CALL                             R12 2 1
      275 SETTABLEKS                       R12 R11 K56 ["RecordingResolution"]
      277 CALL                             R8 3 1
      278 SETTABLEKS                       R8 R7 K36 ["KeyValuePairs"]
      280 CALL                             R4 3 -1
      281 RETURN                           R4 -1

PROTO_5:
        0 DUPTABLE                         R2 K5 [{"CurrentRecordingDurationSec", "CurrentRecordingNumEvents", "CurrentRecordingDeviceId", "CurrentRecordingDeviceOrientation", "CurrentRecordingResolution"}]
        1 GETTABLEKS                       R3 R0 K6 ["playbackTab"]
        3 GETTABLEKS                       R3 R3 K7 ["currentRecordingDurationSec"]
        5 SETTABLEKS                       R3 R2 K0 ["CurrentRecordingDurationSec"]
        7 GETTABLEKS                       R3 R0 K6 ["playbackTab"]
        9 GETTABLEKS                       R3 R3 K8 ["currentRecordingNumEvents"]
       11 SETTABLEKS                       R3 R2 K1 ["CurrentRecordingNumEvents"]
       13 GETTABLEKS                       R3 R0 K6 ["playbackTab"]
       15 GETTABLEKS                       R3 R3 K9 ["currentRecordingDeviceId"]
       17 SETTABLEKS                       R3 R2 K2 ["CurrentRecordingDeviceId"]
       19 GETTABLEKS                       R3 R0 K6 ["playbackTab"]
       21 GETTABLEKS                       R3 R3 K10 ["currentRecordingDeviceOrientation"]
       23 SETTABLEKS                       R3 R2 K3 ["CurrentRecordingDeviceOrientation"]
       25 GETTABLEKS                       R3 R0 K6 ["playbackTab"]
       27 GETTABLEKS                       R3 R3 K11 ["currentRecordingResolution"]
       29 SETTABLEKS                       R3 R2 K4 ["CurrentRecordingResolution"]
       31 RETURN                           R2 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K5 [{"SetCurrentRecordingDurationSec", "SetCurrentRecordingDeviceId", "SetCurrentRecordingNumEvents", "SetCurrentRecordingResolution", "SetCurrentRecordingDeviceOrientation"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetCurrentRecordingDurationSec"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetCurrentRecordingDeviceId"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetCurrentRecordingNumEvents"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetCurrentRecordingResolution"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["SetCurrentRecordingDeviceOrientation"]
       26 RETURN                           R1 1

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
       34 GETTABLEKS                       R6 R5 K11 ["TextLabel"]
       36 GETTABLEKS                       R7 R5 K12 ["Pane"]
       38 GETIMPORT                        R8 K4 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Components"]
       44 GETTABLEKS                       R9 R9 K15 ["UIKeyValueTextLabel"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K4 [require]
       49 GETTABLEKS                       R10 R0 K13 ["Src"]
       51 GETTABLEKS                       R10 R10 K16 ["Util"]
       53 GETTABLEKS                       R10 R10 K17 ["StringFormatters"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K4 [require]
       58 GETTABLEKS                       R11 R0 K13 ["Src"]
       60 GETTABLEKS                       R11 R11 K16 ["Util"]
       62 GETTABLEKS                       R11 R11 K18 ["DMBridge"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R12 R0 K13 ["Src"]
       69 GETTABLEKS                       R12 R12 K19 ["Types"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R0 K13 ["Src"]
       74 GETTABLEKS                       R12 R12 K20 ["Actions"]
       76 GETTABLEKS                       R12 R12 K21 ["PlaybackTab"]
       78 GETIMPORT                        R13 K4 [require]
       80 GETTABLEKS                       R14 R12 K22 ["SetCurrentRecordingDurationSec"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K4 [require]
       85 GETTABLEKS                       R15 R12 K23 ["SetCurrentRecordingNumEvents"]
       87 CALL                             R14 1 1
       88 GETIMPORT                        R15 K4 [require]
       90 GETTABLEKS                       R16 R12 K24 ["SetCurrentRecordingResolution"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETTABLEKS                       R17 R12 K25 ["SetCurrentRecordingDeviceId"]
       97 CALL                             R16 1 1
       98 GETIMPORT                        R17 K4 [require]
      100 GETTABLEKS                       R18 R12 K26 ["SetCurrentRecordingDeviceOrientation"]
      102 CALL                             R17 1 1
      103 GETTABLEKS                       R18 R1 K27 ["PureComponent"]
      105 LOADK                            R20 K28 ["PlaybackInfoUIGroup"]
      106 NAMECALL                         R18 R18 K29 ["extend"]
      108 CALL                             R18 2 1
      109 DUPCLOSURE                       R19 K30 [PROTO_1]
      110 SETTABLEKS                       R19 R18 K31 ["init"]
      112 DUPCLOSURE                       R19 K32 [PROTO_2]
      113 CAPTURE                          VAL R10
      114 SETTABLEKS                       R19 R18 K33 ["didMount"]
      116 DUPCLOSURE                       R19 K34 [PROTO_3]
      117 CAPTURE                          VAL R10
      118 SETTABLEKS                       R19 R18 K35 ["willUnmount"]
      120 DUPCLOSURE                       R19 K36 [PROTO_4]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R9
      126 SETTABLEKS                       R19 R18 K37 ["render"]
      128 GETTABLEKS                       R19 R4 K38 ["withContext"]
      130 DUPTABLE                         R20 K41 [{"Stylizer", "Localization"}]
      131 GETTABLEKS                       R21 R4 K39 ["Stylizer"]
      133 SETTABLEKS                       R21 R20 K39 ["Stylizer"]
      135 GETTABLEKS                       R21 R4 K40 ["Localization"]
      137 SETTABLEKS                       R21 R20 K40 ["Localization"]
      139 CALL                             R19 1 1
      140 MOVE                             R20 R18
      141 CALL                             R19 1 1
      142 MOVE                             R18 R19
      143 DUPCLOSURE                       R19 K42 [PROTO_5]
      144 DUPCLOSURE                       R20 K43 [PROTO_11]
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R17
      150 GETTABLEKS                       R21 R2 K44 ["connect"]
      152 MOVE                             R22 R19
      153 MOVE                             R23 R20
      154 CALL                             R21 2 1
      155 MOVE                             R22 R18
      156 CALL                             R21 1 -1
      157 RETURN                           R21 -1
