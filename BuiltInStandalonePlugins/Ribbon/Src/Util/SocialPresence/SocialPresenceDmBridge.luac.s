PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetCollaboratorsList"]
  CALL R0 1 1
  NEWTABLE R1 0 0
  GETIMPORT R2 K2 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  DUPTABLE R7 K7 [{"UserId", "CollaboratorColor3", "Username", "IsIdle"}]
  GETTABLEKS R8 R6 K3 ["UserId"]
  SETTABLEKS R8 R7 K3 ["UserId"]
  GETTABLEKS R8 R6 K4 ["CollaboratorColor3"]
  SETTABLEKS R8 R7 K4 ["CollaboratorColor3"]
  GETUPVAL R9 1
  JUMPIFNOT R9 [+3]
  GETTABLEKS R8 R6 K5 ["Username"]
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K5 ["Username"]
  GETTABLEKS R8 R6 K6 ["IsIdle"]
  SETTABLEKS R8 R7 K6 ["IsIdle"]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [inext] [-23]
  GETUPVAL R2 2
  LOADK R4 K8 ["UpdateCollaborators"]
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["Invoke"]
  CALL R2 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADK R1 K1 ["ManageCollaborators"]
  CALL R0 1 1
  LOADK R3 K2 ["ToggleManageCollaborators"]
  NAMECALL R1 R0 K3 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADK R1 K1 ["SocialPresence"]
  CALL R0 1 1
  LOADK R3 K2 ["ToggleSocialPresenceWidget"]
  NAMECALL R1 R0 K3 ["Fire"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CollaboratorsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  GETTABLEKS R3 R1 K4 ["CollaboratorInstanceCreatedSignal"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K6 ["CollaboratorInstanceDestroyedSignal"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 0
  GETTABLEKS R3 R1 K7 ["CollaboratorIdleUpdate"]
  MOVE R5 R2
  NAMECALL R3 R3 K5 ["Connect"]
  CALL R3 2 0
  LOADK R5 K8 ["RequestAssetCollaborators"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  NAMECALL R3 R0 K9 ["OnInvoke"]
  CALL R3 3 0
  LOADK R5 K10 ["OpenManageCollaborators"]
  DUPCLOSURE R6 K11 [PROTO_2]
  CAPTURE UPVAL U1
  NAMECALL R3 R0 K9 ["OnInvoke"]
  CALL R3 3 0
  LOADK R5 K12 ["ToggleSocialPresenceWidget"]
  DUPCLOSURE R6 K13 [PROTO_3]
  CAPTURE UPVAL U1
  NAMECALL R3 R0 K9 ["OnInvoke"]
  CALL R3 3 0
  MOVE R3 R2
  CALL R3 0 0
  RETURN R0 0

PROTO_5:
  LOADK R3 K0 ["RequestAssetCollaborators"]
  NAMECALL R1 R0 K1 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  LOADK R3 K0 ["OpenManageCollaborators"]
  NAMECALL R1 R0 K1 ["Invoke"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_7:
  LOADK R3 K0 ["ToggleSocialPresenceWidget"]
  NAMECALL R1 R0 K1 ["Invoke"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  LOADK R4 K0 ["UpdateCollaborators"]
  MOVE R5 R1
  NAMECALL R2 R0 K1 ["OnInvoke"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_9:
  LOADK R4 K0 ["DmChanged"]
  MOVE R5 R1
  NAMECALL R2 R0 K1 ["OnInvoke"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["CrossPluginCommunication"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K12 ["SharedFlags"]
  GETTABLEKS R5 R6 K13 ["getFFlagAddUsernameToRibbonAvatars"]
  CALL R4 1 1
  CALL R4 0 1
  DUPTABLE R5 K20 [{"initAssetDm", "requestAssetCollaborators", "openManageCollaborators", "toggleSocialPresenceWidget", "connectOnUpdateCollaborators", "connectOnDmChange"}]
  DUPCLOSURE R6 K21 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K14 ["initAssetDm"]
  DUPCLOSURE R6 K22 [PROTO_5]
  SETTABLEKS R6 R5 K15 ["requestAssetCollaborators"]
  DUPCLOSURE R6 K23 [PROTO_6]
  SETTABLEKS R6 R5 K16 ["openManageCollaborators"]
  DUPCLOSURE R6 K24 [PROTO_7]
  SETTABLEKS R6 R5 K17 ["toggleSocialPresenceWidget"]
  DUPCLOSURE R6 K25 [PROTO_8]
  SETTABLEKS R6 R5 K18 ["connectOnUpdateCollaborators"]
  DUPCLOSURE R6 K26 [PROTO_9]
  SETTABLEKS R6 R5 K19 ["connectOnDmChange"]
  RETURN R5 1
