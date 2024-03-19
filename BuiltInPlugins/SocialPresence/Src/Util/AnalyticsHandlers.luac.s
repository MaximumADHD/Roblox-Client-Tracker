PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["COLLAB5863Telemetry"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+45]
  MOVE R1 R0
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  MOVE R0 R1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["Dictionary"]
  GETTABLEKS R1 R2 K5 ["join"]
  DUPTABLE R2 K10 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R3 1
  NAMECALL R3 R3 K11 ["GetSessionId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K6 ["studioSid"]
  GETUPVAL R3 1
  NAMECALL R3 R3 K12 ["GetClientId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["clientId"]
  GETIMPORT R4 K1 [game]
  GETTABLEKS R3 R4 K13 ["PlaceId"]
  SETTABLEKS R3 R2 K8 ["placeId"]
  GETUPVAL R3 2
  NAMECALL R3 R3 K14 ["GetUserId"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K9 ["userId"]
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  LOADK R4 K15 ["studio"]
  LOADK R5 K16 ["SocialPresence"]
  LOADK R6 K17 ["StudioSocialPresenceAction"]
  MOVE R7 R1
  NAMECALL R2 R2 K18 ["SendEventDeferred"]
  CALL R2 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"actionName"}]
  JUMPIFNOT R1 [+2]
  LOADK R4 K2 ["panelEnabled"]
  JUMP [+1]
  LOADK R4 K3 ["panelDisabled"]
  SETTABLEKS R4 R3 K0 ["actionName"]
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  DUPTABLE R3 K1 [{"actionName"}]
  JUMPIFNOT R1 [+2]
  LOADK R4 K2 ["highlightsEnabled"]
  JUMP [+1]
  LOADK R4 K3 ["highlightsDisabled"]
  SETTABLEKS R4 R3 K0 ["actionName"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"actionName"}]
  SETTABLEKS R0 R2 K0 ["actionName"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R2 K1 [{"actionName"}]
  SETTABLEKS R0 R2 K0 ["actionName"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  DUPTABLE R2 K4 [{"panelToggled", "highlightsToggled", "jumpToCollaboratorPressed", "manageCollaboratorsPressed"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["panelToggled"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["highlightsToggled"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["jumpToCollaboratorPressed"]
  NEWCLOSURE R3 P4
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K3 ["manageCollaboratorsPressed"]
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
  GETIMPORT R2 K8 [game]
  LOADK R4 K9 ["StudioService"]
  NAMECALL R2 R2 K10 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K11 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R3 1
