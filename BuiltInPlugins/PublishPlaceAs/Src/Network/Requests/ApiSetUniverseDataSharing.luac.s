PROTO_0:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["Error setting universe data sharing configuration"]
  MOVE R3 R0
  CALL R1 2 0
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  DUPTABLE R1 K3 [{"Url", "Method", "Body"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["BuildRobloxUrl"]
  LOADK R3 K5 ["apis"]
  LOADK R4 K6 ["resource-settings/v1/universes"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["Url"]
  LOADK R2 K7 ["POST"]
  SETTABLEKS R2 R1 K1 ["Method"]
  GETUPVAL R2 1
  DUPTABLE R4 K9 [{"configurations"}]
  NEWTABLE R5 0 1
  DUPTABLE R6 K12 [{"universeId", "dataSharingLicenseTypes"}]
  SETTABLEKS R0 R6 K10 ["universeId"]
  NEWTABLE R7 0 1
  LOADK R8 K13 ["RobloxGlobal"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K11 ["dataSharingLicenseTypes"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K8 ["configurations"]
  NAMECALL R2 R2 K14 ["JSONEncode"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K2 ["Body"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K15 ["Request"]
  MOVE R3 R1
  CALL R2 1 1
  DUPCLOSURE R4 K16 [PROTO_0]
  NAMECALL R2 R2 K17 ["catch"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Network"]
  GETTABLEKS R3 R4 K11 ["Http"]
  CALL R2 1 1
  DUPCLOSURE R3 K12 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R0
  RETURN R3 1
