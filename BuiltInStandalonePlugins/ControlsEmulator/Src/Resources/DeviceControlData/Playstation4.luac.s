MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
  DUPTABLE R1 K33 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K34 ["Background"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K35 ["rbxasset://textures/ControlsEmulator/Playstation4_Dark.png"]
  SETTABLEKS R2 R1 K31 ["srcDark"]
  LOADK R2 K36 ["rbxasset://textures/ControlsEmulator/Playstation4_Light.png"]
  SETTABLEKS R2 R1 K32 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K45 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.355]
  LOADN R4 0
  LOADK R5 K51 [0.645]
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
  LOADK R3 K70 [0.03]
  LOADN R4 0
  LOADK R5 K71 [0.816]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K72 [0.35]
  LOADN R4 0
  LOADK R5 K73 [0.657]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K74 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K76 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K77 [0.6458]
  LOADN R4 0
  LOADK R5 K51 [0.645]
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
  LOADK R3 K84 [0.97]
  LOADN R4 0
  LOADK R5 K71 [0.816]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K85 [0.655]
  LOADN R4 0
  LOADK R5 K73 [0.657]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K74 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K89 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K91 [0.217]
  LOADN R4 0
  LOADK R5 K92 [0.4765]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.035]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowUp"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K96 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K97 [0.263]
  LOADN R4 0
  LOADK R5 K98 [0.52]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K94 [0.04]
  LOADN R4 0
  LOADK R5 K93 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowRight"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K100 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K91 [0.217]
  LOADN R4 0
  LOADK R5 K101 [0.555]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.035]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K7 ["ArrowDown"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K103 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K104 [0.171]
  LOADN R4 0
  LOADK R5 K98 [0.52]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K94 [0.04]
  LOADN R4 0
  LOADK R5 K93 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
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
  LOADK R3 K110 [-0.03]
  LOADN R4 0
  LOADK R5 K111 [0.601]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K112 [0.212]
  LOADN R4 0
  LOADK R5 K113 [0.518]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K115 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K116 [0.718]
  LOADN R4 0
  LOADK R5 K113 [0.518]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.046]
  LOADN R4 0
  LOADK R5 K117 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K118 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K119 [0.786]
  LOADN R4 0
  LOADK R5 K120 [0.46]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.046]
  LOADN R4 0
  LOADK R5 K117 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K121 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K122 [0.852]
  LOADN R4 0
  LOADK R5 K113 [0.518]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.046]
  LOADN R4 0
  LOADK R5 K117 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K123 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K119 [0.786]
  LOADN R4 0
  LOADK R5 K124 [0.575]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.046]
  LOADN R4 0
  LOADK R5 K117 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
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
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K129 [0.61]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K130 [0.79]
  LOADN R4 0
  LOADK R5 K131 [0.524]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K132 [0.5]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K133 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K134 [0.314]
  LOADN R4 0
  LOADK R5 K135 [0.429]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K136 [0.02]
  LOADN R4 0
  LOADK R5 K137 [0.044]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K140 ["Select"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K142 [0.01]
  LOADN R4 0
  LOADK R5 K143 [0.396]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K134 [0.314]
  LOADN R4 0
  LOADK R5 K144 [0.425]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K145 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K146 [0.688]
  LOADN R4 0
  LOADK R5 K135 [0.429]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K136 [0.02]
  LOADN R4 0
  LOADK R5 K137 [0.044]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K147 ["Start"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K148 [0.99]
  LOADN R4 0
  LOADK R5 K143 [0.396]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K149 [0.69]
  LOADN R4 0
  LOADK R5 K144 [0.425]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K150 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K151 [0.218]
  LOADN R4 0
  LOADK R5 K152 [0.329]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K153 [0.1]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K154 ["L1"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K155 [0.304]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K156 [0.196]
  LOADN R4 0
  LOADK R5 K152 [0.329]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K157 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K158 [0.222]
  LOADN R4 0
  LOADK R5 K159 [0.276]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K160 [0.06]
  LOADN R4 0
  LOADK R5 K70 [0.03]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K161 ["L2"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K142 [0.01]
  LOADN R4 0
  LOADK R5 K162 [0.237]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K163 [0.202]
  LOADN R4 0
  LOADK R5 K164 [0.278]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K165 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K157 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K166 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K167 [0.233]
  LOADN R4 0
  LOADK R5 K168 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K169 [0.069]
  LOADN R4 0
  LOADK R5 K153 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K23 ["TriggerL2"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K170 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K171 [0.785]
  LOADN R4 0
  LOADK R5 K152 [0.329]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K153 [0.1]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K24 ["ButtonR1"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K172 ["R1"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K155 [0.304]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K173 [0.804]
  LOADN R4 0
  LOADK R5 K152 [0.329]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K25 ["ButtonR1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K174 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K175 [0.778]
  LOADN R4 0
  LOADK R5 K159 [0.276]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K160 [0.06]
  LOADN R4 0
  LOADK R5 K70 [0.03]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K26 ["ButtonR2"]
  DUPTABLE R1 K139 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K176 ["R2"]
  SETTABLEKS R2 R1 K138 ["keyName"]
  LOADK R2 K141 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K148 [0.99]
  LOADN R4 0
  LOADK R5 K162 [0.237]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K114 [0.8]
  LOADN R4 0
  LOADK R5 K164 [0.278]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K165 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K27 ["ButtonR2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K174 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K166 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K177 [0.767]
  LOADN R4 0
  LOADK R5 K168 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K169 [0.069]
  LOADN R4 0
  LOADK R5 K153 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K28 ["TriggerR2"]
  RETURN R0 1
