PROTO_0:
  GETTABLEKS R2 R1 K0 ["data"]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K2 [pairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_NEXT R5
  GETTABLEKS R10 R9 K3 ["code"]
  GETTABLEKS R11 R9 K4 ["displayName"]
  GETIMPORT R12 K7 [string.format]
  LOADK R13 K8 ["%s (%s)"]
  MOVE R14 R11
  MOVE R15 R10
  CALL R12 3 1
  DUPTABLE R13 K11 [{"code", "name", "displayText"}]
  SETTABLEKS R10 R13 K3 ["code"]
  SETTABLEKS R11 R13 K9 ["name"]
  SETTABLEKS R12 R13 K10 ["displayText"]
  SETTABLE R13 R3 R10
  DUPTABLE R15 K11 [{"code", "name", "displayText"}]
  SETTABLEKS R10 R15 K3 ["code"]
  SETTABLEKS R11 R15 K9 ["name"]
  SETTABLEKS R12 R15 K10 ["displayText"]
  FASTCALL2 TABLE_INSERT R4 R15 [+4]
  MOVE R14 R4
  GETIMPORT R13 K14 [table.insert]
  CALL R13 2 0
  FORGLOOP R5 2 [-32]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["Dictionary"]
  GETTABLEKS R5 R6 K16 ["join"]
  MOVE R6 R0
  DUPTABLE R7 K19 [{"countryRegionTable", "countryRegionList"}]
  SETTABLEKS R3 R7 K17 ["countryRegionTable"]
  SETTABLEKS R4 R7 K18 ["countryRegionList"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["countryRegionCode"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Dictionary"]
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K4 [{"userCountryRegionCode"}]
  SETTABLEKS R2 R5 K3 ["userCountryRegionCode"]
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
  GETTABLEKS R3 R2 K8 ["createReducer"]
  DUPTABLE R4 K12 [{"userCountryRegionCode", "countryRegionTable", "countryRegionList"}]
  LOADK R5 K13 [""]
  SETTABLEKS R5 R4 K9 ["userCountryRegionCode"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["countryRegionTable"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["countryRegionList"]
  DUPTABLE R5 K16 [{"LoadCountryRegion", "OnEmulatedCountryRegionChanged"}]
  DUPCLOSURE R6 K17 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K14 ["LoadCountryRegion"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R1
  SETTABLEKS R6 R5 K15 ["OnEmulatedCountryRegionChanged"]
  CALL R3 2 -1
  RETURN R3 -1
