MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K17 [{"DeviceImage", "ThumbstickLeft", "ThumbstickRight", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "ButtonSelect", "ButtonStart", "ButtonL1", "ButtonL2", "ButtonR1", "ButtonR2"}]
  DUPTABLE R1 K21 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K22 ["Background"]
  SETTABLEKS R2 R1 K18 ["type"]
  LOADK R2 K23 ["rbxasset://textures/ControlsEmulator/GenericController_Dark.png"]
  SETTABLEKS R2 R1 K19 ["srcDark"]
  LOADK R2 K24 ["rbxasset://textures/ControlsEmulator/GenericController_Light.png"]
  SETTABLEKS R2 R1 K20 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K32 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K33 ["Thumbstick"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K37 [0.24]
  LOADN R4 0
  LOADK R5 K38 [0.352]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K39 [0.144]
  LOADN R4 0
  LOADK R5 K39 [0.144]
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
  LOADK R3 K42 [0.624]
  LOADN R4 0
  LOADK R5 K43 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K39 [0.144]
  LOADN R4 0
  LOADK R5 K39 [0.144]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K2 ["ThumbstickRight"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K45 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K47 [0.384]
  LOADN R4 0
  LOADK R5 K48 [0.464]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K49 [0.064]
  LOADN R4 0
  LOADK R5 K49 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K3 ["ArrowUp"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K51 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.448]
  LOADN R4 0
  LOADK R5 K53 [0.528]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K49 [0.064]
  LOADN R4 0
  LOADK R5 K49 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K4 ["ArrowRight"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K55 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K47 [0.384]
  LOADN R4 0
  LOADK R5 K56 [0.592]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K49 [0.064]
  LOADN R4 0
  LOADK R5 K49 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowDown"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K58 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K59 [0.32]
  LOADN R4 0
  LOADK R5 K53 [0.528]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K49 [0.064]
  LOADN R4 0
  LOADK R5 K49 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowLeft"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K60 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K61 [0.736]
  LOADN R4 0
  LOADK R5 K62 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K63 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonX"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K64 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K65 [0.816]
  LOADN R4 0
  LOADK R5 K66 [0.336]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K63 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K8 ["ButtonY"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K67 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K68 [0.896]
  LOADN R4 0
  LOADK R5 K62 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K63 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K69 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K65 [0.816]
  LOADN R4 0
  LOADK R5 K70 [0.496]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K63 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonA"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K71 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.448]
  LOADN R4 0
  LOADK R5 K62 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K72 [0.048]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonSelect"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K73 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K74 [0.608]
  LOADN R4 0
  LOADK R5 K62 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K63 [0.08]
  LOADN R4 0
  LOADK R5 K72 [0.048]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonStart"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K75 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonL1"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K77 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K78 [0.192]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K14 ["ButtonL2"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K79 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K80 [0.992]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonR1"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K81 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K25 ["keyCode"]
  LOADK R2 K46 ["Button"]
  SETTABLEKS R2 R1 K18 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K80 [0.992]
  LOADN R4 0
  LOADK R5 K78 [0.192]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K26 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.096]
  LOADN R4 0
  LOADK R5 K76 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Size"]
  SETTABLEKS R1 R0 K16 ["ButtonR2"]
  RETURN R0 1
