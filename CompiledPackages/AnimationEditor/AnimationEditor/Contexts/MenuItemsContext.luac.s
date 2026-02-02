PROTO_0:
  DUPTABLE R1 K1 [{"menus"}]
  NEWTABLE R2 0 4
  DUPTABLE R3 K5 [{"id", "text", "groups"}]
  LOADK R4 K6 ["graph"]
  SETTABLEKS R4 R3 K2 ["id"]
  LOADK R4 K7 ["Graph"]
  SETTABLEKS R4 R3 K3 ["text"]
  NEWTABLE R4 0 2
  DUPTABLE R5 K9 [{"items"}]
  NEWTABLE R6 0 3
  DUPTABLE R7 K11 [{"id", "text", "onActivated"}]
  LOADK R8 K12 ["new"]
  SETTABLEKS R8 R7 K2 ["id"]
  LOADK R8 K13 ["New"]
  SETTABLEKS R8 R7 K3 ["text"]
  GETUPVAL R8 0
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["onActivated"]
  DUPTABLE R8 K11 [{"id", "text", "onActivated"}]
  LOADK R9 K14 ["open"]
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K15 ["OpenPopup"]
  SETTABLEKS R9 R8 K3 ["text"]
  GETUPVAL R9 1
  CALL R9 0 1
  SETTABLEKS R9 R8 K10 ["onActivated"]
  DUPTABLE R9 K16 [{"id", "text"}]
  LOADK R10 K17 ["duplicate"]
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K18 ["Duplicate"]
  SETTABLEKS R10 R9 K3 ["text"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K8 ["items"]
  DUPTABLE R6 K9 [{"items"}]
  NEWTABLE R7 0 3
  DUPTABLE R8 K16 [{"id", "text"}]
  LOADK R9 K19 ["saveToRoblox"]
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K20 ["SaveToRoblox"]
  SETTABLEKS R9 R8 K3 ["text"]
  DUPTABLE R9 K11 [{"id", "text", "onActivated"}]
  LOADK R10 K21 ["saveToRobloxAs"]
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K22 ["SaveToRobloxAs"]
  SETTABLEKS R10 R9 K3 ["text"]
  GETUPVAL R10 2
  CALL R10 0 1
  SETTABLEKS R10 R9 K10 ["onActivated"]
  DUPTABLE R10 K16 [{"id", "text"}]
  LOADK R11 K23 ["copyAssetId"]
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K24 ["CopyAssetId"]
  SETTABLEKS R11 R10 K3 ["text"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K8 ["items"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K4 ["groups"]
  DUPTABLE R4 K5 [{"id", "text", "groups"}]
  LOADK R5 K25 ["edit"]
  SETTABLEKS R5 R4 K2 ["id"]
  LOADK R5 K26 ["Edit"]
  SETTABLEKS R5 R4 K3 ["text"]
  NEWTABLE R5 0 4
  DUPTABLE R6 K9 [{"items"}]
  NEWTABLE R7 0 2
  DUPTABLE R8 K16 [{"id", "text"}]
  LOADK R9 K27 ["insertNode"]
  SETTABLEKS R9 R8 K2 ["id"]
  LOADK R9 K28 ["InsertNode"]
  SETTABLEKS R9 R8 K3 ["text"]
  DUPTABLE R9 K16 [{"id", "text"}]
  LOADK R10 K29 ["insertParameter"]
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K30 ["InsertParameter"]
  SETTABLEKS R10 R9 K3 ["text"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K8 ["items"]
  DUPTABLE R7 K9 [{"items"}]
  NEWTABLE R8 0 6
  DUPTABLE R9 K16 [{"id", "text"}]
  LOADK R10 K31 ["cut"]
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K32 ["Cut"]
  SETTABLEKS R10 R9 K3 ["text"]
  DUPTABLE R10 K16 [{"id", "text"}]
  LOADK R11 K33 ["copy"]
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K34 ["Copy"]
  SETTABLEKS R11 R10 K3 ["text"]
  DUPTABLE R11 K16 [{"id", "text"}]
  LOADK R12 K35 ["paste"]
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K36 ["Paste"]
  SETTABLEKS R12 R11 K3 ["text"]
  DUPTABLE R12 K16 [{"id", "text"}]
  LOADK R13 K17 ["duplicate"]
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K18 ["Duplicate"]
  SETTABLEKS R13 R12 K3 ["text"]
  DUPTABLE R13 K16 [{"id", "text"}]
  LOADK R14 K37 ["delete"]
  SETTABLEKS R14 R13 K2 ["id"]
  LOADK R14 K38 ["Delete"]
  SETTABLEKS R14 R13 K3 ["text"]
  DUPTABLE R14 K16 [{"id", "text"}]
  LOADK R15 K39 ["rename"]
  SETTABLEKS R15 R14 K2 ["id"]
  LOADK R15 K40 ["Rename"]
  SETTABLEKS R15 R14 K3 ["text"]
  SETLIST R8 R9 6 [1]
  SETTABLEKS R8 R7 K8 ["items"]
  DUPTABLE R8 K9 [{"items"}]
  NEWTABLE R9 0 3
  DUPTABLE R10 K16 [{"id", "text"}]
  LOADK R11 K14 ["open"]
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K41 ["Open"]
  SETTABLEKS R11 R10 K3 ["text"]
  DUPTABLE R11 K16 [{"id", "text"}]
  LOADK R12 K42 ["wrapGraph"]
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K43 ["WrapGraph"]
  SETTABLEKS R12 R11 K3 ["text"]
  DUPTABLE R12 K16 [{"id", "text"}]
  LOADK R13 K44 ["unwrapGraph"]
  SETTABLEKS R13 R12 K2 ["id"]
  LOADK R13 K45 ["UnwrapGraph"]
  SETTABLEKS R13 R12 K3 ["text"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K8 ["items"]
  DUPTABLE R9 K9 [{"items"}]
  NEWTABLE R10 0 1
  DUPTABLE R11 K16 [{"id", "text"}]
  LOADK R12 K46 ["breakConnections"]
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K47 ["BreakConnections"]
  SETTABLEKS R12 R11 K3 ["text"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K8 ["items"]
  SETLIST R5 R6 4 [1]
  SETTABLEKS R5 R4 K4 ["groups"]
  DUPTABLE R5 K5 [{"id", "text", "groups"}]
  LOADK R6 K48 ["view"]
  SETTABLEKS R6 R5 K2 ["id"]
  LOADK R6 K49 ["View"]
  SETTABLEKS R6 R5 K3 ["text"]
  NEWTABLE R6 0 1
  DUPTABLE R7 K9 [{"items"}]
  NEWTABLE R8 0 3
  DUPTABLE R9 K11 [{"id", "text", "onActivated"}]
  LOADK R10 K50 ["frameSelection"]
  SETTABLEKS R10 R9 K2 ["id"]
  LOADK R10 K51 ["FrameSelection"]
  SETTABLEKS R10 R9 K3 ["text"]
  GETUPVAL R10 3
  CALL R10 0 1
  SETTABLEKS R10 R9 K10 ["onActivated"]
  DUPTABLE R10 K11 [{"id", "text", "onActivated"}]
  LOADK R11 K52 ["zoomIn"]
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K53 ["ZoomIn"]
  SETTABLEKS R11 R10 K3 ["text"]
  GETUPVAL R11 4
  LOADK R12 K54 [0.5]
  CALL R11 1 1
  SETTABLEKS R11 R10 K10 ["onActivated"]
  DUPTABLE R11 K11 [{"id", "text", "onActivated"}]
  LOADK R12 K55 ["zoomOut"]
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K56 ["ZoomOut"]
  SETTABLEKS R12 R11 K3 ["text"]
  GETUPVAL R12 4
  LOADK R13 K57 [-0.5]
  CALL R12 1 1
  SETTABLEKS R12 R11 K10 ["onActivated"]
  SETLIST R8 R9 3 [1]
  SETTABLEKS R8 R7 K8 ["items"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K4 ["groups"]
  DUPTABLE R6 K5 [{"id", "text", "groups"}]
  LOADK R7 K58 ["preview"]
  SETTABLEKS R7 R6 K2 ["id"]
  LOADK R7 K59 ["Preview"]
  SETTABLEKS R7 R6 K3 ["text"]
  NEWTABLE R7 0 1
  DUPTABLE R8 K9 [{"items"}]
  NEWTABLE R9 0 2
  DUPTABLE R10 K11 [{"id", "text", "onActivated"}]
  LOADK R11 K60 ["play"]
  SETTABLEKS R11 R10 K2 ["id"]
  LOADK R11 K61 ["Play"]
  SETTABLEKS R11 R10 K3 ["text"]
  GETUPVAL R11 5
  LOADB R12 1
  CALL R11 1 1
  SETTABLEKS R11 R10 K10 ["onActivated"]
  DUPTABLE R11 K11 [{"id", "text", "onActivated"}]
  LOADK R12 K62 ["stop"]
  SETTABLEKS R12 R11 K2 ["id"]
  LOADK R12 K63 ["Stop"]
  SETTABLEKS R12 R11 K3 ["text"]
  GETUPVAL R12 5
  LOADB R13 0
  CALL R12 1 1
  SETTABLEKS R12 R11 K10 ["onActivated"]
  SETLIST R9 R10 2 [1]
  SETTABLEKS R9 R8 K8 ["items"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K4 ["groups"]
  SETLIST R2 R3 4 [1]
  SETTABLEKS R2 R1 K0 ["menus"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K64 ["createElement"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K65 ["Provider"]
  DUPTABLE R4 K67 [{"value"}]
  SETTABLEKS R1 R4 K66 ["value"]
  GETTABLEKS R5 R0 K68 ["children"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K10 ["NodeView"]
  GETTABLEKS R5 R6 K11 ["MenuActions"]
  GETTABLEKS R4 R5 K12 ["useFrameSelection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K10 ["NodeView"]
  GETTABLEKS R6 R7 K11 ["MenuActions"]
  GETTABLEKS R5 R6 K13 ["useNewGraph"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K10 ["NodeView"]
  GETTABLEKS R7 R8 K11 ["MenuActions"]
  GETTABLEKS R6 R7 K14 ["useOpenGraph"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K9 ["Components"]
  GETTABLEKS R9 R10 K10 ["NodeView"]
  GETTABLEKS R8 R9 K11 ["MenuActions"]
  GETTABLEKS R7 R8 K15 ["usePlay"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K9 ["Components"]
  GETTABLEKS R10 R11 K10 ["NodeView"]
  GETTABLEKS R9 R10 K11 ["MenuActions"]
  GETTABLEKS R8 R9 K16 ["usePublishAs"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K9 ["Components"]
  GETTABLEKS R11 R12 K10 ["NodeView"]
  GETTABLEKS R10 R11 K11 ["MenuActions"]
  GETTABLEKS R9 R10 K17 ["useZoom"]
  CALL R8 1 1
  DUPTABLE R9 K19 [{"menus"}]
  NEWTABLE R10 0 0
  SETTABLEKS R10 R9 K18 ["menus"]
  GETTABLEKS R10 R2 K20 ["createContext"]
  MOVE R11 R9
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R10
  DUPTABLE R12 K24 [{"Context", "Provider"}]
  SETTABLEKS R10 R12 K22 ["Context"]
  SETTABLEKS R11 R12 K23 ["Provider"]
  RETURN R12 1
