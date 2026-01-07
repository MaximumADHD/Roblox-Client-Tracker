PROTO_0:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["flashScrollIndicators not implemented"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K1 ["animateScrollTo"]
  MOVE R5 R1
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K2 ["current"]
  GETIMPORT R5 K5 [Vector2.new]
  MOVE R6 R1
  MOVE R7 R2
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["CanvasPosition"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K1 ["current"]
  GETTABLEKS R3 R4 K2 ["ScrollingDirection"]
  GETIMPORT R4 K5 [Enum.ScrollingDirection.Y]
  JUMPIFNOTEQ R3 R4 [+3]
  LOADN R2 0
  JUMP [+8]
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K1 ["current"]
  GETTABLEKS R3 R4 K6 ["AbsoluteCanvasSize"]
  GETTABLEKS R2 R3 K7 ["X"]
  GETTABLEKS R6 R0 K0 ["_nativeRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K2 ["ScrollingDirection"]
  GETIMPORT R5 K5 [Enum.ScrollingDirection.Y]
  JUMPIFNOTEQ R4 R5 [+10]
  GETTABLEKS R6 R0 K0 ["_nativeRef"]
  GETTABLEKS R5 R6 K1 ["current"]
  GETTABLEKS R4 R5 K6 ["AbsoluteCanvasSize"]
  GETTABLEKS R3 R4 K4 ["Y"]
  JUMP [+1]
  LOADN R3 0
  JUMPIFNOT R1 [+8]
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K8 ["animateScrollTo"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0
  GETTABLEKS R5 R0 K0 ["_nativeRef"]
  GETTABLEKS R4 R5 K1 ["current"]
  GETIMPORT R5 K11 [Vector2.new]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["CanvasPosition"]
  RETURN R0 0

PROTO_3:
  GETIMPORT R3 K1 [warn]
  LOADK R4 K2 ["zoomToRect not implemented"]
  CALL R3 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["LuauPolyfill"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R1 K6 ["React"]
  CALL R3 1 1
  NEWTABLE R4 1 0
  DUPTABLE R5 K11 [{"flashScrollIndicators", "scrollTo", "scrollToEnd", "zoomToRect"}]
  DUPCLOSURE R6 K12 [PROTO_0]
  SETTABLEKS R6 R5 K7 ["flashScrollIndicators"]
  DUPCLOSURE R6 K13 [PROTO_1]
  SETTABLEKS R6 R5 K8 ["scrollTo"]
  DUPCLOSURE R6 K14 [PROTO_2]
  SETTABLEKS R6 R5 K9 ["scrollToEnd"]
  DUPCLOSURE R6 K15 [PROTO_3]
  SETTABLEKS R6 R5 K10 ["zoomToRect"]
  SETTABLEKS R5 R4 K16 ["default"]
  RETURN R4 1
