MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K2 [UDim2.new]
  LOADN R1 0
  LOADN R2 45
  LOADN R3 0
  LOADN R4 45
  CALL R0 4 1
  GETIMPORT R1 K2 [UDim2.new]
  LOADN R2 0
  LOADN R3 20
  LOADN R4 0
  LOADN R5 20
  CALL R1 4 1
  GETIMPORT R2 K2 [UDim2.new]
  LOADN R3 0
  LOADN R4 25
  LOADN R5 0
  LOADN R6 25
  CALL R2 4 1
  DUPTABLE R3 K21 [{"DeviceImage", "ThumbstickLeft", "ThumbstickRight", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "ButtonSelect", "Home", "ButtonStart", "ButtonL1", "ButtonL2", "ButtonR1", "ButtonR2"}]
  DUPTABLE R4 K24 [{"type", "src"}]
  LOADK R5 K25 ["Background"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K26 ["rbxasset://textures/ControlsEmulator/GenericController_Default@3x.png"]
  SETTABLEKS R5 R4 K23 ["src"]
  SETTABLEKS R4 R3 K3 ["DeviceImage"]
  DUPTABLE R4 K30 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R5 K34 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K35 ["Thumbstick"]
  SETTABLEKS R5 R4 K22 ["type"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 75
  LOADN R8 0
  LOADN R9 110
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R0 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K4 ["ThumbstickLeft"]
  DUPTABLE R4 K30 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R5 K37 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K35 ["Thumbstick"]
  SETTABLEKS R5 R4 K22 ["type"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 195
  LOADN R8 0
  LOADN R9 150
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R0 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K5 ["ThumbstickRight"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K41 [Enum.KeyCode.DPadUp]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K43 ["↑"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 120
  LOADN R8 0
  LOADN R9 145
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R1 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K6 ["ArrowUp"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K45 [Enum.KeyCode.DPadRight]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K46 ["→"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 140
  LOADN R8 0
  LOADN R9 165
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R1 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K7 ["ArrowRight"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K48 [Enum.KeyCode.DPadDown]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K49 ["↓"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 120
  LOADN R8 0
  LOADN R9 185
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R1 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K8 ["ArrowDown"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K51 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K52 ["←"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 100
  LOADN R8 0
  LOADN R9 165
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R1 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K9 ["ArrowLeft"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K53 [Enum.KeyCode.ButtonX]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K54 ["X"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 230
  LOADN R8 0
  LOADN R9 130
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R2 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K10 ["ButtonX"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K55 [Enum.KeyCode.ButtonY]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K56 ["Y"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 255
  LOADN R8 0
  LOADN R9 105
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R2 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K11 ["ButtonY"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K57 [Enum.KeyCode.ButtonB]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K58 ["B"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 24
  LOADN R8 0
  LOADN R9 130
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R2 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K12 ["ButtonB"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K59 [Enum.KeyCode.ButtonA]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K60 ["A"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 255
  LOADN R8 0
  LOADN R9 155
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  SETTABLEKS R2 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K13 ["ButtonA"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K61 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K62 ["◁"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 140
  LOADN R8 0
  LOADN R9 130
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 25
  LOADN R8 0
  LOADN R9 15
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K14 ["ButtonSelect"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K63 [Enum.KeyCode.Home]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K64 ["⌂"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 165
  LOADN R8 0
  LOADN R9 130
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 25
  LOADN R8 0
  LOADN R9 15
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K15 ["Home"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K65 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K66 ["▹"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 190
  LOADN R8 0
  LOADN R9 130
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 25
  LOADN R8 0
  LOADN R9 15
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K16 ["ButtonStart"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K67 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K68 ["L1"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K17 ["ButtonL1"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K69 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K70 ["L2"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 60
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K18 ["ButtonL2"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K71 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K72 ["R1"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 54
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K19 ["ButtonR1"]
  DUPTABLE R4 K39 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R5 K73 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R5 R4 K27 ["keyCode"]
  LOADK R5 K42 ["Button"]
  SETTABLEKS R5 R4 K22 ["type"]
  LOADK R5 K74 ["R2"]
  SETTABLEKS R5 R4 K38 ["Text"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 54
  LOADN R8 0
  LOADN R9 60
  CALL R5 4 1
  SETTABLEKS R5 R4 K28 ["Position"]
  GETIMPORT R5 K2 [UDim2.new]
  LOADN R6 0
  LOADN R7 30
  LOADN R8 0
  LOADN R9 30
  CALL R5 4 1
  SETTABLEKS R5 R4 K29 ["Size"]
  SETTABLEKS R4 R3 K20 ["ButtonR2"]
  RETURN R3 1
