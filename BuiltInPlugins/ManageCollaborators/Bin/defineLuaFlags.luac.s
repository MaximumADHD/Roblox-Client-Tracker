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
  LOADK R2 K10 ["Collab7855_HandleUnknownPermission2"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K11 ["Collab7855_LogUnknownPermissions"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K12 ["StudioFriendToConnection"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K13 ["Collab6182_LightThemeHighlightCollabSearchBox"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K14 ["COLLAB8701_LogAddUserCollaboratorEvent"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K15 ["COLLAB8701_LogRemoveUserCollaboratorEvent"]
  LOADB R3 0
  NAMECALL R0 R0 K5 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K16 ["AddUserCollaboratorEventThrottleHundrethsPercent"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K17 ["RemoveUserCollaboratorEventThrottleHundrethsPercent"]
  LOADN R3 0
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1
