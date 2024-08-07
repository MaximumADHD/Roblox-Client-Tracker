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
  DUPTABLE R1 K28 [{"keyCode", "type", "Position"}]
  GETIMPORT R2 K32 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K33 ["Thumbstick"]
  SETTABLEKS R2 R1 K19 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K37 [0.27]
  LOADN R4 0
  LOADK R5 K38 [0.459]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K28 [{"keyCode", "type", "Position"}]
  GETIMPORT R2 K40 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K33 ["Thumbstick"]
  SETTABLEKS R2 R1 K19 ["type"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K41 [0.621]
  LOADN R4 0
  LOADK R5 K42 [0.567]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  SETTABLEKS R1 R0 K2 ["ThumbstickRight"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K47 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K49 ["↑"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K50 [0.3915]
  LOADN R4 0
  LOADK R5 K51 [0.4725]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.054]
  LOADN R4 0
  LOADK R5 K52 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K3 ["ArrowUp"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K54 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K55 ["→"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K56 [0.4185]
  LOADN R4 0
  LOADK R5 K57 [0.4995]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.054]
  LOADN R4 0
  LOADK R5 K52 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K4 ["ArrowRight"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K59 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K60 ["↓"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K50 [0.3915]
  LOADN R4 0
  LOADK R5 K56 [0.4185]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.054]
  LOADN R4 0
  LOADK R5 K52 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowDown"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K62 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K63 ["←"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K64 [0.3645]
  LOADN R4 0
  LOADK R5 K57 [0.4995]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K52 [0.054]
  LOADN R4 0
  LOADK R5 K52 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowLeft"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K65 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K66 ["X"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K67 [0.6885]
  LOADN R4 0
  LOADK R5 K68 [0.378]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K69 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonX"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K70 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K71 ["Y"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K72 [0.756]
  LOADN R4 0
  LOADK R5 K73 [0.3105]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K69 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K8 ["ButtonY"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K74 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K75 ["B"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K76 [0.8235]
  LOADN R4 0
  LOADK R5 K68 [0.378]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K69 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K77 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K78 ["A"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K72 [0.756]
  LOADN R4 0
  LOADK R5 K79 [0.4455]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K69 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonA"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K80 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K81 ["-"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K82 [0.405]
  LOADN R4 0
  LOADK R5 K83 [0.351]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K84 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonSelect"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K85 [Enum.KeyCode.Home]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K86 ["⌂"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K51 [0.4725]
  LOADN R4 0
  LOADK R5 K83 [0.351]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K84 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K12 ["Home"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K87 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K88 ["+"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K89 [0.513]
  LOADN R4 0
  LOADK R5 K83 [0.351]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K69 [0.0675]
  LOADN R4 0
  LOADK R5 K84 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonStart"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K90 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K91 ["L1"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K14 ["ButtonL1"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K93 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K94 ["L2"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K95 [0.162]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonL2"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K96 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K97 ["R1"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K98 [0.837]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K16 ["ButtonR1"]
  DUPTABLE R1 K45 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K99 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K26 ["keyCode"]
  LOADK R2 K48 ["Button"]
  SETTABLEKS R2 R1 K19 ["type"]
  LOADK R2 K100 ["R2"]
  SETTABLEKS R2 R1 K43 ["Text"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K98 [0.837]
  LOADN R4 0
  LOADK R5 K95 [0.162]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K27 ["Position"]
  GETIMPORT R2 K36 [UDim2.new]
  LOADK R3 K92 [0.081]
  LOADN R4 0
  LOADK R5 K92 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K44 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonR2"]
  RETURN R0 1
