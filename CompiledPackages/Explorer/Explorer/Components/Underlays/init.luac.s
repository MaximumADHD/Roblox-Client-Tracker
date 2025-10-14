PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"session", "visibleNodeObservable", "draggingTargetObservable", "scrollingFrameRef", "startEdgeScrolling", "startBoxSelect", "textLabelRef"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K0 ["session"]
  SETTABLEKS R5 R4 K0 ["session"]
  SETTABLEKS R0 R4 K1 ["visibleNodeObservable"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["draggingTargetObservable"]
  SETTABLEKS R5 R4 K2 ["draggingTargetObservable"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["scrollingFrameRef"]
  SETTABLEKS R5 R4 K3 ["scrollingFrameRef"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["startEdgeScrolling"]
  SETTABLEKS R5 R4 K4 ["startEdgeScrolling"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["startBoxSelect"]
  SETTABLEKS R5 R4 K5 ["startBoxSelect"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K8 ["textLabelRefs"]
  GETTABLE R5 R6 R1
  SETTABLEKS R5 R4 K6 ["textLabelRef"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"session", "viewportSizeBinding", "scrollHeightObservable", "visibleNodeObservables", "zIndex", "render"}]
  GETTABLEKS R4 R0 K0 ["session"]
  SETTABLEKS R4 R3 K0 ["session"]
  GETTABLEKS R4 R0 K1 ["viewportSizeBinding"]
  SETTABLEKS R4 R3 K1 ["viewportSizeBinding"]
  GETTABLEKS R4 R0 K2 ["scrollHeightObservable"]
  SETTABLEKS R4 R3 K2 ["scrollHeightObservable"]
  GETTABLEKS R4 R0 K3 ["visibleNodeObservables"]
  SETTABLEKS R4 R3 K3 ["visibleNodeObservables"]
  GETTABLEKS R4 R0 K4 ["zIndex"]
  SETTABLEKS R4 R3 K4 ["zIndex"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K5 ["render"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["NodeDecorators"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Observable"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Parent"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R0 K12 ["RpcTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K13 ["UnderlaysRow"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Hooks"]
  GETTABLEKS R7 R8 K15 ["useBoxSelect"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K14 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["useDragAndDrop"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K14 ["Hooks"]
  GETTABLEKS R9 R10 K17 ["useVisibleExplorerNodeRange"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K18 ["createElement"]
  DUPCLOSURE R10 K19 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R5
  RETURN R10 1
