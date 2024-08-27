MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K17 [{"DeviceImage", "ThumbstickLeft", "ThumbstickRight", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "ButtonStart", "ButtonSelect", "ButtonL1", "ButtonL2", "ButtonR1", "ButtonR2"}]
  DUPTABLE R1 K21 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K22 ["Background"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K23 ["rbxasset://textures/ControlsEmulator/Playstation5_Dark.png"]
  SETTABLEKS R2 R1 K19 ["srcDark"]
  LOADK R2 K24 ["rbxasset://textures/ControlsEmulator/Playstation5_Light.png"]
  SETTABLEKS R2 R1 K20 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K32 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K33 ["Thumbstick"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K37 [0.243]
  LOADN R4 0
  LOADK R5 K38 [0.605]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K39 [0.18]
  LOADN R4 0
  LOADK R5 K39 [0.18]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K41 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K33 ["Thumbstick"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K42 [0.5535]
  LOADN R4 0
  LOADK R5 K38 [0.605]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K39 [0.18]
  LOADN R4 0
  LOADK R5 K39 [0.18]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K2 ["ThumbstickRight"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K44 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K46 [0.1485]
  LOADN R4 0
  LOADK R5 K47 [0.335]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K3 ["ArrowUp"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K50 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K51 [0.216]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K4 ["ArrowRight"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K54 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K46 [0.1485]
  LOADN R4 0
  LOADK R5 K55 [0.5825]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowDown"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K57 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K58 [0.081]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowLeft"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K59 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K60 [0.702]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonX"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K61 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K62 [0.7695]
  LOADN R4 0
  LOADK R5 K47 [0.335]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K8 ["ButtonY"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K63 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K64 [0.837]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K65 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K62 [0.7695]
  LOADN R4 0
  LOADK R5 K55 [0.5825]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonA"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K66 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K46 [0.1485]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonStart"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K67 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K46 [0.1485]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonSelect"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K68 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K58 [0.081]
  LOADN R4 0
  LOADK R5 K47 [0.335]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonL1"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K69 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K58 [0.081]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K14 ["ButtonL2"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K70 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K64 [0.837]
  LOADN R4 0
  LOADK R5 K47 [0.335]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonR1"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K71 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K45 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K64 [0.837]
  LOADN R4 0
  LOADK R5 K52 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K48 [0.06]
  LOADN R4 0
  LOADK R5 K48 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K16 ["ButtonR2"]
  RETURN R0 1
