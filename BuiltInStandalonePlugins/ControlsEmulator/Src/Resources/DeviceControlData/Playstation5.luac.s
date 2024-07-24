MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K17 [{"DeviceImage", "ThumbstickLeft", "ThumbstickRight", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "ButtonStart", "ButtonSelect", "ButtonL1", "ButtonL2", "ButtonR1", "ButtonR2"}]
  DUPTABLE R1 K20 [{"type", "src"}]
  LOADK R2 K21 ["Background"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K22 ["rbxasset://textures/ControlsEmulator/Playstation5_Default.png"]
  SETTABLEKS R2 R1 K19 ["src"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K26 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K30 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K31 ["Thumbstick"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 90
  LOADN R5 0
  LOADN R6 90
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 90
  LOADN R5 0
  LOADN R6 90
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K26 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K36 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K31 ["Thumbstick"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 205
  LOADN R5 0
  LOADN R6 90
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 90
  LOADN R5 0
  LOADN R6 90
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K2 ["ThumbstickRight"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K40 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K42 ["↑"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 55
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K3 ["ArrowUp"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K44 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K45 ["→"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 80
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K4 ["ArrowRight"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K47 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K48 ["↓"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 55
  LOADN R5 0
  LOADN R6 85
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowDown"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K50 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K51 ["←"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowLeft"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K52 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K53 ["□"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 4
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonX"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K54 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K55 ["△"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 29
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K8 ["ButtonY"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K56 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K57 ["○"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 54
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K58 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K59 ["×"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 29
  LOADN R5 0
  LOADN R6 85
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonA"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K60 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K61 ["≡"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 55
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonStart"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K62 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K61 ["≡"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 55
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonSelect"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K63 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K64 ["L1"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonL1"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K65 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K66 ["L2"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K14 ["ButtonL2"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K67 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K68 ["R1"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 54
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonR1"]
  DUPTABLE R1 K38 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K69 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K23 ["keyCode"]
  LOADK R2 K41 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K70 ["R2"]
  SETTABLEKS R2 R1 K37 ["Text"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 54
  LOADN R5 0
  LOADN R6 60
  CALL R2 4 1
  SETTABLEKS R2 R1 K24 ["Position"]
  GETIMPORT R2 K34 [UDim2.new]
  LOADN R3 0
  LOADN R4 30
  LOADN R5 0
  LOADN R6 30
  CALL R2 4 1
  SETTABLEKS R2 R1 K25 ["Size"]
  SETTABLEKS R1 R0 K16 ["ButtonR2"]
  RETURN R0 1
