PROTO_0:
  DUPTABLE R2 K2 [{"info", "source"}]
  DUPTABLE R3 K5 [{"key", "subItemKeys"}]
  SETTABLEKS R0 R3 K3 ["key"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K4 ["subItemKeys"]
  SETTABLEKS R3 R2 K0 ["info"]
  DUPTABLE R3 K8 [{"type", "uri"}]
  LOADK R4 K9 ["studioAction"]
  SETTABLEKS R4 R3 K6 ["type"]
  SETTABLEKS R1 R3 K7 ["uri"]
  SETTABLEKS R3 R2 K1 ["source"]
  RETURN R2 1

PROTO_1:
  DUPTABLE R1 K2 [{"info", "source"}]
  SETTABLEKS R0 R1 K0 ["info"]
  DUPTABLE R2 K4 [{"type"}]
  LOADK R3 K5 ["core"]
  SETTABLEKS R3 R2 K3 ["type"]
  SETTABLEKS R2 R1 K1 ["source"]
  RETURN R1 1

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
  NEWTABLE R7 0 0
  NEWTABLE R10 0 1
  MOVE R11 R5
  LOADK R12 K16 ["delete"]
  GETTABLEKS R13 R4 K17 ["fromAction"]
  LOADK R14 K18 ["Common"]
  LOADK R15 K19 ["Delete"]
  CALL R13 2 -1
  CALL R11 -1 1
  SETLIST R10 R11 1 [1]
  FASTCALL2 TABLE_INSERT R7 R10 [+4]
  MOVE R9 R7
  GETIMPORT R8 K22 [table.insert]
  CALL R8 2 0
  NEWTABLE R10 0 1
  GETTABLEKS R15 R2 K23 ["Data"]
  GETTABLEKS R14 R15 K7 ["ContextMenu"]
  GETTABLEKS R13 R14 K24 ["coreItems"]
  GETTABLEKS R12 R13 K25 ["expandAll"]
  DUPTABLE R11 K28 [{"info", "source"}]
  SETTABLEKS R12 R11 K26 ["info"]
  DUPTABLE R13 K30 [{"type"}]
  LOADK R14 K31 ["core"]
  SETTABLEKS R14 R13 K29 ["type"]
  SETTABLEKS R13 R11 K27 ["source"]
  SETLIST R10 R11 1 [1]
  FASTCALL2 TABLE_INSERT R7 R10 [+4]
  MOVE R9 R7
  GETIMPORT R8 K22 [table.insert]
  CALL R8 2 0
  RETURN R7 1
