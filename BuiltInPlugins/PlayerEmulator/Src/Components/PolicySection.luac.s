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
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["LayoutOrder"]
  GETTABLEKS R4 R1 K3 ["mainSwitchEnabled"]
  GETTABLEKS R5 R1 K4 ["allPolicies"]
  GETTABLEKS R6 R1 K5 ["allPolicySortedKeys"]
  GETTABLEKS R7 R1 K6 ["policySettingStatus"]
  GETTABLEKS R8 R1 K7 ["updateToggleItem"]
  GETTABLEKS R9 R1 K8 ["updateListItem"]
  GETTABLEKS R10 R1 K9 ["policyListItemsModuleExpanded"]
  GETTABLEKS R11 R1 K10 ["updatePolicySettingListItemModuleExpanded"]
  GETTABLEKS R12 R1 K11 ["customPoliciesEnabled"]
  JUMPIF R12 [+2]
  LOADNIL R12
  RETURN R12 1
  NEWTABLE R12 0 0
  NEWTABLE R13 0 0
  GETIMPORT R14 K13 [ipairs]
  MOVE R15 R6
  CALL R14 1 3
  FORGPREP_INEXT R14
  GETTABLE R20 R5 R18
  FASTCALL1 TYPE R20 [+2]
  GETIMPORT R19 K15 [type]
  CALL R19 1 1
  JUMPIFNOTEQKS R19 K16 ["boolean"] [+21]
  GETTABLE R19 R7 R18
  LOADK R21 K17 ["Toggle"]
  MOVE R22 R18
  CONCAT R20 R21 R22
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R22 1
  DUPTABLE R23 K23 [{"Key", "IsOn", "Enabled", "ToggleCallback"}]
  SETTABLEKS R18 R23 K19 ["Key"]
  SETTABLEKS R19 R23 K20 ["IsOn"]
  SETTABLEKS R4 R23 K21 ["Enabled"]
  SETTABLEKS R8 R23 K22 ["ToggleCallback"]
  CALL R21 2 1
  SETTABLE R21 R12 R20
  JUMP [+33]
  GETTABLE R20 R5 R18
  FASTCALL1 TYPE R20 [+2]
  GETIMPORT R19 K15 [type]
  CALL R19 1 1
  JUMPIFNOTEQKS R19 K24 ["table"] [+27]
  LOADK R20 K25 ["List"]
  MOVE R21 R18
  CONCAT R19 R20 R21
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 2
  DUPTABLE R22 K32 [{"LabelText", "Enabled", "Items", "ListItemsCheckBoxCallback", "ListStatus", "ListItemsModuleExpansionCallback", "Expanded"}]
  SETTABLEKS R18 R22 K26 ["LabelText"]
  SETTABLEKS R4 R22 K21 ["Enabled"]
  GETTABLE R23 R5 R18
  SETTABLEKS R23 R22 K27 ["Items"]
  SETTABLEKS R9 R22 K28 ["ListItemsCheckBoxCallback"]
  GETTABLE R23 R7 R18
  SETTABLEKS R23 R22 K29 ["ListStatus"]
  SETTABLEKS R11 R22 K30 ["ListItemsModuleExpansionCallback"]
  SETTABLEKS R10 R22 K31 ["Expanded"]
  CALL R20 2 1
  SETTABLE R20 R13 R19
  FORGLOOP R14 2 [inext] [-61]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K18 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K36 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
  GETIMPORT R17 K39 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K33 ["AutomaticSize"]
  GETIMPORT R17 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R17 R16 K34 ["HorizontalAlignment"]
  GETIMPORT R17 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R17 R16 K35 ["Layout"]
  SETTABLEKS R3 R16 K2 ["LayoutOrder"]
  DUPTABLE R17 K47 [{"ToggleElementsFrame", "ListElementsFrame"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K18 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K49 [{"AutomaticSize", "HorizontalAlignment", "Spacing", "Layout", "LayoutOrder"}]
  GETIMPORT R21 K39 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K33 ["AutomaticSize"]
  GETIMPORT R21 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K34 ["HorizontalAlignment"]
  GETUPVAL R22 4
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R2 K50 ["HORIZONTAL_LISTLAYOUT_PADDING"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K48 ["Spacing"]
  GETIMPORT R21 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K35 ["Layout"]
  LOADN R21 1
  SETTABLEKS R21 R20 K2 ["LayoutOrder"]
  MOVE R21 R12
  CALL R18 3 1
  SETTABLEKS R18 R17 K45 ["ToggleElementsFrame"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K18 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K49 [{"AutomaticSize", "HorizontalAlignment", "Spacing", "Layout", "LayoutOrder"}]
  GETIMPORT R21 K39 [Enum.AutomaticSize.Y]
  SETTABLEKS R21 R20 K33 ["AutomaticSize"]
  GETIMPORT R21 K41 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R21 R20 K34 ["HorizontalAlignment"]
  GETUPVAL R22 4
  JUMPIFNOT R22 [+3]
  GETTABLEKS R21 R2 K50 ["HORIZONTAL_LISTLAYOUT_PADDING"]
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K48 ["Spacing"]
  GETIMPORT R21 K44 [Enum.FillDirection.Vertical]
  SETTABLEKS R21 R20 K35 ["Layout"]
  LOADN R21 2
  SETTABLEKS R21 R20 K2 ["LayoutOrder"]
  MOVE R21 R13
  CALL R18 3 1
  SETTABLEKS R18 R17 K46 ["ListElementsFrame"]
  CALL R14 3 -1
  RETURN R14 -1

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
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnablePseudolocalizationInPlayerEmulator2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
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
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["withContext"]
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K15 ["Src"]
  GETTABLEKS R9 R10 K13 ["ContextServices"]
  GETTABLEKS R8 R9 K16 ["NetworkingContext"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K17 ["UI"]
  GETTABLEKS R9 R8 K18 ["Pane"]
  GETIMPORT R10 K8 [require]
  GETTABLEKS R14 R1 K15 ["Src"]
  GETTABLEKS R13 R14 K19 ["Networking"]
  GETTABLEKS R12 R13 K20 ["Requests"]
  GETTABLEKS R11 R12 K21 ["GetPolicySettings"]
  CALL R10 1 1
  GETIMPORT R11 K8 [require]
  GETTABLEKS R14 R1 K15 ["Src"]
  GETTABLEKS R13 R14 K22 ["Thunks"]
  GETTABLEKS R12 R13 K23 ["UpdatePolicyBooleanItem"]
  CALL R11 1 1
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K15 ["Src"]
  GETTABLEKS R14 R15 K22 ["Thunks"]
  GETTABLEKS R13 R14 K24 ["UpdatePolicyListItem"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K15 ["Src"]
  GETTABLEKS R15 R16 K22 ["Thunks"]
  GETTABLEKS R14 R15 K25 ["UpdatePolicyListItemModuleExpanded"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K15 ["Src"]
  GETTABLEKS R16 R17 K26 ["Components"]
  GETTABLEKS R15 R16 K27 ["ToggleItemModule"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K15 ["Src"]
  GETTABLEKS R17 R18 K26 ["Components"]
  GETTABLEKS R16 R17 K28 ["ListItemsModule"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K29 ["PureComponent"]
  LOADK R18 K30 ["PolicySection"]
  NAMECALL R16 R16 K31 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K32 [PROTO_0]
  SETTABLEKS R17 R16 K33 ["didMount"]
  DUPCLOSURE R17 K34 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R9
  CAPTURE VAL R0
  SETTABLEKS R17 R16 K35 ["render"]
  MOVE R17 R6
  DUPTABLE R18 K38 [{"Networking", "Plugin", "Stylizer"}]
  SETTABLEKS R7 R18 K19 ["Networking"]
  GETTABLEKS R19 R5 K36 ["Plugin"]
  SETTABLEKS R19 R18 K36 ["Plugin"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R19 R5 K37 ["Stylizer"]
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K37 ["Stylizer"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K39 [PROTO_2]
  DUPCLOSURE R18 K40 [PROTO_7]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  GETTABLEKS R19 R3 K41 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
