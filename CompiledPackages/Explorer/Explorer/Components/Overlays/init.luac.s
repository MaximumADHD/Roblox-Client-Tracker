PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"session", "scrollWidthObservable", "visibleNodeObservable", "boxSelecting", "windowIsHoveredObservable", "scrollingFrameRef"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["session"]
  SETTABLEKS R4 R3 K0 ["session"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K1 ["scrollWidthObservable"]
  SETTABLEKS R4 R3 K1 ["scrollWidthObservable"]
  SETTABLEKS R0 R3 K2 ["visibleNodeObservable"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["boxSelecting"]
  SETTABLEKS R4 R3 K3 ["boxSelecting"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["windowIsHoveredObservable"]
  SETTABLEKS R4 R3 K4 ["windowIsHoveredObservable"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["scrollingFrameRef"]
  SETTABLEKS R4 R3 K5 ["scrollingFrameRef"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R1 0
  LOADN R2 1
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "zIndex", "render"}]
  GETTABLEKS R5 R0 K0 ["session"]
  SETTABLEKS R5 R4 K0 ["session"]
  GETTABLEKS R5 R0 K1 ["viewportSizeBinding"]
  SETTABLEKS R5 R4 K1 ["viewportSizeBinding"]
  GETTABLEKS R5 R0 K2 ["scrollHeightObservable"]
  SETTABLEKS R5 R4 K2 ["scrollHeightObservable"]
  GETTABLEKS R5 R0 K3 ["visibleNodeObservables"]
  SETTABLEKS R5 R4 K3 ["visibleNodeObservables"]
  GETTABLEKS R5 R0 K4 ["zIndex"]
  SETTABLEKS R5 R4 K4 ["zIndex"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K5 ["render"]
  DUPTABLE R5 K8 [{"DragDropIndicator"}]
  GETUPVAL R6 1
  GETUPVAL R7 4
  DUPTABLE R8 K11 [{"draggingTargetObservable", "scrollHeightObservable", "scrollWidthObservable", "visibleNodeObservables", "session", "zIndex"}]
  GETTABLEKS R9 R0 K9 ["draggingTargetObservable"]
  SETTABLEKS R9 R8 K9 ["draggingTargetObservable"]
  GETTABLEKS R9 R0 K2 ["scrollHeightObservable"]
  SETTABLEKS R9 R8 K2 ["scrollHeightObservable"]
  GETTABLEKS R9 R0 K10 ["scrollWidthObservable"]
  SETTABLEKS R9 R8 K10 ["scrollWidthObservable"]
  GETTABLEKS R9 R0 K3 ["visibleNodeObservables"]
  SETTABLEKS R9 R8 K3 ["visibleNodeObservables"]
  GETTABLEKS R9 R0 K0 ["session"]
  SETTABLEKS R9 R8 K0 ["session"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K4 ["zIndex"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["DragDropIndicator"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K6 ["DragDropIndicator"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["NodeDecorators"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["Observable"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K11 ["OverlaysRow"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Parent"]
  GETTABLEKS R6 R7 K13 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K14 ["RpcTypes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K9 ["Util"]
  GETTABLEKS R8 R9 K15 ["createNextOrder"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K16 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["useDragAndDrop"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K16 ["Hooks"]
  GETTABLEKS R10 R11 K18 ["useVisibleExplorerNodeRange"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K19 ["createElement"]
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R1
  GETTABLEKS R12 R5 K21 ["memo"]
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
