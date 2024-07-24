PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["BaseUrl"]
  GETUPVAL R2 1
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["urlEncode"]
  CALL R2 2 1
  LOADK R4 K2 ["%*library/%*/asset"]
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R4 R4 K3 ["format"]
  CALL R4 3 1
  MOVE R3 R4
  RETURN R3 1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["_createAssetUrl"]
  MOVE R4 R0
  CALL R3 1 -1
  NAMECALL R1 R1 K1 ["OpenBrowserWindow"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["CopyToClipboard"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  LOADK R3 K0 ["OpenAssetConfig"]
  MOVE R4 R0
  NAMECALL R1 R1 K1 ["Fire"]
  CALL R1 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ContentProvider"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["HttpService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K1 [game]
  LOADK R5 K6 ["MemStorageService"]
  NAMECALL R3 R3 K3 ["GetService"]
  CALL R3 2 1
  GETIMPORT R4 K1 [game]
  LOADK R6 K7 ["StudioService"]
  NAMECALL R4 R4 K3 ["GetService"]
  CALL R4 2 1
  NEWTABLE R5 4 0
  DUPCLOSURE R6 K8 [PROTO_0]
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K9 ["_createAssetUrl"]
  DUPCLOSURE R6 K10 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K11 ["openItemInBrowser"]
  DUPCLOSURE R6 K12 [PROTO_2]
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K13 ["copyAssetId"]
  DUPCLOSURE R6 K14 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K15 ["openAssetConfig"]
  RETURN R5 1
