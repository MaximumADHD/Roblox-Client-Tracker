PROTO_0:
  LOADB R3 1
  GETTABLEKS R4 R0 K0 ["fileType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["FileType"]
  GETTABLEKS R5 R6 K2 ["Audio"]
  JUMPIFEQ R4 R5 [+12]
  GETTABLEKS R4 R0 K0 ["fileType"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["FileType"]
  GETTABLEKS R5 R6 K3 ["Video"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K4 [+4]
  LOADK R4 K4 ["Item in dialog must be Audio or Video"]
  GETIMPORT R2 K6 [assert]
  CALL R2 2 0
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K7 ["Divider"]
  DUPTABLE R4 K11 [{"variant", "orientation", "LayoutOrder"}]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K12 ["Default"]
  SETTABLEKS R5 R4 K8 ["variant"]
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K13 ["Horizontal"]
  SETTABLEKS R5 R4 K9 ["orientation"]
  NAMECALL R5 R1 K14 ["getNextOrder"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K10 ["LayoutOrder"]
  CALL R2 2 1
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K15 ["View"]
  DUPTABLE R5 K17 [{"tag", "LayoutOrder"}]
  LOADK R6 K18 ["row align-y-center size-full-0 auto-y flex-y-fill"]
  SETTABLEKS R6 R5 K16 ["tag"]
  NAMECALL R6 R1 K14 ["getNextOrder"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["LayoutOrder"]
  DUPTABLE R6 K21 [{"Asset", "Cost"}]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K15 ["View"]
  DUPTABLE R9 K22 [{"tag"}]
  LOADK R10 K23 ["row align-x-left align-y-center fill auto-y padding-y-small padding-x-medium gap-xsmall"]
  SETTABLEKS R10 R9 K16 ["tag"]
  DUPTABLE R10 K26 [{"Icon", "Name"}]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K27 ["Image"]
  DUPTABLE R13 K28 [{"tag", "Image"}]
  LOADK R14 K29 ["size-400-400"]
  SETTABLEKS R14 R13 K16 ["tag"]
  GETTABLEKS R15 R0 K0 ["fileType"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K1 ["FileType"]
  GETTABLEKS R16 R17 K2 ["Audio"]
  JUMPIFNOTEQ R15 R16 [+9]
  GETUPVAL R15 5
  LOADK R17 K30 ["Sound"]
  NAMECALL R15 R15 K31 ["GetClassIcon"]
  CALL R15 2 1
  GETTABLEKS R14 R15 K27 ["Image"]
  JUMP [+7]
  GETUPVAL R15 5
  LOADK R17 K32 ["VideoFrame"]
  NAMECALL R15 R15 K31 ["GetClassIcon"]
  CALL R15 2 1
  GETTABLEKS R14 R15 K27 ["Image"]
  SETTABLEKS R14 R13 K27 ["Image"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Icon"]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K33 ["Text"]
  DUPTABLE R13 K34 [{"tag", "Text"}]
  LOADK R14 K35 ["fill auto-y content-emphasis text-body-medium text-wrap text-align-x-left text-align-y-center"]
  SETTABLEKS R14 R13 K16 ["tag"]
  GETTABLEKS R14 R0 K36 ["assetName"]
  SETTABLEKS R14 R13 K33 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K25 ["Name"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K19 ["Asset"]
  GETUPVAL R7 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K15 ["View"]
  DUPTABLE R9 K22 [{"tag"}]
  LOADK R10 K23 ["row align-x-left align-y-center fill auto-y padding-y-small padding-x-medium gap-xsmall"]
  SETTABLEKS R10 R9 K16 ["tag"]
  DUPTABLE R10 K38 [{"Icon", "Amount"}]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K24 ["Icon"]
  DUPTABLE R13 K41 [{"name", "size"}]
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K42 ["Robux"]
  SETTABLEKS R14 R13 K39 ["name"]
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K43 ["Medium"]
  SETTABLEKS R14 R13 K40 ["size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["Icon"]
  GETUPVAL R11 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K33 ["Text"]
  DUPTABLE R13 K34 [{"tag", "Text"}]
  LOADK R14 K35 ["fill auto-y content-emphasis text-body-medium text-wrap text-align-x-left text-align-y-center"]
  SETTABLEKS R14 R13 K16 ["tag"]
  GETTABLEKS R15 R0 K0 ["fileType"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K1 ["FileType"]
  GETTABLEKS R16 R17 K2 ["Audio"]
  JUMPIFNOTEQ R15 R16 [+3]
  LOADN R14 0
  JUMP [+1]
  GETUPVAL R14 8
  SETTABLEKS R14 R13 K33 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["Amount"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K20 ["Cost"]
  CALL R3 3 -1
  RETURN R2 -1

PROTO_1:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  CALL R2 0 1
  GETTABLEKS R3 R0 K1 ["QueueItems"]
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R8 1
  MOVE R9 R7
  MOVE R10 R2
  CALL R8 2 2
  FASTCALL2 TABLE_INSERT R1 R8 [+5]
  MOVE R11 R1
  MOVE R12 R8
  GETIMPORT R10 K4 [table.insert]
  CALL R10 2 0
  FASTCALL2 TABLE_INSERT R1 R9 [+5]
  MOVE R11 R1
  MOVE R12 R9
  GETIMPORT R10 K4 [table.insert]
  CALL R10 2 0
  FORGLOOP R3 2 [-19]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K5 ["View"]
  DUPTABLE R5 K9 [{"tag", "Size", "LayoutOrder"}]
  LOADK R6 K10 ["col align-x-left size-full-0 auto-y stroke-standard stroke-default radius-medium"]
  SETTABLEKS R6 R5 K6 ["tag"]
  GETIMPORT R6 K12 [UDim2.new]
  LOADN R7 1
  LOADN R8 254
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Size"]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  DUPTABLE R6 K15 [{"Header", "Wrapper"}]
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["View"]
  DUPTABLE R9 K16 [{"tag"}]
  LOADK R10 K17 ["row align-y-center size-full-0 auto-y flex-y-fill"]
  SETTABLEKS R10 R9 K6 ["tag"]
  DUPTABLE R10 K20 [{"Name", "Amount"}]
  GETUPVAL R11 2
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K21 ["Text"]
  DUPTABLE R13 K22 [{"tag", "Text"}]
  LOADK R14 K23 ["fill auto-y content-emphasis padding-y-xsmall padding-x-medium text-label-small text-wrap text-align-x-left text-align-y-center"]
  SETTABLEKS R14 R13 K6 ["tag"]
  GETTABLEKS R14 R0 K24 ["Localization"]
  LOADK R16 K25 ["UploadConfirmation"]
  LOADK R17 K18 ["Name"]
  NAMECALL R14 R14 K26 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K21 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K18 ["Name"]
  GETUPVAL R11 2
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K21 ["Text"]
  DUPTABLE R13 K22 [{"tag", "Text"}]
  LOADK R14 K23 ["fill auto-y content-emphasis padding-y-xsmall padding-x-medium text-label-small text-wrap text-align-x-left text-align-y-center"]
  SETTABLEKS R14 R13 K6 ["tag"]
  GETTABLEKS R14 R0 K24 ["Localization"]
  LOADK R16 K25 ["UploadConfirmation"]
  LOADK R17 K27 ["Fee"]
  NAMECALL R14 R14 K26 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K21 ["Text"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Amount"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K13 ["Header"]
  GETUPVAL R7 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K5 ["View"]
  DUPTABLE R9 K16 [{"tag"}]
  LOADK R10 K28 ["col align-x-left size-full-0 auto-y"]
  SETTABLEKS R10 R9 K6 ["tag"]
  MOVE R10 R1
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["Wrapper"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utility"]
  GETTABLEKS R2 R3 K8 ["Services"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["StudioService"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K13 ["Util"]
  GETTABLEKS R4 R5 K14 ["LayoutOrderIterator"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K15 ["React"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K16 ["createElement"]
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K11 ["Packages"]
  GETTABLEKS R8 R9 K17 ["Foundation"]
  CALL R7 1 1
  GETTABLEKS R9 R7 K18 ["Enums"]
  GETTABLEKS R8 R9 K19 ["DividerVariant"]
  GETTABLEKS R10 R7 K18 ["Enums"]
  GETTABLEKS R9 R10 K20 ["IconName"]
  GETTABLEKS R11 R7 K18 ["Enums"]
  GETTABLEKS R10 R11 K21 ["IconSize"]
  GETTABLEKS R12 R7 K18 ["Enums"]
  GETTABLEKS R11 R12 K22 ["Orientation"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K23 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R16 R0 K6 ["Src"]
  GETTABLEKS R15 R16 K23 ["Types"]
  GETTABLEKS R14 R15 K24 ["QueuedSession"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K6 ["Src"]
  GETTABLEKS R16 R17 K25 ["Flags"]
  GETTABLEKS R15 R16 K26 ["getDFIntBulkImportVideoPrice"]
  CALL R14 1 1
  MOVE R16 R14
  CALL R16 0 1
  ORK R15 R16 K27 [2000]
  DUPCLOSURE R16 K28 [PROTO_0]
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R15
  DUPCLOSURE R17 K29 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R17 1
