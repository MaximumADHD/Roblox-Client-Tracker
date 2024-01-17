PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["Data"]
  GETTABLEKS R3 R4 K1 ["Animation"]
  GETTABLEKS R2 R3 K2 ["Name"]
  GETTABLEKS R4 R0 K0 ["Data"]
  GETTABLEKS R3 R4 K3 ["IsLegacyAnimSaves"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["OnLoadRequested"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["getAnimSaves"]
  GETTABLEKS R5 R1 K4 ["RootInstance"]
  CALL R4 1 1
  DUPTABLE R5 K8 [{"Text", "Data", "OnItemClicked"}]
  LOADK R8 K9 ["Menu"]
  LOADK R9 K10 ["Load"]
  NAMECALL R6 R2 K11 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Text"]
  LOADNIL R6
  SETTABLEKS R6 R5 K6 ["Data"]
  LOADNIL R6
  SETTABLEKS R6 R5 K7 ["OnItemClicked"]
  LENGTH R6 R4
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+65]
  GETIMPORT R6 K13 [ipairs]
  MOVE R7 R4
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETUPVAL R11 1
  CALL R11 0 1
  JUMPIFNOT R11 [+35]
  GETTABLEKS R12 R10 K14 ["animation"]
  GETTABLEKS R11 R12 K15 ["Name"]
  GETTABLEKS R12 R10 K16 ["isLegacyAnimSaves"]
  JUMPIFNOT R12 [+3]
  MOVE R12 R11
  LOADK R13 K17 [" *"]
  CONCAT R11 R12 R13
  DUPTABLE R14 K8 [{"Text", "Data", "OnItemClicked"}]
  SETTABLEKS R11 R14 K5 ["Text"]
  DUPTABLE R15 K20 [{"Animation", "IsLegacyAnimSaves"}]
  GETTABLEKS R16 R10 K14 ["animation"]
  SETTABLEKS R16 R15 K18 ["Animation"]
  GETTABLEKS R16 R10 K16 ["isLegacyAnimSaves"]
  SETTABLEKS R16 R15 K19 ["IsLegacyAnimSaves"]
  SETTABLEKS R15 R14 K6 ["Data"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K7 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R5 R14 [+4]
  MOVE R13 R5
  GETIMPORT R12 K23 [table.insert]
  CALL R12 2 0
  JUMP [+18]
  DUPTABLE R13 K8 [{"Text", "Data", "OnItemClicked"}]
  GETTABLEKS R14 R10 K15 ["Name"]
  SETTABLEKS R14 R13 K5 ["Text"]
  LOADNIL R14
  SETTABLEKS R14 R13 K6 ["Data"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K7 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R5 R13 [+4]
  MOVE R12 R5
  GETIMPORT R11 K23 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [inext] [-57]
  RETURN R5 1
  LOADB R6 0
  SETTABLEKS R6 R5 K24 ["Enabled"]
  RETURN R5 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnOverwriteRequested"]
  GETTABLEKS R2 R0 K1 ["Text"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnOverwriteRequested"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R3 R0 K0 ["Data"]
  GETTABLEKS R2 R3 K1 ["Animation"]
  GETTABLEKS R1 R2 K2 ["Name"]
  GETTABLEKS R3 R0 K0 ["Data"]
  GETTABLEKS R2 R3 K3 ["IsLegacyAnimSaves"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["OnOverwriteRequested"]
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R4 R1 K3 ["CurrentAnimation"]
  ORK R3 R4 K2 [""]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getAnimSaves"]
  GETTABLEKS R5 R1 K5 ["RootInstance"]
  CALL R4 1 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  NEWCLOSURE R6 P1
  CAPTURE VAL R1
  NEWTABLE R7 1 1
  LOADK R11 K6 ["Menu"]
  LOADK R12 K7 ["SaveAs"]
  NAMECALL R9 R2 K8 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R7 K9 ["Text"]
  DUPTABLE R8 K11 [{"Text", "OnItemClicked"}]
  LOADK R11 K6 ["Menu"]
  LOADK R12 K12 ["New"]
  NAMECALL R9 R2 K8 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K9 ["Text"]
  GETTABLEKS R9 R1 K13 ["OnSaveAsRequested"]
  SETTABLEKS R9 R8 K10 ["OnItemClicked"]
  SETLIST R7 R8 1 [1]
  LENGTH R8 R4
  LOADN R9 0
  JUMPIFNOTLT R9 R8 [+10]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K14 ["MENU_SEPARATOR"]
  FASTCALL2 TABLE_INSERT R7 R10 [+4]
  MOVE R9 R7
  GETIMPORT R8 K17 [table.insert]
  CALL R8 2 0
  GETIMPORT R8 K19 [ipairs]
  MOVE R9 R4
  CALL R8 1 3
  FORGPREP_INEXT R8
  GETUPVAL R13 2
  CALL R13 0 1
  JUMPIFNOT R13 [+35]
  GETTABLEKS R14 R12 K20 ["animation"]
  GETTABLEKS R13 R14 K21 ["Name"]
  GETTABLEKS R14 R12 K22 ["isLegacyAnimSaves"]
  JUMPIFNOT R14 [+3]
  MOVE R14 R13
  LOADK R15 K23 [" *"]
  CONCAT R13 R14 R15
  DUPTABLE R16 K25 [{"Text", "Data", "OnItemClicked"}]
  SETTABLEKS R13 R16 K9 ["Text"]
  DUPTABLE R17 K28 [{"Animation", "IsLegacyAnimSaves"}]
  GETTABLEKS R18 R12 K20 ["animation"]
  SETTABLEKS R18 R17 K26 ["Animation"]
  GETTABLEKS R18 R12 K22 ["isLegacyAnimSaves"]
  SETTABLEKS R18 R17 K27 ["IsLegacyAnimSaves"]
  SETTABLEKS R17 R16 K24 ["Data"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R1
  SETTABLEKS R17 R16 K10 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R7 R16 [+4]
  MOVE R15 R7
  GETIMPORT R14 K17 [table.insert]
  CALL R14 2 0
  JUMP [+21]
  DUPTABLE R15 K30 [{"Text", "Checked", "OnItemClicked"}]
  GETTABLEKS R16 R12 K21 ["Name"]
  SETTABLEKS R16 R15 K9 ["Text"]
  GETTABLEKS R17 R12 K21 ["Name"]
  JUMPIFEQ R3 R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K29 ["Checked"]
  SETTABLEKS R5 R15 K10 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R7 R15 [+4]
  MOVE R14 R7
  GETIMPORT R13 K17 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [inext] [-60]
  RETURN R7 1

PROTO_7:
  JUMPIFNOT R0 [+11]
  LOADK R3 K0 ["Humanoid"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETTABLEKS R1 R0 K2 ["RigType"]
  GETIMPORT R2 K6 [Enum.HumanoidRigType.R15]
  JUMPIFEQ R1 R2 [+3]
  LOADB R1 0
  RETURN R1 1
  GETTABLEKS R1 R0 K7 ["Parent"]
  JUMPIFNOT R1 [+5]
  LOADK R4 K8 ["Model"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  LOADB R2 1
  RETURN R2 1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 1 2
  LOADK R8 K2 ["Menu"]
  LOADK R9 K3 ["Import"]
  NAMECALL R6 R2 K4 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R3 K5 ["Text"]
  DUPTABLE R4 K7 [{"Text", "OnItemClicked"}]
  LOADK R7 K2 ["Menu"]
  LOADK R8 K8 ["FromRoblox"]
  NAMECALL R5 R2 K4 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["Text"]
  GETTABLEKS R5 R1 K9 ["OnImportRequested"]
  SETTABLEKS R5 R4 K6 ["OnItemClicked"]
  DUPTABLE R5 K7 [{"Text", "OnItemClicked"}]
  LOADK R8 K2 ["Menu"]
  LOADK R9 K10 ["FromFBX"]
  NAMECALL R6 R2 K4 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K5 ["Text"]
  GETTABLEKS R6 R1 K11 ["OnImportFbxRequested"]
  SETTABLEKS R6 R5 K6 ["OnItemClicked"]
  SETLIST R3 R4 2 [1]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+51]
  DUPTABLE R6 K13 [{"Text", "OnItemClicked", "Enabled"}]
  LOADK R9 K2 ["Menu"]
  LOADK R10 K14 ["CreateFromVideo"]
  NAMECALL R7 R2 K4 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Text"]
  GETTABLEKS R7 R1 K15 ["OnCreateFromVideoRequested"]
  SETTABLEKS R7 R6 K6 ["OnItemClicked"]
  GETTABLEKS R8 R1 K16 ["RootInstance"]
  LOADK R10 K17 ["Humanoid"]
  NAMECALL R8 R8 K18 ["FindFirstChildOfClass"]
  CALL R8 2 1
  JUMPIFNOT R8 [+11]
  LOADK R11 K17 ["Humanoid"]
  NAMECALL R9 R8 K19 ["IsA"]
  CALL R9 2 1
  JUMPIFNOT R9 [+6]
  GETTABLEKS R9 R8 K20 ["RigType"]
  GETIMPORT R10 K24 [Enum.HumanoidRigType.R15]
  JUMPIFEQ R9 R10 [+3]
  LOADB R7 0
  JUMP [+11]
  GETTABLEKS R9 R8 K25 ["Parent"]
  JUMPIFNOT R9 [+5]
  LOADK R12 K26 ["Model"]
  NAMECALL R10 R9 K19 ["IsA"]
  CALL R10 2 1
  JUMPIF R10 [+2]
  LOADB R7 0
  JUMP [+1]
  LOADB R7 1
  SETTABLEKS R7 R6 K12 ["Enabled"]
  FASTCALL2 TABLE_INSERT R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K29 [table.insert]
  CALL R4 2 0
  RETURN R3 1

PROTO_9:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Data"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["SetPriority"]
  GETTABLEKS R4 R1 K3 ["AnimationData"]
  MOVE R5 R4
  JUMPIFNOT R5 [+7]
  GETTABLEKS R5 R4 K4 ["Metadata"]
  JUMPIFNOT R5 [+4]
  GETTABLEKS R6 R4 K4 ["Metadata"]
  GETTABLEKS R5 R6 K5 ["Priority"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  DUPTABLE R7 K7 [{"Text"}]
  LOADK R10 K8 ["Menu"]
  LOADK R11 K2 ["SetPriority"]
  NAMECALL R8 R2 K9 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Text"]
  NEWTABLE R8 0 7
  GETIMPORT R9 K13 [Enum.AnimationPriority.Core]
  GETIMPORT R10 K15 [Enum.AnimationPriority.Idle]
  GETIMPORT R11 K17 [Enum.AnimationPriority.Movement]
  GETIMPORT R12 K19 [Enum.AnimationPriority.Action]
  GETIMPORT R13 K21 [Enum.AnimationPriority.Action2]
  GETIMPORT R14 K23 [Enum.AnimationPriority.Action3]
  GETIMPORT R15 K25 [Enum.AnimationPriority.Action4]
  SETLIST R8 R9 7 [1]
  MOVE R9 R8
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  DUPTABLE R16 K29 [{"Text", "Data", "Checked", "OnItemClicked"}]
  LOADK R19 K8 ["Menu"]
  GETTABLEKS R20 R13 K30 ["Name"]
  NAMECALL R17 R2 K9 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K6 ["Text"]
  SETTABLEKS R13 R16 K26 ["Data"]
  JUMPIFEQ R5 R13 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  SETTABLEKS R17 R16 K27 ["Checked"]
  SETTABLEKS R6 R16 K28 ["OnItemClicked"]
  FASTCALL2 TABLE_INSERT R7 R16 [+4]
  MOVE R15 R7
  GETIMPORT R14 K33 [table.insert]
  CALL R14 2 0
  FORGLOOP R9 2 [-26]
  RETURN R7 1

PROTO_11:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["Localization"]
  DUPTABLE R5 K5 [{"Text", "Enabled", "OnItemClicked"}]
  LOADK R8 K6 ["Menu"]
  MOVE R9 R1
  NAMECALL R6 R4 K7 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["Text"]
  JUMPIFNOTEQKB R3 FALSE [+2]
  LOADB R6 0 +1
  LOADB R6 1
  SETTABLEKS R6 R5 K3 ["Enabled"]
  SETTABLEKS R2 R5 K4 ["OnItemClicked"]
  RETURN R5 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["SaveAnimation"]
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Analytics"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ExportAnimation"]
  GETUPVAL R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Analytics"]
  CALL R0 2 0
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnCreateNewRequested"]
  GETTABLEKS R3 R1 K2 ["OnReduceKeyframesRequested"]
  GETTABLEKS R5 R1 K4 ["CurrentAnimation"]
  ORK R4 R5 K3 [""]
  GETTABLEKS R5 R1 K5 ["AnimationData"]
  GETTABLEKS R6 R1 K6 ["Plugin"]
  GETTABLEKS R8 R1 K7 ["PlayState"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["PLAY_STATE"]
  GETTABLEKS R9 R10 K9 ["Record"]
  JUMPIFEQ R8 R9 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  MOVE R8 R5
  JUMPIFNOT R8 [+12]
  GETTABLEKS R8 R5 K10 ["Metadata"]
  JUMPIFNOT R8 [+9]
  LOADB R8 0
  GETTABLEKS R10 R5 K10 ["Metadata"]
  GETTABLEKS R9 R10 K11 ["EndTick"]
  LOADN R10 0
  JUMPIFNOTLT R10 R9 [+2]
  NOT R8 R7
  NEWTABLE R9 0 10
  NAMECALL R10 R0 K12 ["makeLoadMenu"]
  CALL R10 1 1
  LOADK R13 K13 ["Save"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R1
  CAPTURE VAL R4
  NAMECALL R11 R0 K14 ["makeAction"]
  CALL R11 3 1
  NAMECALL R12 R0 K15 ["makeSaveAsMenu"]
  CALL R12 1 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K16 ["MENU_SEPARATOR"]
  NAMECALL R14 R0 K17 ["makeImportMenu"]
  CALL R14 1 1
  LOADK R17 K18 ["PublishToRoblox"]
  NEWCLOSURE R18 P1
  CAPTURE VAL R1
  CAPTURE VAL R6
  NAMECALL R15 R0 K14 ["makeAction"]
  CALL R15 3 1
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K16 ["MENU_SEPARATOR"]
  LOADK R19 K19 ["CreateNew"]
  MOVE R20 R2
  NAMECALL R17 R0 K14 ["makeAction"]
  CALL R17 3 1
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K16 ["MENU_SEPARATOR"]
  NAMECALL R19 R0 K20 ["makePriorityMenu"]
  CALL R19 1 -1
  SETLIST R9 R10 -1 [1]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K16 ["MENU_SEPARATOR"]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K23 [table.insert]
  CALL R10 2 0
  MOVE R11 R9
  LOADK R14 K24 ["OptimizeKeyframes"]
  MOVE R15 R3
  MOVE R16 R8
  NAMECALL R12 R0 K14 ["makeAction"]
  CALL R12 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K23 [table.insert]
  CALL R10 -1 0
  RETURN R9 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["ShowMenu"]
  JUMPIFNOT R2 [+16]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K5 [{"Actions", "OnMenuOpened"}]
  NAMECALL R6 R0 K6 ["makeMenuActions"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["Actions"]
  GETTABLEKS R6 R1 K4 ["OnMenuOpened"]
  SETTABLEKS R6 R5 K4 ["OnMenuOpened"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  LOADNIL R3
  RETURN R3 1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["Status"]
  DUPTABLE R3 K5 [{"AnimationData", "EditorMode", "PlayState", "RootInstance"}]
  GETTABLEKS R4 R0 K1 ["AnimationData"]
  SETTABLEKS R4 R3 K1 ["AnimationData"]
  GETTABLEKS R4 R2 K2 ["EditorMode"]
  SETTABLEKS R4 R3 K2 ["EditorMode"]
  GETTABLEKS R4 R2 K3 ["PlayState"]
  SETTABLEKS R4 R3 K3 ["PlayState"]
  GETTABLEKS R4 R2 K4 ["RootInstance"]
  SETTABLEKS R4 R3 K4 ["RootInstance"]
  RETURN R3 1

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R2 0 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  DUPTABLE R3 K1 [{"Priority"}]
  SETTABLEKS R0 R3 K0 ["Priority"]
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_21:
  DUPTABLE R1 K4 [{"ExportAnimation", "SaveAnimation", "SetEditorMode", "SetPriority"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ExportAnimation"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SaveAnimation"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["SetEditorMode"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["SetPriority"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Util"]
  GETTABLEKS R5 R6 K12 ["RigUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Util"]
  GETTABLEKS R6 R7 K13 ["Constants"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K16 ["Components"]
  GETTABLEKS R9 R10 K17 ["ContextMenu"]
  CALL R8 1 1
  GETTABLEKS R9 R5 K18 ["MENU_SEPARATOR"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K19 ["Thunks"]
  GETTABLEKS R12 R13 K20 ["Exporting"]
  GETTABLEKS R11 R12 K21 ["SaveAnimation"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K19 ["Thunks"]
  GETTABLEKS R13 R14 K20 ["Exporting"]
  GETTABLEKS R12 R13 K22 ["ExportAnimation"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K19 ["Thunks"]
  GETTABLEKS R14 R15 K23 ["History"]
  GETTABLEKS R13 R14 K24 ["AddWaypoint"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K19 ["Thunks"]
  GETTABLEKS R14 R15 K25 ["UpdateMetadata"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K26 ["Actions"]
  GETTABLEKS R15 R16 K27 ["SetEditorMode"]
  CALL R14 1 1
  GETIMPORT R15 K29 [game]
  LOADK R17 K30 ["AnimationFromVideoCreatorServiceInAnimationEditor"]
  LOADB R18 0
  NAMECALL R15 R15 K31 ["DefineFastFlag"]
  CALL R15 3 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R18 R0 K32 ["LuaFlags"]
  GETTABLEKS R17 R18 K33 ["GetFFlagAnimSavesMigration"]
  CALL R16 1 1
  GETTABLEKS R17 R1 K34 ["PureComponent"]
  LOADK R19 K35 ["AnimationClipMenu"]
  NAMECALL R17 R17 K36 ["extend"]
  CALL R17 2 1
  DUPCLOSURE R18 K37 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K38 ["makeLoadMenu"]
  DUPCLOSURE R18 K39 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R16
  SETTABLEKS R18 R17 K40 ["makeSaveAsMenu"]
  DUPCLOSURE R18 K41 [PROTO_7]
  DUPCLOSURE R19 K42 [PROTO_8]
  CAPTURE VAL R15
  SETTABLEKS R19 R17 K43 ["makeImportMenu"]
  DUPCLOSURE R19 K44 [PROTO_10]
  SETTABLEKS R19 R17 K45 ["makePriorityMenu"]
  DUPCLOSURE R19 K46 [PROTO_11]
  SETTABLEKS R19 R17 K47 ["makeAction"]
  DUPCLOSURE R19 K48 [PROTO_14]
  CAPTURE VAL R5
  SETTABLEKS R19 R17 K49 ["makeMenuActions"]
  DUPCLOSURE R19 K50 [PROTO_15]
  CAPTURE VAL R1
  CAPTURE VAL R8
  SETTABLEKS R19 R17 K51 ["render"]
  MOVE R19 R7
  DUPTABLE R20 K55 [{"Localization", "Plugin", "Analytics"}]
  GETTABLEKS R21 R6 K52 ["Localization"]
  SETTABLEKS R21 R20 K52 ["Localization"]
  GETTABLEKS R21 R6 K53 ["Plugin"]
  SETTABLEKS R21 R20 K53 ["Plugin"]
  GETTABLEKS R21 R6 K54 ["Analytics"]
  SETTABLEKS R21 R20 K54 ["Analytics"]
  CALL R19 1 1
  MOVE R20 R17
  CALL R19 1 1
  MOVE R17 R19
  DUPCLOSURE R19 K56 [PROTO_16]
  DUPCLOSURE R20 K57 [PROTO_21]
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R12
  CAPTURE VAL R13
  GETTABLEKS R21 R2 K58 ["connect"]
  MOVE R22 R19
  MOVE R23 R20
  CALL R21 2 1
  MOVE R22 R17
  CALL R21 1 -1
  RETURN R21 -1
