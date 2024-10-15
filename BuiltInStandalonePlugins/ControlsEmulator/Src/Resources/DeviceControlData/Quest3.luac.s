MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K25 [{"DeviceImage", "ThumbstickLeft", "ThumbstickLeftMappings", "ThumbstickRight", "ThumbstickRightMappings", "ButtonX", "ButtonXLabel", "ButtonY", "ButtonYLabel", "ButtonB", "ButtonBLabel", "ButtonA", "ButtonALabel", "ButtonStart", "ButtonStartLabel", "ButtonL1", "ButtonL1Label", "ButtonL2", "ButtonL2Label", "TriggerL2", "ButtonR1", "ButtonR1Label", "ButtonR2", "ButtonR2Label", "TriggerR2"}]
  DUPTABLE R1 K29 [{"type", "srcDark", "srcLight"}]
  LOADK R2 K30 ["Background"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K31 ["rbxasset://textures/ControlsEmulator/Quest3_Dark.png"]
  SETTABLEKS R2 R1 K27 ["srcDark"]
  LOADK R2 K32 ["rbxasset://textures/ControlsEmulator/Quest3_Light.png"]
  SETTABLEKS R2 R1 K28 ["srcLight"]
  SETTABLEKS R1 R0 K0 ["DeviceImage"]
  DUPTABLE R1 K37 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K41 [Enum.KeyCode.Thumbstick1]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K42 ["Thumbstick"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K46 [0.245]
  LOADN R4 0
  LOADK R5 K47 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  LOADK R2 K48 [0.3]
  SETTABLEKS R2 R1 K35 ["relativeStickSize"]
  LOADK R2 K49 [0.15]
  SETTABLEKS R2 R1 K36 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K1 ["ThumbstickLeft"]
  DUPTABLE R1 K58 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K59 ["L Thumbstick Up"]
  SETTABLEKS R2 R1 K50 ["upKeyName"]
  LOADK R2 K60 ["L Thumbstick Down"]
  SETTABLEKS R2 R1 K51 ["downKeyName"]
  LOADK R2 K61 ["L Thumbstick Left"]
  SETTABLEKS R2 R1 K52 ["leftKeyName"]
  LOADK R2 K62 ["L Thumbstick Right"]
  SETTABLEKS R2 R1 K53 ["rightKeyName"]
  LOADK R2 K63 ["L Thumbstick Click"]
  SETTABLEKS R2 R1 K54 ["centerKeyName"]
  LOADK R2 K64 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K49 [0.15]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K46 [0.245]
  LOADN R4 0
  LOADK R5 K47 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADK R2 K66 [0.5]
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K2 ["ThumbstickLeftMappings"]
  DUPTABLE R1 K37 [{"keyCode", "type", "Position", "relativeStickSize", "relativeSocketSize"}]
  GETIMPORT R2 K68 [Enum.KeyCode.Thumbstick2]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K42 ["Thumbstick"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K69 [0.745]
  LOADN R4 0
  LOADK R5 K47 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  LOADK R2 K48 [0.3]
  SETTABLEKS R2 R1 K35 ["relativeStickSize"]
  LOADK R2 K49 [0.15]
  SETTABLEKS R2 R1 K36 ["relativeSocketSize"]
  SETTABLEKS R1 R0 K3 ["ThumbstickRight"]
  DUPTABLE R1 K58 [{"upKeyName", "downKeyName", "leftKeyName", "rightKeyName", "centerKeyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K70 ["R Thumbstick Up"]
  SETTABLEKS R2 R1 K50 ["upKeyName"]
  LOADK R2 K71 ["R Thumbstick Down"]
  SETTABLEKS R2 R1 K51 ["downKeyName"]
  LOADK R2 K72 ["R Thumbstick Left"]
  SETTABLEKS R2 R1 K52 ["leftKeyName"]
  LOADK R2 K73 ["R Thumbstick Right"]
  SETTABLEKS R2 R1 K53 ["rightKeyName"]
  LOADK R2 K74 ["R Thumbstick Click"]
  SETTABLEKS R2 R1 K54 ["centerKeyName"]
  LOADK R2 K64 ["CrossLayoutMappings"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K75 ["Right"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K49 [0.15]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K69 [0.745]
  LOADN R4 0
  LOADK R5 K47 [0.215]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADK R2 K76 [0.6]
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K4 ["ThumbstickRightMappings"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K79 [Enum.KeyCode.ButtonX]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K81 [0.235]
  LOADN R4 0
  LOADK R5 K48 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K82 [0.051]
  LOADN R4 0
  LOADK R5 K82 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K5 ["ButtonX"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K85 ["X"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K87 [0.08]
  LOADN R4 0
  LOADK R5 K88 [0.4]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K89 [0.23]
  LOADN R4 0
  LOADK R5 K90 [0.32]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K6 ["ButtonXLabel"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K91 [Enum.KeyCode.ButtonY]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K92 [0.315]
  LOADN R4 0
  LOADK R5 K93 [0.267]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K82 [0.051]
  LOADN R4 0
  LOADK R5 K82 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K7 ["ButtonY"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K94 ["Y"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 0
  LOADN R4 0
  LOADK R5 K95 [0.79]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K90 [0.32]
  LOADN R4 0
  LOADK R5 K96 [0.28]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K8 ["ButtonYLabel"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K97 [Enum.KeyCode.ButtonB]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K98 [0.685]
  LOADN R4 0
  LOADK R5 K99 [0.27]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K82 [0.051]
  LOADN R4 0
  LOADK R5 K82 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K9 ["ButtonB"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K100 ["B"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K75 ["Right"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADN R3 1
  LOADN R4 0
  LOADK R5 K95 [0.79]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K101 [0.68]
  LOADN R4 0
  LOADK R5 K96 [0.28]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K10 ["ButtonBLabel"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K102 [Enum.KeyCode.ButtonA]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K103 [0.765]
  LOADN R4 0
  LOADK R5 K48 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K82 [0.051]
  LOADN R4 0
  LOADK R5 K82 [0.051]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K11 ["ButtonA"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K104 ["A"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K75 ["Right"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K105 [0.92]
  LOADN R4 0
  LOADK R5 K88 [0.4]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K106 [0.775]
  LOADN R4 0
  LOADK R5 K90 [0.32]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K12 ["ButtonALabel"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K107 [Enum.KeyCode.ButtonStart]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K108 [0.18]
  LOADN R4 0
  LOADK R5 K48 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K109 [0.035]
  LOADN R4 0
  LOADK R5 K109 [0.035]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K13 ["ButtonStart"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K110 ["Start"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K87 [0.08]
  LOADN R4 0
  LOADK R5 K48 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K108 [0.18]
  LOADN R4 0
  LOADK R5 K48 [0.3]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADK R2 K111 [0.75]
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K14 ["ButtonStartLabel"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K112 [Enum.KeyCode.ButtonL1]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K113 [0.45]
  LOADN R4 0
  LOADK R5 K114 [0.35]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K115 [0.05]
  LOADN R4 0
  LOADK R5 K116 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K15 ["ButtonL1"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K117 ["L1"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K88 [0.4]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K113 [0.45]
  LOADN R4 0
  LOADK R5 K118 [0.37]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K16 ["ButtonL1Label"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K81 [0.235]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K120 [0.14]
  LOADN R4 0
  LOADK R5 K121 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K17 ["ButtonL2"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K122 ["L2"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K65 ["Left"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K115 [0.05]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K123 [0.21]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 0
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K18 ["ButtonL2Label"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K119 [Enum.KeyCode.ButtonL2]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K124 ["Trigger"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K125 [0.43]
  LOADN R4 0
  LOADK R5 K126 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K127 [0.069]
  LOADN R4 0
  LOADK R5 K116 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K19 ["TriggerL2"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K128 [Enum.KeyCode.ButtonR1]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K129 [0.552]
  LOADN R4 0
  LOADK R5 K130 [0.345]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K115 [0.05]
  LOADN R4 0
  LOADK R5 K116 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K20 ["ButtonR1"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K131 ["R1"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K75 ["Right"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K132 [0.595]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K133 [0.545]
  LOADN R4 0
  LOADK R5 K118 [0.37]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADN R2 1
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K21 ["ButtonR1Label"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K134 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K80 ["Button"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K135 [0.77]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K120 [0.14]
  LOADN R4 0
  LOADK R5 K121 [0.07]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K22 ["ButtonR2"]
  DUPTABLE R1 K84 [{"keyName", "type", "side", "Position", "arrowDestination", "arrowBendPoint"}]
  LOADK R2 K136 ["R2"]
  SETTABLEKS R2 R1 K83 ["keyName"]
  LOADK R2 K86 ["ButtonMapping"]
  SETTABLEKS R2 R1 K26 ["type"]
  LOADK R2 K75 ["Right"]
  SETTABLEKS R2 R1 K55 ["side"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K137 [0.95]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K95 [0.79]
  LOADN R4 0
  LOADK R5 K66 [0.5]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K56 ["arrowDestination"]
  LOADK R2 K138 [0.7]
  SETTABLEKS R2 R1 K57 ["arrowBendPoint"]
  SETTABLEKS R1 R0 K23 ["ButtonR2Label"]
  DUPTABLE R1 K78 [{"keyCode", "type", "Position", "Size"}]
  GETIMPORT R2 K134 [Enum.KeyCode.ButtonR2]
  SETTABLEKS R2 R1 K33 ["keyCode"]
  LOADK R2 K124 ["Trigger"]
  SETTABLEKS R2 R1 K26 ["type"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K139 [0.57]
  LOADN R4 0
  LOADK R5 K126 [0.04]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K34 ["Position"]
  GETIMPORT R2 K45 [UDim2.new]
  LOADK R3 K127 [0.069]
  LOADN R4 0
  LOADK R5 K116 [0.1]
  LOADN R6 0
  CALL R2 4 1
  SETTABLEKS R2 R1 K77 ["Size"]
  SETTABLEKS R1 R0 K24 ["TriggerR2"]
  RETURN R0 1
