PROTO_0:
  DUPTABLE R3 K2 [{"key", "source"}]
  SETTABLEKS R0 R3 K0 ["key"]
  DUPTABLE R4 K6 [{"type", "uri", "expectation"}]
  LOADK R5 K7 ["studioAction"]
  SETTABLEKS R5 R4 K3 ["type"]
  SETTABLEKS R1 R4 K4 ["uri"]
  SETTABLEKS R2 R4 K5 ["expectation"]
  SETTABLEKS R4 R3 K1 ["source"]
  RETURN R3 1

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

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["fromAction"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

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
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R4
  NEWTABLE R9 0 0
  NEWTABLE R12 0 1
  GETTABLEKS R14 R4 K18 ["fromAction"]
  LOADK R15 K19 ["Common"]
  LOADK R16 K20 ["Delete"]
  CALL R14 2 1
  DUPTABLE R13 K23 [{"key", "source"}]
  LOADK R15 K24 ["delete"]
  SETTABLEKS R15 R13 K21 ["key"]
  DUPTABLE R15 K28 [{"type", "uri", "expectation"}]
  LOADK R16 K29 ["studioAction"]
  SETTABLEKS R16 R15 K25 ["type"]
  SETTABLEKS R14 R15 K26 ["uri"]
  LOADK R16 K30 ["NonServices"]
  SETTABLEKS R16 R15 K27 ["expectation"]
  SETTABLEKS R15 R13 K22 ["source"]
  SETLIST R12 R13 1 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K33 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 2
  GETTABLEKS R14 R4 K18 ["fromAction"]
  LOADK R15 K34 ["InsertService"]
  LOADK R16 K35 ["ShowServices"]
  CALL R14 2 1
  DUPTABLE R13 K23 [{"key", "source"}]
  LOADK R15 K36 ["showServices"]
  SETTABLEKS R15 R13 K21 ["key"]
  DUPTABLE R15 K28 [{"type", "uri", "expectation"}]
  LOADK R16 K29 ["studioAction"]
  SETTABLEKS R16 R15 K25 ["type"]
  SETTABLEKS R14 R15 K26 ["uri"]
  LOADK R16 K37 ["ServicesAndBlank"]
  SETTABLEKS R16 R15 K27 ["expectation"]
  SETTABLEKS R15 R13 K22 ["source"]
  GETTABLEKS R15 R4 K18 ["fromAction"]
  LOADK R16 K34 ["InsertService"]
  LOADK R17 K38 ["HideService"]
  CALL R15 2 1
  DUPTABLE R14 K23 [{"key", "source"}]
  LOADK R16 K39 ["hideServices"]
  SETTABLEKS R16 R14 K21 ["key"]
  DUPTABLE R16 K28 [{"type", "uri", "expectation"}]
  LOADK R17 K29 ["studioAction"]
  SETTABLEKS R17 R16 K25 ["type"]
  SETTABLEKS R15 R16 K26 ["uri"]
  LOADK R17 K40 ["Services"]
  SETTABLEKS R17 R16 K27 ["expectation"]
  SETTABLEKS R16 R14 K22 ["source"]
  SETLIST R12 R13 2 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K33 [table.insert]
  CALL R10 2 0
  NEWTABLE R12 0 1
  NEWTABLE R14 0 1
  NEWTABLE R15 0 1
  GETTABLEKS R20 R2 K41 ["Data"]
  GETTABLEKS R19 R20 K7 ["ContextMenu"]
  GETTABLEKS R18 R19 K42 ["coreItems"]
  GETTABLEKS R17 R18 K43 ["expandAll"]
  DUPTABLE R16 K23 [{"key", "source"}]
  SETTABLEKS R17 R16 K21 ["key"]
  DUPTABLE R18 K44 [{"type"}]
  LOADK R19 K45 ["core"]
  SETTABLEKS R19 R18 K25 ["type"]
  SETTABLEKS R18 R16 K22 ["source"]
  SETLIST R15 R16 1 [1]
  SETLIST R14 R15 1 [1]
  DUPTABLE R13 K23 [{"key", "source"}]
  LOADK R15 K46 ["hierarchy"]
  SETTABLEKS R15 R13 K21 ["key"]
  DUPTABLE R15 K48 [{"type", "submenuCategories"}]
  LOADK R16 K49 ["submenu"]
  SETTABLEKS R16 R15 K25 ["type"]
  SETTABLEKS R14 R15 K47 ["submenuCategories"]
  SETTABLEKS R15 R13 K22 ["source"]
  SETLIST R12 R13 1 [1]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K33 [table.insert]
  CALL R10 2 0
  RETURN R9 1
