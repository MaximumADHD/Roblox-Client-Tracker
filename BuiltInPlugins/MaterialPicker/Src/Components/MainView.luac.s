PROTO_0:
  LOADK R4 K0 ["RecentlyUsed"]
  NAMECALL R2 R0 K1 ["GetSetting"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  MOVE R4 R1
  CALL R3 1 1
  GETIMPORT R4 K4 [table.find]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  JUMPIFNOT R4 [+5]
  GETIMPORT R5 K6 [table.remove]
  MOVE R6 R2
  MOVE R7 R4
  CALL R5 2 0
  FASTCALL2 TABLE_INSERT R2 R3 [+5]
  MOVE R6 R2
  MOVE R7 R3
  GETIMPORT R5 K8 [table.insert]
  CALL R5 2 0
  LENGTH R5 R2
  LOADN R6 15
  JUMPIFNOTLT R6 R5 [+6]
  GETIMPORT R5 K6 [table.remove]
  MOVE R6 R2
  LOADN R7 1
  CALL R5 2 0
  LOADK R7 K0 ["RecentlyUsed"]
  MOVE R8 R2
  NAMECALL R5 R0 K9 ["SetSetting"]
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 1
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
  LOADK R3 K0 ["MaterialVariant"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetDescendants"]
  CALL R1 1 1
  DUPCLOSURE R2 K1 [PROTO_3]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_5:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["GetDescendants"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K1 ["BasePart"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+5]
  GETUPVAL R7 1
  MOVE R8 R6
  CALL R7 1 1
  LOADB R8 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-11]
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 1
  NEWTABLE R3 0 0
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R9 1
  MOVE R10 R8
  CALL R9 1 1
  GETIMPORT R10 K5 [table.find]
  MOVE R11 R2
  MOVE R12 R9
  CALL R10 2 1
  JUMPIFNOT R10 [+7]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R12 R3
  MOVE R13 R8
  GETIMPORT R11 K7 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-17]
  RETURN R3 1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["indexInRecentlyUsedList"]
  GETTABLEKS R4 R1 K0 ["indexInRecentlyUsedList"]
  JUMPIFLT R4 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["plugin"]
  LOADK R3 K1 ["RecentlyUsed"]
  NAMECALL R1 R1 K2 ["GetSetting"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R8 1
  MOVE R9 R7
  CALL R8 1 1
  GETIMPORT R9 K5 [table.find]
  MOVE R10 R1
  MOVE R11 R8
  CALL R9 2 1
  JUMPIFNOT R9 [+11]
  DUPTABLE R12 K8 [{"indexInRecentlyUsedList", "indexInMaterialList"}]
  SETTABLEKS R9 R12 K6 ["indexInRecentlyUsedList"]
  SETTABLEKS R6 R12 K7 ["indexInMaterialList"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K10 [table.insert]
  CALL R10 2 0
  FORGLOOP R3 2 [-21]
  GETIMPORT R3 K12 [table.sort]
  MOVE R4 R2
  DUPCLOSURE R5 K13 [PROTO_6]
  CALL R3 2 0
  NEWTABLE R3 0 0
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R12 R8 K7 ["indexInMaterialList"]
  GETTABLE R11 R0 R12
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K10 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-10]
  RETURN R3 1

PROTO_8:
  GETIMPORT R1 K2 [string.lower]
  GETTABLEKS R2 R0 K3 ["Name"]
  CALL R1 1 1
  GETIMPORT R2 K5 [string.find]
  MOVE R3 R1
  GETUPVAL R4 0
  CALL R2 2 1
  JUMPIF R2 [+9]
  GETUPVAL R3 1
  MOVE R4 R1
  GETUPVAL R5 0
  CALL R3 2 1
  LOADN R4 1
  JUMPIFLE R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETTABLEKS R4 R1 K0 ["Name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  NAMECALL R1 R1 K0 ["GetDescendants"]
  CALL R1 1 1
  DUPCLOSURE R2 K1 [PROTO_3]
  CALL R0 2 1
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["customMaterials"]
  JUMPIF R1 [+6]
  GETUPVAL R1 3
  MOVE R2 R0
  GETUPVAL R3 4
  GETUPVAL R4 5
  CALL R3 1 -1
  CALL R1 -1 0
  MOVE R1 R0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["recents"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 6
  MOVE R3 R1
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["appliedInPlace"]
  JUMPIFNOT R2 [+4]
  GETUPVAL R2 7
  MOVE R3 R1
  CALL R2 1 1
  MOVE R1 R2
  GETUPVAL R2 8
  JUMPIFNOT R2 [+15]
  GETUPVAL R2 8
  JUMPIFEQKS R2 K5 [""] [+13]
  GETIMPORT R2 K8 [string.lower]
  GETUPVAL R3 8
  CALL R2 1 1
  SETUPVAL R2 8
  GETUPVAL R2 0
  MOVE R3 R1
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K3 ["recents"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K11 [table.sort]
  MOVE R3 R1
  DUPCLOSURE R4 K12 [PROTO_9]
  CALL R2 2 0
  RETURN R1 1

PROTO_11:
  JUMPIFNOT R0 [+23]
  LOADK R3 K0 ["BasePart"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+18]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["current"]
  GETTABLE R1 R2 R0
  JUMPIF R1 [+13]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["current"]
  DUPTABLE R2 K5 [{"Material", "MaterialVariant"}]
  GETTABLEKS R3 R0 K3 ["Material"]
  SETTABLEKS R3 R2 K3 ["Material"]
  GETTABLEKS R3 R0 K4 ["MaterialVariant"]
  SETTABLEKS R3 R2 K4 ["MaterialVariant"]
  SETTABLE R2 R1 R0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Get"]
  CALL R0 1 3
  FORGPREP R0
  JUMPIFNOT R4 [+23]
  LOADK R7 K1 ["BasePart"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+18]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["current"]
  GETTABLE R5 R6 R4
  JUMPIF R5 [+13]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["current"]
  DUPTABLE R6 K6 [{"Material", "MaterialVariant"}]
  GETTABLEKS R7 R4 K4 ["Material"]
  SETTABLEKS R7 R6 K4 ["Material"]
  GETTABLEKS R7 R4 K5 ["MaterialVariant"]
  SETTABLEKS R7 R6 K5 ["MaterialVariant"]
  SETTABLE R6 R5 R4
  LOADK R7 K7 ["Model"]
  NAMECALL R5 R4 K2 ["IsA"]
  CALL R5 2 1
  JUMPIFNOT R5 [+30]
  NAMECALL R5 R4 K8 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  JUMPIFNOT R9 [+23]
  LOADK R12 K1 ["BasePart"]
  NAMECALL R10 R9 K2 ["IsA"]
  CALL R10 2 1
  JUMPIFNOT R10 [+18]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K3 ["current"]
  GETTABLE R10 R11 R9
  JUMPIF R10 [+13]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["current"]
  DUPTABLE R11 K6 [{"Material", "MaterialVariant"}]
  GETTABLEKS R12 R9 K4 ["Material"]
  SETTABLEKS R12 R11 K4 ["Material"]
  GETTABLEKS R12 R9 K5 ["MaterialVariant"]
  SETTABLEKS R12 R11 K5 ["MaterialVariant"]
  SETTABLE R11 R10 R9
  FORGLOOP R5 2 [-25]
  FORGLOOP R0 2 [-60]
  RETURN R0 0

PROTO_13:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K2 ["current"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETTABLEKS R5 R4 K3 ["Material"]
  SETTABLEKS R5 R3 K3 ["Material"]
  GETTABLEKS R5 R4 K4 ["MaterialVariant"]
  SETTABLEKS R5 R3 K4 ["MaterialVariant"]
  FORGLOOP R0 2 [-9]
  RETURN R0 0

PROTO_14:
  LOADNIL R0
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["Get"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["BasePart"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+10]
  GETUPVAL R6 1
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R0 [+4]
  JUMPIFEQ R0 R6 [+3]
  LOADNIL R7
  RETURN R7 1
  MOVE R0 R6
  JUMP [+25]
  LOADK R8 K3 ["Model"]
  NAMECALL R6 R5 K2 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+20]
  NAMECALL R6 R5 K4 ["GetDescendants"]
  CALL R6 1 3
  FORGPREP R6
  LOADK R13 K1 ["BasePart"]
  NAMECALL R11 R10 K2 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+9]
  GETUPVAL R11 1
  MOVE R12 R10
  CALL R11 1 1
  JUMPIFNOT R0 [+4]
  JUMPIFEQ R0 R11 [+3]
  LOADNIL R12
  RETURN R12 1
  MOVE R0 R11
  FORGLOOP R6 2 [-15]
  FORGLOOP R1 2 [-41]
  RETURN R0 1

PROTO_15:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R3 0
  GETTABLEKS R1 R3 K2 ["current"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETTABLEKS R5 R4 K3 ["Material"]
  SETTABLEKS R5 R3 K3 ["Material"]
  GETTABLEKS R5 R4 K4 ["MaterialVariant"]
  SETTABLEKS R5 R3 K4 ["MaterialVariant"]
  FORGLOOP R0 2 [-9]
  RETURN R0 0

PROTO_16:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_17:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["List"]
  JUMP [+3]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["Grid"]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["setViewType"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["HIDE_MATERIAL_MANAGER_PLUGIN_EVENT"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["recents"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["recents"]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["appliedInPlace"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["appliedInPlace"]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["customMaterials"]
  NOT R1 R2
  SETTABLEKS R1 R0 K0 ["customMaterials"]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["current"]
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["Material"]
  GETUPVAL R3 2
  CALL R1 2 0
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K2 ["plugin"]
  GETTABLEKS R3 R0 K1 ["Material"]
  CALL R1 2 0
  GETUPVAL R1 5
  GETTABLEKS R2 R0 K1 ["Material"]
  CALL R1 1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K3 ["onMaterialSelected"]
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R2 6
  LOADK R5 K4 ["Applied %* Material to Selection"]
  MOVE R7 R1
  NAMECALL R5 R5 K5 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  NAMECALL R2 R2 K6 ["SetWaypoint"]
  CALL R2 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R2 R1 K0 ["current"]
  ADDK R2 R2 K1 [1]
  SETTABLEKS R2 R1 K0 ["current"]
  GETUPVAL R1 1
  CALL R1 0 0
  GETUPVAL R1 2
  GETTABLEKS R2 R0 K2 ["Material"]
  GETUPVAL R3 3
  CALL R1 2 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R0 0
  GETTABLEKS R1 R0 K0 ["current"]
  SUBK R1 R1 K1 [1]
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKN R0 K2 [0] [+18]
  GETIMPORT R0 K4 [pairs]
  GETUPVAL R3 1
  GETTABLEKS R1 R3 K0 ["current"]
  CALL R0 1 3
  FORGPREP_NEXT R0
  GETTABLEKS R5 R4 K5 ["Material"]
  SETTABLEKS R5 R3 K5 ["Material"]
  GETTABLEKS R5 R4 K6 ["MaterialVariant"]
  SETTABLEKS R5 R3 K6 ["MaterialVariant"]
  FORGLOOP R0 2 [-9]
  RETURN R0 0

PROTO_25:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
  NAMECALL R0 R0 K2 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+11]
  GETUPVAL R0 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["HIDE_MATERIAL_GENERATOR_PLUGIN_EVENT"]
  NAMECALL R0 R0 K1 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0
  LOADNIL R0
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["MATERIAL_GENERATOR_READY"]
  NEWCLOSURE R4 P0
  CAPTURE REF R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K3 ["Bind"]
  CALL R1 3 1
  MOVE R0 R1
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K4 ["LOAD_MATERIAL_GENERATOR"]
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 2 0
  CLOSEUPVALS R0
  RETURN R0 0

PROTO_27:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["use"]
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  LOADK R6 K1 ["Selection"]
  NAMECALL R4 R3 K2 ["getService"]
  CALL R4 2 1
  LOADK R7 K3 ["ChangeHistoryService"]
  NAMECALL R5 R3 K2 ["getService"]
  CALL R5 2 1
  GETIMPORT R6 K5 [game]
  LOADK R8 K6 ["MemStorageService"]
  NAMECALL R6 R6 K7 ["GetService"]
  CALL R6 2 1
  LOADK R9 K8 ["MaterialService"]
  NAMECALL R7 R3 K9 ["getServiceInstance"]
  CALL R7 2 1
  GETIMPORT R8 K5 [game]
  LOADK R10 K10 ["Workspace"]
  NAMECALL R8 R8 K7 ["GetService"]
  CALL R8 2 1
  GETUPVAL R9 3
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K11 ["MATERIAL_GENERATOR_ENABLED"]
  NAMECALL R11 R6 K12 ["GetItem"]
  CALL R11 2 1
  JUMPIFEQKS R11 K13 ["true"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  CALL R9 1 2
  GETUPVAL R11 3
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K14 ["MATERIAL_MANAGER_ENABLED"]
  NAMECALL R13 R6 K12 ["GetItem"]
  CALL R13 2 1
  JUMPIFEQKS R13 K13 ["true"] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  CALL R11 1 2
  GETUPVAL R13 3
  LOADK R14 K15 [""]
  CALL R13 1 2
  GETUPVAL R15 3
  GETUPVAL R16 5
  CALL R15 1 2
  GETUPVAL R17 6
  NEWCLOSURE R18 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R15
  NEWTABLE R19 0 1
  MOVE R20 R15
  SETLIST R19 R20 1 [1]
  CALL R17 2 0
  NEWCLOSURE R17 P1
  CAPTURE UPVAL U7
  CAPTURE VAL R7
  NEWCLOSURE R18 P2
  CAPTURE VAL R8
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NEWCLOSURE R19 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  NEWCLOSURE R20 P4
  CAPTURE UPVAL U7
  CAPTURE VAL R7
  CAPTURE VAL R15
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE REF R13
  CAPTURE UPVAL U13
  GETUPVAL R21 14
  LOADN R22 0
  CALL R21 1 1
  GETUPVAL R22 14
  NEWTABLE R23 0 0
  CALL R22 1 1
  NEWCLOSURE R23 P5
  CAPTURE VAL R22
  NEWCLOSURE R24 P6
  CAPTURE VAL R4
  CAPTURE VAL R22
  NEWCLOSURE R25 P7
  CAPTURE VAL R22
  NEWCLOSURE R26 P8
  CAPTURE VAL R4
  CAPTURE UPVAL U8
  GETUPVAL R27 6
  NEWCLOSURE R28 P9
  CAPTURE VAL R22
  NEWTABLE R29 0 0
  CALL R27 2 0
  GETTABLEKS R28 R0 K16 ["viewType"]
  GETUPVAL R30 15
  GETTABLEKS R29 R30 K17 ["Grid"]
  JUMPIFEQ R28 R29 [+2]
  LOADB R27 0 +1
  LOADB R27 1
  GETUPVAL R28 16
  GETUPVAL R29 17
  DUPTABLE R30 K20 [{"Layout", "VerticalAlignment"}]
  GETIMPORT R31 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R31 R30 K18 ["Layout"]
  GETIMPORT R31 K26 [Enum.VerticalAlignment.Top]
  SETTABLEKS R31 R30 K19 ["VerticalAlignment"]
  NEWTABLE R31 0 4
  GETUPVAL R32 16
  GETUPVAL R33 17
  DUPTABLE R34 K31 [{"key", "Size", "Spacing", "Padding", "Layout"}]
  LOADK R35 K32 ["PrimaryTools"]
  SETTABLEKS R35 R34 K27 ["key"]
  GETTABLEKS R36 R1 K32 ["PrimaryTools"]
  GETTABLEKS R35 R36 K28 ["Size"]
  SETTABLEKS R35 R34 K28 ["Size"]
  GETTABLEKS R36 R1 K32 ["PrimaryTools"]
  GETTABLEKS R35 R36 K29 ["Spacing"]
  SETTABLEKS R35 R34 K29 ["Spacing"]
  GETTABLEKS R36 R1 K32 ["PrimaryTools"]
  GETTABLEKS R35 R36 K30 ["Padding"]
  SETTABLEKS R35 R34 K30 ["Padding"]
  GETIMPORT R35 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R35 R34 K18 ["Layout"]
  NEWTABLE R35 0 3
  GETUPVAL R36 16
  GETUPVAL R37 18
  DUPTABLE R38 K41 [{"key", "PlaceholderText", "ShowSearchIcon", "ShowSearchButton", "OnSearchRequested", "OnTextChanged", "Style", "Size"}]
  LOADK R39 K42 ["SearchBar"]
  SETTABLEKS R39 R38 K27 ["key"]
  LOADK R41 K42 ["SearchBar"]
  LOADK R42 K43 ["SearchMaterials"]
  NAMECALL R39 R2 K44 ["getText"]
  CALL R39 3 1
  SETTABLEKS R39 R38 K35 ["PlaceholderText"]
  LOADB R39 1
  SETTABLEKS R39 R38 K36 ["ShowSearchIcon"]
  LOADB R39 0
  SETTABLEKS R39 R38 K37 ["ShowSearchButton"]
  SETTABLEKS R14 R38 K38 ["OnSearchRequested"]
  SETTABLEKS R14 R38 K39 ["OnTextChanged"]
  LOADK R39 K45 ["Compact"]
  SETTABLEKS R39 R38 K40 ["Style"]
  GETTABLEKS R40 R1 K42 ["SearchBar"]
  GETTABLEKS R39 R40 K28 ["Size"]
  SETTABLEKS R39 R38 K28 ["Size"]
  NEWTABLE R39 0 0
  CALL R36 3 1
  GETUPVAL R37 16
  GETUPVAL R38 19
  DUPTABLE R39 K50 [{"key", "BackgroundStyle", "LeftIcon", "Size", "TooltipText", "OnClick"}]
  LOADK R40 K51 ["ViewToggle"]
  SETTABLEKS R40 R39 K27 ["key"]
  LOADK R40 K52 ["Box"]
  SETTABLEKS R40 R39 K46 ["BackgroundStyle"]
  JUMPIFNOT R27 [+5]
  GETTABLEKS R41 R1 K51 ["ViewToggle"]
  GETTABLEKS R40 R41 K53 ["LeftIconList"]
  JUMP [+4]
  GETTABLEKS R41 R1 K51 ["ViewToggle"]
  GETTABLEKS R40 R41 K54 ["LeftIconGrid"]
  SETTABLEKS R40 R39 K47 ["LeftIcon"]
  GETTABLEKS R41 R1 K51 ["ViewToggle"]
  GETTABLEKS R40 R41 K28 ["Size"]
  SETTABLEKS R40 R39 K28 ["Size"]
  JUMPIFNOT R27 [+6]
  LOADK R42 K51 ["ViewToggle"]
  LOADK R43 K55 ["ListView"]
  NAMECALL R40 R2 K44 ["getText"]
  CALL R40 3 1
  JUMP [+5]
  LOADK R42 K51 ["ViewToggle"]
  LOADK R43 K56 ["GridView"]
  NAMECALL R40 R2 K44 ["getText"]
  CALL R40 3 1
  SETTABLEKS R40 R39 K48 ["TooltipText"]
  NEWCLOSURE R40 P10
  CAPTURE VAL R27
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  SETTABLEKS R40 R39 K49 ["OnClick"]
  NEWTABLE R40 0 0
  CALL R37 3 1
  GETUPVAL R38 16
  GETUPVAL R39 19
  DUPTABLE R40 K58 [{"key", "BackgroundStyle", "LeftIcon", "Size", "TooltipText", "BackgroundColor", "OnClick"}]
  LOADK R41 K59 ["MaterialManagerButton"]
  SETTABLEKS R41 R40 K27 ["key"]
  LOADK R41 K52 ["Box"]
  SETTABLEKS R41 R40 K46 ["BackgroundStyle"]
  GETTABLEKS R42 R1 K59 ["MaterialManagerButton"]
  GETTABLEKS R41 R42 K47 ["LeftIcon"]
  SETTABLEKS R41 R40 K47 ["LeftIcon"]
  GETTABLEKS R42 R1 K59 ["MaterialManagerButton"]
  GETTABLEKS R41 R42 K28 ["Size"]
  SETTABLEKS R41 R40 K28 ["Size"]
  LOADK R43 K59 ["MaterialManagerButton"]
  LOADK R44 K60 ["ManageMaterials"]
  NAMECALL R41 R2 K44 ["getText"]
  CALL R41 3 1
  SETTABLEKS R41 R40 K48 ["TooltipText"]
  JUMPIFNOT R11 [+5]
  GETTABLEKS R42 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R41 R42 K62 ["ActiveBackgroundColor"]
  JUMP [+1]
  LOADNIL R41
  SETTABLEKS R41 R40 K57 ["BackgroundColor"]
  NEWCLOSURE R41 P11
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  CAPTURE VAL R12
  SETTABLEKS R41 R40 K49 ["OnClick"]
  NEWTABLE R41 0 0
  CALL R38 3 -1
  SETLIST R35 R36 -1 [1]
  CALL R32 3 1
  GETUPVAL R33 16
  GETUPVAL R34 20
  DUPTABLE R35 K66 [{"Size", "ScrollingDirection", "HorizontalScrollBarInset", "ScrollBarThickness"}]
  GETTABLEKS R37 R1 K67 ["Filters"]
  GETTABLEKS R36 R37 K28 ["Size"]
  SETTABLEKS R36 R35 K28 ["Size"]
  GETIMPORT R36 K69 [Enum.ScrollingDirection.X]
  SETTABLEKS R36 R35 K63 ["ScrollingDirection"]
  GETIMPORT R36 K72 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R36 R35 K64 ["HorizontalScrollBarInset"]
  GETTABLEKS R37 R1 K73 ["MainView"]
  GETTABLEKS R36 R37 K65 ["ScrollBarThickness"]
  SETTABLEKS R36 R35 K65 ["ScrollBarThickness"]
  NEWTABLE R36 0 1
  GETUPVAL R37 16
  GETUPVAL R38 17
  DUPTABLE R39 K76 [{"key", "Layout", "HorizontalAlignment", "AutomaticSize", "Spacing", "Padding"}]
  LOADK R40 K67 ["Filters"]
  SETTABLEKS R40 R39 K27 ["key"]
  GETIMPORT R40 K34 [Enum.FillDirection.Horizontal]
  SETTABLEKS R40 R39 K18 ["Layout"]
  GETIMPORT R40 K78 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R40 R39 K74 ["HorizontalAlignment"]
  GETIMPORT R40 K80 [Enum.AutomaticSize.XY]
  SETTABLEKS R40 R39 K75 ["AutomaticSize"]
  LOADN R40 6
  SETTABLEKS R40 R39 K29 ["Spacing"]
  DUPTABLE R40 K81 [{"Left", "Top"}]
  LOADN R41 5
  SETTABLEKS R41 R40 K77 ["Left"]
  LOADN R41 1
  SETTABLEKS R41 R40 K25 ["Top"]
  SETTABLEKS R40 R39 K30 ["Padding"]
  NEWTABLE R40 0 3
  GETUPVAL R41 16
  GETUPVAL R42 21
  DUPTABLE R43 K84 [{"Text", "OnClick", "selected"}]
  LOADK R46 K67 ["Filters"]
  LOADK R47 K85 ["Recents"]
  NAMECALL R44 R2 K44 ["getText"]
  CALL R44 3 1
  SETTABLEKS R44 R43 K82 ["Text"]
  NEWCLOSURE R44 P12
  CAPTURE UPVAL U11
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R44 R43 K49 ["OnClick"]
  GETTABLEKS R44 R15 K86 ["recents"]
  SETTABLEKS R44 R43 K83 ["selected"]
  CALL R41 2 1
  GETUPVAL R42 16
  GETUPVAL R43 21
  DUPTABLE R44 K84 [{"Text", "OnClick", "selected"}]
  LOADK R47 K67 ["Filters"]
  LOADK R48 K87 ["AppliedInPlace"]
  NAMECALL R45 R2 K44 ["getText"]
  CALL R45 3 1
  SETTABLEKS R45 R44 K82 ["Text"]
  NEWCLOSURE R45 P13
  CAPTURE UPVAL U11
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R45 R44 K49 ["OnClick"]
  GETTABLEKS R45 R15 K88 ["appliedInPlace"]
  SETTABLEKS R45 R44 K83 ["selected"]
  CALL R42 2 1
  GETUPVAL R43 16
  GETUPVAL R44 21
  DUPTABLE R45 K84 [{"Text", "OnClick", "selected"}]
  LOADK R48 K67 ["Filters"]
  LOADK R49 K89 ["CustomMaterials"]
  NAMECALL R46 R2 K44 ["getText"]
  CALL R46 3 1
  SETTABLEKS R46 R45 K82 ["Text"]
  NEWCLOSURE R46 P14
  CAPTURE UPVAL U11
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R46 R45 K49 ["OnClick"]
  GETTABLEKS R46 R15 K90 ["customMaterials"]
  SETTABLEKS R46 R45 K83 ["selected"]
  CALL R43 2 -1
  SETLIST R40 R41 -1 [1]
  CALL R37 3 -1
  SETLIST R36 R37 -1 [1]
  CALL R33 3 1
  GETUPVAL R34 16
  GETUPVAL R35 22
  DUPTABLE R36 K103 [{"key", "Size", "GridItemSize", "Items", "ShowGridLabels", "OnClick", "OnMouseEnter", "OnMouseLeave", "ListPadding", "OnSnapshotTaken", "ViewType", "ScrollingDirection", "SelectedItemId", "AppliedItemId", "SnapshotSize", "SnapshotBorderThickness"}]
  LOADK R37 K104 ["MaterialGrid"]
  SETTABLEKS R37 R36 K27 ["key"]
  GETTABLEKS R38 R1 K104 ["MaterialGrid"]
  GETTABLEKS R37 R38 K28 ["Size"]
  SETTABLEKS R37 R36 K28 ["Size"]
  GETTABLEKS R38 R1 K104 ["MaterialGrid"]
  GETTABLEKS R37 R38 K91 ["GridItemSize"]
  SETTABLEKS R37 R36 K91 ["GridItemSize"]
  MOVE R37 R20
  CALL R37 0 1
  SETTABLEKS R37 R36 K92 ["Items"]
  LOADB R37 0
  SETTABLEKS R37 R36 K93 ["ShowGridLabels"]
  NEWCLOSURE R37 P15
  CAPTURE VAL R22
  CAPTURE UPVAL U23
  CAPTURE VAL R4
  CAPTURE UPVAL U24
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE VAL R5
  SETTABLEKS R37 R36 K49 ["OnClick"]
  NEWCLOSURE R37 P16
  CAPTURE VAL R21
  CAPTURE VAL R24
  CAPTURE UPVAL U23
  CAPTURE VAL R4
  SETTABLEKS R37 R36 K94 ["OnMouseEnter"]
  NEWCLOSURE R37 P17
  CAPTURE VAL R21
  CAPTURE VAL R22
  SETTABLEKS R37 R36 K95 ["OnMouseLeave"]
  GETTABLEKS R38 R1 K104 ["MaterialGrid"]
  GETTABLEKS R37 R38 K96 ["ListPadding"]
  SETTABLEKS R37 R36 K96 ["ListPadding"]
  GETTABLEKS R37 R0 K105 ["onSnapshotTaken"]
  SETTABLEKS R37 R36 K97 ["OnSnapshotTaken"]
  GETTABLEKS R37 R0 K16 ["viewType"]
  SETTABLEKS R37 R36 K98 ["ViewType"]
  GETIMPORT R37 K107 [Enum.ScrollingDirection.Y]
  SETTABLEKS R37 R36 K63 ["ScrollingDirection"]
  GETTABLEKS R37 R0 K108 ["selectedMaterialIdentifier"]
  SETTABLEKS R37 R36 K99 ["SelectedItemId"]
  MOVE R37 R26
  CALL R37 0 1
  SETTABLEKS R37 R36 K100 ["AppliedItemId"]
  GETTABLEKS R38 R1 K104 ["MaterialGrid"]
  GETTABLEKS R37 R38 K101 ["SnapshotSize"]
  SETTABLEKS R37 R36 K101 ["SnapshotSize"]
  GETTABLEKS R38 R1 K104 ["MaterialGrid"]
  GETTABLEKS R37 R38 K102 ["SnapshotBorderThickness"]
  SETTABLEKS R37 R36 K102 ["SnapshotBorderThickness"]
  CALL R34 2 1
  GETUPVAL R35 16
  GETUPVAL R36 17
  DUPTABLE R37 K109 [{"key", "Size"}]
  LOADK R38 K110 ["Footer"]
  SETTABLEKS R38 R37 K27 ["key"]
  GETTABLEKS R39 R1 K110 ["Footer"]
  GETTABLEKS R38 R39 K28 ["Size"]
  SETTABLEKS R38 R37 K28 ["Size"]
  NEWTABLE R38 0 1
  GETUPVAL R39 16
  GETUPVAL R40 19
  DUPTABLE R41 K114 [{"AnchorPoint", "Position", "Text", "Size", "LeftIcon", "IconSize", "Padding", "BackgroundColor", "OnClick"}]
  GETIMPORT R42 K117 [Vector2.new]
  LOADK R43 K118 [0.5]
  LOADK R44 K118 [0.5]
  CALL R42 2 1
  SETTABLEKS R42 R41 K111 ["AnchorPoint"]
  GETIMPORT R42 K120 [UDim2.new]
  LOADK R43 K118 [0.5]
  GETTABLEKS R46 R1 K73 ["MainView"]
  GETTABLEKS R45 R46 K65 ["ScrollBarThickness"]
  DIVK R44 R45 K121 [2]
  LOADK R45 K118 [0.5]
  LOADN R46 0
  CALL R42 4 1
  SETTABLEKS R42 R41 K112 ["Position"]
  LOADK R44 K73 ["MainView"]
  LOADK R45 K122 ["NewMaterial"]
  NAMECALL R42 R2 K44 ["getText"]
  CALL R42 3 1
  SETTABLEKS R42 R41 K82 ["Text"]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K28 ["Size"]
  SETTABLEKS R42 R41 K28 ["Size"]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K47 ["LeftIcon"]
  SETTABLEKS R42 R41 K47 ["LeftIcon"]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K113 ["IconSize"]
  SETTABLEKS R42 R41 K113 ["IconSize"]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K30 ["Padding"]
  SETTABLEKS R42 R41 K30 ["Padding"]
  JUMPIFNOT R9 [+5]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K62 ["ActiveBackgroundColor"]
  JUMP [+4]
  GETTABLEKS R43 R1 K61 ["MaterialGeneratorButton"]
  GETTABLEKS R42 R43 K57 ["BackgroundColor"]
  SETTABLEKS R42 R41 K57 ["BackgroundColor"]
  NEWCLOSURE R42 P18
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  CAPTURE VAL R10
  SETTABLEKS R42 R41 K49 ["OnClick"]
  CALL R39 2 -1
  SETLIST R38 R39 -1 [1]
  CALL R35 3 -1
  SETLIST R31 R32 -1 [1]
  CALL R28 3 -1
  CLOSEUPVALS R13
  RETURN R28 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialPicker"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["SharedPluginConstants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Constants"]
  GETTABLEKS R3 R4 K9 ["BASE_MATERIALS"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["applyToSelection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Packages"]
  GETTABLEKS R7 R8 K15 ["MaterialFramework"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K12 ["Packages"]
  GETTABLEKS R8 R9 K16 ["React"]
  CALL R7 1 1
  GETTABLEKS R8 R4 K17 ["append"]
  GETTABLEKS R9 R4 K18 ["copy"]
  GETTABLEKS R10 R4 K19 ["filter"]
  GETTABLEKS R11 R4 K20 ["keys"]
  GETTABLEKS R13 R5 K21 ["Style"]
  GETTABLEKS R12 R13 K22 ["Stylizer"]
  GETTABLEKS R13 R5 K23 ["ContextServices"]
  GETTABLEKS R14 R13 K24 ["Localization"]
  GETTABLEKS R16 R6 K25 ["Context"]
  GETTABLEKS R15 R16 K26 ["StudioServices"]
  GETTABLEKS R17 R6 K27 ["Components"]
  GETTABLEKS R16 R17 K28 ["MaterialGrid"]
  GETTABLEKS R18 R6 K10 ["Util"]
  GETTABLEKS R17 R18 K29 ["levenshteinDistance"]
  GETTABLEKS R19 R6 K10 ["Util"]
  GETTABLEKS R18 R19 K30 ["getSerializedMaterialIdentifier"]
  GETTABLEKS R20 R6 K31 ["Enums"]
  GETTABLEKS R19 R20 K32 ["ViewType"]
  GETTABLEKS R20 R7 K33 ["createElement"]
  GETTABLEKS R21 R7 K34 ["useRef"]
  GETTABLEKS R22 R7 K35 ["useEffect"]
  GETTABLEKS R23 R7 K36 ["useState"]
  GETTABLEKS R24 R5 K37 ["UI"]
  GETTABLEKS R25 R24 K38 ["IconButton"]
  GETTABLEKS R26 R24 K39 ["Pane"]
  GETTABLEKS R27 R24 K40 ["ScrollingFrame"]
  GETTABLEKS R28 R24 K41 ["SearchBar"]
  GETIMPORT R29 K5 [require]
  GETIMPORT R34 K1 [script]
  GETTABLEKS R33 R34 K42 ["Parent"]
  GETTABLEKS R32 R33 K42 ["Parent"]
  GETTABLEKS R31 R32 K43 ["Resources"]
  GETTABLEKS R30 R31 K44 ["createTheme"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETIMPORT R33 K1 [script]
  GETTABLEKS R32 R33 K42 ["Parent"]
  GETTABLEKS R31 R32 K45 ["FilterChip"]
  CALL R30 1 1
  DUPTABLE R31 K49 [{"recents", "appliedInPlace", "customMaterials"}]
  LOADB R32 0
  SETTABLEKS R32 R31 K46 ["recents"]
  LOADB R32 0
  SETTABLEKS R32 R31 K47 ["appliedInPlace"]
  LOADB R32 0
  SETTABLEKS R32 R31 K48 ["customMaterials"]
  DUPCLOSURE R32 K50 [PROTO_0]
  CAPTURE VAL R18
  NEWCLOSURE R33 P1
  CAPTURE VAL R12
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R23
  CAPTURE VAL R1
  CAPTURE REF R31
  CAPTURE VAL R22
  CAPTURE VAL R10
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R26
  CAPTURE VAL R28
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R30
  CAPTURE VAL R16
  CAPTURE VAL R3
  CAPTURE VAL R32
  SETGLOBAL R33 K51 ["MainView"]
  GETGLOBAL R33 K51 ["MainView"]
  CLOSEUPVALS R31
  RETURN R33 1
