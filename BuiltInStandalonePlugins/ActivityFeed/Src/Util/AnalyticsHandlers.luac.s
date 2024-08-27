PROTO_0:
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Dictionary"]
  GETTABLEKS R1 R2 K1 ["join"]
  DUPTABLE R2 K4 [{"studioSid", "clientId"}]
  GETUPVAL R3 1
  NAMECALL R3 R3 K5 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["studioSid"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K6 ["GetClientId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["clientId"]
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  LOADK R4 K7 ["studio"]
  LOADK R5 K8 ["ActivityHistory"]
  LOADK R6 K9 ["ActivityHistoryAction"]
  MOVE R7 R1
  NAMECALL R2 R2 K10 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  DUPTABLE R5 K4 [{"analyticsEventType", "bubblesSeenOnSessionEndCount", "placeId", "universeId"}]
  LOADK R6 K5 ["bubblesSeenOnSessionEnd"]
  SETTABLEKS R6 R5 K0 ["analyticsEventType"]
  SETTABLEKS R1 R5 K1 ["bubblesSeenOnSessionEndCount"]
  SETTABLEKS R2 R5 K2 ["placeId"]
  SETTABLEKS R3 R5 K3 ["universeId"]
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  DUPTABLE R4 K3 [{"analyticsEventType", "eventtype", "deeplinktype"}]
  LOADK R5 K4 ["deeplink"]
  SETTABLEKS R5 R4 K0 ["analyticsEventType"]
  SETTABLEKS R1 R4 K1 ["eventtype"]
  SETTABLEKS R2 R4 K2 ["deeplinktype"]
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  DUPTABLE R2 K2 [{"bubblesSeenOnSessionEnd", "deeplink"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["bubblesSeenOnSessionEnd"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["deeplink"]
  RETURN R2 1

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
  DUPCLOSURE R2 K7 [PROTO_3]
  CAPTURE VAL R1
  RETURN R2 1
