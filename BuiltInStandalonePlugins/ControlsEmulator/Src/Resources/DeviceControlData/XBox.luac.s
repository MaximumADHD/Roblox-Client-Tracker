MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K18 [{"DeviceImage", "ThumbstickLeft", "ThumbstickRight", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "ButtonSelect", "Home", "ButtonStart", "ButtonL1", "ButtonL2", "ButtonR1", "ButtonR2"}]
  DUPTABLE R1 K22 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K23 ["Background"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K24 ["rbxasset://textures/ControlsEmulator/GenericController_Dark.png"]
  SETTABLEKS R2 R1 K20 ["srcDark"]
  LOADK R2 K25 ["rbxasset://textures/ControlsEmulator/GenericController_Light.png"]
  SETTABLEKS R2 R1 K21 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K29 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K33 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K34 ["Thumbstick"]
  SETTABLEKS R2 R1 K19 ["type"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K38 [0.24]
  LOADN R4 0
  LOADK R5 K39 [0.352]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K40 [0.144]
  LOADN R4 0
  LOADK R5 K40 [0.144]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K29 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K42 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K34 ["Thumbstick"]
  SETTABLEKS R2 R1 K19 ["type"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K43 [0.624]
  LOADN R4 0
  LOADK R5 K44 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K40 [0.144]
  LOADN R4 0
  LOADK R5 K40 [0.144]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K2 ["ThumbstickRight"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K48 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K50 ["↑"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K51 [0.384]
  LOADN R4 0
  LOADK R5 K52 [0.464]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K53 [0.064]
  LOADN R4 0
  LOADK R5 K53 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K3 ["ArrowUp"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K55 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K56 ["→"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K57 [0.448]
  LOADN R4 0
  LOADK R5 K58 [0.528]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K53 [0.064]
  LOADN R4 0
  LOADK R5 K53 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K4 ["ArrowRight"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K60 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K61 ["↓"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K51 [0.384]
  LOADN R4 0
  LOADK R5 K62 [0.592]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K53 [0.064]
  LOADN R4 0
  LOADK R5 K53 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowDown"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K64 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K65 ["←"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K66 [0.32]
  LOADN R4 0
  LOADK R5 K58 [0.528]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K53 [0.064]
  LOADN R4 0
  LOADK R5 K53 [0.064]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowLeft"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K67 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K68 ["X"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K69 [0.736]
  LOADN R4 0
  LOADK R5 K70 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K71 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonX"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K72 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K73 ["Y"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K74 [0.816]
  LOADN R4 0
  LOADK R5 K75 [0.336]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K71 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K8 ["ButtonY"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K76 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K77 ["B"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K78 [0.896]
  LOADN R4 0
  LOADK R5 K70 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K71 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K79 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K80 ["A"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K74 [0.816]
  LOADN R4 0
  LOADK R5 K81 [0.496]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K71 [0.08]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonA"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K82 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K83 ["◁"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K57 [0.448]
  LOADN R4 0
  LOADK R5 K70 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K84 [0.048]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonSelect"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K85 [Enum.KeyCode.Home]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K86 ["⌂"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K58 [0.528]
  LOADN R4 0
  LOADK R5 K70 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K84 [0.048]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K12 ["Home"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K87 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K88 ["▹"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K89 [0.608]
  LOADN R4 0
  LOADK R5 K70 [0.416]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K71 [0.08]
  LOADN R4 0
  LOADK R5 K84 [0.048]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonStart"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K90 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K91 ["L1"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K14 ["ButtonL1"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K93 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K94 ["L2"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K95 [0.192]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonL2"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K96 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K97 ["R1"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K98 [0.992]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K16 ["ButtonR1"]
  DUPTABLE R1 K46 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K99 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K49 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K100 ["R2"]
  SETTABLEKS R2 R1 K45 ["Text"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K98 [0.992]
  LOADN R4 0
  LOADK R5 K95 [0.192]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K37 [UDim2.new]
  LOADK R3 K92 [0.096]
  LOADN R4 0
  LOADK R5 K92 [0.096]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K28 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonR2"]
  RETURN R0 1
