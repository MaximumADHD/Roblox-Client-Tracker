PROTO_0:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isSelectorActive"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["isSelectorActive"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["OnInstanceSelectorValidSelection"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["OnInstanceSelectorValidSelection"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"isSelectorActive"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["isSelectorActive"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["OnInstanceSelectorInvalidSelection"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["props"]
  GETTABLEKS R1 R2 K4 ["OnInstanceSelectorInvalidSelection"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isSelectorActive"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isSelectorActive"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClickAddNewInstance"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["OnClickAddNewInstance"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K1 [{"isSelectorActive"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isSelectorActive"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onInstanceSelectorValidSelection"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onInstanceSelectorInvalidSelection"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onClickAddNewInstance"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["Stylizer"]
  GETTABLEKS R5 R4 K4 ["ImageSize"]
  GETTABLEKS R6 R4 K5 ["Image"]
  GETTABLEKS R7 R4 K6 ["Padding"]
  GETTABLEKS R8 R1 K7 ["LayoutOrder"]
  GETTABLEKS R9 R1 K8 ["Tooltip"]
  GETTABLEKS R10 R1 K9 ["IsSelectedInstanceValid"]
  GETTABLEKS R11 R2 K10 ["isSelectorActive"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K11 ["createFragment"]
  DUPTABLE R13 K14 [{"AddNewButton", "InstanceSelector"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["createElement"]
  GETUPVAL R15 1
  DUPTABLE R16 K22 [{"Size", "AutomaticSize", "IconSize", "LeftIcon", "Padding", "OnClick", "LayoutOrder", "TooltipText"}]
  GETIMPORT R17 K25 [UDim2.fromScale]
  LOADN R18 0
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K16 ["Size"]
  GETIMPORT R17 K28 [Enum.AutomaticSize.XY]
  SETTABLEKS R17 R16 K17 ["AutomaticSize"]
  SETTABLEKS R5 R16 K18 ["IconSize"]
  SETTABLEKS R6 R16 K19 ["LeftIcon"]
  SETTABLEKS R7 R16 K6 ["Padding"]
  GETTABLEKS R17 R0 K29 ["onClickAddNewInstance"]
  SETTABLEKS R17 R16 K20 ["OnClick"]
  SETTABLEKS R8 R16 K7 ["LayoutOrder"]
  SETTABLEKS R9 R16 K21 ["TooltipText"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K12 ["AddNewButton"]
  MOVE R14 R11
  JUMPIFNOT R14 [+16]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K15 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K32 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection"}]
  SETTABLEKS R10 R16 K9 ["IsSelectedInstanceValid"]
  GETTABLEKS R17 R0 K33 ["onInstanceSelectorValidSelection"]
  SETTABLEKS R17 R16 K30 ["OnValidSelection"]
  GETTABLEKS R17 R0 K34 ["onInstanceSelectorInvalidSelection"]
  SETTABLEKS R17 R16 K31 ["OnInvalidSelection"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K13 ["InstanceSelector"]
  CALL R12 1 -1
  RETURN R12 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["Resources"]
  CALL R3 1 1
  GETTABLEKS R4 R0 K7 ["Components"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R4 K8 ["InstanceSelector"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R1 K9 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K10 ["ContextServices"]
  GETTABLEKS R8 R7 K11 ["withContext"]
  GETTABLEKS R10 R6 K12 ["UI"]
  GETTABLEKS R9 R10 K13 ["IconButton"]
  GETTABLEKS R11 R6 K12 ["UI"]
  GETTABLEKS R10 R11 K14 ["Button"]
  GETTABLEKS R11 R6 K15 ["Util"]
  GETTABLEKS R12 R11 K16 ["Typecheck"]
  GETTABLEKS R13 R2 K17 ["PureComponent"]
  LOADK R15 K18 ["InstanceSelectorButton"]
  NAMECALL R13 R13 K19 ["extend"]
  CALL R13 2 1
  GETTABLEKS R14 R12 K20 ["wrap"]
  MOVE R15 R13
  GETIMPORT R16 K1 [script]
  CALL R14 2 0
  DUPTABLE R14 K22 [{"LayoutOrder"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K21 ["LayoutOrder"]
  SETTABLEKS R14 R13 K23 ["defaultProps"]
  DUPCLOSURE R14 K24 [PROTO_3]
  SETTABLEKS R14 R13 K25 ["init"]
  DUPCLOSURE R14 K26 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R5
  SETTABLEKS R14 R13 K27 ["render"]
  MOVE R14 R8
  DUPTABLE R15 K30 [{"Localization", "Stylizer"}]
  GETTABLEKS R16 R7 K28 ["Localization"]
  SETTABLEKS R16 R15 K28 ["Localization"]
  GETTABLEKS R16 R7 K29 ["Stylizer"]
  SETTABLEKS R16 R15 K29 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
