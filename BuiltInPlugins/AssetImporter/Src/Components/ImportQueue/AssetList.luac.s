PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["columns"]
  CALL R1 1 1
  LOADN R4 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLEKS R5 R6 K1 ["columns"]
  LENGTH R2 R5
  LOADN R3 1
  FORNPREP R2
  GETTABLE R5 R0 R4
  SETTABLEKS R5 R1 K2 ["Width"]
  FORNLOOP R2
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"columns"}]
  SETTABLEKS R1 R4 K1 ["columns"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["QueueController"]
  GETTABLEKS R3 R0 K2 ["SearchTerm"]
  NAMECALL R1 R1 K3 ["getFilteredRows"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K1 ["SessionQueue"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K2 ["UpdateQueueItem"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["update"]
  GETTABLE R5 R2 R0
  DUPTABLE R6 K5 [{"enabled"}]
  GETTABLE R9 R2 R0
  GETTABLEKS R8 R9 K4 ["enabled"]
  NOT R7 R8
  SETTABLEKS R7 R6 K4 ["enabled"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_3:
  NEWTABLE R1 0 4
  DUPTABLE R2 K3 [{"Name", "Key", "Width"}]
  LOADK R3 K4 [""]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K5 ["Checkbox"]
  SETTABLEKS R3 R2 K1 ["Key"]
  GETIMPORT R3 K8 [UDim.new]
  LOADN R4 0
  LOADN R5 28
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Width"]
  DUPTABLE R3 K3 [{"Name", "Key", "Width"}]
  LOADK R4 K9 ["Asset"]
  SETTABLEKS R4 R3 K0 ["Name"]
  LOADK R4 K9 ["Asset"]
  SETTABLEKS R4 R3 K1 ["Key"]
  GETIMPORT R4 K8 [UDim.new]
  LOADK R5 K10 [0.5]
  LOADN R6 172
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Width"]
  DUPTABLE R4 K3 [{"Name", "Key", "Width"}]
  LOADK R5 K11 ["Preset"]
  SETTABLEKS R5 R4 K0 ["Name"]
  LOADK R5 K11 ["Preset"]
  SETTABLEKS R5 R4 K1 ["Key"]
  GETIMPORT R5 K8 [UDim.new]
  LOADN R6 0
  LOADN R7 140
  CALL R5 2 1
  SETTABLEKS R5 R4 K2 ["Width"]
  DUPTABLE R5 K3 [{"Name", "Key", "Width"}]
  LOADK R6 K12 ["Path"]
  SETTABLEKS R6 R5 K0 ["Name"]
  LOADK R6 K12 ["Path"]
  SETTABLEKS R6 R5 K1 ["Key"]
  GETIMPORT R6 K8 [UDim.new]
  LOADK R7 K10 [0.5]
  LOADN R8 172
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["Width"]
  SETLIST R1 R2 4 [1]
  SETTABLEKS R1 R0 K13 ["columnDefaults"]
  DUPTABLE R1 K15 [{"columns"}]
  GETTABLEKS R2 R0 K13 ["columnDefaults"]
  SETTABLEKS R2 R1 K14 ["columns"]
  SETTABLEKS R1 R0 K16 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onColumnSizesChange"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["getRows"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K19 ["onCheckboxToggle"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["LayoutOrder"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R5 R3 K3 ["PropertyView"]
  GETTABLEKS R4 R5 K4 ["IconSize"]
  GETTABLEKS R6 R3 K5 ["AssetList"]
  GETTABLEKS R5 R6 K6 ["Padding"]
  GETTABLEKS R7 R3 K5 ["AssetList"]
  GETTABLEKS R6 R7 K7 ["RowHeight"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K10 [{"Size", "Padding", "LayoutOrder"}]
  GETTABLEKS R10 R1 K9 ["Size"]
  SETTABLEKS R10 R9 K9 ["Size"]
  SETTABLEKS R5 R9 K6 ["Padding"]
  SETTABLEKS R2 R9 K1 ["LayoutOrder"]
  DUPTABLE R10 K12 [{"Inner"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K18 [{"Rows", "Columns", "Size", "Scroll", "CellComponent", "CellProps", "RowHeight"}]
  GETTABLEKS R14 R0 K19 ["getRows"]
  CALL R14 0 1
  SETTABLEKS R14 R13 K13 ["Rows"]
  GETTABLEKS R15 R0 K20 ["state"]
  GETTABLEKS R14 R15 K21 ["columns"]
  SETTABLEKS R14 R13 K14 ["Columns"]
  GETIMPORT R14 K24 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Size"]
  LOADB R14 1
  SETTABLEKS R14 R13 K15 ["Scroll"]
  GETUPVAL R14 3
  SETTABLEKS R14 R13 K16 ["CellComponent"]
  DUPTABLE R14 K27 [{"OnCheckboxToggle", "StatusIconSize"}]
  GETTABLEKS R15 R0 K28 ["onCheckboxToggle"]
  SETTABLEKS R15 R14 K25 ["OnCheckboxToggle"]
  SETTABLEKS R4 R14 K26 ["StatusIconSize"]
  SETTABLEKS R14 R13 K17 ["CellProps"]
  SETTABLEKS R6 R13 K7 ["RowHeight"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Inner"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"UpdateQueueItem"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["UpdateQueueItem"]
  RETURN R1 1

PROTO_7:
  DUPTABLE R1 K2 [{"SessionQueue", "SearchTerm"}]
  GETTABLEKS R3 R0 K3 ["Sessions"]
  GETTABLEKS R2 R3 K4 ["sessionQueue"]
  SETTABLEKS R2 R1 K0 ["SessionQueue"]
  GETTABLEKS R3 R0 K3 ["Sessions"]
  GETTABLEKS R2 R3 K5 ["searchTerm"]
  SETTABLEKS R2 R1 K1 ["SearchTerm"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Flags"]
  GETTABLEKS R5 R6 K12 ["getFFlagAssetImporterPackageMigration"]
  CALL R4 1 1
  MOVE R6 R4
  CALL R6 0 1
  JUMPIFNOT R6 [+8]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Dash"]
  CALL R5 1 1
  JUMP [+2]
  GETTABLEKS R5 R3 K13 ["Dash"]
  GETTABLEKS R6 R3 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R6 K16 ["Localization"]
  GETTABLEKS R10 R3 K17 ["Style"]
  GETTABLEKS R9 R10 K18 ["Stylizer"]
  GETTABLEKS R10 R3 K19 ["UI"]
  GETTABLEKS R11 R10 K20 ["Table"]
  GETTABLEKS R12 R10 K21 ["Pane"]
  GETTABLEKS R13 R5 K22 ["copy"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R0 K10 ["Src"]
  GETTABLEKS R15 R16 K23 ["Types"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R18 R0 K10 ["Src"]
  GETTABLEKS R17 R18 K24 ["Actions"]
  GETTABLEKS R16 R17 K25 ["UpdateQueueItem"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K10 ["Src"]
  GETTABLEKS R16 R17 K26 ["Components"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R19 R16 K27 ["ImportQueue"]
  GETTABLEKS R18 R19 K28 ["AssetListCell"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R21 R0 K10 ["Src"]
  GETTABLEKS R20 R21 K29 ["Controllers"]
  GETTABLEKS R19 R20 K30 ["QueueController"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R22 R0 K10 ["Src"]
  GETTABLEKS R21 R22 K31 ["DataTypes"]
  GETTABLEKS R20 R21 K32 ["QueuedSession"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K33 ["PureComponent"]
  LOADK R22 K34 ["AssetList"]
  NAMECALL R20 R20 K35 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K36 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K37 ["init"]
  DUPCLOSURE R21 K38 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R17
  SETTABLEKS R21 R20 K39 ["render"]
  MOVE R21 R7
  DUPTABLE R22 K40 [{"Localization", "Stylizer", "QueueController"}]
  SETTABLEKS R8 R22 K16 ["Localization"]
  SETTABLEKS R9 R22 K18 ["Stylizer"]
  SETTABLEKS R18 R22 K30 ["QueueController"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K41 [PROTO_6]
  CAPTURE VAL R15
  DUPCLOSURE R22 K42 [PROTO_7]
  GETTABLEKS R23 R2 K43 ["connect"]
  MOVE R24 R22
  MOVE R25 R21
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
