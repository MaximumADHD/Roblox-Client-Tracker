PROTO_0:
  GETTABLEKS R2 R1 K0 ["allPolicies"]
  GETTABLEKS R3 R1 K1 ["allPolicySortedKeys"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K4 [{"allPolicies", "allPolicySortedKeys"}]
  SETTABLEKS R2 R6 K0 ["allPolicies"]
  SETTABLEKS R3 R6 K1 ["allPolicySortedKeys"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["policySettingStatus"]
  GETUPVAL R3 0
  MOVE R4 R0
  DUPTABLE R5 K1 [{"policySettingStatus"}]
  SETTABLEKS R2 R5 K0 ["policySettingStatus"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["policyListItemsModuleExpanded"]
  GETUPVAL R3 0
  MOVE R4 R0
  DUPTABLE R5 K1 [{"policyListItemsModuleExpanded"}]
  SETTABLEKS R2 R5 K0 ["policyListItemsModuleExpanded"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K8 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["deepJoin"]
  GETTABLEKS R4 R2 K11 ["createReducer"]
  DUPTABLE R5 K16 [{"allPolicies", "allPolicySortedKeys", "policySettingStatus", "policyListItemsModuleExpanded"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K12 ["allPolicies"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K13 ["allPolicySortedKeys"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K14 ["policySettingStatus"]
  LOADB R6 1
  SETTABLEKS R6 R5 K15 ["policyListItemsModuleExpanded"]
  DUPTABLE R6 K20 [{"LoadAllPolicyValues", "UpdatePolicySettingStatus", "UpdatePolicySettingListItemsModuleExpanded"}]
  DUPCLOSURE R7 K21 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K17 ["LoadAllPolicyValues"]
  DUPCLOSURE R7 K22 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K18 ["UpdatePolicySettingStatus"]
  DUPCLOSURE R7 K23 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K19 ["UpdatePolicySettingListItemsModuleExpanded"]
  CALL R4 2 -1
  RETURN R4 -1
