PROTO_0:
  DUPTABLE R1 K5 [{"actionName", "studioSid", "clientId", "placeId", "userId"}]
  SETTABLEKS R0 R1 K0 ["actionName"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K6 ["GetSessionId"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["studioSid"]
  GETUPVAL R2 0
  NAMECALL R2 R2 K7 ["GetClientId"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K2 ["clientId"]
  GETIMPORT R3 K9 [game]
  GETTABLEKS R2 R3 K10 ["PlaceId"]
  SETTABLEKS R2 R1 K3 ["placeId"]
  GETUPVAL R2 1
  NAMECALL R2 R2 K11 ["GetUserId"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K4 ["userId"]
  GETUPVAL R2 0
  LOADK R4 K12 ["studio"]
  LOADK R5 K13 ["SocialPresence"]
  LOADK R6 K14 ["StudioSocialPresenceAction"]
  MOVE R7 R1
  NAMECALL R2 R2 K15 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R1 K1 [{"manageCollaboratorsPressed"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["manageCollaboratorsPressed"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_1]
  CAPTURE VAL R0
  RETURN R1 1
