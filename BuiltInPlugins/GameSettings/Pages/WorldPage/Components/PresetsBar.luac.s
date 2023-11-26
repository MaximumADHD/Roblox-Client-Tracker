PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Preset"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["ApplyPreset"]
  GETTABLEKS R4 R1 K3 ["Mouse"]
  NAMECALL R4 R4 K4 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K5 ["Localization"]
  NEWTABLE R6 0 3
  DUPTABLE R7 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
  LOADK R10 K11 ["General"]
  LOADK R11 K12 ["WorldPresetsClassic"]
  NAMECALL R8 R5 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Name"]
  LOADB R8 1
  SETTABLEKS R8 R7 K7 ["Enabled"]
  LOADB R8 1
  SETTABLEKS R8 R7 K8 ["ShowPressed"]
  SETTABLEKS R4 R7 K3 ["Mouse"]
  DUPTABLE R8 K16 [{"ToolTip", "Preset"}]
  LOADK R11 K11 ["General"]
  LOADK R12 K17 ["WorldPresetsClassicToolTip"]
  NAMECALL R9 R5 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["ToolTip"]
  DUPTABLE R9 K22 [{"Gravity", "JumpPower", "Walkspeed", "MaxSlopeAngle"}]
  LOADK R10 K23 [196.2]
  SETTABLEKS R10 R9 K18 ["Gravity"]
  LOADN R10 50
  SETTABLEKS R10 R9 K19 ["JumpPower"]
  LOADN R10 16
  SETTABLEKS R10 R9 K20 ["Walkspeed"]
  LOADN R10 89
  SETTABLEKS R10 R9 K21 ["MaxSlopeAngle"]
  SETTABLEKS R9 R8 K15 ["Preset"]
  SETTABLEKS R8 R7 K9 ["Value"]
  DUPTABLE R8 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
  LOADK R11 K11 ["General"]
  LOADK R12 K24 ["WorldPresetsRealistic"]
  NAMECALL R9 R5 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K6 ["Name"]
  LOADB R9 1
  SETTABLEKS R9 R8 K7 ["Enabled"]
  LOADB R9 1
  SETTABLEKS R9 R8 K8 ["ShowPressed"]
  SETTABLEKS R4 R8 K3 ["Mouse"]
  DUPTABLE R9 K16 [{"ToolTip", "Preset"}]
  LOADK R12 K11 ["General"]
  LOADK R13 K25 ["WorldPresetsRealisticToolTip"]
  NAMECALL R10 R5 K13 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["ToolTip"]
  DUPTABLE R10 K26 [{"Gravity", "JumpPower", "Walkspeed"}]
  LOADN R11 35
  SETTABLEKS R11 R10 K18 ["Gravity"]
  LOADN R11 13
  SETTABLEKS R11 R10 K19 ["JumpPower"]
  LOADN R11 16
  SETTABLEKS R11 R10 K20 ["Walkspeed"]
  SETTABLEKS R10 R9 K15 ["Preset"]
  SETTABLEKS R9 R8 K9 ["Value"]
  DUPTABLE R9 K10 [{"Name", "Enabled", "ShowPressed", "Mouse", "Value"}]
  LOADK R12 K11 ["General"]
  LOADK R13 K27 ["WorldPresetsAction"]
  NAMECALL R10 R5 K13 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K6 ["Name"]
  LOADB R10 1
  SETTABLEKS R10 R9 K7 ["Enabled"]
  LOADB R10 1
  SETTABLEKS R10 R9 K8 ["ShowPressed"]
  SETTABLEKS R4 R9 K3 ["Mouse"]
  DUPTABLE R10 K16 [{"ToolTip", "Preset"}]
  LOADK R13 K11 ["General"]
  LOADK R14 K28 ["WorldPresetsActionToolTip"]
  NAMECALL R11 R5 K13 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K14 ["ToolTip"]
  DUPTABLE R11 K26 [{"Gravity", "JumpPower", "Walkspeed"}]
  LOADN R12 75
  SETTABLEKS R12 R11 K18 ["Gravity"]
  LOADN R12 31
  SETTABLEKS R12 R11 K19 ["JumpPower"]
  LOADN R12 18
  SETTABLEKS R12 R11 K20 ["Walkspeed"]
  SETTABLEKS R11 R10 K15 ["Preset"]
  SETTABLEKS R10 R9 K9 ["Value"]
  SETLIST R6 R7 3 [1]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K29 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K33 [{"LayoutOrder", "Title", "ButtonClicked", "Buttons"}]
  SETTABLEKS R2 R9 K1 ["LayoutOrder"]
  LOADK R12 K11 ["General"]
  LOADK R13 K34 ["TitlePresets"]
  NAMECALL R10 R5 K13 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K30 ["Title"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R3
  SETTABLEKS R10 R9 K31 ["ButtonClicked"]
  SETTABLEKS R6 R9 K32 ["Buttons"]
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K10 ["RoactStudioWidgets"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K11 ["ButtonBar"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K12 ["PureComponent"]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K13 ["Name"]
  NAMECALL R7 R7 K14 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K16 ["render"]
  MOVE R8 R4
  DUPTABLE R9 K19 [{"Localization", "Mouse"}]
  GETTABLEKS R10 R3 K17 ["Localization"]
  SETTABLEKS R10 R9 K17 ["Localization"]
  GETTABLEKS R10 R3 K18 ["Mouse"]
  SETTABLEKS R10 R9 K18 ["Mouse"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
