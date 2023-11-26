PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["multiTouchEmulationOn"]
  NOT R0 R1
  GETUPVAL R1 1
  SETTABLEKS R0 R1 K2 ["IsMultiTouchEmulationOn"]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"multiTouchEmulationOn"}]
  SETTABLEKS R0 R3 K1 ["multiTouchEmulationOn"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K1 [{"multiTouchEmulationOn"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["IsMultiTouchEmulationOn"]
  SETTABLEKS R3 R2 K0 ["multiTouchEmulationOn"]
  SETTABLEKS R2 R0 K3 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K4 ["toggleMultiTouchEmulationOn"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
  GETIMPORT R7 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K4 ["AutomaticSize"]
  GETIMPORT R7 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K5 ["HorizontalAlignment"]
  GETIMPORT R7 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K6 ["Layout"]
  LOADN R7 10
  SETTABLEKS R7 R6 K7 ["Padding"]
  LOADN R7 10
  SETTABLEKS R7 R6 K8 ["Spacing"]
  DUPTABLE R7 K19 [{"MultiTouchPane"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "AlwaysExpanded", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R11 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K4 ["AutomaticSize"]
  GETIMPORT R11 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K5 ["HorizontalAlignment"]
  GETIMPORT R11 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K6 ["Layout"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["AlwaysExpanded"]
  LOADN R11 3
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  LOADK R11 K25 ["Box"]
  SETTABLEKS R11 R10 K22 ["Style"]
  LOADK R13 K18 ["MultiTouchPane"]
  LOADK R14 K26 ["MultiTouchPaneLabel"]
  NAMECALL R11 R3 K27 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Text"]
  NEWTABLE R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K31 [{"Checked", "Key", "OnClick", "Text"}]
  GETTABLEKS R15 R2 K32 ["multiTouchEmulationOn"]
  SETTABLEKS R15 R14 K28 ["Checked"]
  LOADK R15 K32 ["multiTouchEmulationOn"]
  SETTABLEKS R15 R14 K29 ["Key"]
  GETTABLEKS R15 R0 K33 ["toggleMultiTouchEmulationOn"]
  SETTABLEKS R15 R14 K30 ["OnClick"]
  LOADK R17 K18 ["MultiTouchPane"]
  LOADK R18 K34 ["MultiTouchPaneCheckboxLabel"]
  NAMECALL R15 R3 K27 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K23 ["Text"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["MultiTouchPane"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioDeviceEmulatorService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETTABLEKS R6 R4 K14 ["Localization"]
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Pane"]
  GETTABLEKS R9 R7 K17 ["SimpleExpandablePane"]
  GETTABLEKS R10 R7 K18 ["Checkbox"]
  GETTABLEKS R11 R2 K19 ["PureComponent"]
  LOADK R13 K20 ["MultiTouchPane"]
  NAMECALL R11 R11 K21 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K22 [PROTO_1]
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K23 ["init"]
  DUPCLOSURE R12 K24 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K25 ["render"]
  MOVE R12 R5
  DUPTABLE R13 K27 [{"Localization", "Stylizer"}]
  SETTABLEKS R6 R13 K14 ["Localization"]
  GETTABLEKS R14 R4 K26 ["Stylizer"]
  SETTABLEKS R14 R13 K26 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
