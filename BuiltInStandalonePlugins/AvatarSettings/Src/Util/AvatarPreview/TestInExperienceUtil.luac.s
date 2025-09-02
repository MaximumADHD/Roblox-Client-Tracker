PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["TestInExperienceUtil.clearTestingAvatars should only be called when FFlagPreviewToolbar is enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K3 ["GetChildren"]
  CALL R0 1 3
  FORGPREP R0
  LOADK R7 K4 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
  NAMECALL R5 R4 K5 ["GetAttribute"]
  CALL R5 2 1
  JUMPIFNOT R5 [+3]
  NAMECALL R5 R4 K6 ["Destroy"]
  CALL R5 1 0
  FORGLOOP R0 2 [-9]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K7 ["_clearTestingAnimateScripts"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["StarterCharacterScripts"]
  NAMECALL R0 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  NAMECALL R1 R0 K2 ["GetChildren"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K3 ["RBX_AvatarPreviewer_TestingAnimateScript_AvatarSettings"]
  NAMECALL R6 R5 K4 ["GetAttribute"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K5 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [-9]
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["clearTestingAvatars"]
  CALL R0 0 0
  GETUPVAL R0 1
  LOADK R2 K1 ["StarterCharacter_Backup_AvatarSettings"]
  NAMECALL R0 R0 K2 ["FindFirstChild"]
  CALL R0 2 1
  JUMPIFEQKNIL R0 [+14]
  LOADK R3 K3 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  NAMECALL R1 R0 K4 ["GetAttribute"]
  CALL R1 2 1
  JUMPIFNOT R1 [+8]
  LOADK R1 K5 ["StarterCharacter"]
  SETTABLEKS R1 R0 K6 ["Name"]
  LOADK R3 K3 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  LOADNIL R4
  NAMECALL R1 R0 K7 ["SetAttribute"]
  CALL R1 3 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K8 ["_resetAnimateScript"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R2 K0 ["StarterCharacterScripts"]
  NAMECALL R0 R0 K1 ["FindFirstChildWhichIsA"]
  CALL R0 2 1
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  LOADK R3 K2 ["Animate_Backup_AvatarSettings"]
  NAMECALL R1 R0 K3 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+6]
  LOADK R4 K4 ["LocalScript"]
  NAMECALL R2 R1 K5 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R4 K6 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  NAMECALL R2 R1 K7 ["GetAttribute"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R2 K8 ["Animate"]
  SETTABLEKS R2 R1 K9 ["Name"]
  LOADK R4 K6 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  LOADNIL R5
  NAMECALL R2 R1 K10 ["SetAttribute"]
  CALL R2 3 0
  LOADK R4 K4 ["LocalScript"]
  NAMECALL R2 R1 K5 ["IsA"]
  CALL R2 2 1
  JUMPIFNOT R2 [+13]
  LOADK R4 K11 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
  NAMECALL R2 R1 K7 ["GetAttribute"]
  CALL R2 2 1
  LOADK R5 K11 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
  LOADNIL R6
  NAMECALL R3 R1 K10 ["SetAttribute"]
  CALL R3 3 0
  JUMPIFNOT R2 [+3]
  LOADB R3 1
  SETTABLEKS R3 R1 K12 ["Enabled"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["StarterCharacterScripts"]
  NAMECALL R1 R1 K1 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  LOADK R4 K2 ["Animate"]
  NAMECALL R2 R0 K3 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 0
  LOADK R5 K2 ["Animate"]
  NAMECALL R3 R1 K3 ["FindFirstChild"]
  CALL R3 2 1
  JUMPIFNOT R3 [+22]
  LOADK R6 K4 ["LocalScript"]
  NAMECALL R4 R3 K5 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+17]
  LOADK R4 K6 ["Animate_Backup_AvatarSettings"]
  SETTABLEKS R4 R3 K7 ["Name"]
  LOADK R6 K8 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  LOADB R7 1
  NAMECALL R4 R3 K9 ["SetAttribute"]
  CALL R4 3 0
  LOADK R6 K10 ["RBX_AvatarPreview_WasEnabled_AvatarSettings"]
  GETTABLEKS R7 R3 K11 ["Enabled"]
  NAMECALL R4 R3 K9 ["SetAttribute"]
  CALL R4 3 0
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["Enabled"]
  NAMECALL R4 R2 K12 ["Clone"]
  CALL R4 1 1
  LOADK R7 K13 ["RBX_AvatarPreviewer_TestingAnimateScript_AvatarSettings"]
  LOADB R8 1
  NAMECALL R5 R4 K9 ["SetAttribute"]
  CALL R5 3 0
  SETTABLEKS R1 R4 K14 ["Parent"]
  NAMECALL R5 R2 K15 ["Destroy"]
  CALL R5 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["TestInExperienceUtil.getValidTestingAvatar should only be called when FFlagPreviewToolbar is enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["ActiveInstance"]
  JUMPIFNOT R0 [+5]
  LOADK R3 K4 ["Model"]
  NAMECALL R1 R0 K5 ["IsA"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R1 R0 K6 ["Parent"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K7 ["AvatarPreviewFolderTag"]
  NAMECALL R2 R1 K8 ["HasTag"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R4 K9 ["Humanoid"]
  NAMECALL R2 R0 K10 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  LOADK R5 K9 ["Humanoid"]
  NAMECALL R3 R2 K5 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+2]
  LOADNIL R3
  RETURN R3 1
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  CALL R1 0 1
  FASTCALL2K ASSERT R1 K0 [+4]
  LOADK R2 K0 ["TestInExperienceUtil.test should only be called when FFlagPreviewToolbar is enabled"]
  GETIMPORT R0 K2 [assert]
  CALL R0 2 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["getValidTestingAvatar"]
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K4 ["clearTestingAvatars"]
  CALL R1 0 0
  GETUPVAL R1 2
  LOADK R3 K5 ["StarterCharacter"]
  NAMECALL R1 R1 K6 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFEQKNIL R1 [+9]
  LOADK R2 K7 ["StarterCharacter_Backup_AvatarSettings"]
  SETTABLEKS R2 R1 K8 ["Name"]
  LOADK R4 K9 ["RBX_AvatarPreview_TestingBackup_AvatarSettings"]
  LOADB R5 1
  NAMECALL R2 R1 K10 ["SetAttribute"]
  CALL R2 3 0
  NAMECALL R2 R0 K11 ["Clone"]
  CALL R2 1 1
  LOADK R5 K12 ["RBX_AvatarPreviewer_TestingAvatar_AvatarSettings"]
  LOADB R6 1
  NAMECALL R3 R2 K10 ["SetAttribute"]
  CALL R3 3 0
  LOADK R3 K5 ["StarterCharacter"]
  SETTABLEKS R3 R2 K8 ["Name"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K13 ["Parent"]
  LOADK R5 K14 ["Humanoid"]
  NAMECALL R3 R2 K15 ["FindFirstChildWhichIsA"]
  CALL R3 2 1
  JUMPIF R3 [+4]
  GETIMPORT R4 K17 [error]
  LOADK R5 K18 ["Selected avatar does not have a Humanoid"]
  CALL R4 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["_replaceAnimateScript"]
  MOVE R5 R2
  CALL R4 1 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K20 ["avatarRules"]
  CALL R6 0 -1
  NAMECALL R4 R3 K21 ["ApplyAvatarRules"]
  CALL R4 -1 0
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K22 ["setCollisionBoxTransparency"]
  MOVE R5 R3
  LOADB R6 0
  CALL R4 2 0
  GETUPVAL R5 5
  GETTABLEKS R4 R5 K23 ["StartPlaySolo"]
  CALL R4 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["TestInExperienceUtil.selectTargetInstance should only be called when FFlagPreviewToolbar is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  NEWTABLE R1 0 1
  MOVE R2 R0
  SETLIST R1 R2 1 [1]
  GETUPVAL R2 1
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["Set"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["Selection"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K5 [game]
  LOADK R4 K8 ["StarterPlayer"]
  NAMECALL R2 R2 K7 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R7 R0 K11 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETTABLEKS R5 R6 K13 ["AvatarPreview"]
  GETTABLEKS R4 R5 K14 ["AvatarPreviewConstants"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Util"]
  GETTABLEKS R6 R7 K15 ["Interfaces"]
  GETTABLEKS R5 R6 K16 ["PlacesServiceInterface"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["AvatarPreview"]
  GETTABLEKS R6 R7 K17 ["applyAvatarRulesUtil"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R11 R0 K11 ["Src"]
  GETTABLEKS R10 R11 K12 ["Util"]
  GETTABLEKS R9 R10 K18 ["BridgingFiles"]
  GETTABLEKS R8 R9 K19 ["AssetDmFiles"]
  GETTABLEKS R7 R8 K20 ["assetDmUtils"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K21 ["Flags"]
  GETTABLEKS R8 R9 K22 ["getFFlagPreviewToolbar"]
  CALL R7 1 1
  NEWTABLE R8 8 0
  DUPCLOSURE R9 K23 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R8
  SETTABLEKS R9 R8 K24 ["clearTestingAvatars"]
  DUPCLOSURE R9 K25 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K26 ["_clearTestingAnimateScripts"]
  DUPCLOSURE R9 K27 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K28 ["reset"]
  DUPCLOSURE R9 K29 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K30 ["_resetAnimateScript"]
  DUPCLOSURE R9 K31 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R9 R8 K32 ["_replaceAnimateScript"]
  DUPCLOSURE R9 K33 [PROTO_5]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R9 R8 K34 ["getValidTestingAvatar"]
  DUPCLOSURE R9 K35 [PROTO_6]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  SETTABLEKS R9 R8 K36 ["test"]
  DUPCLOSURE R9 K37 [PROTO_7]
  CAPTURE VAL R7
  CAPTURE VAL R1
  SETTABLEKS R9 R8 K38 ["selectTargetInstance"]
  RETURN R8 1
