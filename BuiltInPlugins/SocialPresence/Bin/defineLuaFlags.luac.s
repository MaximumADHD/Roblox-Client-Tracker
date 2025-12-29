PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["FixOldRibbonCollaborateIcon"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["COLLAB5863Telemetry"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["StudioFriendToConnection"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["FixSocialPresenceDropdown"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["FixOldRibbonCollaborateIcon"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K8 [{"getFFlagFixOldRibbonCollaborateIcon"}]
  DUPCLOSURE R1 K9 [PROTO_0]
  SETTABLEKS R1 R0 K7 ["getFFlagFixOldRibbonCollaborateIcon"]
  RETURN R0 1
