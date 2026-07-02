PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+39]
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
       35 DUPTABLE                         R8 K14 [{["dataValid"] = True}]
       36 NAMECALL                         R6 R6 K15 ["setState"]
       38 CALL                             R6 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 0
       41 DUPTABLE                         R5 K17 [{["dataValid"] = False}]
       42 NAMECALL                         R3 R3 K15 ["setState"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onPlaybackInfoChanged"]
        7 RETURN                           R0 0

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
       17 DUPTABLE                         R6 K16 [{["LayoutOrder"], ["Style"] = "CornerBox", ["Size"], ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       18 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       20 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       22 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       24 GETTABLEKS                       R8 R3 K20 ["UIGroupWidthPx"]
       26 LOADN                            R9 0
       27 CALL                             R7 2 1
       28 SETTABLEKS                       R7 R6 K9 ["Size"]
       30 GETIMPORT                        R7 K23 [Enum.AutomaticSize.Y]
       32 SETTABLEKS                       R7 R6 K10 ["AutomaticSize"]
       34 GETIMPORT                        R7 K26 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R7 R6 K11 ["Layout"]
       38 GETIMPORT                        R7 K29 [UDim.new]
       40 LOADN                            R8 0
       41 GETTABLEKS                       R9 R3 K30 ["PaddingPx"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K12 ["Spacing"]
       46 GETTABLEKS                       R7 R3 K30 ["PaddingPx"]
       48 SETTABLEKS                       R7 R6 K13 ["Padding"]
       50 GETIMPORT                        R7 K32 [Enum.HorizontalAlignment.Center]
       52 SETTABLEKS                       R7 R6 K14 ["HorizontalAlignment"]
       54 GETIMPORT                        R7 K34 [Enum.VerticalAlignment.Top]
       56 SETTABLEKS                       R7 R6 K15 ["VerticalAlignment"]
       58 DUPTABLE                         R7 K37 [{"Label", "KeyValuePairs"}]
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K5 ["createElement"]
       62 GETUPVAL                         R9 2
       63 DUPTABLE                         R10 K42 [{["Text"], ["Size"], ["AutomaticSize"], ["LayoutOrder"] = 0, ["TextXAlignment"], ["TextYAlignment"]}]
       64 LOADK                            R13 K43 ["PlaybackTabView"]
       65 LOADK                            R14 K44 ["RecordingInfoLabel"]
       66 NAMECALL                         R11 R2 K45 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K38 ["Text"]
       71 GETIMPORT                        R11 K47 [UDim2.fromScale]
       73 LOADN                            R12 1
       74 LOADN                            R13 0
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K9 ["Size"]
       78 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
       80 SETTABLEKS                       R11 R10 K10 ["AutomaticSize"]
       82 GETIMPORT                        R11 K49 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R11 R10 K40 ["TextXAlignment"]
       86 GETIMPORT                        R11 K50 [Enum.TextYAlignment.Top]
       88 SETTABLEKS                       R11 R10 K41 ["TextYAlignment"]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K35 ["Label"]
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K5 ["createElement"]
       96 GETUPVAL                         R9 1
       97 DUPTABLE                         R10 K52 [{["Size"], ["AutomaticSize"], ["LayoutOrder"] = 1, ["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"]}]
       98 GETIMPORT                        R11 K47 [UDim2.fromScale]
      100 LOADN                            R12 1
      101 LOADN                            R13 0
      102 CALL                             R11 2 1
      103 SETTABLEKS                       R11 R10 K9 ["Size"]
      105 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
      107 SETTABLEKS                       R11 R10 K10 ["AutomaticSize"]
      109 GETIMPORT                        R11 K26 [Enum.FillDirection.Vertical]
      111 SETTABLEKS                       R11 R10 K11 ["Layout"]
      113 GETIMPORT                        R11 K53 [Enum.HorizontalAlignment.Left]
      115 SETTABLEKS                       R11 R10 K14 ["HorizontalAlignment"]
      117 GETIMPORT                        R11 K34 [Enum.VerticalAlignment.Top]
      119 SETTABLEKS                       R11 R10 K15 ["VerticalAlignment"]
      121 DUPTABLE                         R11 K59 [{"RecordingDuration", "NumberOfEvents", "RecordingDeviceId", "RecordingOrientation", "RecordingResolution"}]
      122 GETUPVAL                         R12 0
      123 GETTABLEKS                       R12 R12 K5 ["createElement"]
      125 GETUPVAL                         R13 3
      126 DUPTABLE                         R14 K61 [{["Label"], ["Value"], ["LayoutOrder"] = 1}]
      127 LOADK                            R17 K43 ["PlaybackTabView"]
      128 LOADK                            R18 K54 ["RecordingDuration"]
      129 NAMECALL                         R15 R2 K45 ["getText"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K35 ["Label"]
      134 GETIMPORT                        R18 K64 [string.format]
      136 LOADK                            R19 K65 ["%.2f "]
      137 GETTABLEKS                       R20 R1 K66 ["CurrentRecordingDurationSec"]
      139 CALL                             R18 2 1
      140 MOVE                             R16 R18
      141 LOADK                            R19 K43 ["PlaybackTabView"]
      142 LOADK                            R20 K67 ["SecondsUnitAbbrevation"]
      143 NAMECALL                         R17 R2 K45 ["getText"]
      145 CALL                             R17 3 1
      146 CONCAT                           R15 R16 R17
      147 SETTABLEKS                       R15 R14 K60 ["Value"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K54 ["RecordingDuration"]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K5 ["createElement"]
      155 GETUPVAL                         R13 3
      156 DUPTABLE                         R14 K69 [{["Label"], ["Value"], ["LayoutOrder"] = 2}]
      157 LOADK                            R17 K43 ["PlaybackTabView"]
      158 LOADK                            R18 K70 ["RecordingNumberOfEvents"]
      159 NAMECALL                         R15 R2 K45 ["getText"]
      161 CALL                             R15 3 1
      162 SETTABLEKS                       R15 R14 K35 ["Label"]
      164 GETTABLEKS                       R16 R1 K71 ["CurrentRecordingNumEvents"]
      166 FASTCALL1                        TOSTRING R16 ; [+2]
      167 GETIMPORT                        R15 K73 [tostring]
      169 CALL                             R15 1 1
      170 SETTABLEKS                       R15 R14 K60 ["Value"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K55 ["NumberOfEvents"]
      175 GETUPVAL                         R12 0
      176 GETTABLEKS                       R12 R12 K5 ["createElement"]
      178 GETUPVAL                         R13 3
      179 DUPTABLE                         R14 K75 [{["Label"], ["Value"], ["LayoutOrder"] = 3}]
      180 LOADK                            R17 K43 ["PlaybackTabView"]
      181 LOADK                            R18 K76 ["RecordingDevice"]
      182 NAMECALL                         R15 R2 K45 ["getText"]
      184 CALL                             R15 3 1
      185 SETTABLEKS                       R15 R14 K35 ["Label"]
      187 GETUPVAL                         R15 4
      188 GETTABLEKS                       R15 R15 K77 ["formatDeviceName"]
      190 GETTABLEKS                       R16 R1 K78 ["CurrentRecordingDeviceId"]
      192 MOVE                             R17 R2
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K60 ["Value"]
      196 CALL                             R12 2 1
      197 SETTABLEKS                       R12 R11 K56 ["RecordingDeviceId"]
      199 GETUPVAL                         R12 0
      200 GETTABLEKS                       R12 R12 K5 ["createElement"]
      202 GETUPVAL                         R13 3
      203 DUPTABLE                         R14 K80 [{["Label"], ["Value"], ["LayoutOrder"] = 4}]
      204 LOADK                            R17 K43 ["PlaybackTabView"]
      205 LOADK                            R18 K57 ["RecordingOrientation"]
      206 NAMECALL                         R15 R2 K45 ["getText"]
      208 CALL                             R15 3 1
      209 SETTABLEKS                       R15 R14 K35 ["Label"]
      211 GETUPVAL                         R15 4
      212 GETTABLEKS                       R15 R15 K81 ["formatDeviceOrientation"]
      214 GETTABLEKS                       R16 R1 K82 ["CurrentRecordingDeviceOrientation"]
      216 GETTABLEKS                       R17 R1 K78 ["CurrentRecordingDeviceId"]
      218 MOVE                             R18 R2
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K60 ["Value"]
      222 CALL                             R12 2 1
      223 SETTABLEKS                       R12 R11 K57 ["RecordingOrientation"]
      225 GETUPVAL                         R12 0
      226 GETTABLEKS                       R12 R12 K5 ["createElement"]
      228 GETUPVAL                         R13 3
      229 DUPTABLE                         R14 K84 [{["Label"], ["Value"], ["LayoutOrder"] = 5}]
      230 LOADK                            R17 K43 ["PlaybackTabView"]
      231 LOADK                            R18 K58 ["RecordingResolution"]
      232 NAMECALL                         R15 R2 K45 ["getText"]
      234 CALL                             R15 3 1
      235 SETTABLEKS                       R15 R14 K35 ["Label"]
      237 GETUPVAL                         R15 4
      238 GETTABLEKS                       R15 R15 K85 ["format2dResolution"]
      240 GETTABLEKS                       R16 R1 K86 ["CurrentRecordingResolution"]
      242 LOADK                            R19 K87 ["RecordTabView"]
      243 LOADK                            R20 K88 ["ResolutionPixelsName"]
      244 NAMECALL                         R17 R2 K45 ["getText"]
      246 CALL                             R17 3 -1
      247 CALL                             R15 -1 1
      248 SETTABLEKS                       R15 R14 K60 ["Value"]
      250 CALL                             R12 2 1
      251 SETTABLEKS                       R12 R11 K58 ["RecordingResolution"]
      253 CALL                             R8 3 1
      254 SETTABLEKS                       R8 R7 K36 ["KeyValuePairs"]
      256 CALL                             R4 3 -1
      257 RETURN                           R4 -1

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
