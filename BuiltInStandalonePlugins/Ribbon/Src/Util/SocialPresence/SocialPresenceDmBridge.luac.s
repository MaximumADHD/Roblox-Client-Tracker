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
  GETTABLEKS R8 R6 K5 ["Username"]
  SETTABLEKS R8 R7 K5 ["Username"]
  GETTABLEKS R8 R6 K6 ["IsIdle"]
  SETTABLEKS R8 R7 K6 ["IsIdle"]
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [inext] [-19]
  GETUPVAL R2 1
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
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["CollaboratorsService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
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
  MOVE R3 R2
  CALL R3 0 0
  RETURN R0 0

PROTO_3:
  LOADK R3 K0 ["RequestAssetCollaborators"]
  NAMECALL R1 R0 K1 ["Invoke"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  LOADK R4 K0 ["UpdateCollaborators"]
  MOVE R5 R1
  NAMECALL R2 R0 K1 ["OnInvoke"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
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
  DUPTABLE R2 K12 [{"initAssetDm", "requestAssetCollaborators", "connectOnUpdateCollaborators", "connectOnDmChange"}]
  DUPCLOSURE R3 K13 [PROTO_2]
  SETTABLEKS R3 R2 K8 ["initAssetDm"]
  DUPCLOSURE R3 K14 [PROTO_3]
  SETTABLEKS R3 R2 K9 ["requestAssetCollaborators"]
  DUPCLOSURE R3 K15 [PROTO_4]
  SETTABLEKS R3 R2 K10 ["connectOnUpdateCollaborators"]
  DUPCLOSURE R3 K16 [PROTO_5]
  SETTABLEKS R3 R2 K11 ["connectOnDmChange"]
  RETURN R2 1
