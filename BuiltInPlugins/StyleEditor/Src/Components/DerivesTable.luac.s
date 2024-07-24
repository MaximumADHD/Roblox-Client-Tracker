PROTO_0:
  GETTABLEKS R1 R0 K0 ["Children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_1:
  RETURN R0 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R2 0
  JUMPIFNOTEQ R1 R2 [+2]
  RETURN R0 1
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["allSheets"]
  GETUPVAL R1 1
  MOVE R2 R0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CALL R1 2 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K1 ["insertDerive"]
  GETUPVAL R3 4
  MOVE R4 R1
  CALL R2 2 0
  GETIMPORT R2 K5 [Enum.FinishRecordingOperation.Commit]
  RETURN R2 1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["state"]
  GETTABLEKS R5 R3 K2 ["StyleSheet"]
  GETUPVAL R6 1
  DUPTABLE R7 K6 [{"Name", "DisplayName", "DoChange"}]
  LOADK R8 K7 ["StyleEditor.SetDerives"]
  SETTABLEKS R8 R7 K3 ["Name"]
  LOADK R8 K8 ["Style Editor - Set Derives"]
  SETTABLEKS R8 R7 K4 ["DisplayName"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K5 ["DoChange"]
  CALL R6 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["Children"]
  JUMPIF R1 [+2]
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isValidDerive"]
  GETUPVAL R3 1
  MOVE R4 R1
  CALL R2 2 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R2 R1 K1 ["Name"]
  RETURN R2 1
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["StyleSheet"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["allSheets"]
  GETUPVAL R3 1
  MOVE R4 R2
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R3 3
  MOVE R4 R2
  MOVE R5 R0
  CALL R3 2 -1
  RETURN R3 -1

PROTO_8:
  DUPTABLE R1 K3 [{"allSheets", "styleSheet", "table"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["allSheets"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["styleSheet"]
  DUPTABLE R2 K8 [{"Columns", "Expansion", "Selection", "Items"}]
  GETUPVAL R3 0
  GETUPVAL R4 1
  CALL R3 1 1
  SETTABLEKS R3 R2 K4 ["Columns"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["Expansion"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["Selection"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K7 ["Items"]
  SETTABLEKS R2 R1 K2 ["table"]
  SETTABLEKS R1 R0 K9 ["state"]
  GETUPVAL R1 2
  MOVE R3 R0
  LOADK R4 K2 ["table"]
  NAMECALL R1 R1 K10 ["getStateAdaptor"]
  CALL R1 3 1
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K11 ["getCallbacks"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K12 ["tableCallbacks"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R2 R0 K13 ["onEdited"]
  DUPCLOSURE R2 K14 [PROTO_5]
  SETTABLEKS R2 R0 K15 ["getChildren"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K16 ["getCellAutocomplete"]
  RETURN R0 0

PROTO_9:
  LOADK R3 K0 ["StyleSheet"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  GETUPVAL R2 0
  JUMPIFNOTEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["GetDescendants"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_11:
  DUPTABLE R0 K2 [{"Name", "Value"}]
  DUPTABLE R1 K4 [{"Schema", "Value"}]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["TextSchema"]
  DUPTABLE R4 K7 [{"PlaceholderText"}]
  LOADK R5 K8 ["Add a Derive..."]
  SETTABLEKS R5 R4 K6 ["PlaceholderText"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K3 ["Schema"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K1 ["Value"]
  SETTABLEKS R1 R0 K0 ["Name"]
  DUPTABLE R1 K4 [{"Schema", "Value"}]
  DUPTABLE R2 K11 [{"Type"}]
  LOADK R3 K12 ["Empty"]
  SETTABLEKS R3 R2 K10 ["Type"]
  SETTABLEKS R2 R1 K3 ["Schema"]
  LOADK R2 K9 [""]
  SETTABLEKS R2 R1 K1 ["Value"]
  SETTABLEKS R1 R0 K1 ["Value"]
  RETURN R0 1

PROTO_12:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["removeDerive"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  GETIMPORT R0 K4 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_13:
  JUMPIF R0 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R1 0
  DUPTABLE R2 K3 [{"Name", "DisplayName", "DoChange"}]
  LOADK R3 K4 ["StyleEditor.RemoveDerive"]
  SETTABLEKS R3 R2 K0 ["Name"]
  LOADK R3 K5 ["Style Editor - Remove Derive from {derivedSheet.Name}"]
  SETTABLEKS R3 R2 K1 ["DisplayName"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K2 ["DoChange"]
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  DUPTABLE R2 K2 [{"Name", "Instance"}]
  DUPTABLE R3 K6 [{"OnClick", "Schema", "Value"}]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R4 R3 K3 ["OnClick"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K7 ["DeriveSchema"]
  SETTABLEKS R4 R3 K4 ["Schema"]
  SETTABLEKS R1 R3 K5 ["Value"]
  SETTABLEKS R3 R2 K0 ["Name"]
  SETTABLEKS R1 R2 K1 ["Instance"]
  RETURN R2 1

PROTO_15:
  JUMPIF R0 [+1]
  RETURN R0 0
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["expecting valid stylesheet"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  NAMECALL R1 R0 K3 ["GetDerives"]
  CALL R1 1 1
  DUPTABLE R2 K6 [{"Name", "Children"}]
  DUPTABLE R3 K10 [{"Schema", "FullSpan", "Value"}]
  GETUPVAL R4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["SelectorSchema"]
  DUPTABLE R6 K13 [{"Editing"}]
  LOADB R7 0
  SETTABLEKS R7 R6 K12 ["Editing"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K7 ["Schema"]
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["FullSpan"]
  LOADK R4 K14 ["Derives"]
  SETTABLEKS R4 R3 K9 ["Value"]
  SETTABLEKS R3 R2 K4 ["Name"]
  GETUPVAL R3 2
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R3 2 1
  SETTABLEKS R3 R2 K5 ["Children"]
  GETTABLEKS R4 R2 K5 ["Children"]
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K15 ["getEmptyRow"]
  CALL R5 0 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R3 6
  CALL R3 -1 0
  GETUPVAL R3 7
  NEWTABLE R5 0 1
  MOVE R6 R2
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K16 ["updatePaths"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_16:
  GETTABLEKS R2 R0 K0 ["StyleSheet"]
  GETTABLEKS R3 R1 K1 ["styleSheet"]
  JUMPIFNOTEQ R2 R3 [+4]
  GETTABLEKS R3 R0 K2 ["IsDirty"]
  JUMPIFNOT R3 [+54]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getAllSheets"]
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["getItems"]
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["updateItems"]
  GETUPVAL R6 2
  GETTABLEKS R7 R1 K6 ["table"]
  DUPTABLE R8 K8 [{"Children"}]
  GETTABLEKS R10 R1 K6 ["table"]
  GETTABLEKS R9 R10 K9 ["Items"]
  SETTABLEKS R9 R8 K7 ["Children"]
  DUPTABLE R9 K8 [{"Children"}]
  SETTABLEKS R4 R9 K7 ["Children"]
  CALL R5 4 0
  GETTABLEKS R6 R1 K6 ["table"]
  GETTABLEKS R5 R6 K10 ["Expansion"]
  GETTABLEN R6 R4 1
  LOADB R7 1
  SETTABLE R7 R5 R6
  GETUPVAL R6 3
  MOVE R7 R1
  DUPTABLE R8 K12 [{"allSheets", "styleSheet", "table"}]
  SETTABLEKS R3 R8 K11 ["allSheets"]
  SETTABLEKS R2 R8 K1 ["styleSheet"]
  GETUPVAL R9 3
  GETTABLEKS R10 R1 K6 ["table"]
  DUPTABLE R11 K13 [{"Expansion", "Items"}]
  SETTABLEKS R5 R11 K10 ["Expansion"]
  SETTABLEKS R4 R11 K9 ["Items"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K6 ["table"]
  CALL R6 2 -1
  RETURN R6 -1
  RETURN R1 1

PROTO_17:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R3 0
  DUPTABLE R4 K16 [{"AutomaticSize", "Columns", "Expansion", "FullSpanEmphasis", "GetCellAutocomplete", "GetChildren", "LayoutOrder", "OnCellEdited", "Renderers", "RootItems", "RowHeight", "Selection", "ShowHeader", "UseScale"}]
  GETIMPORT R5 K19 [Enum.AutomaticSize.Y]
  SETTABLEKS R5 R4 K2 ["AutomaticSize"]
  GETTABLEKS R6 R2 K20 ["table"]
  GETTABLEKS R5 R6 K3 ["Columns"]
  SETTABLEKS R5 R4 K3 ["Columns"]
  GETTABLEKS R6 R2 K20 ["table"]
  GETTABLEKS R5 R6 K4 ["Expansion"]
  SETTABLEKS R5 R4 K4 ["Expansion"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["FullSpanEmphasis"]
  GETTABLEKS R5 R0 K21 ["getCellAutocomplete"]
  SETTABLEKS R5 R4 K6 ["GetCellAutocomplete"]
  GETTABLEKS R5 R0 K22 ["getChildren"]
  SETTABLEKS R5 R4 K7 ["GetChildren"]
  GETTABLEKS R5 R1 K8 ["LayoutOrder"]
  SETTABLEKS R5 R4 K8 ["LayoutOrder"]
  GETTABLEKS R5 R0 K23 ["onEdited"]
  SETTABLEKS R5 R4 K9 ["OnCellEdited"]
  DUPTABLE R5 K25 [{"Derive"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K24 ["Derive"]
  SETTABLEKS R5 R4 K10 ["Renderers"]
  GETTABLEKS R6 R2 K20 ["table"]
  GETTABLEKS R5 R6 K26 ["Items"]
  SETTABLEKS R5 R4 K11 ["RootItems"]
  LOADN R5 32
  SETTABLEKS R5 R4 K12 ["RowHeight"]
  GETTABLEKS R6 R2 K20 ["table"]
  GETTABLEKS R5 R6 K13 ["Selection"]
  SETTABLEKS R5 R4 K13 ["Selection"]
  LOADB R5 0
  SETTABLEKS R5 R4 K14 ["ShowHeader"]
  LOADB R5 1
  SETTABLEKS R5 R4 K15 ["UseScale"]
  GETTABLEKS R5 R0 K27 ["tableCallbacks"]
  CALL R3 2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K28 ["createElement"]
  GETUPVAL R5 3
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

PROTO_18:
  DUPTABLE R1 K1 [{"IsDirty"}]
  GETTABLEKS R3 R0 K2 ["Window"]
  GETTABLEKS R2 R3 K0 ["IsDirty"]
  SETTABLEKS R2 R1 K0 ["IsDirty"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ReplicatedStorage"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R2 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R2 K10 ["Packages"]
  GETTABLEKS R5 R6 K12 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R2 K10 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K14 ["ContextServices"]
  GETTABLEKS R7 R6 K15 ["withContext"]
  GETTABLEKS R8 R5 K16 ["UI"]
  GETTABLEKS R9 R8 K17 ["TreeTable"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R2 K18 ["Src"]
  GETTABLEKS R12 R13 K19 ["Renderers"]
  GETTABLEKS R11 R12 K20 ["DeriveRenderer"]
  CALL R10 1 1
  GETIMPORT R11 K9 [require]
  GETTABLEKS R14 R2 K18 ["Src"]
  GETTABLEKS R13 R14 K21 ["Util"]
  GETTABLEKS R12 R13 K22 ["DesignHelpers"]
  CALL R11 1 1
  GETIMPORT R12 K9 [require]
  GETTABLEKS R15 R2 K18 ["Src"]
  GETTABLEKS R14 R15 K21 ["Util"]
  GETTABLEKS R13 R14 K23 ["StyleSchema"]
  CALL R12 1 1
  GETIMPORT R13 K9 [require]
  GETTABLEKS R16 R2 K18 ["Src"]
  GETTABLEKS R15 R16 K21 ["Util"]
  GETTABLEKS R14 R15 K24 ["getAutocompleteItems"]
  CALL R13 1 1
  GETIMPORT R14 K9 [require]
  GETTABLEKS R17 R2 K18 ["Src"]
  GETTABLEKS R16 R17 K21 ["Util"]
  GETTABLEKS R15 R16 K25 ["recordChange"]
  CALL R14 1 1
  MOVE R15 R0
  CALL R14 1 1
  GETIMPORT R15 K9 [require]
  GETTABLEKS R18 R2 K18 ["Src"]
  GETTABLEKS R17 R18 K21 ["Util"]
  GETTABLEKS R16 R17 K26 ["TreeTableHelpers"]
  CALL R15 1 1
  GETIMPORT R16 K9 [require]
  GETTABLEKS R18 R2 K18 ["Src"]
  GETTABLEKS R17 R18 K27 ["Types"]
  CALL R16 1 1
  GETIMPORT R17 K9 [require]
  GETTABLEKS R20 R2 K18 ["Src"]
  GETTABLEKS R19 R20 K28 ["Reducers"]
  GETTABLEKS R18 R19 K29 ["RootReducer"]
  CALL R17 1 1
  GETIMPORT R18 K9 [require]
  GETTABLEKS R20 R2 K10 ["Packages"]
  GETTABLEKS R19 R20 K30 ["Dash"]
  CALL R18 1 1
  GETTABLEKS R19 R18 K31 ["collectArray"]
  GETTABLEKS R20 R18 K32 ["filter"]
  GETTABLEKS R21 R18 K33 ["join"]
  GETTABLEKS R22 R18 K34 ["mapOne"]
  GETTABLEKS R23 R18 K35 ["copy"]
  GETIMPORT R24 K38 [table.insert]
  GETTABLEKS R26 R9 K39 ["EditTree"]
  GETTABLEKS R25 R26 K40 ["new"]
  DUPTABLE R26 K43 [{"getChildren", "getId"}]
  DUPCLOSURE R27 K44 [PROTO_0]
  SETTABLEKS R27 R26 K41 ["getChildren"]
  DUPCLOSURE R27 K45 [PROTO_1]
  SETTABLEKS R27 R26 K42 ["getId"]
  CALL R25 1 1
  NEWTABLE R26 0 1
  DUPTABLE R27 K49 [{"Name", "Key", "Width"}]
  LOADK R28 K46 ["Name"]
  SETTABLEKS R28 R27 K46 ["Name"]
  LOADK R28 K46 ["Name"]
  SETTABLEKS R28 R27 K47 ["Key"]
  GETIMPORT R28 K51 [UDim.new]
  LOADN R29 1
  LOADN R30 0
  CALL R28 2 1
  SETTABLEKS R28 R27 K48 ["Width"]
  SETLIST R26 R27 1 [1]
  GETTABLEKS R27 R3 K52 ["PureComponent"]
  LOADK R29 K53 ["DerivesTable"]
  NAMECALL R27 R27 K54 ["extend"]
  CALL R27 2 1
  DUPCLOSURE R28 K55 [PROTO_8]
  CAPTURE VAL R23
  CAPTURE VAL R26
  CAPTURE VAL R25
  CAPTURE VAL R14
  CAPTURE VAL R22
  CAPTURE VAL R11
  CAPTURE VAL R19
  CAPTURE VAL R13
  SETTABLEKS R28 R27 K56 ["init"]
  DUPCLOSURE R28 K57 [PROTO_10]
  CAPTURE VAL R20
  CAPTURE VAL R1
  SETTABLEKS R28 R27 K58 ["getAllSheets"]
  DUPCLOSURE R28 K59 [PROTO_11]
  CAPTURE VAL R21
  CAPTURE VAL R12
  SETTABLEKS R28 R27 K60 ["getEmptyRow"]
  NEWCLOSURE R28 P5
  CAPTURE VAL R21
  CAPTURE VAL R12
  CAPTURE VAL R19
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE REF R27
  CAPTURE VAL R24
  CAPTURE VAL R25
  SETTABLEKS R28 R27 K61 ["getItems"]
  NEWCLOSURE R28 P6
  CAPTURE REF R27
  CAPTURE VAL R15
  CAPTURE VAL R25
  CAPTURE VAL R21
  SETTABLEKS R28 R27 K62 ["getDerivedStateFromProps"]
  DUPCLOSURE R28 K63 [PROTO_17]
  CAPTURE VAL R21
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R9
  SETTABLEKS R28 R27 K64 ["render"]
  MOVE R28 R7
  DUPTABLE R29 K66 [{"Localization"}]
  GETTABLEKS R30 R6 K65 ["Localization"]
  SETTABLEKS R30 R29 K65 ["Localization"]
  CALL R28 1 1
  MOVE R29 R27
  CALL R28 1 1
  MOVE R27 R28
  GETTABLEKS R28 R4 K67 ["connect"]
  DUPCLOSURE R29 K68 [PROTO_18]
  CALL R28 1 1
  MOVE R29 R27
  CALL R28 1 -1
  CLOSEUPVALS R27
  RETURN R28 -1
