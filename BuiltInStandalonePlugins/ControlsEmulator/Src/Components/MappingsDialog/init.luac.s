PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 3
  NEWTABLE R5 0 0
  DUPTABLE R6 K4 [{"WidgetHeader", "List"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 4
  NEWTABLE R9 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K5 ["Tag"]
  LOADK R11 K6 ["Component-WidgetHeader"]
  SETTABLE R11 R9 R10
  GETUPVAL R10 5
  NAMECALL R10 R10 K7 ["getNextOrder"]
  CALL R10 1 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K11 [{"DeviceDropdown", "MappingsButton", "MappingsButton"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 6
  NEWTABLE R13 8 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["Tag"]
  LOADK R15 K12 ["DeviceSelectorDropdown"]
  SETTABLE R15 R13 R14
  GETUPVAL R14 5
  NAMECALL R14 R14 K7 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  GETIMPORT R14 K15 [UDim2.new]
  LOADN R15 0
  LOADN R16 250
  LOADN R17 0
  LOADN R18 40
  CALL R14 4 1
  SETTABLEKS R14 R13 K16 ["Size"]
  GETTABLEKS R14 R2 K17 ["loadMappingsForGamepad"]
  SETTABLEKS R14 R13 K18 ["onChanged"]
  GETUPVAL R14 7
  SETTABLEKS R14 R13 K19 ["deviceIds"]
  GETTABLEKS R15 R1 K21 ["isUpdatingMappingForGamepadId"]
  ORK R14 R15 K20 [101]
  SETTABLEKS R14 R13 K22 ["selectedGamepadId"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K9 ["DeviceDropdown"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  LOADK R12 K23 ["TextButton"]
  NEWTABLE R13 4 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["Tag"]
  LOADK R15 K24 ["DeviceSelectorMappingsButton"]
  SETTABLE R15 R13 R14
  GETUPVAL R14 5
  NAMECALL R14 R14 K7 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  LOADK R14 K25 ["Save"]
  SETTABLEKS R14 R13 K26 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["MappingsButton"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K1 ["createElement"]
  LOADK R12 K23 ["TextButton"]
  NEWTABLE R13 4 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K5 ["Tag"]
  LOADK R15 K24 ["DeviceSelectorMappingsButton"]
  SETTABLE R15 R13 R14
  GETUPVAL R14 5
  NAMECALL R14 R14 K7 ["getNextOrder"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  LOADK R14 K27 ["Reset"]
  SETTABLEKS R14 R13 K26 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K10 ["MappingsButton"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["WidgetHeader"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 8
  CALL R7 1 1
  SETTABLEKS R7 R6 K3 ["List"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["LayoutOrderIterator"]
  GETTABLEKS R4 R3 K11 ["new"]
  CALL R4 0 1
  GETTABLEKS R5 R2 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["Localization"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K14 ["Src"]
  GETTABLEKS R9 R10 K9 ["Util"]
  GETTABLEKS R8 R9 K15 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K14 ["Src"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K16 ["MappingsActionsContext"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K9 ["Util"]
  GETTABLEKS R10 R11 K17 ["MappingsContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K14 ["Src"]
  GETTABLEKS R12 R13 K18 ["Components"]
  GETTABLEKS R11 R12 K19 ["MappingsList"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K20 ["MappingsInputListener"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K14 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K21 ["WidgetHeader"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K14 ["Src"]
  GETTABLEKS R15 R16 K18 ["Components"]
  GETTABLEKS R14 R15 K22 ["DeviceDropdown"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K6 ["Packages"]
  GETTABLEKS R15 R16 K23 ["Dash"]
  CALL R14 1 1
  GETTABLEKS R15 R14 K24 ["values"]
  GETTABLEKS R16 R7 K25 ["GAMEPAD_TYPE_TO_ID"]
  CALL R15 1 1
  DUPCLOSURE R16 K26 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R15
  CAPTURE VAL R10
  GETTABLEKS R17 R1 K27 ["memo"]
  MOVE R18 R16
  CALL R17 1 -1
  RETURN R17 -1
