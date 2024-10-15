MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["TeamCreateMaxCollaborators"]
  LOADN R3 200
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["COLLAB2699FixSaveChangesLogic"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["COLLAB2850_FixMcTooltips"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K7 ["COLLAB4802_FixManageCollabLanguageBug"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K8 ["StudioManageCollabWideBox2"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K9 ["StudioManageCollabFixFocusError"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K10 ["StudioManageCollabFixClearDoubleClick"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
