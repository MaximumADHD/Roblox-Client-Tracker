MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableSocialPresence"]
  LOADN R3 3
  NAMECALL R0 R0 K3 ["SetFlagVersion"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["EnableSocialPresence"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["COLLAB5863Telemetry"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["FixSocialPresenceDropdown"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["COLLAB6395SocialPresenceStylesheets"]
  LOADB R3 0
  NAMECALL R0 R0 K4 ["DefineFastFlag"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
