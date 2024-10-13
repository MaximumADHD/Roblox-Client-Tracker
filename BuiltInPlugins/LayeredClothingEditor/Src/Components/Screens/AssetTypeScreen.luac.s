PROTO_0:
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"shouldShowScaleDropdown"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["hasAnyCage"]
  MOVE R6 R0
  CALL R5 1 1
  NOT R4 R5
  SETTABLEKS R4 R3 K0 ["shouldShowScaleDropdown"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["shouldShowScaleDropdown"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K12 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  GETIMPORT R9 K14 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  GETTABLEKS R13 R3 K15 ["ContentHeight"]
  CALL R9 4 1
  SETTABLEKS R9 R8 K6 ["Size"]
  SETTABLEKS R0 R8 K7 ["LayoutOrder"]
  GETIMPORT R9 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K8 ["Layout"]
  GETIMPORT R9 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R9 R8 K9 ["HorizontalAlignment"]
  GETIMPORT R9 K23 [Enum.VerticalAlignment.Top]
  SETTABLEKS R9 R8 K10 ["VerticalAlignment"]
  GETTABLEKS R9 R3 K24 ["ContentSpacing"]
  SETTABLEKS R9 R8 K11 ["Spacing"]
  DUPTABLE R9 K27 [{"AssetTypeSelector", "ScaleTypeDropdown"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K28 [{"LayoutOrder"}]
  NAMECALL R14 R5 K29 ["getNextOrder"]
  CALL R14 1 1
  ADD R13 R0 R14
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["AssetTypeSelector"]
  JUMPIFNOT R4 [+13]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K28 [{"LayoutOrder"}]
  NAMECALL R14 R5 K29 ["getNextOrder"]
  CALL R14 1 1
  ADD R13 R0 R14
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K26 ["ScaleTypeDropdown"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_2:
  DUPTABLE R1 K1 [{"shouldShowScaleDropdown"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["shouldShowScaleDropdown"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K3 ["onEditingItemChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K4 ["renderContent"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["EditingItemContext"]
  NAMECALL R2 R2 K2 ["getItem"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["EditingItemContext"]
  NAMECALL R3 R3 K3 ["getEditingItemChangedSignal"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K4 ["onEditingItemChanged"]
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K6 ["editingItemChangedHandle"]
  GETTABLEKS R3 R0 K4 ["onEditingItemChanged"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["GoToNext"]
  GETTABLEKS R4 R1 K3 ["GoToPrevious"]
  GETTABLEKS R5 R1 K4 ["AccessoryTypeInfo"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K8 [{"Style"}]
  LOADK R11 K9 ["Box"]
  SETTABLEKS R11 R10 K7 ["Style"]
  DUPTABLE R11 K11 [{"Screen"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K21 [{"Title", "PromptText", "NextButtonText", "BackButtonText", "NextButtonEnabled", "BackButtonEnabled", "Scrollable", "HasBackButton", "GoToNext", "GoToPrevious", "RenderContent"}]
  LOADK R17 K22 ["AssetType"]
  LOADK R18 K22 ["AssetType"]
  NAMECALL R15 R6 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K12 ["Title"]
  LOADK R17 K22 ["AssetType"]
  LOADK R18 K24 ["Prompt"]
  NAMECALL R15 R6 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K13 ["PromptText"]
  LOADK R17 K25 ["Flow"]
  LOADK R18 K26 ["Next"]
  NAMECALL R15 R6 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K14 ["NextButtonText"]
  LOADK R17 K25 ["Flow"]
  LOADK R18 K27 ["Back"]
  NAMECALL R15 R6 K23 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K15 ["BackButtonText"]
  SETTABLEKS R7 R14 K16 ["NextButtonEnabled"]
  LOADB R15 1
  SETTABLEKS R15 R14 K17 ["BackButtonEnabled"]
  LOADB R15 1
  SETTABLEKS R15 R14 K18 ["Scrollable"]
  LOADB R15 1
  SETTABLEKS R15 R14 K19 ["HasBackButton"]
  SETTABLEKS R3 R14 K2 ["GoToNext"]
  SETTABLEKS R4 R14 K3 ["GoToPrevious"]
  GETTABLEKS R15 R0 K28 ["renderContent"]
  SETTABLEKS R15 R14 K20 ["RenderContent"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Screen"]
  CALL R8 3 -1
  RETURN R8 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["editingItemChangedHandle"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["editingItemChangedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["editingItemChangedHandle"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["selectItem"]
  DUPTABLE R3 K2 [{"AccessoryTypeInfo"}]
  GETTABLEKS R4 R2 K3 ["accessoryTypeInfo"]
  SETTABLEKS R4 R3 K1 ["AccessoryTypeInfo"]
  RETURN R3 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K5 ["Packages"]
  GETTABLEKS R5 R6 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["ContextServices"]
  GETTABLEKS R6 R5 K11 ["withContext"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K12 ["AvatarToolsShared"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K13 ["Components"]
  GETTABLEKS R9 R8 K14 ["FlowScreenLayout"]
  GETTABLEKS R11 R7 K15 ["Util"]
  GETTABLEKS R10 R11 K16 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R11 R10 K17 ["ItemCharacteristics"]
  GETTABLEKS R13 R7 K18 ["Contexts"]
  GETTABLEKS R12 R13 K19 ["EditingItemContext"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K20 ["Src"]
  GETTABLEKS R15 R16 K13 ["Components"]
  GETTABLEKS R14 R15 K21 ["AssetTypeSelector"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K20 ["Src"]
  GETTABLEKS R16 R17 K13 ["Components"]
  GETTABLEKS R15 R16 K22 ["ScaleTypeDropdown"]
  CALL R14 1 1
  GETTABLEKS R16 R4 K23 ["UI"]
  GETTABLEKS R15 R16 K24 ["Pane"]
  GETTABLEKS R16 R4 K15 ["Util"]
  GETTABLEKS R17 R16 K25 ["Typecheck"]
  GETTABLEKS R18 R16 K26 ["LayoutOrderIterator"]
  GETTABLEKS R19 R1 K27 ["PureComponent"]
  LOADK R21 K28 ["AssetTypeScreen"]
  NAMECALL R19 R19 K29 ["extend"]
  CALL R19 2 1
  GETTABLEKS R20 R17 K30 ["wrap"]
  MOVE R21 R19
  GETIMPORT R22 K1 [script]
  CALL R20 2 0
  DUPCLOSURE R20 K31 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R20 R19 K32 ["init"]
  DUPCLOSURE R20 K33 [PROTO_3]
  SETTABLEKS R20 R19 K34 ["didMount"]
  DUPCLOSURE R20 K35 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R9
  SETTABLEKS R20 R19 K36 ["render"]
  DUPCLOSURE R20 K37 [PROTO_5]
  SETTABLEKS R20 R19 K38 ["willUnmount"]
  MOVE R20 R6
  DUPTABLE R21 K41 [{"Stylizer", "Localization", "EditingItemContext"}]
  GETTABLEKS R22 R5 K39 ["Stylizer"]
  SETTABLEKS R22 R21 K39 ["Stylizer"]
  GETTABLEKS R22 R5 K40 ["Localization"]
  SETTABLEKS R22 R21 K40 ["Localization"]
  SETTABLEKS R12 R21 K19 ["EditingItemContext"]
  CALL R20 1 1
  MOVE R21 R19
  CALL R20 1 1
  MOVE R19 R20
  DUPCLOSURE R20 K42 [PROTO_6]
  GETTABLEKS R21 R2 K43 ["connect"]
  MOVE R22 R20
  LOADNIL R23
  CALL R21 2 1
  MOVE R22 R19
  CALL R21 1 -1
  RETURN R21 -1
