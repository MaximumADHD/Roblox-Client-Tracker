PROTO_0:
  GETUPVAL R0 1
  DUPTABLE R2 K4 [{"Url", "Method", "Headers", "Body"}]
  LOADK R4 K5 ["%*/telemetry"]
  LOADNIL R6
  NAMECALL R4 R4 K6 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K0 ["Url"]
  LOADK R3 K7 ["POST"]
  SETTABLEKS R3 R2 K1 ["Method"]
  NEWTABLE R3 1 0
  LOADK R4 K8 ["application/json"]
  SETTABLEKS R4 R3 K9 ["Content-Type"]
  SETTABLEKS R3 R2 K2 ["Headers"]
  GETUPVAL R3 1
  GETUPVAL R5 2
  NAMECALL R3 R3 K10 ["JSONEncode"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K3 ["Body"]
  NAMECALL R0 R0 K11 ["RequestAsync"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["get"]
  LOADB R2 0
  CALL R1 1 1
  GETTABLEKS R2 R1 K1 ["getStorage"]
  LOADB R3 0
  CALL R2 1 1
  GETTABLEKS R3 R2 K2 ["collectAnonymousUsageData"]
  JUMPIF R3 [+1]
  RETURN R0 0
  DUPTABLE R3 K9 [{"eventName", "properties", "anonymizedUserId", "buildVersion", "buildChannel", "buildHash"}]
  GETTABLEKS R4 R0 K3 ["eventName"]
  SETTABLEKS R4 R3 K3 ["eventName"]
  GETTABLEKS R4 R0 K4 ["properties"]
  SETTABLEKS R4 R3 K4 ["properties"]
  GETUPVAL R4 1
  CALL R4 0 1
  SETTABLEKS R4 R3 K5 ["anonymizedUserId"]
  LOADK R4 K10 ["2.3.0"]
  SETTABLEKS R4 R3 K6 ["buildVersion"]
  LOADK R4 K11 ["production"]
  SETTABLEKS R4 R3 K7 ["buildChannel"]
  LOADK R4 K12 ["56f03d9"]
  SETTABLEKS R4 R3 K8 ["buildHash"]
  LOADNIL R4
  GETIMPORT R5 K14 [pcall]
  NEWCLOSURE R6 P0
  CAPTURE REF R4
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CALL R5 1 2
  CLOSEUPVALS R4
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["UserSettings"]
  GETTABLEKS R2 R3 K10 ["UserSettingsStore"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K11 ["getAnonymizedUserId"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K7 [script]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K12 ["types"]
  CALL R3 1 1
  DUPCLOSURE R4 K13 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R4 1
