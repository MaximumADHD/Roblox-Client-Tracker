PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  DUPTABLE R4 K12 [{"MainGui", "WindspeedDisplay"}]
  DUPTABLE R5 K16 [{"BackgroundPane", "ViewportFrame", "CameraFOV"}]
  DUPTABLE R6 K22 [{"ZIndex", "Position", "Size", "Style", "BackgroundColor", "Transparency"}]
  LOADN R7 0
  SETTABLEKS R7 R6 K17 ["ZIndex"]
  GETIMPORT R7 K25 [UDim2.new]
  LOADN R8 0
  LOADN R9 206
  LOADN R10 0
  LOADN R11 40
  CALL R7 4 1
  SETTABLEKS R7 R6 K18 ["Position"]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 210
  LOADN R9 120
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Size"]
  LOADK R7 K28 ["CornerBox"]
  SETTABLEKS R7 R6 K7 ["Style"]
  GETIMPORT R7 K30 [Color3.new]
  LOADK R8 K31 [0.4]
  LOADK R9 K31 [0.4]
  LOADK R10 K31 [0.4]
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["BackgroundColor"]
  LOADK R7 K32 [0.65]
  SETTABLEKS R7 R6 K21 ["Transparency"]
  SETTABLEKS R6 R5 K13 ["BackgroundPane"]
  DUPTABLE R6 K33 [{"Size", "Position"}]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 180
  LOADN R9 160
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Size"]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 55
  LOADN R9 15
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Position"]
  SETTABLEKS R6 R5 K14 ["ViewportFrame"]
  LOADN R6 70
  SETTABLEKS R6 R5 K15 ["CameraFOV"]
  SETTABLEKS R5 R4 K10 ["MainGui"]
  DUPTABLE R5 K47 [{"Size", "Position", "ArrowDown", "ArrowUp", "TextLabel", "Slider", "ButtonTextSize", "ButtonSize", "ButtonTransparency", "MinusButtonPosition", "BigMinusButtonPosition", "PlusButtonPosition", "BigPlusButtonPosition", "activeLabelColor", "inactiveLabelColor"}]
  GETIMPORT R6 K27 [UDim2.fromOffset]
  LOADN R7 85
  LOADN R8 60
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["Size"]
  GETIMPORT R6 K49 [UDim2.fromScale]
  LOADK R7 K50 [-0.2]
  LOADK R8 K51 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Position"]
  LOADK R6 K52 ["rbxasset://textures/WindControl/ArrowDown.png"]
  SETTABLEKS R6 R5 K34 ["ArrowDown"]
  LOADK R6 K53 ["rbxasset://textures/WindControl/ArrowUp.png"]
  SETTABLEKS R6 R5 K35 ["ArrowUp"]
  DUPTABLE R6 K54 [{"Size", "Position", "Style"}]
  GETIMPORT R7 K49 [UDim2.fromScale]
  LOADN R8 1
  LOADK R9 K51 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Size"]
  GETIMPORT R7 K49 [UDim2.fromScale]
  LOADN R8 0
  LOADK R9 K51 [0.5]
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Position"]
  DUPTABLE R7 K60 [{"Font", "TextSize", "TextColor", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R8 K63 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R8 R7 K55 ["Font"]
  LOADN R8 26
  SETTABLEKS R8 R7 K56 ["TextSize"]
  GETIMPORT R8 K30 [Color3.new]
  LOADN R9 1
  LOADN R10 1
  LOADN R11 1
  CALL R8 3 1
  SETTABLEKS R8 R7 K57 ["TextColor"]
  GETIMPORT R8 K65 [Enum.TextXAlignment.Left]
  SETTABLEKS R8 R7 K58 ["TextXAlignment"]
  GETIMPORT R8 K67 [Enum.TextYAlignment.Top]
  SETTABLEKS R8 R7 K59 ["TextYAlignment"]
  SETTABLEKS R7 R6 K7 ["Style"]
  SETTABLEKS R6 R5 K36 ["TextLabel"]
  DUPTABLE R6 K33 [{"Size", "Position"}]
  GETIMPORT R7 K27 [UDim2.fromOffset]
  LOADN R8 195
  LOADN R9 15
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["Size"]
  GETIMPORT R7 K49 [UDim2.fromScale]
  LOADN R8 0
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Position"]
  SETTABLEKS R6 R5 K37 ["Slider"]
  LOADN R6 16
  SETTABLEKS R6 R5 K38 ["ButtonTextSize"]
  GETIMPORT R6 K49 [UDim2.fromScale]
  LOADN R7 1
  LOADK R8 K68 [0.33]
  CALL R6 2 1
  SETTABLEKS R6 R5 K39 ["ButtonSize"]
  LOADK R6 K69 [0.7]
  SETTABLEKS R6 R5 K40 ["ButtonTransparency"]
  GETIMPORT R6 K25 [UDim2.new]
  LOADK R7 K70 [0.25]
  LOADN R8 0
  LOADN R9 1
  LOADN R10 236
  CALL R6 4 1
  SETTABLEKS R6 R5 K41 ["MinusButtonPosition"]
  GETIMPORT R6 K25 [UDim2.new]
  LOADK R7 K71 [0.05]
  LOADN R8 0
  LOADN R9 1
  LOADN R10 236
  CALL R6 4 1
  SETTABLEKS R6 R5 K42 ["BigMinusButtonPosition"]
  GETIMPORT R6 K25 [UDim2.new]
  LOADK R7 K70 [0.25]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K43 ["PlusButtonPosition"]
  GETIMPORT R6 K25 [UDim2.new]
  LOADK R7 K71 [0.05]
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K44 ["BigPlusButtonPosition"]
  GETIMPORT R6 K30 [Color3.new]
  LOADN R7 1
  LOADN R8 1
  LOADN R9 1
  CALL R6 3 1
  SETTABLEKS R6 R5 K45 ["activeLabelColor"]
  GETIMPORT R6 K30 [Color3.new]
  LOADK R7 K72 [0.8]
  LOADK R8 K72 [0.8]
  LOADK R9 K72 [0.8]
  CALL R6 3 1
  SETTABLEKS R6 R5 K46 ["inactiveLabelColor"]
  SETTABLEKS R5 R4 K11 ["WindspeedDisplay"]
  DUPCLOSURE R5 K73 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
