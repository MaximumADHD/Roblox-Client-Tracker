PROTO_0:
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K13 [{"LayoutOrder", "Style", "Size", "AutomaticSize", "Layout", "Spacing", "Padding", "HorizontalAlignment", "VerticalAlignment"}]
  GETTABLEKS R7 R1 K4 ["LayoutOrder"]
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  LOADK R7 K14 ["CornerBox"]
  SETTABLEKS R7 R6 K5 ["Style"]
  GETIMPORT R7 K17 [UDim2.fromOffset]
  GETTABLEKS R8 R3 K18 ["UIGroupWidthPx"]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Size"]
  GETIMPORT R7 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K7 ["AutomaticSize"]
  GETIMPORT R7 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K8 ["Layout"]
  GETIMPORT R7 K27 [UDim.new]
  LOADN R8 0
  GETTABLEKS R9 R3 K28 ["PaddingPx"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K9 ["Spacing"]
  GETTABLEKS R7 R3 K28 ["PaddingPx"]
  SETTABLEKS R7 R6 K10 ["Padding"]
  GETIMPORT R7 K30 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R7 R6 K11 ["HorizontalAlignment"]
  GETIMPORT R7 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K12 ["VerticalAlignment"]
  DUPTABLE R7 K35 [{"Label", "KeyValuePairs"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K39 [{"Text", "Size", "AutomaticSize", "LayoutOrder", "TextXAlignment", "TextYAlignment"}]
  LOADK R13 K40 ["RecordTabView"]
  LOADK R14 K41 ["CurrentRecordingDeviceLabel"]
  NAMECALL R11 R2 K42 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K36 ["Text"]
  GETIMPORT R11 K44 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["Size"]
  GETIMPORT R11 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K7 ["AutomaticSize"]
  LOADN R11 0
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  GETIMPORT R11 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K37 ["TextXAlignment"]
  GETIMPORT R11 K47 [Enum.TextYAlignment.Top]
  SETTABLEKS R11 R10 K38 ["TextYAlignment"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K33 ["Label"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K48 [{"Size", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R11 K44 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["Size"]
  GETIMPORT R11 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K7 ["AutomaticSize"]
  LOADN R11 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  GETIMPORT R11 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K8 ["Layout"]
  GETIMPORT R11 K49 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K11 ["HorizontalAlignment"]
  GETIMPORT R11 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R11 R10 K12 ["VerticalAlignment"]
  DUPTABLE R11 K53 [{"DeviceName", "Orientation", "Resolution"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K55 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K40 ["RecordTabView"]
  LOADK R18 K56 ["EmulationDeviceName"]
  NAMECALL R15 R2 K42 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K57 ["formatDeviceName"]
  GETTABLEKS R16 R1 K58 ["EmulationDeviceId"]
  MOVE R17 R2
  CALL R15 2 1
  SETTABLEKS R15 R14 K54 ["Value"]
  LOADN R15 1
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K50 ["DeviceName"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K55 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K40 ["RecordTabView"]
  LOADK R18 K59 ["EmulationDeviceOrientation"]
  NAMECALL R15 R2 K42 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K60 ["formatDeviceOrientation"]
  GETTABLEKS R16 R1 K59 ["EmulationDeviceOrientation"]
  GETTABLEKS R17 R1 K58 ["EmulationDeviceId"]
  MOVE R18 R2
  CALL R15 3 1
  SETTABLEKS R15 R14 K54 ["Value"]
  LOADN R15 2
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K51 ["Orientation"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K55 [{"Label", "Value", "LayoutOrder"}]
  LOADK R17 K40 ["RecordTabView"]
  LOADK R18 K61 ["EmulationDeviceResolution"]
  NAMECALL R15 R2 K42 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K33 ["Label"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K62 ["format2dResolution"]
  GETTABLEKS R16 R1 K63 ["CurrentScreenSize"]
  LOADK R19 K40 ["RecordTabView"]
  LOADK R20 K64 ["ResolutionPixelsName"]
  NAMECALL R17 R2 K42 ["getText"]
  CALL R17 3 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K54 ["Value"]
  LOADN R15 3
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K52 ["Resolution"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K34 ["KeyValuePairs"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  DUPTABLE R2 K5 [{"ShouldRecordOnGamePlayStart", "CurrentScreenSize", "EmulationDeviceId", "EmulationDeviceOrientation", "RecordingMode"}]
  GETTABLEKS R4 R0 K6 ["recordTab"]
  GETTABLEKS R3 R4 K7 ["shouldStart"]
  SETTABLEKS R3 R2 K0 ["ShouldRecordOnGamePlayStart"]
  GETTABLEKS R4 R0 K6 ["recordTab"]
  GETTABLEKS R3 R4 K8 ["screenSize"]
  SETTABLEKS R3 R2 K1 ["CurrentScreenSize"]
  GETTABLEKS R4 R0 K6 ["recordTab"]
  GETTABLEKS R3 R4 K9 ["emulationDeviceId"]
  SETTABLEKS R3 R2 K2 ["EmulationDeviceId"]
  GETTABLEKS R4 R0 K6 ["recordTab"]
  GETTABLEKS R3 R4 K10 ["emulationDeviceOrientation"]
  SETTABLEKS R3 R2 K3 ["EmulationDeviceOrientation"]
  GETTABLEKS R4 R0 K6 ["recordTab"]
  GETTABLEKS R3 R4 K11 ["recordingMode"]
  SETTABLEKS R3 R2 K4 ["RecordingMode"]
  RETURN R2 1

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
  GETTABLEKS R10 R11 K14 ["Util"]
  GETTABLEKS R9 R10 K15 ["StringFormatters"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K16 ["Components"]
  GETTABLEKS R10 R11 K17 ["UIKeyValueTextLabel"]
  CALL R9 1 1
  GETTABLEKS R10 R1 K18 ["PureComponent"]
  LOADK R12 K19 ["DeviceEmulationInfoUIGroup"]
  NAMECALL R10 R10 K20 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K21 [PROTO_0]
  SETTABLEKS R11 R10 K22 ["init"]
  DUPCLOSURE R11 K23 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R11 R10 K24 ["render"]
  GETTABLEKS R11 R4 K25 ["withContext"]
  DUPTABLE R12 K28 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R4 K26 ["Stylizer"]
  SETTABLEKS R13 R12 K26 ["Stylizer"]
  GETTABLEKS R13 R4 K27 ["Localization"]
  SETTABLEKS R13 R12 K27 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  DUPCLOSURE R11 K29 [PROTO_2]
  GETTABLEKS R12 R2 K30 ["connect"]
  MOVE R13 R11
  LOADNIL R14
  CALL R12 2 1
  MOVE R13 R10
  CALL R12 1 -1
  RETURN R12 -1
