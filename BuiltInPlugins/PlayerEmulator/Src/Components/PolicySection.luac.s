PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Networking"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Plugin"]
  NAMECALL R2 R2 K2 ["get"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K4 ["loadAllPolicyItems"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["mainSwitchEnabled"]
  GETTABLEKS R4 R1 K3 ["allPolicies"]
  GETTABLEKS R5 R1 K4 ["allPolicySortedKeys"]
  GETTABLEKS R6 R1 K5 ["policySettingStatus"]
  GETTABLEKS R7 R1 K6 ["updateToggleItem"]
  GETTABLEKS R8 R1 K7 ["updateListItem"]
  GETTABLEKS R9 R1 K8 ["policyListItemsModuleExpanded"]
  GETTABLEKS R10 R1 K9 ["updatePolicySettingListItemModuleExpanded"]
  GETTABLEKS R11 R1 K10 ["customPoliciesEnabled"]
  JUMPIF R11 [+2]
  LOADNIL R11
  RETURN R11 1
  NEWTABLE R11 0 0
  NEWTABLE R12 0 0
  GETIMPORT R13 K12 [ipairs]
  MOVE R14 R5
  CALL R13 1 3
  FORGPREP_INEXT R13
  GETTABLE R19 R4 R17
  FASTCALL1 TYPE R19 [+2]
  GETIMPORT R18 K14 [type]
  CALL R18 1 1
  JUMPIFNOTEQKS R18 K15 ["boolean"] [+21]
  GETTABLE R18 R6 R17
  LOADK R20 K16 ["Toggle"]
  MOVE R21 R17
  CONCAT R19 R20 R21
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K17 ["createElement"]
  GETUPVAL R21 1
  DUPTABLE R22 K22 [{"Key", "IsOn", "Enabled", "ToggleCallback"}]
  SETTABLEKS R17 R22 K18 ["Key"]
  SETTABLEKS R18 R22 K19 ["IsOn"]
  SETTABLEKS R3 R22 K20 ["Enabled"]
  SETTABLEKS R7 R22 K21 ["ToggleCallback"]
  CALL R20 2 1
  SETTABLE R20 R11 R19
  JUMP [+33]
  GETTABLE R19 R4 R17
  FASTCALL1 TYPE R19 [+2]
  GETIMPORT R18 K14 [type]
  CALL R18 1 1
  JUMPIFNOTEQKS R18 K23 ["table"] [+27]
  LOADK R19 K24 ["List"]
  MOVE R20 R17
  CONCAT R18 R19 R20
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 2
  DUPTABLE R21 K31 [{"LabelText", "Enabled", "Items", "ListItemsCheckBoxCallback", "ListStatus", "ListItemsModuleExpansionCallback", "Expanded"}]
  SETTABLEKS R17 R21 K25 ["LabelText"]
  SETTABLEKS R3 R21 K20 ["Enabled"]
  GETTABLE R22 R4 R17
  SETTABLEKS R22 R21 K26 ["Items"]
  SETTABLEKS R8 R21 K27 ["ListItemsCheckBoxCallback"]
  GETTABLE R22 R6 R17
  SETTABLEKS R22 R21 K28 ["ListStatus"]
  SETTABLEKS R10 R21 K29 ["ListItemsModuleExpansionCallback"]
  SETTABLEKS R9 R21 K30 ["Expanded"]
  CALL R19 2 1
  SETTABLE R19 R12 R18
  FORGLOOP R13 2 [inext] [-61]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K17 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K35 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R16 K38 [Enum.AutomaticSize.Y]
  SETTABLEKS R16 R15 K32 ["AutomaticSize"]
  GETIMPORT R16 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K33 ["HorizontalAlignment"]
  GETIMPORT R16 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K34 ["Layout"]
  SETTABLEKS R2 R15 K1 ["LayoutOrder"]
  DUPTABLE R16 K46 [{"ToggleElementsFrame", "ListElementsFrame"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K17 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K35 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R20 K38 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K32 ["AutomaticSize"]
  GETIMPORT R20 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K33 ["HorizontalAlignment"]
  GETIMPORT R20 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K34 ["Layout"]
  LOADN R20 1
  SETTABLEKS R20 R19 K1 ["LayoutOrder"]
  MOVE R20 R11
  CALL R17 3 1
  SETTABLEKS R17 R16 K44 ["ToggleElementsFrame"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K17 ["createElement"]
  GETUPVAL R18 3
  DUPTABLE R19 K35 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R20 K38 [Enum.AutomaticSize.Y]
  SETTABLEKS R20 R19 K32 ["AutomaticSize"]
  GETIMPORT R20 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K33 ["HorizontalAlignment"]
  GETIMPORT R20 K43 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K34 ["Layout"]
  LOADN R20 2
  SETTABLEKS R20 R19 K1 ["LayoutOrder"]
  MOVE R20 R12
  CALL R17 3 1
  SETTABLEKS R17 R16 K45 ["ListElementsFrame"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_2:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["PlayerEmulatorDropdownOpenedStateTrackingEnabled"]
  NAMECALL R2 R2 K3 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIFNOT R2 [+38]
  DUPTABLE R2 K10 [{"mainSwitchEnabled", "customPoliciesEnabled", "allPolicies", "allPolicySortedKeys", "policySettingStatus", "policyListItemsModuleExpanded"}]
  GETTABLEKS R4 R0 K11 ["MainSwitch"]
  GETTABLEKS R3 R4 K4 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K4 ["mainSwitchEnabled"]
  GETTABLEKS R4 R0 K12 ["CustomPolicySwitch"]
  GETTABLEKS R3 R4 K5 ["customPoliciesEnabled"]
  SETTABLEKS R3 R2 K5 ["customPoliciesEnabled"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K6 ["allPolicies"]
  SETTABLEKS R3 R2 K6 ["allPolicies"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K7 ["allPolicySortedKeys"]
  SETTABLEKS R3 R2 K7 ["allPolicySortedKeys"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K8 ["policySettingStatus"]
  SETTABLEKS R3 R2 K8 ["policySettingStatus"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K9 ["policyListItemsModuleExpanded"]
  SETTABLEKS R3 R2 K9 ["policyListItemsModuleExpanded"]
  RETURN R2 1
  DUPTABLE R2 K14 [{"mainSwitchEnabled", "customPoliciesEnabled", "allPolicies", "allPolicySortedKeys", "policySettingStatus"}]
  GETTABLEKS R4 R0 K11 ["MainSwitch"]
  GETTABLEKS R3 R4 K4 ["mainSwitchEnabled"]
  SETTABLEKS R3 R2 K4 ["mainSwitchEnabled"]
  GETTABLEKS R4 R0 K12 ["CustomPolicySwitch"]
  GETTABLEKS R3 R4 K5 ["customPoliciesEnabled"]
  SETTABLEKS R3 R2 K5 ["customPoliciesEnabled"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K6 ["allPolicies"]
  SETTABLEKS R3 R2 K6 ["allPolicies"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K7 ["allPolicySortedKeys"]
  SETTABLEKS R3 R2 K7 ["allPolicySortedKeys"]
  GETTABLEKS R4 R0 K13 ["Policies"]
  GETTABLEKS R3 R4 K8 ["policySettingStatus"]
  SETTABLEKS R3 R2 K8 ["policySettingStatus"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K4 [{"loadAllPolicyItems", "updateToggleItem", "updateListItem", "updatePolicySettingListItemModuleExpanded"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["loadAllPolicyItems"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["updateToggleItem"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["updateListItem"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["updatePolicySettingListItemModuleExpanded"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
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
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K9 ["ContextServices"]
  GETTABLEKS R7 R8 K12 ["NetworkingContext"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K13 ["UI"]
  GETTABLEKS R8 R7 K14 ["Pane"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K15 ["Networking"]
  GETTABLEKS R11 R12 K16 ["Requests"]
  GETTABLEKS R10 R11 K17 ["GetPolicySettings"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K18 ["Thunks"]
  GETTABLEKS R11 R12 K19 ["UpdatePolicyBooleanItem"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K18 ["Thunks"]
  GETTABLEKS R12 R13 K20 ["UpdatePolicyListItem"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K18 ["Thunks"]
  GETTABLEKS R13 R14 K21 ["UpdatePolicyListItemModuleExpanded"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K11 ["Src"]
  GETTABLEKS R15 R16 K22 ["Components"]
  GETTABLEKS R14 R15 K23 ["ToggleItemModule"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K11 ["Src"]
  GETTABLEKS R16 R17 K22 ["Components"]
  GETTABLEKS R15 R16 K24 ["ListItemsModule"]
  CALL R14 1 1
  GETTABLEKS R15 R1 K25 ["PureComponent"]
  LOADK R17 K26 ["PolicySection"]
  NAMECALL R15 R15 K27 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K28 [PROTO_0]
  SETTABLEKS R16 R15 K29 ["didMount"]
  DUPCLOSURE R16 K30 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R8
  SETTABLEKS R16 R15 K31 ["render"]
  MOVE R16 R5
  DUPTABLE R17 K33 [{"Networking", "Plugin"}]
  SETTABLEKS R6 R17 K15 ["Networking"]
  GETTABLEKS R18 R4 K32 ["Plugin"]
  SETTABLEKS R18 R17 K32 ["Plugin"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  DUPCLOSURE R16 K34 [PROTO_2]
  DUPCLOSURE R17 K35 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  GETTABLEKS R18 R2 K36 ["connect"]
  MOVE R19 R16
  MOVE R20 R17
  CALL R18 2 1
  MOVE R19 R15
  CALL R18 1 -1
  RETURN R18 -1
