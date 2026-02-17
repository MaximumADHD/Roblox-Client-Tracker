PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETTABLEKS R2 R0 K1 ["visibleNodeObservable"]
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R4 2
  LOADK R5 K2 ["Frame"]
  NEWTABLE R6 2 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Tag"]
  LOADK R8 K4 ["Explorer-View Explorer-OverlaysRow"]
  SETTABLE R8 R6 R7
  SETTABLEKS R1 R6 K5 ["ref"]
  DUPTABLE R7 K8 [{"List", "RenameBox"}]
  GETUPVAL R8 2
  LOADK R9 K2 ["Frame"]
  NEWTABLE R10 1 0
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["Tag"]
  LOADK R12 K9 ["Explorer-View X-Row X-Middle"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K14 [{"NodeDetailsPlaceholder", "InsertObjectContainer", "Gap", "Fields"}]
  GETUPVAL R12 2
  GETUPVAL R13 3
  DUPTABLE R14 K16 [{"scrollWidthObservable", "visibleNodeObservable"}]
  GETTABLEKS R15 R0 K15 ["scrollWidthObservable"]
  SETTABLEKS R15 R14 K15 ["scrollWidthObservable"]
  GETTABLEKS R15 R0 K1 ["visibleNodeObservable"]
  SETTABLEKS R15 R14 K1 ["visibleNodeObservable"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["NodeDetailsPlaceholder"]
  GETUPVAL R12 2
  LOADK R13 K2 ["Frame"]
  DUPTABLE R14 K20 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K18 ["LayoutOrder"]
  GETIMPORT R15 K23 [UDim2.fromOffset]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K24 ["explorerRowHeight"]
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K24 ["explorerRowHeight"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Size"]
  DUPTABLE R15 K26 [{"InsertObject"}]
  GETUPVAL R16 2
  GETUPVAL R17 5
  DUPTABLE R18 K30 [{"session", "visibleNodeObservable", "boxSelecting", "windowIsHoveredObservable"}]
  GETTABLEKS R19 R0 K27 ["session"]
  SETTABLEKS R19 R18 K27 ["session"]
  GETTABLEKS R19 R0 K1 ["visibleNodeObservable"]
  SETTABLEKS R19 R18 K1 ["visibleNodeObservable"]
  GETTABLEKS R19 R0 K28 ["boxSelecting"]
  SETTABLEKS R19 R18 K28 ["boxSelecting"]
  GETTABLEKS R19 R0 K29 ["windowIsHoveredObservable"]
  SETTABLEKS R19 R18 K29 ["windowIsHoveredObservable"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["InsertObject"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K11 ["InsertObjectContainer"]
  GETUPVAL R12 2
  LOADK R13 K2 ["Frame"]
  NEWTABLE R14 4 0
  LOADN R15 1
  SETTABLEKS R15 R14 K17 ["BackgroundTransparency"]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K18 ["LayoutOrder"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K3 ["Tag"]
  LOADK R16 K31 ["Explorer-FillX"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["Gap"]
  GETUPVAL R12 2
  GETUPVAL R13 6
  DUPTABLE R14 K33 [{"visibleNodeObservable", "session", "layoutOrder"}]
  SETTABLEKS R2 R14 K1 ["visibleNodeObservable"]
  GETTABLEKS R15 R0 K27 ["session"]
  SETTABLEKS R15 R14 K27 ["session"]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K32 ["layoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Fields"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["List"]
  GETUPVAL R8 2
  GETUPVAL R9 7
  DUPTABLE R10 K35 [{"session", "visibleNodeObservable", "scrollWidthObservable", "scrollingFrameRef"}]
  GETTABLEKS R11 R0 K27 ["session"]
  SETTABLEKS R11 R10 K27 ["session"]
  GETTABLEKS R11 R0 K1 ["visibleNodeObservable"]
  SETTABLEKS R11 R10 K1 ["visibleNodeObservable"]
  GETTABLEKS R11 R0 K15 ["scrollWidthObservable"]
  SETTABLEKS R11 R10 K15 ["scrollWidthObservable"]
  GETTABLEKS R11 R0 K34 ["scrollingFrameRef"]
  SETTABLEKS R11 R10 K34 ["scrollingFrameRef"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K7 ["RenameBox"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Components"]
  GETTABLEKS R3 R4 K9 ["FieldsList"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Overlays"]
  GETTABLEKS R4 R5 K11 ["InsertObject"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K12 ["NodeDetailsPlaceholder"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Util"]
  GETTABLEKS R6 R7 K13 ["Observable"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Parent"]
  GETTABLEKS R7 R8 K15 ["React"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Components"]
  GETTABLEKS R9 R10 K10 ["Overlays"]
  GETTABLEKS R8 R9 K16 ["RenameBoxOverlay"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R0 K17 ["RpcTypes"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K6 ["Util"]
  GETTABLEKS R10 R11 K18 ["createNextOrder"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K19 ["Hooks"]
  GETTABLEKS R11 R12 K20 ["useVisibleExplorerNodeRange"]
  CALL R10 1 1
  GETTABLEKS R11 R6 K21 ["createElement"]
  DUPCLOSURE R12 K22 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R7
  GETTABLEKS R13 R6 K23 ["memo"]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
