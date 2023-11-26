PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["GetChildren"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K1 ["RBX_AvatarPreviewer_TestingAvatar"]
  NAMECALL R5 R4 K2 ["GetAttribute"]
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R4 K3 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 2 [-9]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearTestingAvatars"]
  CALL R0 0 0
  GETUPVAL R0 1
  LOADK R2 K1 ["StarterCharacter_Backup"]
  NAMECALL R0 R0 K2 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+14]
  LOADK R3 K3 ["RBX_AvatarPreview_TestingBackup"]
  NAMECALL R1 R0 K4 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  LOADK R1 K5 ["StarterCharacter"]
  SETTABLEKS R1 R0 K6 ["Name"]
  LOADK R3 K3 ["RBX_AvatarPreview_TestingBackup"]
  LOADB R4 0
  NAMECALL R1 R0 K7 ["SetAttribute"]
  CALL R1 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["clearTestingAvatars"]
  CALL R2 0 0
  GETUPVAL R2 1
  LOADK R4 K1 ["StarterCharacter"]
  NAMECALL R2 R2 K2 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFEQKNIL R2 [+9]
  LOADK R3 K3 ["StarterCharacter_Backup"]
  SETTABLEKS R3 R2 K4 ["Name"]
  LOADK R5 K5 ["RBX_AvatarPreview_TestingBackup"]
  LOADB R6 1
  NAMECALL R3 R2 K6 ["SetAttribute"]
  CALL R3 3 0
  GETTABLEKS R3 R1 K7 ["WorldModel"]
  NAMECALL R3 R3 K8 ["Clone"]
  CALL R3 1 1
  LOADK R6 K9 ["RBX_AvatarPreviewer_TestingAvatar"]
  LOADB R7 1
  NAMECALL R4 R3 K6 ["SetAttribute"]
  CALL R4 3 0
  LOADK R4 K1 ["StarterCharacter"]
  SETTABLEKS R4 R3 K4 ["Name"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K10 ["Parent"]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R0 K11 ["startPlaySolo"]
  CALL R4 0 0
  RETURN R0 0
  NAMECALL R4 R0 K12 ["StartPlaySolo"]
  CALL R4 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StarterPlayer"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Src"]
  GETTABLEKS R3 R4 K11 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R6 R1 K10 ["Src"]
  GETTABLEKS R5 R6 K12 ["Components"]
  GETTABLEKS R4 R5 K13 ["PlacesServiceContext"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K10 ["Src"]
  GETTABLEKS R6 R7 K14 ["Flags"]
  GETTABLEKS R5 R6 K15 ["getFFlagAvatarPreviewerTestingScreen"]
  CALL R4 1 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K17 ["clearTestingAvatars"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K19 ["reset"]
  DUPCLOSURE R6 K20 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K21 ["test"]
  RETURN R5 1
