PROTO_0:
  JUMPIFEQKNIL R0 [+42]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R4 R3 K1 ["SetCurrentRecordingDurationSec"]
  MOVE R5 R1
  CALL R4 1 0
  GETTABLEKS R4 R3 K2 ["SetCurrentRecordingNumEvents"]
  MOVE R5 R2
  CALL R4 1 0
  GETTABLEKS R4 R3 K3 ["SetCurrentRecordingDeviceId"]
  GETTABLEKS R5 R0 K4 ["deviceId"]
  CALL R4 1 0
  GETTABLEKS R4 R3 K5 ["SetCurrentRecordingDeviceOrientation"]
  GETTABLEKS R5 R0 K6 ["orientation"]
  CALL R4 1 0
  GETTABLEKS R4 R0 K7 ["resolution"]
  GETIMPORT R5 K10 [Vector2.new]
  GETTABLEN R6 R4 1
  GETTABLEN R7 R4 2
  CALL R5 2 1
  GETTABLEKS R6 R3 K11 ["SetCurrentRecordingResolution"]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 0
  DUPTABLE R8 K13 [{"dataValid"}]
  LOADB R9 1
  SETTABLEKS R9 R8 K12 ["dataValid"]
  NAMECALL R6 R6 K14 ["setState"]
  CALL R6 2 0
  RETURN R0 0
  GETUPVAL R3 0
  DUPTABLE R5 K13 [{"dataValid"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K12 ["dataValid"]
  NAMECALL R3 R3 K14 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"dataValid"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["dataValid"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onPlaybackInfoChanged"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["connectPlaybackInfoChangedCallback"]
  GETTABLEKS R2 R0 K1 ["onPlaybackInfoChanged"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["disconnectPlaybackInfoChangedCallback"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["dataValid"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K2 ["props"]
  GETTABLEKS R2 R1 K3 ["Localization"]
  GETTABLEKS R3 R1 K4 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K15 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R7 R1 K6 ["LayoutOrder"]
  SETTABLEKS R7 R6 K6 ["LayoutOrder"]
  LOADK R7 K16 ["CornerBox"]
  SETTABLEKS R7 R6 K7 ["Style"]
  GETIMPORT R7 K19 [UDim2.fromOffset]
  GETTABLEKS R8 R3 K20 ["UIGroupWidthPx"]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K8 ["Size"]
  GETIMPORT R7 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K9 ["AutomaticSize"]
  GETIMPORT R7 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K10 ["Layout"]
  GETIMPORT R7 K29 [UDim.new]
  LOADN R8 0
  GETTABLEKS R9 R3 K30 ["PaddingPx"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K11 ["Spacing"]
  GETTABLEKS R7 R3 K30 ["PaddingPx"]
  SETTABLEKS R7 R6 K12 ["Padding"]
  GETIMPORT R7 K32 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K13 ["HorizontalAlignment"]
  GETIMPORT R7 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K14 ["VerticalAlignment"]
  DUPTABLE R7 K37 [{"Label", "KeyValuePairs"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K41 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
  LOADK R13 K42 ["PlaybackTabView"]
  LOADK R14 K43 ["RecordingInfoLabel"]
  NAMECALL R11 R2 K44 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K38 ["Text"]
  GETIMPORT R11 K46 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Size"]
  GETIMPORT R11 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K9 ["AutomaticSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  GETIMPORT R11 K48 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K39 ["TextXAlignment"]
  GETIMPORT R11 K49 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K40 ["TextYAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K35 ["Label"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K5 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K50 [{"Size", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R11 K46 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Size"]
  GETIMPORT R11 K23 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K9 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K6 ["LayoutOrder"]
  GETIMPORT R11 K26 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K10 ["Layout"]
  GETIMPORT R11 K51 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K13 ["HorizontalAlignment"]
  GETIMPORT R11 K34 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K14 ["VerticalAlignment"]
  DUPTABLE R11 K57 [{"RecordingDuration", "NumberOfEvents", "RecordingDeviceId", "RecordingOrientation", "RecordingResolution"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K59 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K42 ["PlaybackTabView"]
  LOADK R18 K52 ["RecordingDuration"]
  NAMECALL R15 R2 K44 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["Label"]
  GETIMPORT R18 K62 [string.format]
  LOADK R19 K63 ["%.2f "]
  GETTABLEKS R20 R1 K64 ["CurrentRecordingDurationSec"]
  CALL R18 2 1
  MOVE R16 R18
  LOADK R19 K42 ["PlaybackTabView"]
  LOADK R20 K65 ["SecondsUnitAbbrevation"]
  NAMECALL R17 R2 K44 ["getText"]
  CALL R17 3 1
  CONCAT R15 R16 R17
  SETTABLEKS R15 R14 K58 ["Value"]
  LOADN R15 1
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K52 ["RecordingDuration"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K59 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K42 ["PlaybackTabView"]
  LOADK R18 K66 ["RecordingNumberOfEvents"]
  NAMECALL R15 R2 K44 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["Label"]
  GETTABLEKS R16 R1 K67 ["CurrentRecordingNumEvents"]
  FASTCALL1 TOSTRING R16 [+2]
  GETIMPORT R15 K69 [tostring]
  CALL R15 1 1
  SETTABLEKS R15 R14 K58 ["Value"]
  LOADN R15 2
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K53 ["NumberOfEvents"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K59 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K42 ["PlaybackTabView"]
  LOADK R18 K70 ["RecordingDevice"]
  NAMECALL R15 R2 K44 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K71 ["formatDeviceName"]
  GETTABLEKS R16 R1 K72 ["CurrentRecordingDeviceId"]
  MOVE R17 R2
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["Value"]
  LOADN R15 3
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K54 ["RecordingDeviceId"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K59 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K42 ["PlaybackTabView"]
  LOADK R18 K55 ["RecordingOrientation"]
  NAMECALL R15 R2 K44 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K73 ["formatDeviceOrientation"]
  GETTABLEKS R16 R1 K74 ["CurrentRecordingDeviceOrientation"]
  GETTABLEKS R17 R1 K72 ["CurrentRecordingDeviceId"]
  MOVE R18 R2
  CALL R15 3 1
  SETTABLEKS R15 R14 K58 ["Value"]
  LOADN R15 4
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K55 ["RecordingOrientation"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K5 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K59 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K42 ["PlaybackTabView"]
  LOADK R18 K56 ["RecordingResolution"]
  NAMECALL R15 R2 K44 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K75 ["format2dResolution"]
  GETTABLEKS R16 R1 K76 ["CurrentRecordingResolution"]
  LOADK R19 K77 ["RecordTabView"]
  LOADK R20 K78 ["ResolutionPixelsName"]
  NAMECALL R17 R2 K44 ["getText"]
  CALL R17 3 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K58 ["Value"]
  LOADN R15 5
  SETTABLEKS R15 R14 K6 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K56 ["RecordingResolution"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K36 ["KeyValuePairs"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_5:
  DUPTABLE R2 K5 [{"CurrentRecordingDurationSec", "CurrentRecordingNumEvents", "CurrentRecordingDeviceId", "CurrentRecordingDeviceOrientation", "CurrentRecordingResolution"}]
  GETTABLEKS R4 R0 K6 ["playbackTab"]
  GETTABLEKS R3 R4 K7 ["currentRecordingDurationSec"]
  SETTABLEKS R3 R2 K0 ["CurrentRecordingDurationSec"]
  GETTABLEKS R4 R0 K6 ["playbackTab"]
  GETTABLEKS R3 R4 K8 ["currentRecordingNumEvents"]
  SETTABLEKS R3 R2 K1 ["CurrentRecordingNumEvents"]
  GETTABLEKS R4 R0 K6 ["playbackTab"]
  GETTABLEKS R3 R4 K9 ["currentRecordingDeviceId"]
  SETTABLEKS R3 R2 K2 ["CurrentRecordingDeviceId"]
  GETTABLEKS R4 R0 K6 ["playbackTab"]
  GETTABLEKS R3 R4 K10 ["currentRecordingDeviceOrientation"]
  SETTABLEKS R3 R2 K3 ["CurrentRecordingDeviceOrientation"]
  GETTABLEKS R4 R0 K6 ["playbackTab"]
  GETTABLEKS R3 R4 K11 ["currentRecordingResolution"]
  SETTABLEKS R3 R2 K4 ["CurrentRecordingResolution"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  DUPTABLE R1 K5 [{"SetCurrentRecordingDurationSec", "SetCurrentRecordingDeviceId", "SetCurrentRecordingNumEvents", "SetCurrentRecordingResolution", "SetCurrentRecordingDeviceOrientation"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetCurrentRecordingDurationSec"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetCurrentRecordingDeviceId"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetCurrentRecordingNumEvents"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["SetCurrentRecordingResolution"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["SetCurrentRecordingDeviceOrientation"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["TextLabel"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K15 ["UIKeyValueTextLabel"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K17 ["StringFormatters"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K16 ["Util"]
  GETTABLEKS R11 R12 K18 ["DMBridge"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K13 ["Src"]
  GETTABLEKS R12 R13 K19 ["Types"]
  CALL R11 1 1
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K20 ["Actions"]
  GETTABLEKS R12 R13 K21 ["PlaybackTab"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R12 K22 ["SetCurrentRecordingDurationSec"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R12 K23 ["SetCurrentRecordingNumEvents"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R12 K24 ["SetCurrentRecordingResolution"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R12 K25 ["SetCurrentRecordingDeviceId"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R12 K26 ["SetCurrentRecordingDeviceOrientation"]
  CALL R17 1 1
  GETTABLEKS R18 R1 K27 ["PureComponent"]
  LOADK R20 K28 ["PlaybackInfoUIGroup"]
  NAMECALL R18 R18 K29 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K30 [PROTO_1]
  SETTABLEKS R19 R18 K31 ["init"]
  DUPCLOSURE R19 K32 [PROTO_2]
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K33 ["didMount"]
  DUPCLOSURE R19 K34 [PROTO_3]
  CAPTURE VAL R10
  SETTABLEKS R19 R18 K35 ["willUnmount"]
  DUPCLOSURE R19 K36 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R19 R18 K37 ["render"]
  GETTABLEKS R19 R4 K38 ["withContext"]
  DUPTABLE R20 K41 [{"Stylizer", "Localization"}]
  GETTABLEKS R21 R4 K39 ["Stylizer"]
  SETTABLEKS R21 R20 K39 ["Stylizer"]
  GETTABLEKS R21 R4 K40 ["Localization"]
  SETTABLEKS R21 R20 K40 ["Localization"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  DUPCLOSURE R19 K42 [PROTO_5]
  DUPCLOSURE R20 K43 [PROTO_11]
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R17
  GETTABLEKS R21 R2 K44 ["connect"]
  MOVE R22 R19
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R18
  CALL R21 1 -1
  RETURN R21 -1
