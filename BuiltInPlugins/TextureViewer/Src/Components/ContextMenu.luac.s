PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["filterRowsBySearchTerm"]
  CALL R0 1 1
  GETUPVAL R1 1
  GETUPVAL R5 2
  GETTABLE R4 R0 R5
  GETTABLEKS R3 R4 K1 ["Texture"]
  NAMECALL R1 R1 K2 ["CopyToClipboard"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editingCell"}]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K0 ["editingCell"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R5 0 0
  DUPTABLE R6 K3 [{"Text", "Icon", "OnItemClicked"}]
  LOADK R9 K4 ["ContextMenu"]
  LOADK R10 K5 ["Copy"]
  NAMECALL R7 R2 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K0 ["Text"]
  LOADK R7 K7 ["rbxasset://textures/TextureViewer/copy.png"]
  SETTABLEKS R7 R6 K1 ["Icon"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  SETTABLEKS R6 R5 K5 ["Copy"]
  DUPTABLE R6 K3 [{"Text", "Icon", "OnItemClicked"}]
  LOADK R9 K4 ["ContextMenu"]
  LOADK R10 K8 ["Select"]
  NAMECALL R7 R2 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K0 ["Text"]
  LOADK R7 K9 ["rbxasset://textures/TextureViewer/select.png"]
  SETTABLEKS R7 R6 K1 ["Icon"]
  NEWCLOSURE R7 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  SETTABLEKS R6 R5 K8 ["Select"]
  DUPTABLE R6 K3 [{"Text", "Icon", "OnItemClicked"}]
  LOADK R9 K4 ["ContextMenu"]
  LOADK R10 K10 ["Replace"]
  NAMECALL R7 R2 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K0 ["Text"]
  LOADK R7 K11 ["rbxasset://textures/TextureViewer/replace.png"]
  SETTABLEKS R7 R6 K1 ["Icon"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R0
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K2 ["OnItemClicked"]
  SETTABLEKS R6 R5 K10 ["Replace"]
  NEWTABLE R6 0 3
  LOADK R7 K5 ["Copy"]
  LOADK R8 K8 ["Select"]
  LOADK R9 K10 ["Replace"]
  SETLIST R6 R7 3 [1]
  GETUPVAL R7 2
  MOVE R8 R1
  MOVE R9 R5
  MOVE R10 R6
  CALL R7 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K4 ["Selection"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R6 K6 [script]
  GETTABLEKS R5 R6 K7 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R3 K10 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K12 ["UI"]
  GETTABLEKS R5 R6 K13 ["showContextMenu"]
  DUPCLOSURE R6 K14 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R0 K15 ["showRightClickMenu"]
  RETURN R0 1
