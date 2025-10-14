PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R1 K5 [{"eventName", "lastUpdated", "description", "links", "customFields"}]
  LOADK R2 K6 ["react_new_devtools_connection"]
  SETTABLEKS R2 R1 K0 ["eventName"]
  NEWTABLE R2 0 3
  LOADN R3 233
  LOADN R4 8
  LOADN R5 28
  SETLIST R2 R3 3 [1]
  SETTABLEKS R2 R1 K1 ["lastUpdated"]
  LOADK R2 K7 ["A new connection to React Devtools"]
  SETTABLEKS R2 R1 K2 ["description"]
  LOADK R2 K8 ["https://roblox.atlassian.net/wiki/spaces/luauee/pages/3836510338/DevTools+Telemetry"]
  SETTABLEKS R2 R1 K3 ["links"]
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K4 ["customFields"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  DUPTABLE R2 K5 [{"eventName", "lastUpdated", "description", "links", "customFields"}]
  LOADK R3 K6 ["react_failed_devtools_connection"]
  SETTABLEKS R3 R2 K0 ["eventName"]
  NEWTABLE R3 0 3
  LOADN R4 233
  LOADN R5 8
  LOADN R6 28
  SETLIST R3 R4 3 [1]
  SETTABLEKS R3 R2 K1 ["lastUpdated"]
  LOADK R3 K7 ["A failed connection to React Devtools"]
  SETTABLEKS R3 R2 K2 ["description"]
  LOADK R3 K8 ["https://roblox.atlassian.net/wiki/spaces/luauee/pages/3836510338/DevTools+Telemetry"]
  SETTABLEKS R3 R2 K3 ["links"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["assign"]
  NEWTABLE R4 0 0
  GETUPVAL R5 2
  DUPTABLE R6 K11 [{"error_type"}]
  SETTABLEKS R0 R6 K10 ["error_type"]
  CALL R3 3 1
  SETTABLEKS R3 R2 K4 ["customFields"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Object"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K7 ["reportCounter"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K8 ["customFields"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  SETTABLEKS R4 R5 K8 ["customFields"]
  DUPCLOSURE R6 K9 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K10 ["reportNewDevtoolsConnection"]
  DUPCLOSURE R7 K11 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R7 R5 K12 ["reportFailedDevtoolsConnection"]
  RETURN R5 1
