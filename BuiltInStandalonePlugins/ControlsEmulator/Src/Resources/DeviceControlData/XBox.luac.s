MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
  DUPTABLE R1 K33 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K34 ["Background"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K35 ["rbxasset://textures/ControlsEmulator/XBox_Dark.png"]
  SETTABLEKS R2 R1 K31 ["srcDark"]
  LOADK R2 K36 ["rbxasset://textures/ControlsEmulator/XBox_Light.png"]
  SETTABLEKS R2 R1 K32 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K45 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.265]
  LOADN R4 0
  LOADK R5 K51 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  LOADK R2 K52 [0.38]
  SETTABLEKS R2 R1 K39 ["relativeStickSize"]
  LOADK R2 K53 [0.22]
  SETTABLEKS R2 R1 K40 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K62 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K63 ["L Thumbstick Up"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K64 ["L Thumbstick Down"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K65 ["L Thumbstick Left"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K66 ["L Thumbstick Right"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K67 ["L Thumbstick Click"]
  SETTABLEKS R2 R1 K58 ["centerKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K70 [-0.02]
  LOADN R4 0
  LOADK R5 K71 [0.57]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K72 [0.26]
  LOADN R4 0
  LOADK R5 K51 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K73 [0.9]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K75 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K76 [0.625]
  LOADN R4 0
  LOADK R5 K77 [0.627]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  LOADK R2 K52 [0.38]
  SETTABLEKS R2 R1 K39 ["relativeStickSize"]
  LOADK R2 K53 [0.22]
  SETTABLEKS R2 R1 K40 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K3 ["ThumbstickRight"]
  DUPTABLE R1 K62 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K78 ["R Thumbstick Up"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K79 ["R Thumbstick Down"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K80 ["R Thumbstick Left"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K81 ["R Thumbstick Right"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K82 ["R Thumbstick Click"]
  SETTABLEKS R2 R1 K58 ["centerKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K84 [1.02]
  LOADN R4 0
  LOADK R5 K85 [0.831]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K77 [0.627]
  LOADN R4 0
  LOADK R5 K77 [0.627]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K86 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K90 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K52 [0.38]
  LOADN R4 0
  LOADK R5 K92 [0.557]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowUp"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K95 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K96 [0.425]
  LOADN R4 0
  LOADK R5 K97 [0.596]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowRight"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K99 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K52 [0.38]
  LOADN R4 0
  LOADK R5 K100 [0.638]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K7 ["ArrowDown"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K102 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K103 [0.337]
  LOADN R4 0
  LOADK R5 K104 [0.595]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K8 ["ArrowLeft"]
  DUPTABLE R1 K105 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K106 ["DPad Up"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K107 ["DPad Down"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K108 ["DPad Left"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K109 ["DPad Right"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K110 [0.825]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K111 [0.375]
  LOADN R4 0
  LOADK R5 K86 [0.6]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K86 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K112 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K113 [0.678]
  LOADN R4 0
  LOADK R5 K114 [0.468]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K115 [0.051]
  LOADN R4 0
  LOADK R5 K115 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K116 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.743]
  LOADN R4 0
  LOADK R5 K118 [0.41]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K115 [0.051]
  LOADN R4 0
  LOADK R5 K115 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K120 [0.806]
  LOADN R4 0
  LOADK R5 K121 [0.458]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K115 [0.051]
  LOADN R4 0
  LOADK R5 K115 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K122 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K123 [0.741]
  LOADN R4 0
  LOADK R5 K124 [0.52]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K115 [0.051]
  LOADN R4 0
  LOADK R5 K115 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonA"]
  DUPTABLE R1 K105 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K125 ["Y"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K126 ["A"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K127 ["X"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K128 ["B"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K84 [1.02]
  LOADN R4 0
  LOADK R5 K129 [0.608]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K130 [0.75]
  LOADN R4 0
  LOADK R5 K131 [0.47]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K51 [0.5]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K132 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K133 [0.433]
  LOADN R4 0
  LOADK R5 K134 [0.467]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K135 [0.035]
  LOADN R4 0
  LOADK R5 K135 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K138 ["Select"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K140 [0.039]
  LOADN R4 0
  LOADK R5 K141 [0.359]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K142 [0.436]
  LOADN R4 0
  LOADK R5 K143 [0.469]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K130 [0.75]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K144 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K145 [0.569]
  LOADN R4 0
  LOADK R5 K134 [0.467]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K135 [0.035]
  LOADN R4 0
  LOADK R5 K135 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K146 ["Start"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K147 [0.965]
  LOADN R4 0
  LOADK R5 K141 [0.359]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K71 [0.57]
  LOADN R4 0
  LOADK R5 K143 [0.469]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K130 [0.75]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K148 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K149 [0.276]
  LOADN R4 0
  LOADK R5 K150 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K151 [0.16]
  LOADN R4 0
  LOADK R5 K152 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K153 ["L1"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K154 [0.031]
  LOADN R4 0
  LOADK R5 K149 [0.276]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K155 [0.241]
  LOADN R4 0
  LOADK R5 K156 [0.292]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K157 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K158 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K155 [0.241]
  LOADN R4 0
  LOADK R5 K159 [0.235]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K160 [0.07]
  LOADN R4 0
  LOADK R5 K161 [0.063]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K162 ["L2"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K154 [0.031]
  LOADN R4 0
  LOADK R5 K163 [0.176]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K164 [0.247]
  LOADN R4 0
  LOADK R5 K165 [0.222]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K166 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K158 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K167 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K168 [0.25]
  LOADN R4 0
  LOADK R5 K169 [0.052]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K170 [0.069]
  LOADN R4 0
  LOADK R5 K171 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K23 ["TriggerL2"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K172 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K173 [0.723]
  LOADN R4 0
  LOADK R5 K150 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K151 [0.16]
  LOADN R4 0
  LOADK R5 K152 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K24 ["ButtonR1"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K174 ["R1"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K175 [0.97]
  LOADN R4 0
  LOADK R5 K149 [0.276]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K176 [0.765]
  LOADN R4 0
  LOADK R5 K156 [0.292]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K157 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K25 ["ButtonR1Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K177 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K91 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K176 [0.765]
  LOADN R4 0
  LOADK R5 K159 [0.235]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K160 [0.07]
  LOADN R4 0
  LOADK R5 K161 [0.063]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K26 ["ButtonR2"]
  DUPTABLE R1 K137 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K178 ["R2"]
  SETTABLEKS R2 R1 K136 ["keyName"]
  LOADK R2 K139 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K179 [0.981]
  LOADN R4 0
  LOADK R5 K163 [0.176]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K130 [0.75]
  LOADN R4 0
  LOADK R5 K165 [0.222]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K166 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K27 ["ButtonR2Label"]
  DUPTABLE R1 K88 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K177 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K167 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K130 [0.75]
  LOADN R4 0
  LOADK R5 K169 [0.052]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K170 [0.069]
  LOADN R4 0
  LOADK R5 K171 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K87 ["Size"]
  SETTABLEKS R1 R0 K28 ["TriggerR2"]
  RETURN R0 1
