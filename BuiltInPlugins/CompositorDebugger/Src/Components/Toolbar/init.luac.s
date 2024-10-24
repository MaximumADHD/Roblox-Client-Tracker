PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["HistoryFrame"]
  JUMPIFEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETTABLEKS R2 R0 K2 ["SetScrubberOffset"]
  LOADN R3 0
  LOADN R4 1
  CALL R2 2 0
  JUMPIF R1 [+5]
  GETTABLEKS R2 R0 K2 ["SetScrubberOffset"]
  LOADNIL R3
  LOADNIL R4
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetScrubberOffset"]
  LOADNIL R2
  LOADN R3 1
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["SetScrubberOffset"]
  LOADNIL R2
  LOADN R3 255
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["onPlayPauseClicked"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K1 ["onPreviousClicked"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["onNextClicked"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["FrameBuffer"]
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  JUMPIFNOT R2 [+30]
  NAMECALL R6 R2 K2 ["getSize"]
  CALL R6 1 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["FRAMERATE"]
  DIV R3 R6 R7
  LOADN R6 1
  GETTABLEKS R9 R1 K5 ["HistoryOffset"]
  ORK R8 R9 K4 [0]
  DIV R7 R8 R3
  ADD R4 R6 R7
  GETTABLEKS R6 R2 K6 ["first"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R2 K7 ["last"]
  JUMPIFNOT R6 [+10]
  GETTABLEKS R7 R2 K7 ["last"]
  GETTABLEKS R6 R7 K8 ["timestamp"]
  GETTABLEKS R8 R2 K6 ["first"]
  GETTABLEKS R7 R8 K8 ["timestamp"]
  SUB R5 R6 R7
  JUMP [+1]
  LOADN R5 0
  GETUPVAL R7 1
  LOADK R9 K9 ["Padding"]
  NAMECALL R7 R7 K10 ["GetAttribute"]
  CALL R7 2 1
  GETTABLEKS R6 R7 K11 ["Offset"]
  GETTABLEKS R8 R1 K12 ["HistoryFrame"]
  JUMPIFEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 3
  NEWTABLE R10 1 0
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K14 ["Tag"]
  LOADK R12 K15 ["Toolbar X-Fill X-RowS X-Middle"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K21 [{"Timeline", "Previous", "PlayPauseButton", "Next", "SettingsButton"}]
  JUMPIFNOT R2 [+78]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 4
  NEWTABLE R14 8 0
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 1
  LOADN R17 156
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K25 ["Size"]
  SETTABLEKS R3 R14 K26 ["Timespan"]
  LOADN R15 1
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  SETTABLEKS R6 R14 K28 ["MouseOffset"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["Tag"]
  LOADK R16 K16 ["Timeline"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K31 [{"Scrubber", "BufferBar"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 5
  DUPTABLE R18 K34 [{"Position", "ZIndex"}]
  GETIMPORT R19 K36 [UDim2.fromScale]
  MOVE R20 R4
  LOADN R21 0
  CALL R19 2 1
  SETTABLEKS R19 R18 K32 ["Position"]
  LOADN R19 2
  SETTABLEKS R19 R18 K33 ["ZIndex"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K29 ["Scrubber"]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K37 [{"ZIndex", "Size"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K33 ["ZIndex"]
  GETIMPORT R19 K24 [UDim2.new]
  DIV R21 R5 R3
  LOADN R22 0
  LOADN R23 1
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R20 K40 [math.clamp]
  CALL R20 3 1
  LOADN R21 0
  LOADN R22 0
  GETUPVAL R23 1
  LOADK R25 K41 ["BufferBarHeight"]
  NAMECALL R23 R23 K10 ["GetAttribute"]
  CALL R23 2 -1
  CALL R19 -1 1
  SETTABLEKS R19 R18 K25 ["Size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K30 ["BufferBar"]
  CALL R12 3 1
  JUMP [+15]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K42 [{"Size"}]
  GETIMPORT R15 K24 [UDim2.new]
  LOADN R16 1
  LOADN R17 156
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K25 ["Size"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Timeline"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 6
  NEWTABLE R14 8 0
  LOADK R15 K43 ["Round"]
  SETTABLEKS R15 R14 K44 ["Style"]
  GETIMPORT R15 K46 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  GETTABLEKS R15 R0 K47 ["onPreviousClicked"]
  SETTABLEKS R15 R14 K48 ["OnClick"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K14 ["Tag"]
  LOADK R16 K49 ["MediaButton"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K51 [{"Icon"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K53 [{"Image"}]
  LOADK R19 K54 ["rbxasset://textures/CompositorDebugger/previous.png"]
  SETTABLEKS R19 R18 K52 ["Image"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K17 ["Previous"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K55 [{"Style", "Size", "LayoutOrder", "OnClick"}]
  LOADK R15 K43 ["Round"]
  SETTABLEKS R15 R14 K44 ["Style"]
  GETIMPORT R15 K46 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Size"]
  LOADN R15 3
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  GETTABLEKS R15 R0 K56 ["onPlayPauseClicked"]
  SETTABLEKS R15 R14 K48 ["OnClick"]
  DUPTABLE R15 K51 [{"Icon"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K58 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R19 K46 [UDim2.fromOffset]
  LOADN R20 20
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Size"]
  GETIMPORT R19 K36 [UDim2.fromScale]
  LOADK R20 K59 [0.5]
  LOADK R21 K59 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K32 ["Position"]
  GETIMPORT R19 K61 [Vector2.new]
  LOADK R20 K59 [0.5]
  LOADK R21 K59 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["AnchorPoint"]
  JUMPIFNOT R7 [+2]
  LOADK R19 K62 ["rbxasset://textures/CompositorDebugger/pause.png"]
  JUMP [+1]
  LOADK R19 K63 ["rbxasset://textures/CompositorDebugger/play.png"]
  SETTABLEKS R19 R18 K52 ["Image"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["PlayPauseButton"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K55 [{"Style", "Size", "LayoutOrder", "OnClick"}]
  LOADK R15 K43 ["Round"]
  SETTABLEKS R15 R14 K44 ["Style"]
  GETIMPORT R15 K46 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Size"]
  LOADN R15 4
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  GETTABLEKS R15 R0 K64 ["onNextClicked"]
  SETTABLEKS R15 R14 K48 ["OnClick"]
  DUPTABLE R15 K51 [{"Icon"}]
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K58 [{"Size", "Position", "AnchorPoint", "Image"}]
  GETIMPORT R19 K46 [UDim2.fromOffset]
  LOADN R20 20
  LOADN R21 20
  CALL R19 2 1
  SETTABLEKS R19 R18 K25 ["Size"]
  GETIMPORT R19 K36 [UDim2.fromScale]
  LOADK R20 K59 [0.5]
  LOADK R21 K59 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K32 ["Position"]
  GETIMPORT R19 K61 [Vector2.new]
  LOADK R20 K59 [0.5]
  LOADK R21 K59 [0.5]
  CALL R19 2 1
  SETTABLEKS R19 R18 K57 ["AnchorPoint"]
  LOADK R19 K65 ["rbxasset://textures/CompositorDebugger/next.png"]
  SETTABLEKS R19 R18 K52 ["Image"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K50 ["Icon"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K19 ["Next"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 8
  DUPTABLE R14 K66 [{"Size", "FrameBuffer", "LayoutOrder", "AnchorPoint"}]
  GETIMPORT R15 K46 [UDim2.fromOffset]
  LOADN R16 20
  LOADN R17 20
  CALL R15 2 1
  SETTABLEKS R15 R14 K25 ["Size"]
  GETTABLEKS R15 R1 K1 ["FrameBuffer"]
  SETTABLEKS R15 R14 K1 ["FrameBuffer"]
  LOADN R15 5
  SETTABLEKS R15 R14 K27 ["LayoutOrder"]
  GETIMPORT R15 K61 [Vector2.new]
  LOADN R16 1
  LOADK R17 K59 [0.5]
  CALL R15 2 1
  SETTABLEKS R15 R14 K57 ["AnchorPoint"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K20 ["SettingsButton"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_5:
  DUPTABLE R2 K2 [{"HistoryFrame", "HistoryOffset"}]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K0 ["HistoryFrame"]
  SETTABLEKS R3 R2 K0 ["HistoryFrame"]
  GETTABLEKS R4 R0 K3 ["Status"]
  GETTABLEKS R3 R4 K1 ["HistoryOffset"]
  SETTABLEKS R3 R2 K1 ["HistoryOffset"]
  RETURN R2 1

PROTO_6:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K1 [{"SetScrubberOffset"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetScrubberOffset"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R6 R4 K12 ["Analytics"]
  GETTABLEKS R7 R4 K13 ["Localization"]
  GETTABLEKS R8 R3 K14 ["Styling"]
  GETTABLEKS R9 R8 K15 ["joinTags"]
  GETTABLEKS R10 R3 K16 ["UI"]
  GETTABLEKS R11 R10 K17 ["Button"]
  GETTABLEKS R12 R10 K18 ["IconButton"]
  GETTABLEKS R13 R10 K19 ["Image"]
  GETTABLEKS R14 R10 K20 ["Pane"]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Thunks"]
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R15 K23 ["SetScrubberOffset"]
  CALL R16 1 1
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K24 ["Util"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K25 ["Constants"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETIMPORT R21 K1 [script]
  GETTABLEKS R20 R21 K26 ["settingsButton"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K27 ["scrubber"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETIMPORT R23 K1 [script]
  GETTABLEKS R22 R23 K28 ["timeline"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K29 ["styles"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R25 R0 K21 ["Src"]
  GETTABLEKS R24 R25 K30 ["Types"]
  CALL R23 1 1
  GETTABLEKS R24 R1 K31 ["PureComponent"]
  LOADK R26 K32 ["Toolbar"]
  NAMECALL R24 R24 K33 ["extend"]
  CALL R24 2 1
  DUPCLOSURE R25 K34 [PROTO_3]
  SETTABLEKS R25 R24 K35 ["init"]
  DUPCLOSURE R25 K36 [PROTO_4]
  CAPTURE VAL R18
  CAPTURE VAL R22
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R25 R24 K37 ["render"]
  MOVE R25 R5
  DUPTABLE R26 K38 [{"Analytics", "Localization"}]
  SETTABLEKS R6 R26 K12 ["Analytics"]
  SETTABLEKS R7 R26 K13 ["Localization"]
  CALL R25 1 1
  MOVE R26 R24
  CALL R25 1 1
  MOVE R24 R25
  DUPCLOSURE R25 K39 [PROTO_5]
  DUPCLOSURE R26 K40 [PROTO_7]
  CAPTURE VAL R16
  GETTABLEKS R27 R2 K41 ["connect"]
  MOVE R28 R25
  MOVE R29 R26
  CALL R27 2 1
  MOVE R28 R24
  CALL R27 1 1
  MOVE R24 R27
  RETURN R24 1
