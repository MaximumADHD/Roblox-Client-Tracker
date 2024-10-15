MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
  DUPTABLE R1 K33 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K34 ["Background"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K35 ["rbxasset://textures/ControlsEmulator/Playstation5_Dark.png"]
  SETTABLEKS R2 R1 K31 ["srcDark"]
  LOADK R2 K36 ["rbxasset://textures/ControlsEmulator/Playstation5_Light.png"]
  SETTABLEKS R2 R1 K32 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K45 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.347]
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
  LOADK R3 K70 [0.05]
  LOADN R4 0
  LOADK R5 K71 [0.818]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K72 [0.34]
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
  LOADK R3 K77 [0.6575]
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
  LOADK R3 K84 [0.95]
  LOADN R4 0
  LOADK R5 K71 [0.818]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K85 [0.668]
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
  LOADK R3 K91 [0.196]
  LOADN R4 0
  LOADK R5 K92 [0.47]
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
  LOADK R3 K97 [0.25]
  LOADN R4 0
  LOADK R5 K98 [0.508]
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
  LOADK R3 K91 [0.196]
  LOADN R4 0
  LOADK R5 K101 [0.55]
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
  LOADK R3 K104 [0.145]
  LOADN R4 0
  LOADK R5 K98 [0.508]
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
  LOADK R3 K110 [-0.01]
  LOADN R4 0
  LOADK R5 K111 [0.58]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K112 [0.192]
  LOADN R4 0
  LOADK R5 K113 [0.512]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K114 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K115 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K116 [0.735]
  LOADN R4 0
  LOADK R5 K117 [0.506]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K118 [0.046]
  LOADN R4 0
  LOADK R5 K118 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K120 [0.81]
  LOADN R4 0
  LOADK R5 K121 [0.446]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K118 [0.046]
  LOADN R4 0
  LOADK R5 K118 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K122 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K123 [0.881]
  LOADN R4 0
  LOADK R5 K124 [0.503]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K118 [0.046]
  LOADN R4 0
  LOADK R5 K118 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K125 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K126 [0.805]
  LOADN R4 0
  LOADK R5 K127 [0.566]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K118 [0.046]
  LOADN R4 0
  LOADK R5 K118 [0.046]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonA"]
  DUPTABLE R1 K105 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K128 ["Y"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K129 ["A"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K130 ["X"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K131 ["B"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K132 [1.02]
  LOADN R4 0
  LOADK R5 K133 [0.614]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K71 [0.818]
  LOADN R4 0
  LOADK R5 K134 [0.51]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K135 [0.5]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K136 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K137 [0.27]
  LOADN R4 0
  LOADK R5 K138 [0.414]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K139 [0.02]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K142 ["Select"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K144 [0.01]
  LOADN R4 0
  LOADK R5 K145 [0.39]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K146 [0.268]
  LOADN R4 0
  LOADK R5 K147 [0.408]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K148 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K149 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K116 [0.735]
  LOADN R4 0
  LOADK R5 K138 [0.414]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K139 [0.02]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K150 ["Start"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K151 [0.99]
  LOADN R4 0
  LOADK R5 K145 [0.39]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K152 [0.737]
  LOADN R4 0
  LOADK R5 K147 [0.408]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K148 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K153 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K154 [0.2]
  LOADN R4 0
  LOADK R5 K155 [0.306]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K156 [0.11]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K157 ["L1"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K158 [0.302]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K159 [0.157]
  LOADN R4 0
  LOADK R5 K160 [0.32]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K148 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K161 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K162 [0.212]
  LOADN R4 0
  LOADK R5 K163 [0.246]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K164 [0.07]
  LOADN R4 0
  LOADK R5 K165 [0.03]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K166 ["L2"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K165 [0.03]
  LOADN R4 0
  LOADK R5 K167 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K162 [0.212]
  LOADN R4 0
  LOADK R5 K168 [0.247]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K74 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K161 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K169 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K170 [0.233]
  LOADN R4 0
  LOADK R5 K164 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K171 [0.069]
  LOADN R4 0
  LOADK R5 K172 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K23 ["TriggerL2"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K173 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K148 [0.8]
  LOADN R4 0
  LOADK R5 K155 [0.306]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K156 [0.11]
  LOADN R4 0
  LOADK R5 K94 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K24 ["ButtonR1"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K174 ["R1"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K158 [0.302]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K175 [0.835]
  LOADN R4 0
  LOADK R5 K160 [0.32]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K148 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K25 ["ButtonR1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K176 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K177 [0.788]
  LOADN R4 0
  LOADK R5 K163 [0.246]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K164 [0.07]
  LOADN R4 0
  LOADK R5 K165 [0.03]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K26 ["ButtonR2"]
  DUPTABLE R1 K141 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K178 ["R2"]
  SETTABLEKS R2 R1 K140 ["keyName"]
  LOADK R2 K143 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K83 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K179 [0.97]
  LOADN R4 0
  LOADK R5 K167 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K180 [0.79]
  LOADN R4 0
  LOADK R5 K168 [0.247]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K74 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K27 ["ButtonR2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K176 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K169 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K181 [0.767]
  LOADN R4 0
  LOADK R5 K164 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K171 [0.069]
  LOADN R4 0
  LOADK R5 K172 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K28 ["TriggerR2"]
  RETURN R0 1
