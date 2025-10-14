PROTO_0:
  JUMPIFNOT R0 [+2]
  LOADK R1 K0 ["FilePublishPlaceAsCancel"]
  JUMP [+1]
  LOADK R1 K1 ["FileSavePlaceAsCancel"]
  DUPTABLE R2 K4 [{"userId", "studioSid"}]
  GETUPVAL R3 0
  NAMECALL R3 R3 K5 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["userId"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K6 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["studioSid"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K7 ["GetPlaceIsPersistedToCloud"]
  CALL R3 1 1
  JUMPIFNOT R3 [+15]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K8 ["Dictionary"]
  GETTABLEKS R3 R4 K9 ["join"]
  MOVE R4 R2
  DUPTABLE R5 K11 [{"placeId"}]
  GETIMPORT R7 K13 [game]
  GETTABLEKS R6 R7 K14 ["PlaceId"]
  SETTABLEKS R6 R5 K10 ["placeId"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R3 1
  LOADK R5 K15 ["studio"]
  LOADK R6 K16 ["TeamCreate"]
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R3 R3 K17 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R4 K5 [{"userId", "dataSharingFetchState", "dataSharingEnabled", "universeId", "groupId"}]
  GETUPVAL R5 0
  NAMECALL R5 R5 K6 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["userId"]
  SETTABLEKS R0 R4 K1 ["dataSharingFetchState"]
  SETTABLEKS R1 R4 K2 ["dataSharingEnabled"]
  SETTABLEKS R2 R4 K3 ["universeId"]
  SETTABLEKS R3 R4 K4 ["groupId"]
  GETUPVAL R5 1
  LOADK R7 K7 ["studio"]
  LOADK R8 K8 ["CreateNewGame"]
  LOADK R9 K9 ["DataSharingUniverseCreation"]
  MOVE R10 R4
  NAMECALL R5 R5 K10 ["SendEventDeferred"]
  CALL R5 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["Dictionary"]
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R1
  DUPTABLE R4 K7 [{"userId", "studioSid", "placeId"}]
  GETUPVAL R5 2
  NAMECALL R5 R5 K8 ["GetUserId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K4 ["userId"]
  GETUPVAL R5 3
  NAMECALL R5 R5 K9 ["GetSessionId"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["studioSid"]
  GETIMPORT R6 K11 [game]
  GETTABLEKS R5 R6 K12 ["PlaceId"]
  SETTABLEKS R5 R4 K6 ["placeId"]
  CALL R2 2 1
  GETUPVAL R3 3
  LOADK R5 K13 ["studio"]
  LOADK R6 K14 ["PublishSuccessful"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K15 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["RbxAnalyticsService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K12 ["ShowRatingDuringPublish"]
  NAMECALL R4 R4 K13 ["GetFastFlag"]
  CALL R4 2 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K15 ["reportSaveCancel"]
  DUPCLOSURE R6 K16 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K17 ["reportDataSharingToEventIngest"]
  DUPCLOSURE R6 K18 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K19 ["sendEventDeferred"]
  RETURN R5 1
