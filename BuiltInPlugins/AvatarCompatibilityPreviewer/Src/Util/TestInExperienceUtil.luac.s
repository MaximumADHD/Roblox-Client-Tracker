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
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K4 ["_clearTestingAnimateScripts"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagAvatarPreviewerUseAnyModel is not enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K3 ["StarterCharacterScripts"]
  NAMECALL R0 R0 K4 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  NAMECALL R1 R0 K5 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K6 ["RBX_AvatarPreviewer_TestingAnimateScript"]
  NAMECALL R6 R5 K7 ["GetAttribute"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K8 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_2:
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
  LOADNIL R4
  NAMECALL R1 R0 K7 ["SetAttribute"]
  CALL R1 3 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["_resetAnimateScript"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["FFlagAvatarPreviewerUseAnyModel is not enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  LOADK R2 K3 ["StarterCharacterScripts"]
  NAMECALL R0 R0 K4 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  LOADK R3 K5 ["Animate_Backup"]
  NAMECALL R1 R0 K6 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+6]
  LOADK R4 K7 ["LocalScript"]
  NAMECALL R2 R1 K8 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R4 K9 ["RBX_AvatarPreview_TestingBackup"]
  NAMECALL R2 R1 K10 ["GetAttribute"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R2 K11 ["Animate"]
  SETTABLEKS R2 R1 K12 ["Name"]
  LOADK R4 K9 ["RBX_AvatarPreview_TestingBackup"]
  LOADNIL R5
  NAMECALL R2 R1 K13 ["SetAttribute"]
  CALL R2 3 0
  LOADK R4 K7 ["LocalScript"]
  NAMECALL R2 R1 K8 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+13]
  LOADK R4 K14 ["RBX_AvatarPreview_WasEnabled"]
  NAMECALL R2 R1 K10 ["GetAttribute"]
  CALL R2 2 1
  LOADK R5 K14 ["RBX_AvatarPreview_WasEnabled"]
  LOADNIL R6
  NAMECALL R3 R1 K13 ["SetAttribute"]
  CALL R3 3 0
  JUMPIFNOT R2 [+3]
  LOADB R3 1
  SETTABLEKS R3 R1 K15 ["Enabled"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["FFlagAvatarPreviewerUseAnyModel is not enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["StarterCharacterScripts"]
  NAMECALL R1 R1 K4 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  LOADK R4 K5 ["Animate"]
  NAMECALL R2 R0 K6 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R5 K5 ["Animate"]
  NAMECALL R3 R1 K6 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+22]
  LOADK R6 K7 ["LocalScript"]
  NAMECALL R4 R3 K8 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+17]
  LOADK R4 K9 ["Animate_Backup"]
  SETTABLEKS R4 R3 K10 ["Name"]
  LOADK R6 K11 ["RBX_AvatarPreview_TestingBackup"]
  LOADB R7 1
  NAMECALL R4 R3 K12 ["SetAttribute"]
  CALL R4 3 0
  LOADK R6 K13 ["RBX_AvatarPreview_WasEnabled"]
  GETTABLEKS R7 R3 K14 ["Enabled"]
  NAMECALL R4 R3 K12 ["SetAttribute"]
  CALL R4 3 0
  LOADB R4 0
  SETTABLEKS R4 R3 K14 ["Enabled"]
  NAMECALL R4 R2 K15 ["Clone"]
  CALL R4 1 1
  LOADK R7 K16 ["RBX_AvatarPreviewer_TestingAnimateScript"]
  LOADB R8 1
  NAMECALL R5 R4 K12 ["SetAttribute"]
  CALL R5 3 0
  SETTABLEKS R1 R4 K17 ["Parent"]
  RETURN R0 0

PROTO_5:
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
  NAMECALL R3 R1 K7 ["Clone"]
  CALL R3 1 1
  LOADK R6 K8 ["RBX_AvatarPreviewer_TestingAvatar"]
  LOADB R7 1
  NAMECALL R4 R3 K6 ["SetAttribute"]
  CALL R4 3 0
  LOADK R4 K1 ["StarterCharacter"]
  SETTABLEKS R4 R3 K4 ["Name"]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K9 ["Parent"]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K10 ["_replaceAnimateScript"]
  MOVE R5 R1
  CALL R4 1 0
  GETTABLEKS R4 R0 K11 ["startPlaySolo"]
  CALL R4 0 0
  RETURN R0 0

PROTO_6:
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
  GETTABLEKS R4 R0 K11 ["startPlaySolo"]
  CALL R4 0 0
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
  GETTABLEKS R5 R6 K15 ["getFFlagAvatarPreviewerUseAnyModel"]
  CALL R4 1 1
  NEWTABLE R5 8 0
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K17 ["clearTestingAvatars"]
  DUPCLOSURE R6 K18 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K19 ["_clearTestingAnimateScripts"]
  DUPCLOSURE R6 K20 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K21 ["reset"]
  DUPCLOSURE R6 K22 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K23 ["_resetAnimateScript"]
  DUPCLOSURE R6 K24 [PROTO_4]
  CAPTURE VAL R4
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K25 ["_replaceAnimateScript"]
  DUPCLOSURE R6 K26 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K27 ["test"]
  DUPCLOSURE R6 K28 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K29 ["DEPRECATED_test"]
  RETURN R5 1
