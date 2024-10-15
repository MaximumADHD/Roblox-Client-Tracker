PROTO_0:
  DUPTABLE R2 K2 [{"key", "source"}]
  SETTABLEKS R0 R2 K0 ["key"]
  DUPTABLE R3 K5 [{"type", "uri"}]
  LOADK R4 K6 ["studioAction"]
  SETTABLEKS R4 R3 K3 ["type"]
  SETTABLEKS R1 R3 K4 ["uri"]
  SETTABLEKS R3 R2 K1 ["source"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K2 [{"key", "source"}]
  SETTABLEKS R0 R1 K0 ["key"]
  DUPTABLE R2 K4 [{"type"}]
  LOADK R3 K5 ["core"]
  SETTABLEKS R3 R2 K3 ["type"]
  SETTABLEKS R2 R1 K1 ["source"]
  RETURN R1 1

PROTO_2:
  DUPTABLE R2 K2 [{"key", "source"}]
  SETTABLEKS R0 R2 K0 ["key"]
  DUPTABLE R3 K5 [{"type", "submenuCategories"}]
  LOADK R4 K6 ["submenu"]
  SETTABLEKS R4 R3 K3 ["type"]
  SETTABLEKS R1 R3 K4 ["submenuCategories"]
  SETTABLEKS R3 R2 K1 ["source"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["ContextMenu"]
  GETTABLEKS R2 R3 K8 ["ContextMenuTypes"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Explorer"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["StudioUri"]
  DUPCLOSURE R5 K14 [PROTO_0]
  DUPCLOSURE R6 K15 [PROTO_1]
  DUPCLOSURE R7 K16 [PROTO_2]
  NEWTABLE R8 0 0
  NEWTABLE R11 0 1
  GETTABLEKS R13 R4 K17 ["fromAction"]
  LOADK R14 K18 ["Common"]
  LOADK R15 K19 ["Delete"]
  CALL R13 2 1
  DUPTABLE R12 K22 [{"key", "source"}]
  LOADK R14 K23 ["delete"]
  SETTABLEKS R14 R12 K20 ["key"]
  DUPTABLE R14 K26 [{"type", "uri"}]
  LOADK R15 K27 ["studioAction"]
  SETTABLEKS R15 R14 K24 ["type"]
  SETTABLEKS R13 R14 K25 ["uri"]
  SETTABLEKS R14 R12 K21 ["source"]
  SETLIST R11 R12 1 [1]
  FASTCALL2 TABLE_INSERT R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K30 [table.insert]
  CALL R9 2 0
  NEWTABLE R11 0 1
  NEWTABLE R13 0 1
  NEWTABLE R14 0 1
  GETTABLEKS R19 R2 K31 ["Data"]
  GETTABLEKS R18 R19 K7 ["ContextMenu"]
  GETTABLEKS R17 R18 K32 ["coreItems"]
  GETTABLEKS R16 R17 K33 ["expandAll"]
  DUPTABLE R15 K22 [{"key", "source"}]
  SETTABLEKS R16 R15 K20 ["key"]
  DUPTABLE R17 K34 [{"type"}]
  LOADK R18 K35 ["core"]
  SETTABLEKS R18 R17 K24 ["type"]
  SETTABLEKS R17 R15 K21 ["source"]
  SETLIST R14 R15 1 [1]
  SETLIST R13 R14 1 [1]
  DUPTABLE R12 K22 [{"key", "source"}]
  LOADK R14 K36 ["hierarchy"]
  SETTABLEKS R14 R12 K20 ["key"]
  DUPTABLE R14 K38 [{"type", "submenuCategories"}]
  LOADK R15 K39 ["submenu"]
  SETTABLEKS R15 R14 K24 ["type"]
  SETTABLEKS R13 R14 K37 ["submenuCategories"]
  SETTABLEKS R14 R12 K21 ["source"]
  SETLIST R11 R12 1 [1]
  FASTCALL2 TABLE_INSERT R8 R11 [+4]
  MOVE R10 R8
  GETIMPORT R9 K30 [table.insert]
  CALL R9 2 0
  RETURN R8 1
