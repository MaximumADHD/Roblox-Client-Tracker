MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Styling"]
  GETTABLEKS R2 R3 K8 ["createStyleRule"]
  MOVE R3 R2
  LOADK R4 K9 [".Component-SizedScrollingFrame"]
  DUPTABLE R5 K13 [{"ScrollingDirection", "ScrollBarThickness", "BorderSizePixel"}]
  GETIMPORT R6 K16 [Enum.ScrollingDirection.Y]
  SETTABLEKS R6 R5 K10 ["ScrollingDirection"]
  LOADN R6 4
  SETTABLEKS R6 R5 K11 ["ScrollBarThickness"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  NEWTABLE R6 0 0
  CALL R3 3 -1
  RETURN R3 -1
