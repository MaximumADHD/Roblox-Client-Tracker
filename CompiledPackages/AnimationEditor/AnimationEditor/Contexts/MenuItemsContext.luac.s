PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K2 ["canCreateGraph"]
  GETUPVAL R3 2
  LOADK R4 K3 ["Selection"]
  CALL R3 1 1
  DUPTABLE R4 K5 [{"menus"}]
  NEWTABLE R5 0 3
  DUPTABLE R6 K9 [{"id", "text", "groups"}]
  LOADK R7 K10 ["graph"]
  SETTABLEKS R7 R6 K6 ["id"]
  LOADK R7 K11 ["Graph"]
  SETTABLEKS R7 R6 K7 ["text"]
  NEWTABLE R7 0 3
  DUPTABLE R8 K13 [{"items"}]
  NEWTABLE R9 0 3
  DUPTABLE R10 K15 [{"id", "text", "onActivated"}]
  LOADK R11 K16 ["new"]
  SETTABLEKS R11 R10 K6 ["id"]
  LOADK R11 K17 ["New"]
  SETTABLEKS R11 R10 K7 ["text"]
  GETUPVAL R11 3
  CALL R11 0 1
  SETTABLEKS R11 R10 K14 ["onActivated"]
  DUPTABLE R11 K15 [{"id", "text", "onActivated"}]
  LOADK R12 K18 ["open"]
  SETTABLEKS R12 R11 K6 ["id"]
  LOADK R12 K19 ["OpenPopup"]
  SETTABLEKS R12 R11 K7 ["text"]
  GETUPVAL R12 4
  CALL R12 0 1
  SETTABLEKS R12 R11 K14 ["onActivated"]
  DUPTABLE R12 K20 [{"id", "text"}]
  LOADK R13 K21 ["duplicate"]
  SETTABLEKS R13 R12 K6 ["id"]
  LOADK R13 K22 ["Duplicate"]
  SETTABLEKS R13 R12 K7 ["text"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K12 ["items"]
  DUPTABLE R9 K13 [{"items"}]
  NEWTABLE R10 0 3
  DUPTABLE R11 K15 [{"id", "text", "onActivated"}]
  LOADK R12 K23 ["saveToRoblox"]
  SETTABLEKS R12 R11 K6 ["id"]
  LOADK R12 K24 ["SaveToRoblox"]
  SETTABLEKS R12 R11 K7 ["text"]
  GETUPVAL R12 5
  CALL R12 0 1
  SETTABLEKS R12 R11 K14 ["onActivated"]
  DUPTABLE R12 K15 [{"id", "text", "onActivated"}]
  LOADK R13 K25 ["saveToRobloxAs"]
  SETTABLEKS R13 R12 K6 ["id"]
  LOADK R13 K26 ["SaveToRobloxAs"]
  SETTABLEKS R13 R12 K7 ["text"]
  GETUPVAL R13 6
  CALL R13 0 1
  SETTABLEKS R13 R12 K14 ["onActivated"]
  DUPTABLE R13 K20 [{"id", "text"}]
  LOADK R14 K27 ["copyAssetId"]
  SETTABLEKS R14 R13 K6 ["id"]
  LOADK R14 K28 ["CopyAssetId"]
  SETTABLEKS R14 R13 K7 ["text"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K12 ["items"]
  DUPTABLE R10 K13 [{"items"}]
  NEWTABLE R11 0 2
  DUPTABLE R12 K15 [{"id", "text", "onActivated"}]
  LOADK R13 K29 ["createScriptForSelection"]
  SETTABLEKS R13 R12 K6 ["id"]
  GETTABLEKS R14 R1 K30 ["selectedTargetName"]
  JUMPIFNOT R14 [+2]
  LOADK R13 K31 ["CreateScriptFor"]
  JUMP [+1]
  LOADK R13 K32 ["CreateScriptForSelection"]
  SETTABLEKS R13 R12 K7 ["text"]
  JUMPIFNOT R2 [+2]
  MOVE R13 R3
  JUMP [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K14 ["onActivated"]
  DUPTABLE R13 K15 [{"id", "text", "onActivated"}]
  LOADK R14 K33 ["createScriptForStarterPlayer"]
  SETTABLEKS R14 R13 K6 ["id"]
  LOADK R14 K34 ["CreateScriptForStarterPlayer"]
  SETTABLEKS R14 R13 K7 ["text"]
  GETUPVAL R14 2
  LOADK R15 K35 ["StarterPlayer"]
  CALL R14 1 1
  SETTABLEKS R14 R13 K14 ["onActivated"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K12 ["items"]
  SETLIST R7 R8 3 [1]
  SETTABLEKS R7 R6 K8 ["groups"]
  DUPTABLE R7 K9 [{"id", "text", "groups"}]
  LOADK R8 K36 ["edit"]
  SETTABLEKS R8 R7 K6 ["id"]
  LOADK R8 K37 ["Edit"]
  SETTABLEKS R8 R7 K7 ["text"]
  NEWTABLE R8 0 4
  DUPTABLE R9 K13 [{"items"}]
  NEWTABLE R10 0 2
  DUPTABLE R11 K20 [{"id", "text"}]
  LOADK R12 K38 ["insertNode"]
  SETTABLEKS R12 R11 K6 ["id"]
  LOADK R12 K39 ["InsertNode"]
  SETTABLEKS R12 R11 K7 ["text"]
  DUPTABLE R12 K20 [{"id", "text"}]
  LOADK R13 K40 ["insertParameter"]
  SETTABLEKS R13 R12 K6 ["id"]
  LOADK R13 K41 ["InsertParameter"]
  SETTABLEKS R13 R12 K7 ["text"]
  SETLIST R10 R11 2 [1]
  SETTABLEKS R10 R9 K12 ["items"]
  DUPTABLE R10 K13 [{"items"}]
  NEWTABLE R11 0 6
  DUPTABLE R12 K20 [{"id", "text"}]
  LOADK R13 K42 ["cut"]
  SETTABLEKS R13 R12 K6 ["id"]
  LOADK R13 K43 ["Cut"]
  SETTABLEKS R13 R12 K7 ["text"]
  DUPTABLE R13 K20 [{"id", "text"}]
  LOADK R14 K44 ["copy"]
  SETTABLEKS R14 R13 K6 ["id"]
  LOADK R14 K45 ["Copy"]
  SETTABLEKS R14 R13 K7 ["text"]
  DUPTABLE R14 K20 [{"id", "text"}]
  LOADK R15 K46 ["paste"]
  SETTABLEKS R15 R14 K6 ["id"]
  LOADK R15 K47 ["Paste"]
  SETTABLEKS R15 R14 K7 ["text"]
  DUPTABLE R15 K20 [{"id", "text"}]
  LOADK R16 K21 ["duplicate"]
  SETTABLEKS R16 R15 K6 ["id"]
  LOADK R16 K22 ["Duplicate"]
  SETTABLEKS R16 R15 K7 ["text"]
  DUPTABLE R16 K20 [{"id", "text"}]
  LOADK R17 K48 ["delete"]
  SETTABLEKS R17 R16 K6 ["id"]
  LOADK R17 K49 ["Delete"]
  SETTABLEKS R17 R16 K7 ["text"]
  DUPTABLE R17 K20 [{"id", "text"}]
  LOADK R18 K50 ["rename"]
  SETTABLEKS R18 R17 K6 ["id"]
  LOADK R18 K51 ["Rename"]
  SETTABLEKS R18 R17 K7 ["text"]
  SETLIST R11 R12 6 [1]
  SETTABLEKS R11 R10 K12 ["items"]
  DUPTABLE R11 K13 [{"items"}]
  NEWTABLE R12 0 3
  DUPTABLE R13 K20 [{"id", "text"}]
  LOADK R14 K18 ["open"]
  SETTABLEKS R14 R13 K6 ["id"]
  LOADK R14 K52 ["Open"]
  SETTABLEKS R14 R13 K7 ["text"]
  DUPTABLE R14 K20 [{"id", "text"}]
  LOADK R15 K53 ["wrapGraph"]
  SETTABLEKS R15 R14 K6 ["id"]
  LOADK R15 K54 ["WrapGraph"]
  SETTABLEKS R15 R14 K7 ["text"]
  DUPTABLE R15 K20 [{"id", "text"}]
  LOADK R16 K55 ["unwrapGraph"]
  SETTABLEKS R16 R15 K6 ["id"]
  LOADK R16 K56 ["UnwrapGraph"]
  SETTABLEKS R16 R15 K7 ["text"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K12 ["items"]
  DUPTABLE R12 K13 [{"items"}]
  NEWTABLE R13 0 1
  DUPTABLE R14 K20 [{"id", "text"}]
  LOADK R15 K57 ["breakConnections"]
  SETTABLEKS R15 R14 K6 ["id"]
  LOADK R15 K58 ["BreakConnections"]
  SETTABLEKS R15 R14 K7 ["text"]
  SETLIST R13 R14 1 [1]
  SETTABLEKS R13 R12 K12 ["items"]
  SETLIST R8 R9 4 [1]
  SETTABLEKS R8 R7 K8 ["groups"]
  DUPTABLE R8 K9 [{"id", "text", "groups"}]
  LOADK R9 K59 ["view"]
  SETTABLEKS R9 R8 K6 ["id"]
  LOADK R9 K60 ["View"]
  SETTABLEKS R9 R8 K7 ["text"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K13 [{"items"}]
  NEWTABLE R11 0 3
  DUPTABLE R12 K15 [{"id", "text", "onActivated"}]
  LOADK R13 K61 ["frameSelection"]
  SETTABLEKS R13 R12 K6 ["id"]
  LOADK R13 K62 ["FrameSelection"]
  SETTABLEKS R13 R12 K7 ["text"]
  GETUPVAL R13 7
  CALL R13 0 1
  SETTABLEKS R13 R12 K14 ["onActivated"]
  DUPTABLE R13 K15 [{"id", "text", "onActivated"}]
  LOADK R14 K63 ["zoomIn"]
  SETTABLEKS R14 R13 K6 ["id"]
  LOADK R14 K64 ["ZoomIn"]
  SETTABLEKS R14 R13 K7 ["text"]
  GETUPVAL R14 8
  LOADK R15 K65 [0.5]
  CALL R14 1 1
  SETTABLEKS R14 R13 K14 ["onActivated"]
  DUPTABLE R14 K15 [{"id", "text", "onActivated"}]
  LOADK R15 K66 ["zoomOut"]
  SETTABLEKS R15 R14 K6 ["id"]
  LOADK R15 K67 ["ZoomOut"]
  SETTABLEKS R15 R14 K7 ["text"]
  GETUPVAL R15 8
  LOADK R16 K68 [-0.5]
  CALL R15 1 1
  SETTABLEKS R15 R14 K14 ["onActivated"]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K12 ["items"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K8 ["groups"]
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K4 ["menus"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K69 ["createElement"]
  GETUPVAL R7 9
  GETTABLEKS R6 R7 K70 ["Provider"]
  DUPTABLE R7 K72 [{"value"}]
  SETTABLEKS R4 R7 K71 ["value"]
  GETTABLEKS R8 R0 K73 ["children"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Contexts"]
  GETTABLEKS R2 R3 K7 ["CreateGraphContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K11 ["Components"]
  GETTABLEKS R7 R8 K12 ["NodeView"]
  GETTABLEKS R6 R7 K13 ["MenuActions"]
  GETTABLEKS R5 R6 K14 ["useCreateScript"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K11 ["Components"]
  GETTABLEKS R8 R9 K12 ["NodeView"]
  GETTABLEKS R7 R8 K13 ["MenuActions"]
  GETTABLEKS R6 R7 K15 ["useFrameSelection"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K11 ["Components"]
  GETTABLEKS R9 R10 K12 ["NodeView"]
  GETTABLEKS R8 R9 K13 ["MenuActions"]
  GETTABLEKS R7 R8 K16 ["useNewGraph"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K11 ["Components"]
  GETTABLEKS R10 R11 K12 ["NodeView"]
  GETTABLEKS R9 R10 K13 ["MenuActions"]
  GETTABLEKS R8 R9 K17 ["useOpenGraph"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K11 ["Components"]
  GETTABLEKS R11 R12 K12 ["NodeView"]
  GETTABLEKS R10 R11 K13 ["MenuActions"]
  GETTABLEKS R9 R10 K18 ["usePublishAs"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K11 ["Components"]
  GETTABLEKS R12 R13 K12 ["NodeView"]
  GETTABLEKS R11 R12 K13 ["MenuActions"]
  GETTABLEKS R10 R11 K19 ["useSaveToRoblox"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K11 ["Components"]
  GETTABLEKS R13 R14 K12 ["NodeView"]
  GETTABLEKS R12 R13 K13 ["MenuActions"]
  GETTABLEKS R11 R12 K20 ["useZoom"]
  CALL R10 1 1
  DUPTABLE R11 K22 [{"menus"}]
  NEWTABLE R12 0 0
  SETTABLEKS R12 R11 K21 ["menus"]
  GETTABLEKS R12 R3 K23 ["createContext"]
  MOVE R13 R11
  CALL R12 1 1
  DUPCLOSURE R13 K24 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R12
  DUPTABLE R14 K27 [{"Context", "Provider"}]
  SETTABLEKS R12 R14 K25 ["Context"]
  SETTABLEKS R13 R14 K26 ["Provider"]
  RETURN R14 1
