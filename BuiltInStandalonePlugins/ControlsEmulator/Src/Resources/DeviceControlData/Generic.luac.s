MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K27 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label"}]
  DUPTABLE R1 K31 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K32 ["Background"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K33 ["rbxasset://textures/ControlsEmulator/GenericController_Dark.png"]
  SETTABLEKS R2 R1 K29 ["srcDark"]
  LOADK R2 K34 ["rbxasset://textures/ControlsEmulator/GenericController_Light.png"]
  SETTABLEKS R2 R1 K30 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K37 [{"keyCode", "type", "Position"}]
  GETIMPORT R2 K41 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K42 ["Thumbstick"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K46 [0.27]
  LOADN R4 0
  LOADK R5 K47 [0.459]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K56 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K57 ["L Thumbstick Up"]
  SETTABLEKS R2 R1 K48 ["upKeyName"]
  LOADK R2 K58 ["L Thumbstick Down"]
  SETTABLEKS R2 R1 K49 ["downKeyName"]
  LOADK R2 K59 ["L Thumbstick Left"]
  SETTABLEKS R2 R1 K50 ["leftKeyName"]
  LOADK R2 K60 ["L Thumbstick Right"]
  SETTABLEKS R2 R1 K51 ["rightKeyName"]
  LOADK R2 K61 ["L Thumbstick Click"]
  SETTABLEKS R2 R1 K52 ["centerKeyName"]
  LOADK R2 K62 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K63 ["Left"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K64 [0.07]
  LOADN R4 0
  LOADK R5 K65 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K66 [0.25]
  LOADN R4 0
  LOADK R5 K67 [0.46]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K68 [0.65]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K37 [{"keyCode", "type", "Position"}]
  GETIMPORT R2 K70 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K42 ["Thumbstick"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K71 [0.621]
  LOADN R4 0
  LOADK R5 K72 [0.567]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  SETTABLEKS R1 R0 K3 ["ThumbstickRight"]
  DUPTABLE R1 K56 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K73 ["R Thumbstick Up"]
  SETTABLEKS R2 R1 K48 ["upKeyName"]
  LOADK R2 K74 ["R Thumbstick Down"]
  SETTABLEKS R2 R1 K49 ["downKeyName"]
  LOADK R2 K75 ["R Thumbstick Left"]
  SETTABLEKS R2 R1 K50 ["leftKeyName"]
  LOADK R2 K76 ["R Thumbstick Right"]
  SETTABLEKS R2 R1 K51 ["rightKeyName"]
  LOADK R2 K77 ["R Thumbstick Click"]
  SETTABLEKS R2 R1 K52 ["centerKeyName"]
  LOADK R2 K62 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K78 ["Right"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K79 [0.75]
  LOADN R4 0
  LOADK R5 K80 [0.61]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K81 [0.62]
  LOADN R4 0
  LOADK R5 K82 [0.56]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K68 [0.65]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K87 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K89 ["↑"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K90 [0.38]
  LOADN R4 0
  LOADK R5 K91 [0.52]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K92 [0.054]
  LOADN R4 0
  LOADK R5 K92 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowUp"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K94 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K95 ["→"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K96 [0.43]
  LOADN R4 0
  LOADK R5 K82 [0.56]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K92 [0.054]
  LOADN R4 0
  LOADK R5 K92 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowRight"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K98 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K99 ["↓"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K90 [0.38]
  LOADN R4 0
  LOADK R5 K100 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K92 [0.054]
  LOADN R4 0
  LOADK R5 K92 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K7 ["ArrowDown"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K102 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K103 ["←"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K104 [0.33]
  LOADN R4 0
  LOADK R5 K105 [0.565]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K92 [0.054]
  LOADN R4 0
  LOADK R5 K92 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K8 ["ArrowLeft"]
  DUPTABLE R1 K106 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K107 ["DPad Up"]
  SETTABLEKS R2 R1 K48 ["upKeyName"]
  LOADK R2 K108 ["DPad Down"]
  SETTABLEKS R2 R1 K49 ["downKeyName"]
  LOADK R2 K109 ["DPad Left"]
  SETTABLEKS R2 R1 K50 ["leftKeyName"]
  LOADK R2 K110 ["DPad Right"]
  SETTABLEKS R2 R1 K51 ["rightKeyName"]
  LOADK R2 K62 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K63 ["Left"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K111 [0.23]
  LOADN R4 0
  LOADK R5 K100 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K90 [0.38]
  LOADN R4 0
  LOADK R5 K112 [0.558]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K114 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K115 ["X"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K116 [0.6775]
  LOADN R4 0
  LOADK R5 K117 [0.438]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K118 [0.0675]
  LOADN R4 0
  LOADK R5 K118 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K120 ["Y"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K121 [0.741]
  LOADN R4 0
  LOADK R5 K90 [0.38]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K118 [0.0675]
  LOADN R4 0
  LOADK R5 K118 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K122 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K123 ["B"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K124 [0.8075]
  LOADN R4 0
  LOADK R5 K125 [0.433]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K118 [0.0675]
  LOADN R4 0
  LOADK R5 K118 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K126 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K127 ["A"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K128 [0.745]
  LOADN R4 0
  LOADK R5 K129 [0.4905]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K118 [0.0675]
  LOADN R4 0
  LOADK R5 K118 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonA"]
  DUPTABLE R1 K106 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K120 ["Y"]
  SETTABLEKS R2 R1 K48 ["upKeyName"]
  LOADK R2 K127 ["A"]
  SETTABLEKS R2 R1 K49 ["downKeyName"]
  LOADK R2 K115 ["X"]
  SETTABLEKS R2 R1 K50 ["leftKeyName"]
  LOADK R2 K123 ["B"]
  SETTABLEKS R2 R1 K51 ["rightKeyName"]
  LOADK R2 K62 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K78 ["Right"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K113 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K79 [0.75]
  LOADN R4 0
  LOADK R5 K130 [0.45]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K131 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K132 ["-"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K133 [0.439]
  LOADN R4 0
  LOADK R5 K134 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K135 [0.0405]
  LOADN R4 0
  LOADK R5 K135 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K138 ["Select"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K63 ["Left"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K140 [0.239]
  LOADN R4 0
  LOADK R5 K141 [0.341]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K133 [0.439]
  LOADN R4 0
  LOADK R5 K134 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K142 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K143 ["+"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K105 [0.565]
  LOADN R4 0
  LOADK R5 K134 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K135 [0.0405]
  LOADN R4 0
  LOADK R5 K135 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K144 ["Start"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K78 ["Right"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K145 [0.765]
  LOADN R4 0
  LOADK R5 K141 [0.341]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K105 [0.565]
  LOADN R4 0
  LOADK R5 K134 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K146 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K147 ["L1"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K148 [0.231]
  LOADN R4 0
  LOADK R5 K149 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K150 [0.15]
  LOADN R4 0
  LOADK R5 K151 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K147 ["L1"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K63 ["Left"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K152 [0.031]
  LOADN R4 0
  LOADK R5 K151 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K148 [0.231]
  LOADN R4 0
  LOADK R5 K149 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K153 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K154 ["L2"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K155 [0.261]
  LOADN R4 0
  LOADK R5 K156 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K157 [0.2]
  LOADN R4 0
  LOADK R5 K158 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K154 ["L2"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K63 ["Left"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K152 [0.031]
  LOADN R4 0
  LOADK R5 K159 [0.181]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K155 [0.261]
  LOADN R4 0
  LOADK R5 K156 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K160 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K161 ["R1"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K162 [0.767]
  LOADN R4 0
  LOADK R5 K149 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K150 [0.15]
  LOADN R4 0
  LOADK R5 K151 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K23 ["ButtonR1"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K161 ["R1"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K78 ["Right"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K163 [0.981]
  LOADN R4 0
  LOADK R5 K151 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K162 [0.767]
  LOADN R4 0
  LOADK R5 K149 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K24 ["ButtonR1Label"]
  DUPTABLE R1 K85 [{"keyCode", "type", "Text", "Position", "Size"}]
  GETIMPORT R2 K164 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K88 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K165 ["R2"]
  SETTABLEKS R2 R1 K83 ["Text"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K166 [0.737]
  LOADN R4 0
  LOADK R5 K156 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K157 [0.2]
  LOADN R4 0
  LOADK R5 K158 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K84 ["Size"]
  SETTABLEKS R1 R0 K25 ["ButtonR2"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K165 ["R2"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K78 ["Right"]
  SETTABLEKS R2 R1 K53 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K159 [0.181]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K166 [0.737]
  LOADN R4 0
  LOADK R5 K156 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K54 ["arrowDestination"]
  LOADK R2 K113 [0.5]
  SETTABLEKS R2 R1 K55 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K26 ["ButtonR2Label"]
  RETURN R0 1
