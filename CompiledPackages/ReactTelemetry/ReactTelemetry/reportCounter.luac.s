PROTO_0:
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  DUPTABLE R1 K5 [{"eventName", "backends", "lastUpdated", "description", "links"}]
  GETTABLEKS R2 R0 K0 ["eventName"]
  SETTABLEKS R2 R1 K0 ["eventName"]
  NEWTABLE R2 0 1
  LOADK R3 K6 ["RobloxTelemetryCounter"]
  SETLIST R2 R3 1 [1]
  SETTABLEKS R2 R1 K1 ["backends"]
  GETTABLEKS R2 R0 K2 ["lastUpdated"]
  SETTABLEKS R2 R1 K2 ["lastUpdated"]
  GETTABLEKS R2 R0 K3 ["description"]
  SETTABLEKS R2 R1 K3 ["description"]
  GETTABLEKS R2 R0 K4 ["links"]
  SETTABLEKS R2 R1 K4 ["links"]
  DUPTABLE R2 K8 [{"customFields"}]
  GETTABLEKS R3 R0 K7 ["customFields"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["customFields"]
  GETIMPORT R3 K10 [pcall]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["LogCounter"]
  GETUPVAL R5 1
  MOVE R6 R1
  MOVE R7 R2
  GETTABLEKS R8 R0 K12 ["value"]
  CALL R3 5 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K13 ["__DEV__"]
  JUMPIFNOT R5 [+10]
  JUMPIF R3 [+9]
  GETIMPORT R5 K15 [warn]
  LOADK R7 K16 ["React telemetry collection is enabled but log failed: %*"]
  MOVE R9 R4
  NAMECALL R7 R7 K17 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R5 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TelemetryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R3 R1 K9 ["SafeFlags"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K10 ["ReactGlobals"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["createGetFFlag"]
  LOADK R5 K12 ["ReactTelemetryEnabled"]
  LOADB R6 0
  CALL R4 2 1
  CALL R4 0 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R5 1
