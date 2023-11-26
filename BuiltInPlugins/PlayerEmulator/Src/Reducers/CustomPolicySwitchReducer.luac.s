PROTO_0:
  GETTABLEKS R2 R1 K0 ["enabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"customPolicySwitchEnabled"}]
  SETTABLEKS R2 R5 K3 ["customPolicySwitchEnabled"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["enabled"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"customPoliciesEnabled"}]
  SETTABLEKS R2 R5 K3 ["customPoliciesEnabled"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["countryRegionCode"]
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K1 ["regionCodeWillHaveAutomaticNonCustomPolicies"]
  CALL R3 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K5 [{"customPolicySwitchActive"}]
  SETTABLEKS R3 R6 K4 ["customPolicySwitchActive"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["PlayerEmulatorService"]
  NAMECALL R3 R3 K11 ["GetService"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K12 ["createReducer"]
  DUPTABLE R5 K16 [{"customPolicySwitchEnabled", "customPolicySwitchActive", "customPoliciesEnabled"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K13 ["customPolicySwitchEnabled"]
  LOADB R6 0
  SETTABLEKS R6 R5 K14 ["customPolicySwitchActive"]
  LOADB R6 0
  SETTABLEKS R6 R5 K15 ["customPoliciesEnabled"]
  DUPTABLE R6 K20 [{"OnCustomPolicySwitchEnabledChanged", "OnCustomPolicyEnabledChanged", "OnEmulatedCountryRegionChanged"}]
  DUPCLOSURE R7 K21 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K17 ["OnCustomPolicySwitchEnabledChanged"]
  DUPCLOSURE R7 K22 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K18 ["OnCustomPolicyEnabledChanged"]
  DUPCLOSURE R7 K23 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K19 ["OnEmulatedCountryRegionChanged"]
  CALL R4 2 -1
  RETURN R4 -1
