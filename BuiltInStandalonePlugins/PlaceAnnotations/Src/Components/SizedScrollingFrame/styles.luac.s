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
  DUPTABLE R5 K14 [{"ScrollingDirection", "ScrollBarThickness", "BorderSizePixel", "BackgroundTransparency"}]
  GETIMPORT R6 K17 [Enum.ScrollingDirection.Y]
  SETTABLEKS R6 R5 K10 ["ScrollingDirection"]
  LOADN R6 4
  SETTABLEKS R6 R5 K11 ["ScrollBarThickness"]
  LOADN R6 0
  SETTABLEKS R6 R5 K12 ["BorderSizePixel"]
  LOADN R6 1
  SETTABLEKS R6 R5 K13 ["BackgroundTransparency"]
  NEWTABLE R6 0 1
  MOVE R7 R2
  LOADK R8 K18 ["PadScrollBar"]
  NEWTABLE R9 0 0
  NEWTABLE R10 0 1
  MOVE R11 R2
  LOADK R12 K19 ["::UIPadding"]
  DUPTABLE R13 K21 [{"PaddingRight"}]
  GETIMPORT R14 K24 [UDim.new]
  LOADN R15 0
  LOADN R16 12
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["PaddingRight"]
  CALL R11 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 -1
  SETLIST R6 R7 -1 [1]
  CALL R3 3 -1
  RETURN R3 -1
