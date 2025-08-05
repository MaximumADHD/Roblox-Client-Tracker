MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K29 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ArrowUp", "ArrowRight", "ArrowDown", "ArrowLeft", "ArrowsMappings", "ButtonX", "ButtonY", "ButtonB", "ButtonA", "AbxyMappings", "ButtonSelect", "ButtonSelectLabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
  DUPTABLE R1 K33 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K34 ["Background"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K35 ["rbxasset://textures/ControlsEmulator/GenericHandheld_Dark.png"]
  SETTABLEKS R2 R1 K31 ["srcDark"]
  LOADK R2 K36 ["rbxasset://textures/ControlsEmulator/GenericHandheld_Light.png"]
  SETTABLEKS R2 R1 K32 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K45 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.14]
  LOADN R4 0
  LOADK R5 K51 [0.4]
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
  LOADK R3 K70 [-0.04]
  LOADN R4 0
  LOADK R5 K71 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.14]
  LOADN R4 0
  LOADK R5 K51 [0.4]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K72 [0.9]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K41 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K74 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K46 ["Thumbstick"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K75 [0.763]
  LOADN R4 0
  LOADK R5 K76 [0.53]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  LOADK R2 K52 [0.38]
  SETTABLEKS R2 R1 K39 ["relativeStickSize"]
  LOADK R2 K53 [0.22]
  SETTABLEKS R2 R1 K40 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K3 ["ThumbstickRight"]
  DUPTABLE R1 K62 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K77 ["R Thumbstick Up"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K78 ["R Thumbstick Down"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K79 ["R Thumbstick Left"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K80 ["R Thumbstick Right"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K81 ["R Thumbstick Click"]
  SETTABLEKS R2 R1 K58 ["centerKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K83 [0.96]
  LOADN R4 0
  LOADK R5 K84 [0.75]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K75 [0.763]
  LOADN R4 0
  LOADK R5 K76 [0.53]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K85 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K89 [Enum.KeyCode.DPadUp]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K91 [0.23]
  LOADN R4 0
  LOADK R5 K92 [0.45]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K5 ["ArrowUp"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K95 [Enum.KeyCode.DPadRight]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K96 [0.27]
  LOADN R4 0
  LOADK R5 K97 [0.49]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K6 ["ArrowRight"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K99 [Enum.KeyCode.DPadDown]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K91 [0.23]
  LOADN R4 0
  LOADK R5 K76 [0.53]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K7 ["ArrowDown"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K101 [Enum.KeyCode.DPadLeft]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K102 [0.19]
  LOADN R4 0
  LOADK R5 K97 [0.49]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K93 [0.041]
  LOADN R4 0
  LOADK R5 K93 [0.041]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K8 ["ArrowLeft"]
  DUPTABLE R1 K103 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K104 ["DPad Up"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K105 ["DPad Down"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K106 ["DPad Left"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K107 ["DPad Right"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K108 [0.04]
  LOADN R4 0
  LOADK R5 K84 [0.75]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K91 [0.23]
  LOADN R4 0
  LOADK R5 K71 [0.48]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K85 [0.6]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K9 ["ArrowsMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K109 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K110 [0.795]
  LOADN R4 0
  LOADK R5 K111 [0.374]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K112 [0.052]
  LOADN R4 0
  LOADK R5 K113 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K10 ["ButtonX"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K114 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K115 [0.855]
  LOADN R4 0
  LOADK R5 K116 [0.323]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.053]
  LOADN R4 0
  LOADK R5 K113 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonY"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K118 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K72 [0.9]
  LOADN R4 0
  LOADK R5 K111 [0.374]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K113 [0.051]
  LOADN R4 0
  LOADK R5 K113 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K12 ["ButtonB"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K120 [0.845]
  LOADN R4 0
  LOADK R5 K121 [0.425]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K117 [0.053]
  LOADN R4 0
  LOADK R5 K113 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonA"]
  DUPTABLE R1 K103 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K122 ["Y"]
  SETTABLEKS R2 R1 K54 ["upKeyName"]
  LOADK R2 K123 ["A"]
  SETTABLEKS R2 R1 K55 ["downKeyName"]
  LOADK R2 K124 ["X"]
  SETTABLEKS R2 R1 K56 ["leftKeyName"]
  LOADK R2 K125 ["B"]
  SETTABLEKS R2 R1 K57 ["rightKeyName"]
  LOADK R2 K68 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K126 [0.475]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K127 [0.848]
  LOADN R4 0
  LOADK R5 K128 [0.373]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K129 [0.5]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["AbxyMappings"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K130 [Enum.KeyCode.ButtonSelect]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K131 [0.283]
  LOADN R4 0
  LOADK R5 K132 [0.355]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K133 [0.035]
  LOADN R4 0
  LOADK R5 K133 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonSelect"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K136 ["Select"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K138 [0.02]
  LOADN R4 0
  LOADK R5 K139 [0.31]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K131 [0.283]
  LOADN R4 0
  LOADK R5 K132 [0.355]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K84 [0.75]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonSelectLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K140 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K141 [0.717]
  LOADN R4 0
  LOADK R5 K132 [0.355]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K133 [0.035]
  LOADN R4 0
  LOADK R5 K133 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonStart"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K142 ["Start"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K143 [0.98]
  LOADN R4 0
  LOADK R5 K144 [0.287]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K141 [0.717]
  LOADN R4 0
  LOADK R5 K132 [0.355]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K84 [0.75]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonStartLabel"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K145 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K146 [0.175]
  LOADN R4 0
  LOADK R5 K147 [0.249]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K148 [0.145]
  LOADN R4 0
  LOADK R5 K149 [0.038]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K19 ["ButtonL1"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K150 ["L1"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K151 [-0.06]
  LOADN R4 0
  LOADK R5 K152 [0.245]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K50 [0.14]
  LOADN R4 0
  LOADK R5 K153 [0.25]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K154 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K20 ["ButtonL1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K155 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K146 [0.175]
  LOADN R4 0
  LOADK R5 K156 [0.202]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K157 [0.05]
  LOADN R4 0
  LOADK R5 K158 [0.045]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K21 ["ButtonL2"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K159 ["L2"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K69 ["Left"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K160 [0.18]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K161 [0.155]
  LOADN R4 0
  LOADK R5 K162 [0.21]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K84 [0.75]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K22 ["ButtonL2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K155 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K163 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K146 [0.175]
  LOADN R4 0
  LOADK R5 K157 [0.05]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K164 [0.069]
  LOADN R4 0
  LOADK R5 K165 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K23 ["TriggerL2"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K166 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K167 [0.825]
  LOADN R4 0
  LOADK R5 K147 [0.249]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K148 [0.145]
  LOADN R4 0
  LOADK R5 K149 [0.038]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K24 ["ButtonR1"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K168 ["R1"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K169 [1.06]
  LOADN R4 0
  LOADK R5 K152 [0.245]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K170 [0.86]
  LOADN R4 0
  LOADK R5 K153 [0.25]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K154 [0.8]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K25 ["ButtonR1Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K171 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K90 ["Button"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K167 [0.825]
  LOADN R4 0
  LOADK R5 K156 [0.202]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K157 [0.05]
  LOADN R4 0
  LOADK R5 K158 [0.045]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K26 ["ButtonR2"]
  DUPTABLE R1 K135 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K172 ["R2"]
  SETTABLEKS R2 R1 K134 ["keyName"]
  LOADK R2 K137 ["ButtonMapping"]
  SETTABLEKS R2 R1 K30 ["type"]
  LOADK R2 K82 ["Right"]
  SETTABLEKS R2 R1 K59 ["side"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K160 [0.18]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K173 [0.852]
  LOADN R4 0
  LOADK R5 K174 [0.212]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K60 ["arrowDestination"]
  LOADK R2 K175 [0.7]
  SETTABLEKS R2 R1 K61 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K27 ["ButtonR2Label"]
  DUPTABLE R1 K87 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K171 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K37 ["keyCode"]
  LOADK R2 K163 ["Trigger"]
  SETTABLEKS R2 R1 K30 ["type"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K167 [0.825]
  LOADN R4 0
  LOADK R5 K157 [0.05]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K38 ["Position"]
  GETIMPORT R2 K49 [UDim2.new]
  LOADK R3 K164 [0.069]
  LOADN R4 0
  LOADK R5 K165 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K86 ["Size"]
  SETTABLEKS R1 R0 K28 ["TriggerR2"]
  RETURN R0 1
