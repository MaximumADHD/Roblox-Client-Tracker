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
  DUPTABLE R1 K39 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K43 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K44 ["Thumbstick"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K48 [0.27]
  LOADN R4 0
  LOADK R5 K49 [0.465]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  LOADK R2 K50 [0.38]
  SETTABLEKS R2 R1 K37 ["relativeStickSize"]
  LOADK R2 K51 [0.22]
  SETTABLEKS R2 R1 K38 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K60 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K61 ["L Thumbstick Up"]
  SETTABLEKS R2 R1 K52 ["upKeyName"]
  LOADK R2 K62 ["L Thumbstick Down"]
  SETTABLEKS R2 R1 K53 ["downKeyName"]
  LOADK R2 K63 ["L Thumbstick Left"]
  SETTABLEKS R2 R1 K54 ["leftKeyName"]
  LOADK R2 K64 ["L Thumbstick Right"]
  SETTABLEKS R2 R1 K55 ["rightKeyName"]
  LOADK R2 K65 ["L Thumbstick Click"]
  SETTABLEKS R2 R1 K56 ["centerKeyName"]
  LOADK R2 K66 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K67 ["Left"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K68 [0.07]
  LOADN R4 0
  LOADK R5 K69 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K70 [0.25]
  LOADN R4 0
  LOADK R5 K71 [0.46]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K72 [0.65]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K39 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K74 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K44 ["Thumbstick"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K75 [0.625]
  LOADN R4 0
  LOADK R5 K76 [0.59]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  LOADK R2 K50 [0.38]
  SETTABLEKS R2 R1 K37 ["relativeStickSize"]
  LOADK R2 K51 [0.22]
  SETTABLEKS R2 R1 K38 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K3 ["ThumbstickRight"]
  DUPTABLE R1 K60 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K77 ["R Thumbstick Up"]
  SETTABLEKS R2 R1 K52 ["upKeyName"]
  LOADK R2 K78 ["R Thumbstick Down"]
  SETTABLEKS R2 R1 K53 ["downKeyName"]
  LOADK R2 K79 ["R Thumbstick Left"]
  SETTABLEKS R2 R1 K54 ["leftKeyName"]
  LOADK R2 K80 ["R Thumbstick Right"]
  SETTABLEKS R2 R1 K55 ["rightKeyName"]
  LOADK R2 K81 ["R Thumbstick Click"]
  SETTABLEKS R2 R1 K56 ["centerKeyName"]
  LOADK R2 K66 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K83 [0.75]
  LOADN R4 0
  LOADK R5 K84 [0.61]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K85 [0.62]
  LOADN R4 0
  LOADK R5 K86 [0.56]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K72 [0.65]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K90 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K50 [0.38]
  LOADN R4 0
  LOADK R5 K92 [0.52]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K93 [0.054]
  LOADN R4 0
  LOADK R5 K93 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowUp"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K95 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K96 [0.43]
  LOADN R4 0
  LOADK R5 K86 [0.56]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K93 [0.054]
  LOADN R4 0
  LOADK R5 K93 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowRight"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K98 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K50 [0.38]
  LOADN R4 0
  LOADK R5 K99 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K93 [0.054]
  LOADN R4 0
  LOADK R5 K93 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K7 ["ArrowDown"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K101 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K102 [0.33]
  LOADN R4 0
  LOADK R5 K103 [0.565]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K93 [0.054]
  LOADN R4 0
  LOADK R5 K93 [0.054]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K8 ["ArrowLeft"]
  DUPTABLE R1 K104 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K105 ["DPad Up"]
  SETTABLEKS R2 R1 K52 ["upKeyName"]
  LOADK R2 K106 ["DPad Down"]
  SETTABLEKS R2 R1 K53 ["downKeyName"]
  LOADK R2 K107 ["DPad Left"]
  SETTABLEKS R2 R1 K54 ["leftKeyName"]
  LOADK R2 K108 ["DPad Right"]
  SETTABLEKS R2 R1 K55 ["rightKeyName"]
  LOADK R2 K66 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K67 ["Left"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K109 [0.23]
  LOADN R4 0
  LOADK R5 K99 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K50 [0.38]
  LOADN R4 0
  LOADK R5 K110 [0.558]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K112 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K113 [0.6775]
  LOADN R4 0
  LOADK R5 K114 [0.438]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K115 [0.0675]
  LOADN R4 0
  LOADK R5 K115 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K116 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K117 [0.741]
  LOADN R4 0
  LOADK R5 K50 [0.38]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K115 [0.0675]
  LOADN R4 0
  LOADK R5 K115 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K118 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K119 [0.8075]
  LOADN R4 0
  LOADK R5 K120 [0.433]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K115 [0.0675]
  LOADN R4 0
  LOADK R5 K115 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K121 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K122 [0.745]
  LOADN R4 0
  LOADK R5 K123 [0.4905]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K115 [0.0675]
  LOADN R4 0
  LOADK R5 K115 [0.0675]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonA"]
  DUPTABLE R1 K104 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K124 ["Y"]
  SETTABLEKS R2 R1 K52 ["upKeyName"]
  LOADK R2 K125 ["A"]
  SETTABLEKS R2 R1 K53 ["downKeyName"]
  LOADK R2 K126 ["X"]
  SETTABLEKS R2 R1 K54 ["leftKeyName"]
  LOADK R2 K127 ["B"]
  SETTABLEKS R2 R1 K55 ["rightKeyName"]
  LOADK R2 K66 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K111 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K83 [0.75]
  LOADN R4 0
  LOADK R5 K128 [0.45]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K129 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K130 [0.439]
  LOADN R4 0
  LOADK R5 K131 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K132 [0.0405]
  LOADN R4 0
  LOADK R5 K132 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K135 ["Select"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K67 ["Left"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K137 [0.239]
  LOADN R4 0
  LOADK R5 K138 [0.341]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K130 [0.439]
  LOADN R4 0
  LOADK R5 K131 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K139 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K103 [0.565]
  LOADN R4 0
  LOADK R5 K131 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K132 [0.0405]
  LOADN R4 0
  LOADK R5 K132 [0.0405]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K140 ["Start"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K141 [0.765]
  LOADN R4 0
  LOADK R5 K138 [0.341]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K103 [0.565]
  LOADN R4 0
  LOADK R5 K131 [0.441]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K142 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K143 [0.231]
  LOADN R4 0
  LOADK R5 K144 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K145 [0.15]
  LOADN R4 0
  LOADK R5 K146 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K147 ["L1"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K67 ["Left"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K148 [0.031]
  LOADN R4 0
  LOADK R5 K146 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K143 [0.231]
  LOADN R4 0
  LOADK R5 K144 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K149 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K150 [0.261]
  LOADN R4 0
  LOADK R5 K151 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K152 [0.2]
  LOADN R4 0
  LOADK R5 K153 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K154 ["L2"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K67 ["Left"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K148 [0.031]
  LOADN R4 0
  LOADK R5 K155 [0.181]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K150 [0.261]
  LOADN R4 0
  LOADK R5 K151 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K156 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K157 [0.767]
  LOADN R4 0
  LOADK R5 K144 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K145 [0.15]
  LOADN R4 0
  LOADK R5 K146 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K23 ["ButtonR1"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K158 ["R1"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K159 [0.981]
  LOADN R4 0
  LOADK R5 K146 [0.081]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K157 [0.767]
  LOADN R4 0
  LOADK R5 K144 [0.201]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K24 ["ButtonR1Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K160 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K35 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K28 ["type"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K161 [0.737]
  LOADN R4 0
  LOADK R5 K151 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K152 [0.2]
  LOADN R4 0
  LOADK R5 K153 [0.06]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K25 ["ButtonR2"]
  DUPTABLE R1 K134 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K162 ["R2"]
  SETTABLEKS R2 R1 K133 ["keyName"]
  LOADK R2 K136 ["ButtonMapping"]
  SETTABLEKS R2 R1 K28 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K57 ["side"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K155 [0.181]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K36 ["Position"]
  GETIMPORT R2 K47 [UDim2.new]
  LOADK R3 K161 [0.737]
  LOADN R4 0
  LOADK R5 K151 [0.282]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K58 ["arrowDestination"]
  LOADK R2 K111 [0.5]
  SETTABLEKS R2 R1 K59 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K26 ["ButtonR2Label"]
  RETURN R0 1
