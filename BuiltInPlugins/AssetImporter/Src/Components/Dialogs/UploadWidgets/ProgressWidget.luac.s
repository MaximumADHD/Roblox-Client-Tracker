PROTO_0:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["UploadStatus"]
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  LOADNIL R7
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["UploadRequestStatus"]
  GETTABLEKS R8 R9 K2 ["Waiting"]
  JUMPIFNOTEQ R6 R8 [+17]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K6 [{"size", "LayoutOrder"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K7 ["Small"]
  SETTABLEKS R11 R10 K4 ["size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  MOVE R7 R8
  JUMP [+27]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K9 [{"name", "size", "LayoutOrder"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K1 ["UploadRequestStatus"]
  GETTABLEKS R12 R13 K10 ["Succeeded"]
  JUMPIFNOTEQ R6 R12 [+3]
  GETUPVAL R11 5
  JUMP [+1]
  GETUPVAL R11 6
  SETTABLEKS R11 R10 K8 ["name"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K7 ["Small"]
  SETTABLEKS R11 R10 K4 ["size"]
  LOADN R11 1
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  MOVE R7 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 7
  DUPTABLE R10 K13 [{"tag", "Text", "LayoutOrder"}]
  NEWTABLE R11 4 0
  LOADB R12 1
  SETTABLEKS R12 R11 K14 ["fill auto-xy text-align-x-left text-label-medium text-wrap"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["UploadRequestStatus"]
  GETTABLEKS R13 R14 K2 ["Waiting"]
  JUMPIFEQ R6 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K15 ["content-system-warning"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["UploadRequestStatus"]
  GETTABLEKS R13 R14 K10 ["Succeeded"]
  JUMPIFEQ R6 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K16 ["content-system-success"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K1 ["UploadRequestStatus"]
  GETTABLEKS R13 R14 K17 ["Failed"]
  JUMPIFEQ R6 R13 [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K18 ["content-system-alert"]
  SETTABLEKS R11 R10 K11 ["tag"]
  SETTABLEKS R5 R10 K12 ["Text"]
  LOADN R11 2
  SETTABLEKS R11 R10 K5 ["LayoutOrder"]
  CALL R8 2 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K3 ["createElement"]
  GETUPVAL R10 8
  DUPTABLE R11 K19 [{"tag"}]
  LOADK R12 K20 ["row align-x-left size-full-500"]
  SETTABLEKS R12 R11 K11 ["tag"]
  DUPTABLE R12 K22 [{"Icon", "Text"}]
  SETTABLEKS R7 R12 K21 ["Icon"]
  SETTABLEKS R8 R12 K12 ["Text"]
  CALL R9 3 1
  FASTCALL2 TABLE_INSERT R1 R9 [+5]
  MOVE R11 R1
  MOVE R12 R9
  GETIMPORT R10 K25 [table.insert]
  CALL R10 2 0
  FORGLOOP R2 2 [-124]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 9
  NEWTABLE R4 0 0
  DUPTABLE R5 K27 [{"View"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 8
  DUPTABLE R8 K19 [{"tag"}]
  LOADK R9 K28 ["col align-x-left align-y-top size-full margin-medium gap-medium"]
  SETTABLEKS R9 R8 K11 ["tag"]
  DUPTABLE R9 K30 [{"Text", "Table"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 7
  DUPTABLE R12 K13 [{"tag", "Text", "LayoutOrder"}]
  LOADK R13 K31 ["auto-xy text-align-x-left text-title-medium text-wrap"]
  SETTABLEKS R13 R12 K11 ["tag"]
  GETTABLEKS R13 R0 K32 ["UploadText"]
  SETTABLEKS R13 R12 K12 ["Text"]
  LOADN R13 1
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K12 ["Text"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K3 ["createElement"]
  GETUPVAL R11 10
  DUPTABLE R12 K35 [{"scroll", "tag", "LayoutOrder", "ScrollBarImageTransparency"}]
  DUPTABLE R13 K40 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETUPVAL R15 11
  GETTABLEKS R14 R15 K41 ["Always"]
  SETTABLEKS R14 R13 K36 ["scrollBarVisibility"]
  GETIMPORT R14 K44 [Enum.ScrollingDirection.Y]
  SETTABLEKS R14 R13 K37 ["ScrollingDirection"]
  GETIMPORT R14 K46 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K38 ["AutomaticCanvasSize"]
  GETIMPORT R14 K49 [UDim2.new]
  CALL R14 0 1
  SETTABLEKS R14 R13 K39 ["CanvasSize"]
  SETTABLEKS R13 R12 K33 ["scroll"]
  LOADK R13 K50 ["fill size-full col align-y-top gap-small"]
  SETTABLEKS R13 R12 K11 ["tag"]
  LOADN R13 2
  SETTABLEKS R13 R12 K5 ["LayoutOrder"]
  LOADN R13 0
  SETTABLEKS R13 R12 K34 ["ScrollBarImageTransparency"]
  MOVE R13 R1
  CALL R10 3 1
  SETTABLEKS R10 R9 K29 ["Table"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K26 ["View"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["BuilderIcons"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["Icon"]
  GETTABLEKS R3 R4 K10 ["Check"]
  GETTABLEKS R5 R2 K9 ["Icon"]
  GETTABLEKS R4 R5 K11 ["X"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Foundation"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["FoundationProvider"]
  GETTABLEKS R8 R5 K14 ["Enums"]
  GETTABLEKS R7 R8 K15 ["ScrollBarVisibility"]
  GETTABLEKS R9 R5 K14 ["Enums"]
  GETTABLEKS R8 R9 K16 ["IconSize"]
  GETTABLEKS R9 R5 K9 ["Icon"]
  GETTABLEKS R10 R5 K17 ["Loading"]
  GETTABLEKS R11 R5 K18 ["ScrollView"]
  GETTABLEKS R12 R5 K19 ["Text"]
  GETTABLEKS R13 R5 K20 ["View"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K21 ["Src"]
  GETTABLEKS R15 R16 K22 ["Types"]
  CALL R14 1 1
  DUPCLOSURE R15 K23 [PROTO_0]
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R7
  RETURN R15 1
