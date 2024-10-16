PROTO_0:
  GETTABLEKS R1 R0 K0 ["item"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["props"]
  GETTABLEKS R4 R5 K2 ["Expansion"]
  GETTABLE R3 R4 R1
  NOT R2 R3
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K3 ["toggleField"]
  NEWTABLE R4 1 0
  SETTABLE R2 R4 R1
  CALL R3 1 0
  JUMPIFNOT R2 [+32]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K4 ["Inspector"]
  NAMECALL R3 R3 K5 ["get"]
  CALL R3 1 1
  NAMECALL R4 R3 K6 ["getTargetApi"]
  CALL R4 1 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K7 ["isInstance"]
  MOVE R6 R4
  CALL R5 1 1
  JUMPIFNOT R5 [+15]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K8 ["SelectedPath"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K1 ["props"]
  GETTABLEKS R8 R9 K9 ["SelectedNodeIndex"]
  GETTABLEKS R9 R1 K10 ["Path"]
  NAMECALL R5 R4 K11 ["getFields"]
  CALL R5 4 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["Stylizer"]
  DUPTABLE R5 K10 [{"Row", "OnSelect", "OnToggle", "IsExpanded", "IsSelected", "Position", "Style", "Size"}]
  SETTABLEKS R0 R5 K2 ["Row"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K11 ["onSelectField"]
  SETTABLEKS R6 R5 K3 ["OnSelect"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K12 ["onToggleField"]
  SETTABLEKS R6 R5 K4 ["OnToggle"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K13 ["Expansion"]
  GETTABLEKS R8 R0 K14 ["item"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K5 ["IsExpanded"]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["IsSelected"]
  SETTABLEKS R2 R5 K7 ["Position"]
  SETTABLEKS R4 R5 K8 ["Style"]
  SETTABLEKS R3 R5 K9 ["Size"]
  RETURN R5 1

PROTO_3:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K0 ["onToggleField"]
  DUPCLOSURE R1 K1 [PROTO_1]
  SETTABLEKS R1 R0 K2 ["onSelectField"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["getRowProps"]
  RETURN R0 0

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQ R2 R3 [+10]
  GETTABLEKS R3 R0 K2 ["Name"]
  GETTABLEKS R4 R1 K2 ["Name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R4 R0 K2 ["Name"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K4 [tostring]
  CALL R3 1 1
  GETTABLEKS R5 R1 K2 ["Name"]
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K4 [tostring]
  CALL R4 1 1
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["Children"]
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  CALL R1 1 1
  GETUPVAL R2 1
  MOVE R3 R1
  DUPCLOSURE R4 K1 [PROTO_4]
  CALL R2 2 0
  RETURN R1 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Root"]
  GETTABLEKS R2 R3 K2 ["Children"]
  GETUPVAL R3 0
  NEWTABLE R4 0 6
  NEWTABLE R5 0 1
  DUPTABLE R6 K5 [{"Name", "IsHeading"}]
  LOADK R7 K6 ["Props"]
  SETTABLEKS R7 R6 K3 ["Name"]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["IsHeading"]
  SETLIST R5 R6 1 [1]
  GETUPVAL R6 1
  GETTABLEKS R7 R2 K0 ["props"]
  CALL R6 1 1
  NEWTABLE R7 0 1
  DUPTABLE R8 K5 [{"Name", "IsHeading"}]
  LOADK R9 K7 ["State"]
  SETTABLEKS R9 R8 K3 ["Name"]
  LOADB R9 1
  SETTABLEKS R9 R8 K4 ["IsHeading"]
  SETLIST R7 R8 1 [1]
  GETUPVAL R8 1
  GETTABLEKS R9 R2 K8 ["state"]
  CALL R8 1 1
  NEWTABLE R9 0 1
  DUPTABLE R10 K5 [{"Name", "IsHeading"}]
  LOADK R11 K9 ["Context"]
  SETTABLEKS R11 R10 K3 ["Name"]
  LOADB R11 1
  SETTABLEKS R11 R10 K4 ["IsHeading"]
  SETLIST R9 R10 1 [1]
  GETUPVAL R10 1
  GETTABLEKS R11 R2 K10 ["_context"]
  CALL R10 1 1
  SETLIST R4 R5 6 [1]
  CALL R3 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K11 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K20 [{"Size", "Expansion", "RootItems", "RowComponent", "GetChildren", "GetRowProps", "ScrollingDirection", "Style"}]
  GETIMPORT R7 K23 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 1
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K12 ["Size"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K13 ["Expansion"]
  SETTABLEKS R7 R6 K13 ["Expansion"]
  SETTABLEKS R3 R6 K14 ["RootItems"]
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K15 ["RowComponent"]
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K16 ["GetChildren"]
  GETTABLEKS R7 R0 K24 ["getRowProps"]
  SETTABLEKS R7 R6 K17 ["GetRowProps"]
  GETIMPORT R7 K27 [Enum.ScrollingDirection.Y]
  SETTABLEKS R7 R6 K18 ["ScrollingDirection"]
  LOADK R7 K28 ["BorderBox"]
  SETTABLEKS R7 R6 K19 ["Style"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_7:
  DUPTABLE R2 K5 [{"SelectedPath", "SelectedNodeIndex", "Root", "Selection", "Expansion"}]
  GETTABLEKS R4 R0 K6 ["RoactInspector"]
  GETTABLEKS R3 R4 K7 ["selectedPath"]
  SETTABLEKS R3 R2 K0 ["SelectedPath"]
  GETTABLEKS R4 R0 K6 ["RoactInspector"]
  GETTABLEKS R3 R4 K8 ["selectedNodeIndex"]
  SETTABLEKS R3 R2 K1 ["SelectedNodeIndex"]
  GETTABLEKS R4 R0 K6 ["RoactInspector"]
  GETTABLEKS R3 R4 K9 ["fields"]
  SETTABLEKS R3 R2 K2 ["Root"]
  GETTABLEKS R4 R0 K6 ["RoactInspector"]
  GETTABLEKS R3 R4 K10 ["selectedFields"]
  SETTABLEKS R3 R2 K3 ["Selection"]
  GETTABLEKS R4 R0 K6 ["RoactInspector"]
  GETTABLEKS R3 R4 K11 ["expandedFields"]
  SETTABLEKS R3 R2 K4 ["Expansion"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"selectField", "toggleField"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["selectField"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["toggleField"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K11 ["InspectorContext"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K12 ["FieldTreeRow"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K13 ["DeveloperTools"]
  GETTABLEKS R7 R6 K14 ["RoactInspectorApi"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K5 ["Packages"]
  GETTABLEKS R9 R10 K15 ["Dash"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K16 ["flat"]
  GETTABLEKS R10 R8 K17 ["values"]
  GETIMPORT R11 K20 [table.sort]
  GETTABLEKS R12 R3 K21 ["ContextServices"]
  GETTABLEKS R13 R12 K22 ["withContext"]
  GETTABLEKS R14 R3 K23 ["UI"]
  GETTABLEKS R15 R14 K24 ["TreeView"]
  GETTABLEKS R17 R0 K9 ["Src"]
  GETTABLEKS R16 R17 K25 ["Actions"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R19 R16 K26 ["RoactInspector"]
  GETTABLEKS R18 R19 K27 ["SelectField"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R20 R16 K26 ["RoactInspector"]
  GETTABLEKS R19 R20 K28 ["ToggleField"]
  CALL R18 1 1
  GETTABLEKS R19 R1 K29 ["PureComponent"]
  LOADK R21 K30 ["FieldsTable"]
  NAMECALL R19 R19 K31 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K32 [PROTO_3]
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K33 ["init"]
  DUPCLOSURE R20 K34 [PROTO_5]
  CAPTURE VAL R10
  CAPTURE VAL R11
  DUPCLOSURE R21 K35 [PROTO_6]
  CAPTURE VAL R9
  CAPTURE VAL R20
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R21 R19 K36 ["render"]
  MOVE R21 R13
  DUPTABLE R22 K39 [{"Stylizer", "Inspector"}]
  GETTABLEKS R23 R12 K37 ["Stylizer"]
  SETTABLEKS R23 R22 K37 ["Stylizer"]
  SETTABLEKS R4 R22 K38 ["Inspector"]
  CALL R21 1 1
  MOVE R22 R19
  CALL R21 1 1
  MOVE R19 R21
  GETTABLEKS R21 R2 K40 ["connect"]
  DUPCLOSURE R22 K41 [PROTO_7]
  DUPCLOSURE R23 K42 [PROTO_10]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CALL R21 2 1
  MOVE R22 R19
  CALL R21 1 -1
  RETURN R21 -1
