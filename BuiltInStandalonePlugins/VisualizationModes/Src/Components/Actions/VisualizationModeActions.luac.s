PROTO_0:
  GETUPVAL R0 0
  LOADK R2 K0 ["visualizationModeToggled"]
  DUPTABLE R3 K5 [{"actionSource", "visualizationModeCategory", "visualizationMode", "isEnabled"}]
  LOADK R4 K6 ["plugin_action"]
  SETTABLEKS R4 R3 K1 ["actionSource"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["name"]
  SETTABLEKS R4 R3 K2 ["visualizationModeCategory"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["name"]
  SETTABLEKS R4 R3 K3 ["visualizationMode"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["enabled"]
  NOT R4 R5
  SETTABLEKS R4 R3 K4 ["isEnabled"]
  NAMECALL R0 R0 K9 ["report"]
  CALL R0 3 0
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K10 ["OnVisualizationModeToggle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K7 ["name"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K7 ["name"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["enabled"]
  NOT R3 R4
  LOADB R4 1
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Analytics"]
  NAMECALL R2 R2 K1 ["use"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Localization"]
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K3 ["VisualizationModeCategories"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K4 ["visualizationModeList"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  LOADK R15 K5 ["ToggleVisualizationMode_User_%*_%*"]
  GETTABLEKS R17 R8 K6 ["name"]
  GETTABLEKS R18 R13 K6 ["name"]
  NAMECALL R15 R15 K7 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  LOADK R17 K8 ["ToggleVisualizationMode"]
  LOADK R18 K9 ["Title"]
  DUPTABLE R19 K11 [{"visualizationModeName"}]
  GETTABLEKS R20 R13 K12 ["title"]
  SETTABLEKS R20 R19 K10 ["visualizationModeName"]
  NAMECALL R15 R3 K13 ["getText"]
  CALL R15 4 1
  GETTABLEKS R16 R13 K14 ["toolTip"]
  JUMPIFNOT R16 [+4]
  LENGTH R17 R16
  LOADN R18 0
  JUMPIFNOTLE R17 R18 [+12]
  LOADK R19 K8 ["ToggleVisualizationMode"]
  LOADK R20 K15 ["Description"]
  DUPTABLE R21 K11 [{"visualizationModeName"}]
  GETTABLEKS R22 R13 K12 ["title"]
  SETTABLEKS R22 R21 K10 ["visualizationModeName"]
  NAMECALL R17 R3 K13 ["getText"]
  CALL R17 4 1
  MOVE R16 R17
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K16 ["createElement"]
  GETUPVAL R18 2
  DUPTABLE R19 K24 [{"ActionId", "Text", "StatusTip", "IconName", "Checked", "Enabled", "OnTrigger"}]
  SETTABLEKS R14 R19 K17 ["ActionId"]
  SETTABLEKS R15 R19 K18 ["Text"]
  SETTABLEKS R16 R19 K19 ["StatusTip"]
  LOADK R20 K25 [""]
  SETTABLEKS R20 R19 K20 ["IconName"]
  GETTABLEKS R20 R13 K26 ["enabled"]
  SETTABLEKS R20 R19 K21 ["Checked"]
  LOADB R20 1
  SETTABLEKS R20 R19 K22 ["Enabled"]
  NEWCLOSURE R20 P0
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K23 ["OnTrigger"]
  CALL R17 2 1
  SETTABLE R17 R1 R14
  FORGLOOP R9 2 [-68]
  FORGLOOP R4 2 [-75]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K16 ["createElement"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K27 ["Fragment"]
  NEWTABLE R6 0 0
  MOVE R7 R1
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["Actions"]
  GETTABLEKS R3 R4 K11 ["PluginAction"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K12 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["ContextServices"]
  DUPCLOSURE R6 K15 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R6 1
