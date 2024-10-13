PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"screenSize"}]
  GETTABLEKS R5 R1 K0 ["screenSize"]
  SETTABLEKS R5 R4 K0 ["screenSize"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"emulationDeviceId"}]
  GETTABLEKS R5 R1 K0 ["emulationDeviceId"]
  SETTABLEKS R5 R4 K0 ["emulationDeviceId"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"emulationDeviceOrientation"}]
  GETTABLEKS R5 R1 K2 ["orientation"]
  SETTABLEKS R5 R4 K0 ["emulationDeviceOrientation"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Actions"]
  GETTABLEKS R6 R7 K12 ["RecordTab"]
  GETTABLEKS R5 R6 K13 ["SetScreenSize"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Actions"]
  GETTABLEKS R7 R8 K12 ["RecordTab"]
  GETTABLEKS R6 R7 K14 ["SetEmulationDeviceId"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Actions"]
  GETTABLEKS R8 R9 K12 ["RecordTab"]
  GETTABLEKS R7 R8 K15 ["SetEmulationDeviceOrientation"]
  CALL R6 1 1
  DUPTABLE R7 K19 [{"screenSize", "emulationDeviceId", "emulationDeviceOrientation"}]
  GETIMPORT R8 K22 [Vector2.new]
  CALL R8 0 1
  SETTABLEKS R8 R7 K16 ["screenSize"]
  LOADK R8 K23 ["Unknown"]
  SETTABLEKS R8 R7 K17 ["emulationDeviceId"]
  LOADK R8 K23 ["Unknown"]
  SETTABLEKS R8 R7 K18 ["emulationDeviceOrientation"]
  GETTABLEKS R8 R1 K24 ["createReducer"]
  MOVE R9 R7
  DUPTABLE R10 K25 [{"SetScreenSize", "SetEmulationDeviceId", "SetEmulationDeviceOrientation"}]
  DUPCLOSURE R11 K26 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K13 ["SetScreenSize"]
  DUPCLOSURE R11 K27 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K14 ["SetEmulationDeviceId"]
  DUPCLOSURE R11 K28 [PROTO_2]
  CAPTURE VAL R3
  SETTABLEKS R11 R10 K15 ["SetEmulationDeviceOrientation"]
  CALL R8 2 -1
  RETURN R8 -1
