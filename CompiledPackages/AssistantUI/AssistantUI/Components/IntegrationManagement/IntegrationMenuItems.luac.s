PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K8 [{"key", "LayoutOrder", "integration", "onRemove", "onEdit", "onStatusChange", "onAuthorizationChange", "setEnableStatus"}]
  LOADK R5 K9 ["%*-%*"]
  GETTABLEKS R7 R0 K10 ["label"]
  GETTABLEKS R8 R0 K11 ["url"]
  NAMECALL R5 R5 K12 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K0 ["key"]
  GETUPVAL R4 2
  CALL R4 0 1
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  SETTABLEKS R0 R3 K2 ["integration"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K3 ["onRemove"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K4 ["onEdit"]
  GETUPVAL R4 5
  SETTABLEKS R4 R3 K5 ["onStatusChange"]
  GETUPVAL R4 6
  SETTABLEKS R4 R3 K6 ["onAuthorizationChange"]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K7 ["setEnableStatus"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R2 R0 K0 ["integrations"]
  GETTABLEKS R3 R0 K1 ["onRemove"]
  GETTABLEKS R4 R0 K2 ["onEdit"]
  GETTABLEKS R5 R0 K3 ["onStatusChange"]
  GETTABLEKS R6 R0 K4 ["onAuthorizationChange"]
  GETTABLEKS R7 R0 K5 ["setEnableStatus"]
  GETUPVAL R8 1
  GETUPVAL R9 2
  DUPTABLE R10 K8 [{"tag", "LayoutOrder"}]
  LOADK R11 K9 ["col size-full-0 auto-y gap-medium"]
  SETTABLEKS R11 R10 K6 ["tag"]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K7 ["LayoutOrder"]
  DUPTABLE R11 K12 [{"Header", "IntegrationsList"}]
  GETUPVAL R12 1
  GETUPVAL R13 3
  DUPTABLE R14 K14 [{"LayoutOrder", "onAddIntegration"}]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K7 ["LayoutOrder"]
  GETTABLEKS R15 R0 K13 ["onAddIntegration"]
  SETTABLEKS R15 R14 K13 ["onAddIntegration"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["Header"]
  GETUPVAL R12 1
  GETUPVAL R13 4
  DUPTABLE R14 K17 [{"tag", "LayoutOrder", "scroll", "layout"}]
  LOADK R15 K18 ["col size-full-0 auto-y shrink"]
  SETTABLEKS R15 R14 K6 ["tag"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K7 ["LayoutOrder"]
  GETUPVAL R15 5
  SETTABLEKS R15 R14 K15 ["scroll"]
  GETUPVAL R15 6
  SETTABLEKS R15 R14 K16 ["layout"]
  DUPTABLE R15 K20 [{"ContentWrapper"}]
  GETUPVAL R16 1
  GETUPVAL R17 2
  DUPTABLE R18 K21 [{"tag"}]
  LOADK R19 K22 ["col size-full-0 auto-y gap-small padding-x-large"]
  SETTABLEKS R19 R18 K6 ["tag"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K23 ["map"]
  MOVE R20 R2
  NEWCLOSURE R21 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U8
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CALL R19 2 -1
  CALL R16 -1 1
  SETTABLEKS R16 R15 K19 ["ContentWrapper"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["IntegrationsList"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["IntegrationItem"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["IntegrationMenuHeader"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["IntegrationTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Dash"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Parent"]
  GETTABLEKS R6 R7 K11 ["Foundation"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Parent"]
  GETTABLEKS R7 R8 K12 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K6 ["Parent"]
  GETTABLEKS R8 R9 K13 ["ReactUtils"]
  CALL R7 1 1
  GETTABLEKS R8 R5 K14 ["ScrollView"]
  GETTABLEKS R9 R5 K15 ["View"]
  GETTABLEKS R10 R7 K16 ["createNextOrder"]
  GETTABLEKS R11 R6 K17 ["createElement"]
  DUPTABLE R12 K25 [{"CanvasSize", "AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "scrollBarVisibility", "HorizontalScrollBarInset", "VerticalScrollBarInset"}]
  GETIMPORT R13 K28 [UDim2.fromOffset]
  LOADN R14 0
  LOADN R15 0
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["CanvasSize"]
  GETIMPORT R13 K31 [Enum.AutomaticSize.X]
  SETTABLEKS R13 R12 K19 ["AutomaticSize"]
  GETIMPORT R13 K33 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K20 ["AutomaticCanvasSize"]
  GETIMPORT R13 K34 [Enum.ScrollingDirection.Y]
  SETTABLEKS R13 R12 K21 ["ScrollingDirection"]
  GETTABLEKS R15 R5 K35 ["Enums"]
  GETTABLEKS R14 R15 K36 ["Visibility"]
  GETTABLEKS R13 R14 K37 ["Auto"]
  SETTABLEKS R13 R12 K22 ["scrollBarVisibility"]
  GETIMPORT R13 K40 [Enum.ScrollBarInset.None]
  SETTABLEKS R13 R12 K23 ["HorizontalScrollBarInset"]
  GETIMPORT R13 K42 [Enum.ScrollBarInset.Always]
  SETTABLEKS R13 R12 K24 ["VerticalScrollBarInset"]
  DUPTABLE R13 K45 [{"SortOrder", "FillDirection"}]
  GETIMPORT R14 K47 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R14 R13 K43 ["SortOrder"]
  GETIMPORT R14 K49 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K44 ["FillDirection"]
  DUPCLOSURE R14 K50 [PROTO_1]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R14 1
